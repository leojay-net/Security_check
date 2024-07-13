// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

contract StorageVictim {

   address immutable owner;
   
   struct Storage {
   
       address user;
       uint amount;
   }

   mapping(address => Storage) storages;

   constructor () {
   
       owner = msg.sender;
   }

   function store(uint amount) public {

       
       Storage storage str = storages[msg.sender];
       
       str.user = msg.sender;
       
       str.amount = amount;


   }
   function getStore() public view returns (address, uint) {
       
       Storage storage str = storages[msg.sender];
       
       return (str.user, str.amount);
   }
   
   function getOwner() public view returns (address) {
       
       return owner;
   }
}
