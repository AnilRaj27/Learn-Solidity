pragma solidity >=0.4.21 <0.7.0;

contract Arrays {
    // Array
    uint256[] public uintArray = [1, 2, 3];
    string[] public myStringArray;
    uint256[][] public array2D = [[1, 2, 3], [3, 4, 4]];

    function addStringValue(string memory _value) public {
        myStringArray.push(_value);
    }

    function getStringLength() public view returns (uint256) {
        return myStringArray.length;
    }

    // Mapping
    mapping(uint256 => string) public names;

    constructor() {
        names[1] = "anil";
        names[2] = "nikhil";
    }
}
