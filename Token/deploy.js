async function main() {
    // Get the contract factory for MyToken
    const MyToken = await ethers.getContractFactory("MyToken");
    
    // Deploy the contract
    const myToken = await MyToken.deploy();
    
    // Wait for the deployment to be mined
    await myToken.deployed();
    
    // Log the address of the deployed contract
    console.log("MyToken deployed to:", myToken.address);
}

// Run the main function and handle errors
main()
   .then(() => process.exit(0))
   .catch((error) => {
       console.error(error);
       process.exit(1);
   });
