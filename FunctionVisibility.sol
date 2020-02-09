pragma solidity ^0.5.11;

contract FunctionVisibility{
    uint public value;

    function getValue() private view returns(uint) {
        return value;
    }

    function setValue(uint _value) external {
        //getValue(); ---> Not Allowed as by external visibility can be accessed only from outside.
         value=_value;
    }
    //private,internal,external are the visibility modes for a function.

    function setPubValue(uint _value) public {
        //getValue(); ---> Not Allowed as by external visibility can be accessed only from outside.
         value=_value;
    }

}
