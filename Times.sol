pragma solidity ^0.5.1;

contract Times {
    uint256 public count=0;
    uint256 openingTime=1581161192;
    //Epoch time is used in solidity.

    modifier onlyWhenOpen() {
        require(block.timestamp >=openingTime);
        _;
    }

    function incrementCount() public onlyWhenOpen {
        count+=1;
    }
}
