// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract arithmeticOperations {
    uint public result;

    constructor() {
        result = 0;
    }

    function add(uint a, uint b) public {
        result = a + b;
    }

    function subtract(uint a, uint b) public {
        result = a - b;
    }

    function multiply(uint a, uint b) public {
        result = a * b;
    }

    function divide(uint a, uint b) public {
        require(b!= 0, "Division by zero is not allowed");
        result = a / b;
    }
}