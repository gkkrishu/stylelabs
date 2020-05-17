
* Copy and execute this script in newly created machine(s) to get the system metrics.

===============System Info Script=======================
#!/bin/bash

function show_menu() {
	echo "=======Main Menu========="
        echo "1. Cpu_info"
	echo "2. Network_info"
	echo "3. Disk_info"
	echo "4. Exit"
}

function cpu_info() {
	echo "========CPU INFO=========="
        iostat -c
}
function network_info() {
  	echo "==========Network INFO======"
        ifstat
}
function disk_info() {
	echo "==========Disk INFO========="
	df -h
}

function read_input(){
	local c
	read -p "Enter your choice [ 1 - 4 ] " c
	case $c in
		1)	cpu_info ;;
		2)	network_info ;;
		3)	disk_info ;;
		4)	echo "Bye!"; exit 0 ;;
		*)	
			echo "Please select between 1 to 4 choice only."
			
	esac
}
while true
do
	show_menu
	read_input
done
==============Script Ends=============================