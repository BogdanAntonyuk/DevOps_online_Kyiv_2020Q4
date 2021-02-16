#!/bin/bash
function discoverNetworkDevices {
         sudo arp-scan --localnet

}

function listOpenTCPPorts {
        sudo nmap -sT -O localhost
}

if (($#==0))
then
        echo Please enter some parameters:
        echo --all - show all devicess in network
        echo --target - displays a list of open TCP ports.
elif [[ $1 == "--all" ]];
then
        discoverNetworkDevices
elif [[ $1 == --target ]]
then
       listOpenTCPPorts
else
        echo enter correct option
fi
