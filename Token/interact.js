async function main() {
    // Get the owner and another address from the list of accounts
    const [owner, addr1] = await ethers.getSigners();
    
    // Get the contract factory and attach it to the deployed address
    const MyToken = await ethers.getContractFactory("MyToken");
    const myToken = await MyToken.attach('YOUR_DEPLOYED_CONTRACT_ADDRESS');
    
    // Mint 1000 tokens to addr1
    await myToken.mint(addr1.address, 1000);
    console.log(`Minted 1000 tokens to ${addr1.address}`);
    
    // Check the balance of addr1
    let balance = await myToken.balanceOf(addr1.address);
    console.log(`Balance of ${addr1.address}: ${balance}`);
    
    // Burn 500 tokens from addr1
    await myToken.connect(addr1).burn(500);
    console.log(`Burned 500 tokens from ${addr1.address}`);
    
    // Check the balance of addr1 again
    balance = await myToken.balanceOf(addr1.address);
    console.log(`Balance of ${addr1.address}: ${balance}`);
}

// Run the main function and handle errors
main()
   .then(() => process.exit(0))
   .catch((error) => {
       console.error(error);
       process.exit(1);
   });
