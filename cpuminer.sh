#!/bin/sh

echo "Installing Starting....!"

apt-get update 
apt-get install wget
apt-get install git 
apt-get install libuv 
apt-get install libuv1-dev
apt-get install openssl 
apt-get install build-essential 
apt-get install libcurl4-openssl-dev 
apt-get install libcurl14-openssl-dev
apt-get install libssl-dev 
apt-get install libjansson-dev 
apt-get install libmicrohttpd-dev
apt-get install automake 
apt-get install autotools-dev 
apt-get install  autoconf
apt-get install  make
apt-get install  cmake
apt-get install  g++

sleep 2

mkdir cpuminer
cd cpuminer

git clone https://github.com/tpruvot/cpuminer-multi.git
cd cpuminer-multi

sleep 2

./autogen.sh
./build.sh
./configure CFLAGS="*-march=native*" --with-crypto --with-curl

echo "Installing Finish"

     sleep 2
  
