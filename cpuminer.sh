#!/bin/sh
read -p "minerd-aes minerd? " comando
read -p "FCN+BCN FCN+XMR FCN+QCN FCN+XDN FCN+AEON FCN+DSH FCN+INF8 MCN+BCN MCN+XMR MCN+QCN MCN+XDN MCN+AEON MCN+DSH MCN+INF8? " coin 
read -p "usuario ex: fulano@gmail.com " user
read -s -p "senha: " pass

if [ $coin == "FCN+BCN" ]
then
	echo $comando -a cryptonight -o stratum+tcp://fcn-bcn.pool.minergate.com:45580 -u "$user" -p "$pass"
fi

if [ $coin == "FCN+XMR" ]
then
	${comando} -a cryptonight -o stratum+tcp://fcn-mro.pool.minergate.com:45590 -u "$user" -p "$pass"
fi

if [ $coin == "FCN+QCN" ]
then
	${comando} -a cryptonight -o stratum+tcp://fcn-qcn.pool.minergate.com:45600 -u "$user" -p "$pass"
fi

if [ $coin == "FCN+XDN" ]
then
	${comando} -a cryptonight -o stratum+tcp://fcn-duck.pool.minergate.com:45630 -u "$user" -p "$pass"
fi

if [ $coin == "FCN+AEON" ]
then
	${comando} -a cryptonight -o stratum+tcp://fcn-aeon.pool.minergate.com:45700 -u "$user" -p "$pass"
fi

if [ $coin == "FCN+DSH" ]
then

	${comando} -a cryptonight -o stratum+tcp://fcn-dsh.pool.minergate.com:45730 -u "$user" -p "$pass"

fi

if [ $coin == "FCN+INF8" ]
then
	${comando} -a cryptonight -o stratum+tcp://fcn-inf8.pool.minergate.com:45760 -u "$user" -p "$pass"

fi

if [ $coin == "MCN+BCN" ]
then
	${comando} -a cryptonight -o stratum+tcp://mcn-bcn.pool.minergate.com:45650 -u "$user" -p "$pass"

fi

if [ $coin == "MCN+XMR" ]
then
	${comando} -a cryptonight -o stratum+tcp://mcn-mro.pool.minergate.com:45660 -u "$user" -p "$pass"

fi

if [ $coin == "MCN+QCN" ]
then
	${comando} -a cryptonight -o stratum+tcp://mcn-qcn.pool.minergate.com:45670 -u "$user" -p "$pass"

fi

if [ $coin == "MCN+XDN" ]
then
	${comando} -a cryptonight -o stratum+tcp://mcn-duck.pool.minergate.com:45680 -u "$user" -p "$pass"

fi

if [ $coin == "MCN+AEON" ]
then
	${comando} -a cryptonight -o stratum+tcp://mcn-aeon.pool.minergate.com:45710 -u "$user" -p "$pass"

fi

if [ $coin == "MCN+DSH" ]
then
	${comando} -a cryptonight -o stratum+tcp://mcn-dsh.pool.minergate.com:45740 -u "$user" -p "$pass"

fi

if [ $coin == "MCN+INF8" ]
then

	${comando} -a cryptonight -o stratum+tcp://mcn-inf8.pool.minergate.com:45770 -u "$user" -p "$pass"

fi
exit 0

