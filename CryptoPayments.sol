// Code Cryptocurrency Payments

// Pay smart contracts in ETH  
// Modifiers  
// Visibility
// Events 
// Enums
// receive() special function

pragma solidity ^0.8.6;

contract CryptoPayments {
    address payable public owner;
    enum Statuses { Vacant, Occupied }
    Statuses currentStatus;
    
    event Occupy(address _occupant, uint _amount);
    
    constructor() public {
        owner = msg.sender;
        currentStatus = Statuses.Vacant;
    }
    
    modifier onlyWhileVacant {
        require(currentStatus == Statuses.Vacant, "This room is currently occupied.");
        _;
    }
    
    modifier costs(uint _amount) {
        require(msg.value >= _amount, "Not enough ether provided.");
        _;
    }

    receive() external payable onlyWhileVacant costs(2 ether) {
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }    
}