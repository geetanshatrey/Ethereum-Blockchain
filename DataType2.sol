pragma solidity ^0.5.11;

contract DataType2 {
    //1. fixed-size types
    bool isReady;
    uint a;
    uint256 b;
    address recipient;
    bytes32 data; //stores binary data

    //2. variable-size types
    string name;
    bytes _data;//stores binary data. Different from bytes32 as size is not fixed.
    uint[] amounts;
    mapping(uint => string) users;

    //3. user-defined types
    struct User {
        uint id;
        string name;
        uint[] friendIDs;
    }
    enum Color {
        Red,
        Green,
        Blue
    }

}
