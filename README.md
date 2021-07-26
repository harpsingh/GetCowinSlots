# GetCowinSlots
Fetches list of available vaccination slots based on area pin code provided. It uses the public API for https://www.cowin.gov.in

# How to use
- Download the file GetCowinSlots.psm1
- Import the module
```
Import-Module .\GetCowinSlots.psm1
```
- Run the imported cmdlet
```
GetCowinSlots -PinCode 110001 -Days 3
```
- Sample output
```
PS C:\> GetCowinSlots -PinCode 400011 -Days 2
Slots found!!

Name                           Address                                                                 Vaccine    Date       FeeType Fee  Slots
----                           -------                                                                 -------    ----       ------- ---  -----
Wockhardt Hospital Mum-Central Wockhardt Hospitals Ltd Dr Anand Rao Nair Road South Mumbai             COVISHIELD 28-07-2021 Paid    780  {08:00AM-11:00AM, 11:00AM-02:00PM, 02:00PM-05:00PM, 05:00PM-08:00PM}
Wockhardt Hospital Mum-Central Wockhardt Hospitals Ltd Dr Anand Rao Nair Road South Mumbai             COVAXIN    28-07-2021 Paid    1410 {08:00AM-11:00AM, 11:00AM-02:00PM, 02:00PM-05:00PM, 05:00PM-08:00PM}
Wockhardt Hospital Mum-Central Wockhardt Hospitals Ltd Dr Anand Rao Nair Road South Mumbai             COVISHIELD 28-07-2021 Paid    780  {08:00AM-11:00AM, 11:00AM-02:00PM, 02:00PM-05:00PM, 05:00PM-08:00PM}
Meesha Diagnostic And Polyclin 1 St Floor La View Building B J Marg Jacob Circle Mahalaxmi East Mumbai COVAXIN    28-07-2021 Paid    1200 {12:00PM-01:00PM, 01:00PM-02:00PM, 02:00PM-03:00PM, 03:00PM-05:00PM}
Wockhardt Hospital Mum-Central Wockhardt Hospitals Ltd Dr Anand Rao Nair Road South Mumbai             COVAXIN    28-07-2021 Paid    1410 {08:00AM-11:00AM, 11:00AM-02:00PM, 02:00PM-05:00PM, 05:00PM-08:00PM}
Wockhardt Hospital Mum-Central Wockhardt Hospitals Ltd Dr Anand Rao Nair Road South Mumbai             COVAXIN    29-07-2021 Paid    1410 {08:00AM-11:00AM, 11:00AM-02:00PM, 02:00PM-05:00PM, 05:00PM-08:00PM}
Wockhardt Hospital Mum-Central Wockhardt Hospitals Ltd Dr Anand Rao Nair Road South Mumbai             COVISHIELD 29-07-2021 Paid    780  {08:00AM-11:00AM, 11:00AM-02:00PM, 02:00PM-05:00PM, 05:00PM-08:00PM}
Meesha Diagnostic And Polyclin 1 St Floor La View Building B J Marg Jacob Circle Mahalaxmi East Mumbai COVAXIN    29-07-2021 Paid    1200 {12:00PM-01:00PM, 01:00PM-02:00PM, 02:00PM-03:00PM, 03:00PM-05:00PM}
Wockhardt Hospital Mum-Central Wockhardt Hospitals Ltd Dr Anand Rao Nair Road South Mumbai             COVAXIN    29-07-2021 Paid    1410 {08:00AM-11:00AM, 11:00AM-02:00PM, 02:00PM-05:00PM, 05:00PM-08:00PM}
Wockhardt Hospital Mum-Central Wockhardt Hospitals Ltd Dr Anand Rao Nair Road South Mumbai             COVISHIELD 29-07-2021 Paid    780  {08:00AM-11:00AM, 11:00AM-02:00PM, 02:00PM-05:00PM, 05:00PM-08:00PM}
```
