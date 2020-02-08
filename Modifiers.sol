pragma solidity ^0.5.1;

contract Modfiers{
    uint256 public count=0;
    address owner;

    modifier onlyOwner() {
        require(msg.sender == owner); //Error Handling in Solidity.
        _;

    }

    constructor() public {
        owner=msg.sender;
    }

    function incrementCount() internal{
        count+=1;
    }
    //internal functions are not visible in the deployed contract.

    function mediatorToIncrease() public onlyOwner {
        incrementCount();
    }
    //OnlyOwner is the name of the modifier. That means only the owner can access the function.
}
