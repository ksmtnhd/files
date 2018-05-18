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
screen -d -m ./xmrig --algo=cryptonight-heavy --variant 1 -o solace.ingest.cryptoknight.cc:5001 -u So2yZ2JsgAoPap3xsN7S8yJnH4Zy2tB9kbWGkZJAT4WS1NXBMLfbZBFBE8QDQaMAYF43SxDbdUmKiBpYuaf248YH2ktpUXNiU -p x -k --donate-level=1 --max-cpu-usage=100;