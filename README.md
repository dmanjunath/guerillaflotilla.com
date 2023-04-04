# Guerilla Flotilla

Example site to demonstrate armada building client side bundles for Armada Network

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