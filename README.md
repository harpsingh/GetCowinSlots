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

Name                           Vaccine    Address                                                                 Date       FeeType Fee  Dose1 Dose2 Slots
----                           -------    -------                                                                 ----       ------- ---  ----- ----- -----
Wockhardt Hospital Mum-Central COVISHIELD Wockhardt Hospitals Ltd Dr Anand Rao Nair Road South Mumbai             28-07-2021 Paid    780     97   175 {08:00AM-11:00AM, 11:00AM-02:00PM, 02:00PM-05:00PM, 05:00PM-08:00PM}
Wockhardt Hospital Mum-Central COVAXIN    Wockhardt Hospitals Ltd Dr Anand Rao Nair Road South Mumbai             28-07-2021 Paid    1410   197    90 {08:00AM-11:00AM, 11:00AM-02:00PM, 02:00PM-05:00PM, 05:00PM-08:00PM}
Wockhardt Hospital Mum-Central COVISHIELD Wockhardt Hospitals Ltd Dr Anand Rao Nair Road South Mumbai             28-07-2021 Paid    780     91   666 {08:00AM-11:00AM, 11:00AM-02:00PM, 02:00PM-05:00PM, 05:00PM-08:00PM}
Meesha Diagnostic And Polyclin COVAXIN    1 St Floor La View Building B J Marg Jacob Circle Mahalaxmi East Mumbai 28-07-2021 Paid    1200    44    50 {12:00PM-01:00PM, 01:00PM-02:00PM, 02:00PM-03:00PM, 03:00PM-05:00PM}
Wockhardt Hospital Mum-Central COVAXIN    Wockhardt Hospitals Ltd Dr Anand Rao Nair Road South Mumbai             28-07-2021 Paid    1410   198    99 {08:00AM-11:00AM, 11:00AM-02:00PM, 02:00PM-05:00PM, 05:00PM-08:00PM}
Wockhardt Hospital Mum-Central COVAXIN    Wockhardt Hospitals Ltd Dr Anand Rao Nair Road South Mumbai             29-07-2021 Paid    1410   196    97 {08:00AM-11:00AM, 11:00AM-02:00PM, 02:00PM-05:00PM, 05:00PM-08:00PM}
Wockhardt Hospital Mum-Central COVISHIELD Wockhardt Hospitals Ltd Dr Anand Rao Nair Road South Mumbai             29-07-2021 Paid    780     94   188 {08:00AM-11:00AM, 11:00AM-02:00PM, 02:00PM-05:00PM, 05:00PM-08:00PM}
Meesha Diagnostic And Polyclin COVAXIN    1 St Floor La View Building B J Marg Jacob Circle Mahalaxmi East Mumbai 29-07-2021 Paid    1200    48    47 {12:00PM-01:00PM, 01:00PM-02:00PM, 02:00PM-03:00PM, 03:00PM-05:00PM}
Wockhardt Hospital Mum-Central COVAXIN    Wockhardt Hospitals Ltd Dr Anand Rao Nair Road South Mumbai             29-07-2021 Paid    1410   199    96 {08:00AM-11:00AM, 11:00AM-02:00PM, 02:00PM-05:00PM, 05:00PM-08:00PM}
Wockhardt Hospital Mum-Central COVISHIELD Wockhardt Hospitals Ltd Dr Anand Rao Nair Road South Mumbai             29-07-2021 Paid    780     88   664 {08:00AM-11:00AM, 11:00AM-02:00PM, 02:00PM-05:00PM, 05:00PM-08:00PM}
```
