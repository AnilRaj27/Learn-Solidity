pragma solidity >=0.4.21 <0.7.0;

contract Conditions {
    uint256[] public arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    function isEven(uint256 _num) public view returns (bool) {
        if (_num % 2 == 0) return true;
        else return false;
    }

    function countEven() public view returns (uint256) {
        uint256 count = 0;
        for (uint256 i = 0; i < arr.length; i++) {
            if (isEven(arr[i])) count++;
        }
        return count;
    }

    function isOwner() public view returns (bool) {
        return (msg.sender == owner);
    }
}
