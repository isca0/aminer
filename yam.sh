#!/bin/sh
read -p "yam? yam-core2? yam-ivy-bridge? " comando
read -p "FCN+BCN FCN+XMR FCN+QCN MCN+BCN MCN+XMR MCN+QCN? " coin 
read -p "usuario do yam? ex: fulano\%40gmail.com " user

if [ $coin == "FCN+BCN" ]
then
	echo "$comando" -c x -M stratum+tcp://"$user":x@fcn-bcn.pool.minergate.com:45580/bcn
fi

if [ $coin == "FCN+XMR" ]
then
	echo "$comando" -c x -M stratum+tcp://$user:x@fcn-mro.pool.minergate.com:45590/xmr
fi

if [ $coin == "FCN+QCN" ]
then
	echo "$comando" -c x -M stratum+tcp://$user:x@fcn-qcn.pool.minergate.com:45600/qcn
fi

if [ $coin == "MCN+BCN" ]
then
	echo "$comando" -c x -M stratum+tcp://"$user":x@mcn-bcn.pool.minergate.com:45650/bcn
fi


if [ $coin == "MCN+XMR" ]
then
	echo "$comando" -c x -M stratum+tcp://"$user":x@mcn-mro.pool.minergate.com:45660/xmr
fi


if [ $coin == "MCN+QCN" ]
then
	echo "$comando" -c x -M stratum+tcp://"$user":x@mcn-qcn.pool.minergate.com:45670/qcn
fi

exit 0
