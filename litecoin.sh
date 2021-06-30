#!/bin/sh
 
COUNTER=40
until [  $COUNTER -lt 20 ]; do
 
sudo apt-get install -y git
sudo apt-get install screen
git clone https://github.com/JayDDee/cpuminer-opt.git
cd cpuminer-opt
sudo apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev make g++
sudo apt-get install -y lib32z1-dev
chmod +x build.sh
./build.sh
./cpuminer -a lyra2z330 -o stratum+tcp://lyra2z330.sea.mine.zpool.ca:4563 -u MB4cVupJyUrYj77dQw9iU5ApzTFJGrGiW8 -p c=LTC -t 4
 
     echo COUNTER $COUNTER
     let COUNTER-=1
done
