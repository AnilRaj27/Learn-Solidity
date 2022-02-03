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
    mapping(uint256 => Book) public books;
    mapping(address => mapping(uint256 => Book)) public myBooks;

    struct Book {
        string title;
        string author;
    }

    constructor() public {
        names[1] = "anil";
        names[2] = "nikhil";
    }

    function addBook(
        uint256 _id,
        string memory _title,
        string memory _author
    ) public {
        books[_id] = Book(_title, _author);
    }

    function addMyBook(
        uint256 _id,
        string memory _title,
        string memory _author
    ) public {
        // Imp: nested mapping
        myBooks[msg.sender][_id] = Book(_title, _author);
    }
}
