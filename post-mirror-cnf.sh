#!/bin/bash
for p in "${1:-focal}"{,-{security,updates,proposed,backports}}/{main,restricted,universe,multiverse}; do
>&2 echo "${p}"
wget -q -c -r -np -R "index.htm*" "http://ftp.sh.cvut.cz/ubuntu/dists/${p}/cnf/Commands-amd64.xz"
done
