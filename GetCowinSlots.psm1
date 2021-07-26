function GetCowinSlots {

<#
.SYNOPSIS
    Prints a list of vaccination slots available in India based on area pin code and number of days to query.
    It queries public APIs for https://www.cowin.gov.in

.PARAMETER PinCode
    The 6-digit area pincode

.PARAMETER Days
    Specifies the number of days to query

.EXAMPLE
     GetCowinSlots -PinCode 110001 -Days 3

.EXAMPLE
     GetCowinSlots -PinCode 110001 -Days 3 -Detailed

.NOTES
    Author:  Harprit Singh
#>

    param (
        [Parameter(Mandatory=$true)][int]$PinCode,
        [Parameter(Mandatory=$true)][int]$Days,
        [Parameter(Mandatory=$false)][switch]$Detailed
    )

    $startDate = $(Get-Date)
    $endDate = (Get-Date).AddDays($Days)
    $dateToQuery = $startDate.AddDays(1)

    $slotsCollection = @()
    $slotsVerbose = @()

    while ($dateToQuery -le $endDate)
    {
        $date = $dateToQuery.ToString("dd-MM-yyyy")

        if ($slots = Invoke-RestMethod -Uri $("https://cdn-api.co-vin.in/api/v2/appointment/sessions/public/findByPin?pincode=" + $($PinCode) + "&date=$date&min_age_limit=18")){
            foreach ($slot in $slots.sessions){
                $slotsCollection += [PSCustomObject]@{
                    Name	= $slot.name
                    Vaccine	= $slot.vaccine
                    Date	= $slot.date
                    FeeType	= $slot.fee_type
                    Fee		= $slot.fee
                    Dose1	= $slot.available_capacity_dose1
                    Dose2	= $slot.available_capacity_dose2
                }
            }

            $slotsVerbose += $slots.sessions
        }

        $dateToQuery = $dateToQuery.AddDays(1)
    }

    if ($slotsCollection){
        Write-Host "Slots found!!" -ForegroundColor Green
        if ($Detailed){
            $slotsVerbose
        }
        else{
            $slotsCollection | Format-Table -AutoSize -Wrap
        }
    }
    else{
        Write-Host "No slots found :(" -ForegroundColor Red
    }
}

Export-ModuleMember GetCowinSlots
