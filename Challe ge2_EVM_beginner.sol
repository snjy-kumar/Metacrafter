// SPDX-License-Identifier: MIT
pragma solidity >=0.8.9;
// Write a smart contract that takes some ether from the user. Find out its value in units of:
// wei
// ether
// gwei
contract Challenge2 {
    uint public balanceWei;
    uint public balanceEther;
    uint public balanceGwei;

    function depositBalance() public payable {
        balanceWei = msg.value;
        balanceEther = balanceWei / 1 ether;
        balanceGwei = balanceWei / 1 gwei;
    }

    function getBalanceWei() public view returns (uint) {
        return balanceWei;
    }

    function getBalanceEther() public view returns (uint) {
        return balanceEther;
    }

    function getBalanceGwei() public view returns (uint) {
        return balanceGwei;
    }
}