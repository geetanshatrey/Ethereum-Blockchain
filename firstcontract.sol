pragma solidity ^0.4.17;

contract FirstContract{
    string public message;
    function FirstContract(string initialMessage) public{
        message=initialMessage;
    }

    function setMessage(string newMessage) public{
        message=newMessage;
    }

    function getMessage() public view returns(string){
        return message;
    }
}
