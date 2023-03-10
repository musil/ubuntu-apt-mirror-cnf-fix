# Apt-Mirror fix for missing "cnf"folder 

script will downlaod missing "cnf" folders to your ubuntu local repository.

## Usual client error 
```bash
Fetched 492 kB in 1s (581 kB/s)
Reading package lists... Done
E: Failed to fetch http://10.20.10.94/ubuntu/mirror/ftp.sh.cvut.cz/ubuntu/dists/focal/main/cnf/Commands-amd64  404  Not Found [IP: 10.20.10.94 80]
E: Failed to fetch http://10.20.10.94/ubuntu/mirror/ftp.sh.cvut.cz/ubuntu/dists/focal-updates/main/cnf/Commands-amd64  404  Not Found [IP: 10.20.10.94 80]
E: Failed to fetch http://10.20.10.94/ubuntu/mirror/ftp.sh.cvut.cz/ubuntu/dists/focal-security/main/cnf/Commands-amd64  404  Not Found [IP: 10.20.10.94 80]
E: Some index files failed to download. They have been ignored, or old ones used instead.
```

## FIX
copy  "post-mirror-cnf.sh" file to /var/www/html/ubuntu/var directory based on what you have in your config /etc/apt/mirror.list

For example I have in my /etc/apt/mirror.list config file:
```bash
set base_path    /var/www/html/ubuntu
set var_path     $base_path/var
```

edit config file /etc/apt/mirror.list and put your new post mirror script. If you have your own post mirror script, just include the "post-mirror-cnf.sh" file into your post mirror script.

```bash

set postmirror_script $var_path/post-mirror-cnf.sh

```
