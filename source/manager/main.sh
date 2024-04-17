#!/bin/bash

dir="/var/www/scripts/manager"

. $dir/menus.sh

. $dir/server/stuff.sh
. $dir/site/manage.sh

nginxconfdir="/etc/nginx/sites-enabled"
nginxdisabled="/etc/nginx/disabled"

# project info
currentdomain=
IsSetProject=false

ProjectBanner() {
    server_name=$(</var/www/server/name.txt)
    server_location=$(</var/www/server/info.txt)

    echo
    echo    "   Server: $server_name!"
    echo    "   at: $server_location!"
    echo
    echo -e "    :Welcome \e[36m$USER\e[0m!!!"
    echo -e "to the\e[38m project management tool! \e[0m"
    echo
}

main () {
    clear
    while true; do
        while [ "$IsSetProject" == "false" ]; do 
        general
        done

        while [ "$IsSetProject" == "true" ]; do
        managesite
        done

        while [ "$IsSetProject" == "conf" ]; do 
        configurator
        done
    done
}

main 