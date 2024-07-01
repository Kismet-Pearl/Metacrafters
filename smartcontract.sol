// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RequireAssertRevert {
    address public owner;   // Public variable to store the owner's address
    uint256 public value;   // Public variable to store the value

    constructor() {
        owner = msg.sender;  // Initializes the contract creator as the owner
    }

    modifier onlyOwner() {
        // Modifier to restrict access to functions only to the owner
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    function setValue(uint256 _value) public onlyOwner {
        // Function to set a new value, restricted to the owner
        require(_value > 0, "Value must be greater than zero");  // Requires value to be greater than zero
        value = _value;  // Sets the new value
    }

    function checkValue() public view {
        // Function to check if the value is not zero
        assert(value != 0);  // Asserts that the value should not be zero
    }

    function resetValue() public onlyOwner {
        // Function to reset the value to zero, restricted to the owner
        if (value == 0) {
            revert("Value is already zero");  // Reverts if the value is already zero
        }
        value = 0;  // Resets the value to zero
    }
}
