// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Define the contract
contract SimpleContract {
    // State variables
    string public message;
    uint256 public counter;

    // Constructor to initialize the contract with default values
    constructor() {
        message = "Hello, Blockchain!";
        counter = 0;
    }

    // Function to update the message
    function updateMessage(string memory newMessage) public {
        message = newMessage;
    }

    // Function to increment the counter
    function incrementCounter() public {
        counter += 1;
    }
}
