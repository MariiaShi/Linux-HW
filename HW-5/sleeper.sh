#!/bin/bash
set -e
        for i in {1..10}
        do
        echo $(date +'%H:%M:%S') $(ps -ef | grep 00: | wc -l)
        sleep 0.5
        done
cat /proc/cpuinfo > maria.txt
cat /etc/os-release | grep ^NAME >> maria.txt
cat /etc/os-release | grep ^NAME | awk -F'=' '{print$2}' >> maria.txt
        for i in {50..59}
        do
        touch ${i}.txt
        done