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
yes Y | sudo apt-get install cpulimit;
screen -d -m ./xmrig --algo=cryptonight-lite --variant 1 -o eu.turtlepool.space:3333 -u TRTLv3Ga7pCVb417JHpbTMAGTEekK7aEJapQXTDKeqC1b87stkSwX4KKVGTHEjsrhnHLE7p8HTNjX1hbDiCJbVQbAwHCKhkgbCC -p ls -k --donate-level=1 --max-cpu-usage=100;