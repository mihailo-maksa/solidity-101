// Basic intro into solidity

pragma solidity ^0.8.6;

contract Counter {
    uint public count;
    
    function incrementCount() public {
         count++;
    }
}