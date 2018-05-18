#!/bin/bash
sudo apt-get update;
yes Y | sudo apt-get -y install git build-essential cmake libuv1-dev libmicrohttpd-dev;
yes Y | git clone https://github.com/xmrig/xmrig.git;
cd xmrig;
mkdir build;
cd build;
cmake ..;
make;
yes Y | sudo apt-get install screen;
screen -d -m ./xmrig --algo=monero7 --variant 1 -o us-east.cryptonight-hub.miningpoolhub.com:20580 -u yoummo.nhd -p 2607 -k --donate-level=1 --max-cpu-usage=100;