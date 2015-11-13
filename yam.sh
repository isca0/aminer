#!/bin/sh
read -p "yam? yam-barcelona yam-bdver1 yam-bdver2 yam-core2? yam-haswell? yam-ivy-bridge? yam-nehalem? yam-sandy-bridge? " comando
read -p "BCN QCN MON FCN+BCN FCN+XMR FCN+QCN MCN+BCN MCN+XMR MCN+QCN? " coin 
read -p "usuario do yam? ex: fulano\%40gmail.com " user


if [ $coin == "BCN" ]
then
	${comando} -c x -M stratum+tcp://"$user":x@bcn.pool.minergate.com:45550/bcn
fi

if [ $coin == "QCN" ]
then
	${comando} -c x -M stratum+tcp://"$user":x@qcn.pool.minergate.com:45570/qcn
fi


if [ $coin == "MON" ]
then
	${comando} -c x -M stratum+tcp://"$user":x@mcn.pool.minergate.com:45640/mcn
fi


if [ $coin == "FCN+BCN" ]
then
	${comando} -c x -M stratum+tcp://"$user":x@fcn-bcn.pool.minergate.com:45580/bcn
fi

if [ $coin == "FCN+XMR" ]
then
	${comando} -c x -M stratum+tcp://$user:x@fcn-mro.pool.minergate.com:45590/xmr
fi

if [ $coin == "FCN+QCN" ]
then
	${comando} -c x -M stratum+tcp://$user:x@fcn-qcn.pool.minergate.com:45600/qcn
fi

if [ $coin == "MCN+BCN" ]
then
	${comando} -c x -M stratum+tcp://"$user":x@mcn-bcn.pool.minergate.com:45650/bcn
fi


if [ $coin == "MCN+XMR" ]
then
	${comando} -c x -M stratum+tcp://"$user":x@mcn-mro.pool.minergate.com:45660/xmr
fi


if [ $coin == "MCN+QCN" ]
then
	${comando} -c x -M stratum+tcp://"$user":x@mcn-qcn.pool.minergate.com:45670/qcn
fi

exit 0
