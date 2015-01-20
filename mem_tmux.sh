#!/bin/bash


echo "Free: $(( $(vm_stat | grep free | awk '{ print $3 }' | sed 's/\.//')*4096/1048576 ))"\ MB
