# Description
I know you can always use https://www.cowin.gov.in but I wanted to write a script which uses the publicly available API to fetch list of available vaccination slots in India based on area pin code provided.

# How to use
- Download the file GetCowinSlots.psm1
- Import the module
```
Import-Module .\GetCowinSlots.psm1
```
- Run the imported cmdlet
```
GetCowinSlots -PinCode 110001 -Days 3
--OR--
GetCowinSlots -PinCode 110001 -Days 3 -Detailed
```
- Sample output
```
PS C:\Users\harps> GetCowinSlots -PinCode 110077 -Days 3
Slots found!!

Name                          Vaccine    Date       FeeType Fee  Dose1 Dose2
----                          -------    ----       ------- ---  ----- -----
Human Care Medical Charitable COVAXIN    28-07-2021 Paid    1410   150    92
Human Care Medical Charitable COVISHIELD 28-07-2021 Paid    780     41    29
Human Care Medical Charitable COVAXIN    29-07-2021 Paid    1410   183    92
Human Care Medical Charitable COVISHIELD 29-07-2021 Paid    780     42    39
Human Care Medical Charitable COVISHIELD 30-07-2021 Paid    780     44    39
Human Care Medical Charitable COVAXIN    30-07-2021 Paid    1410   171    95
```
