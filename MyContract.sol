// Variables
// Data Types
// Structs (custom data structures)

pragma solidity ^0.8.6;

contract MyContract {
    // State Variables
    string public myString = "Hello";
    bytes32 public myBytes32 = "World"; // more gas efficient string
    int public myInt = 1; // only whole numbers
    uint public myUint = 2; // can't be negative
    uint256 public myUint256 = 3;
    uint8 public myUint8 = 4;
    address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    
    // Structs
    struct Person {
        uint age;
        string name;
    }
    
    Person public john = Person(22, "John");
    
    
    function getValue() public pure returns(uint) {
        // Local Variables
        uint value = 1;
        return value;
    }
}
