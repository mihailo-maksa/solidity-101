// Arrays

pragma solidity ^0.8.6;

contract Arrays {
    uint[] public uintArray = [1, 2, 3];
    string[] public stringArray = ["a", "b", "c"];
    string[] public values;
    uint[][] public array2D = [[1, 2, 3], [4, 5, 6]];
    
    function addElement(string memory _value) public {
        values.push(_value);
    }
    
    function getLength() public view returns(uint) {
        return values.length;
    }
}