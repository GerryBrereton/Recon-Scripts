#Sometimes when dealing with segmented networks for PCI/HIPAA compliance, need to do a quick scan.

#!/bin/bash
clear
echo "Asset Discovery Scriptlet"
echo "Ex: ./pings.sh 192.168.20 [network segment]"
for x in $(seq 1 254); do ping -c1 $1.$x; done
#for futher analysis you can run the above script with the following:
 | grep "64 bytes" | cut -d " " -f4 | sed 's/://' > AliveHosts.txt
