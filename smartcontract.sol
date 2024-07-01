// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RequireAssertRevert {
    address public owner;
    uint256 public value;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    function setValue(uint256 _value) public onlyOwner {
        require(_value > 0, "Value must be greater than zero");
        value = _value;
    }

    function checkValue() public view {
        assert(value != 0);
    }

    function resetValue() public onlyOwner {
        if (value == 0) {
            revert("Value is already zero");
        }
        value = 0;
    }
}
