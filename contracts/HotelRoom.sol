pragma solidity >=0.4.21 <0.7.0;

contract HotelRoom {
    enum Status {
        vacant,
        occupied
    }
    Status cs;

    event Occupy(address _occupant, uint256 _val);
    address payable public owner;

    constructor() public {
        owner = msg.sender;
        cs = Status.vacant;
    }

    modifier onlyWhileVacant() {
        require(cs == Status.vacant, "Room is occupied");
        _;
    }

    modifier costs(uint256 _amt) {
        require(msg.value >= _amt, "Funds not sufficient");
        _;
    }

    function receive() external payable onlyWhileVacant costs(2 ether) {
        cs = Status.occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }
}
