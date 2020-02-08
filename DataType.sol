pragma solidity ^0.5.1;

contract DataType {
    string public value;
    //string public constant value="MyValue";
    bool public myBool= true;
    int public myInt=-1;
    uint public myUint=1; //uint can't be negative i.e. Unsigned Int
    uint8 public myUint8=8;
    uint256 public myUint256=99999;
    enum State {Waiting,Ready,Active}
    State public state;
    constructor() public {
        state=State.Waiting;
    }
    function activate() public {
        state=State.Active;
    }
    function isActive() public view returns(bool){
        return state == State.Active;
    }
}
