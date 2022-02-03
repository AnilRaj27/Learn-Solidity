// variable
// data types
// custom data structures

pragma solidity >=0.4.21 <=0.7.0;

contract MyContractVariables {
    // State Variables
    // uint vs int - sign (uint is only positive)
    uint256 public testState = 1;
    uint8 myuint8 = 1;
    int256 public myint = 1;
    string public myString = "HELLO";
    bytes32 public myBytes32 = "Hello";
    address public myaddr = 0x2E7f715C21440e72013df858C7E3CE3ccC69C64B;

    // Own Data structures
    struct MyStruct {
        uint256 myInt;
        string myString;
    }

    MyStruct public myStruct = MyStruct(1, "HelloWorld");

    // Local Variables - reused inside of a function
    // Pure functions ensure that they not read or modify the state
    function getValue() public pure returns (uint256) {
        uint256 value = 1;
        return value;
    }
}
