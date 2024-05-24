/*
Assessment Requirements
1. Create a variable that can hold a number of NFT's. What type of variable might this be?
2. Create an object inside your mintNFT function that will hold the metadata for your NFTs. 
   The metadata values will be passed to the function as parameters. When the NFT is ready, 
   you will store it in the variable you created in step 1
3. Your listNFTs() function will print all of your NFTs metadata to the console (i.e. console.log("Name: " + someNFT.name))
4. For good measure, getTotalSupply() should return the number of NFT's you have created
*/

// create a variable to hold your NFT's
const NFTs = [];

// this function will take in some values as parameters, create an
// NFT object using the parameters passed to it for its metadata, 
// and store it in the variable above.
function mintNFT (name, eyeColor, shirtType, bling) {
   const NFT = {
      name,
      eyeColor,
      shirtType,
      bling
   }
   NFTs.push(NFT)
   console.log("Minted: ", name)
}

// create a "loop" that will go through an "array" of NFT's
// and print their metadata with console.log()
function listNFTs () {
   for(let i = 0; i < NFTs.length; i++){
      console.log("\n------------------------------")
      console.log("ID: \t\t\t", i + 1)
      console.log("Name:\t\t\t", NFTs[i].name)
      console.log("eyeColor:\t", NFTs[i].eyeColor)
      console.log("shirtType:", NFTs[i].shirtType)
      console.log("bling:\t\t", NFTs[i].bling)
      console.log("------------------------------")
      // console.log(NFTs[i])
   }

}

// print the total number of NFTs we have minted to the console
function getTotalSupply() {
   console.log("\n"+"The total number of NFTs minted: "+ NFTs.length)
}

// call your functions below this line
mintNFT("Sanjay", "brown", "black", "Garland")
mintNFT("Raj", "black", "green", "Gold Chain")
mintNFT("Kavi", "brown", "red", "Locket")
mintNFT("Dipendra", "black", "green", "Cuban Gold Chain")
mintNFT("Yubraj", "brown", "white", "Flower Garland")
listNFTs()
getTotalSupply()
