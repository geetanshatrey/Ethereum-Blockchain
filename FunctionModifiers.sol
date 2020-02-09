pragma solidity ^0.5.11;

contract FunctionModifiers {
    uint value;

    function getValue() external view returns(uint) {
        return value;
    }

    function setValue(uint _value) external {
         value=_value;
    }
    //view is same as constant. constant was used in older versions.

    function returnValue() external pure returns(uint) {
        return 1+1;
    }
}
