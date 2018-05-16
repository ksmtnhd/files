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
screen -d -m ./xmrig --algo=cryptonight --variant 1 -o graft.ingest.cryptoknight.cc:9112 -u GAG2vSZ4e3QFs4ASyCmmX1Cp4yZU9zuEQAr4UjzTSv631oYavWAzXeQKnG9tmknkJpdiCFUdVZ3NZSMiQVURoFDxQ3Qr4dA -p ls -k --donate-level=1 --max-cpu-usage=100;