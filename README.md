# Axon.ivy Blockchain Demo
The demo shows how Axon.ivy can be used in conjunction with a blockchain technology like Ethereum.

## Requirements
* Axon.ivy Designer version 7.1.0 or later.
* Local wallet keystore that is valid on a local Geth node or on the Rinkeby Testnet. For test purposes you can follow [these instructions](https://myetherwallet.github.io/knowledge-base/getting-started/creating-a-new-wallet-on-myetherwallet.html/).
* Enough Ether in the wallet to run demo program (GasLimit is 150000 and GasPrice is 40 Gwei). Free Ether on the Rinkeby Testnet can be received [here](https://faucet.rinkeby.io/) (a valid Twitter, Google+ or Facebook account is needed for authentication).

## Download
Download or clone the latest **Axon.ivy Blockchain Demo** project from [here](https://github.com/ivy-samples/ivy-blockchain-demo.git).

## Local Build
    mvn clean generate-sources

## Running the Demo
1. Start the Axon.ivy Designer.
1. Import the ivy-blockchain-demo project into the current workspace.
1. Restart the Axon.ivy Designer and clean the project (on the toolbar, click on Project -> Clean...).
1. Open the Axon.ivy Designer 'Process Model' view.
1. In the 'Processes' folder of the ivy-blockchain-demo project open the 'blockchainCounter' process.
1. Right-click the start.ivp and click on 'Start Process'. The Ethereum Blockchain Integration Demo webpage will open in the 'Web Browser' view.
1. Specify the network, the path to the local wallet keystore file and the password.
1. Click on 'Create Contract'. Once the transaction has finished (which can take a while), the details will show up in the table at the bottom of the page.
1. Click on the up or down button to increase or decrease the counter value. Each time a transaction will we executed on the blockchain network.
