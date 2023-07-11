# Guerilla Flotilla

Example site to demonstrate armada building client side bundles for Armada Network

### Update / Debug site
`npx live-server`

### Creating a bundle & checksum
```sh
# this command creates a dist/ folder with the production assets and calls the armada bundle create command
# outputs a file called guerillaflotilla.sh
sh build.sh

# to get the checksum run
npx armada-cli bundle checksum guerillaflotilla.tgz
```

### Update bundle on chain
```sh
npx armada-cli project publish <ProjectID> <BundleURL> <BundleChecksum>
```

### To add Web3 to the Chrome DevTools and test web3 requests
```js
var script = document.createElement('script');
script.type = 'text/javascript';
script.src = 'https://cdnjs.cloudflare.com/ajax/libs/web3/4.0.2/web3.min.js';
document.head.appendChild(script);

var w3 = new Web3("https://mainnet.infura.io/v3/<key>")
w3.eth.getBlockNumber()
```