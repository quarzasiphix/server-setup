sudo socat TCP-LISTEN:12345,reuseaddr,fork EXEC:'/var/www/scripts/socket'