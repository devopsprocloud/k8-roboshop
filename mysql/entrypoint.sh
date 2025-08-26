#!/bin/bash

# if [ -f /tmp/mysql_root_password.txt ]; then
#     PASSWORD=$(cat /tmp/mysql_root_password.txt)
#     echo "Accessed Root password"
# else
#     echo "Password file not found"
#     exit 1
# fi
# # Making it as available in env
# export MYSQL_ROOT_PASSWORD=$PASSWORD
# rm -rf /tmp/mysql_root_password.txt
# exec /entrypoint.sh mysqld

# if [ -f /tmp/mysql_root_password.txt ]; then
# PASSWORD=$(</tmp/ mysql_root_password.txt)
# echo "Accessed Root password from file" export
#     MYSQL_ROOT_PASSWORD=$PASSWORD
# rm -rf /tmp/mysql_root_password.txt
# else
# echo "Password file not found, falling back to environment variable" 

# if [ -z "$MYSQL_ROOT_PASSWORD" ];
#     then
# echo "ERROR: No root password provided via file or environment!"
#     exit 1
# fi
# # Pass through all args (so CMD works correctly)
# exec /entrypoint.sh mysqld


#!/bin/bash
set -e

if [ -f /tmp/mysql_root_password.txt ]; then
    PASSWORD=$(</tmp/mysql_root_password.txt)
    echo "Accessed Root password from file"
    export MYSQL_ROOT_PASSWORD=$PASSWORD
    rm -f /tmp/mysql_root_password.txt
else
    echo "Password file not found, falling back to environment variable"
    if [ -z "$MYSQL_ROOT_PASSWORD" ]; then
        echo "ERROR: No root password provided via file or environment!"
        exit 1
    fi
fi

# Pass through all args (so CMD works correctly)
exec /usr/local/bin/docker-entrypoint.sh mysqld
