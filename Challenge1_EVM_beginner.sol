// SPDX-License-Identifier: MIT
pragma solidity >=0.8.9;

contract Challenge1{
    bool private myBool;
    string private myString;
    uint private myUint;
    address private myAddress;

    function getMyStringValue() public view returns (string memory){
        return myString;
    }

    function setMyBoolValue (bool _newBool) public returns (bool) {
        myBool = _newBool;
        return myBool;
    }

    function getMyUintValue() public view returns (uint){
        return myUint;
    }

    function setMyAddressValue (address _newAddress) public returns (address){
        myAddress = _newAddress;
        return myAddress;
    }

    function getMyBoolValue() public view returns (bool){
        return myBool;
    }

    function setMyStringValue(string memory _newString) public returns (string memory) {
        myString = _newString;
        return myString;
    }

    function getMyAddressValue() public view returns (address){
        return myAddress;
    }

    function setMyUintValue(uint _newUint) public returns (uint){
        myUint = _newUint;
        return myUint;
    }
}

// Author Name: Sanjay Kumar Thakur