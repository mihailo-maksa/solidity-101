// Conditionals (if, else)
// Loops (for, while)

pragma solidity ^0.8.6;

contract LoopsIfElse {
    uint[] public numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    uint[] public evenNumbers;
    uint[] public whileArr;
    address public owner;
    
    constructor() public {
        owner = msg.sender;
    }
    
    function isEvenNumber(uint _number) public view returns(bool) {
        if (_number % 2 == 0) {
            return true;
        } else {
            return false;
        }
    }
    
    function getEvenNumbers() public returns(uint[] memory) {
        for (uint i; i < numbers.length; i++) {
            if (isEvenNumber(numbers[i])) {
                evenNumbers.push(numbers[i]);
            }
        }
        
        return evenNumbers;
    }
    
    function whileLoop() public returns(uint[] memory) {
        uint i;
        
        while(i < numbers.length) {
            if (isEvenNumber(numbers[i])) {
                whileArr.push(numbers[i]);
            }
            
            i++;
        }
        
        return whileArr;
    }
    
    
    function isOwner() public view returns(bool) {
        return(owner == msg.sender);
    }
}