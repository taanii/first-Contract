//SPDX-License-Identifier: UNLICENSED

pragma solidity >= 0.8.17;

contract HelloWorld {
    //events - 
    //states - var where we store value of nft, token etc
    //functions - used to changes state of variable

    

    //state
    string public message;

    constructor(string memory firstmessage) {
        message = firstmessage;   
    }

    event messagechanged(string oldmsg, string newmsg);

    function update(string memory newmesssage) public {
        string memory oldmsg = message;
        message = newmesssage;
        //to trigger event
        emit messagechanged(oldmsg, newmesssage);

    }
}