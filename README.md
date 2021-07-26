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
