// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Import ERC20 standard contract and Ownable contract from OpenZeppelin
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// Define the MyToken contract that inherits from ERC20 and Ownable
contract MyToken is ERC20, Ownable {
    // Constructor to initialize the token with name and symbol
    constructor() ERC20("MyToken", "MTK") {}

    // Mint function to create new tokens, accessible only by the contract owner
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Burn function to destroy tokens, accessible by any token holder
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
