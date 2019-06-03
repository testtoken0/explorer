NETWORK="$1"
if [ -z "$NETWORK" ]; then
    NETWORK="testnet"
fi
HOST="51.83.74.13" PORT="4200" node "/home/tt0/explorer-tt0/build/build.js" --network "$NETWORK"
EXPLORER_HOST="51.83.74.13" EXPLORER_PORT="4200" pm2 start /home/tt0/explorer-tt0/express-server.js --name explorer
