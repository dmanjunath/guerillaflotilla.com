rm -rf dist/
mkdir -p dist/
cp index.html script.js ship.png style.css dist/
npx armada-cli bundle create guerillaflotilla $(pwd)/dist/