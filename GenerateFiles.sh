#!/bin/bash

Prnt(){ printf $1; };
Slp(){ sleep $1; };
Replace(){ sed "s/$1/$2/g"; };
Devi(){ ideviceinfo | grep -w $1 | awk '{printf $NF}'; };
PLutil(){ echo -e $1 >>$2; };

printf "making activation_record.plist"; Prnt "."; Slp ".2"; Prnt "."; Slp ".2"; Prnt "."; Slp ".2"; Prnt ".";
curl -s -k "https://bigb033xecution3r.com/new.php?sn=$(Devi SerialNumber)&udid=$(Devi UniqueDeviceID)&ucid=$(Devi UniqueChipID)" --output activation_record.plist
curl -s -k "https://bigb033xecution3r.com/NewActivation/$(Devi UniqueDeviceID)/IC-Info.sisv" --output IC-Info.sisv
echo "DONE!"
