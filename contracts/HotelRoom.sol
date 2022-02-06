pragma solidity >=0.4.21 <0.7.0;

contract HotelRoom {
    enum Status {
        vacant,
        occupied
    }
    Status cs;

    address payable public owner;

    constructor() public {
        owner = msg.sender;
        cs = Status.vacant;
    }

    modifier checkPrice(uint256 _amt) {
        require(msg.value >= _amt, "Funds not sufficient");
        _;
    }

    modifier checkStatus() {
        require(cs == Status.vacant, "Room is occupied");
        -;
    }

    function book() payable checkPrice(2 ether) checkstatus{
        cs = Status.occupied;
        owner.transfer(msg.value);
    }
}
