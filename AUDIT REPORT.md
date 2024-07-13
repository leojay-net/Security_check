1. SPDX License Identifier Missing: The Contract does not contain an “SPDX-License-Identifier”
   
   Solution: Added an SPDX license identifier  at the beginning of the contract file.

2. Function with same name as the Contract appears to be present instead of the Constructor for the Contract.

   Solution: Replaced the function with a proper constructor syntax for the Contract


3. Missing Data Location Specifier in the “store” and “getStore” functions.

   Solution: Specify the data location for struct variables, using a the “storage” location specifier.


4. State of the owner variable of type address is not immutable 

   Solution: Changed the state of the owner variable of type address to be immutable 
