# Learn-Solidity
Repo for learning solidity basics

### Truffle Commands
1. truffle compile - compiles smart contracts
2. truffle migrate - compiles & deploys smart contracts
3. truffle migrate --reset - compiles & deploys updated smart contracts
4. truffle console - cli interaction with smart contracts.
    ```
    let instance = await Counter.deployed()
    instance.getCount()
    instance.incrementCount()
    ```  

### Solidity
1. Local Variables - reused inside of a function, State Variables - stored inside the blockchain.
2. Bytes are more performant than strings.
    ```
    string public myString = "HELLO";
    bytes32 public myBytes32 = "Hello";
    ```
3. Don't put quotes for addres data types
    ```
    address public myaddr = 0x2E7f715C21440e72013;
    ```
4. purpose of [memory](https://stackoverflow.com/a/33839164/8806485), memory is not for int, its for strings, address.
5. In the mappings if unkonw index value is passed, the corresponding data types will be default.
    ```
    mapping(uint256 => string) public names;
    names[0] = "anil";
    // instance.names(1) prints empty string
    ```
3. Pure functions ensure that they not read or modify the state
    ```
    function getValue() public pure returns(uint256) {
        ...
    }
    ```
