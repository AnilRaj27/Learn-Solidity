// pragma solidity >=0.7.0 <0.9.0;
pragma solidity >=0.4.21 <0.7.0;

contract Counter {
    uint256 count = 10;

    function getCount() public view returns (uint256) {
        return count;
    }

    function incrementCount() public {
        count = count + 10;
    }
}
