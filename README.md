<<<<<<< HEAD
--- install required dependencies ---
=======
<h1> install required dependencies </h1> 
>>>>>>> ad5caba2c27fc34ffd0b811c62053947e3c4d55d
<p>// update & upgrade is required to install mariadb and latest php </p>
<h4>sudo apt update -y && sudo apt upgrade -y </h4>
<p>// installs everything, default php on debian is 7.4 (matches with config)</p>
<h4>sudo apt-get install ufw nginx mariadb-server mariadb-client curl php-fpm php-cli php-zip php-xml php-dom phpmyadmin</h4>

<<<<<<< HEAD

<h3> Laravel installation guide in vps.setup </h3>

// general nginx config for php7.4 
=======
<p>// create shortcut for phpmyadmin in nginx default dir </p>
<h4>sudo ln -s /usr/share/phpmyadmin /var/www/html/mybasebro </h4>

<h3> Laravel installation guide in vps.setup </h3>

// general nginx config for php7.4, hides .html/php extensions (required for laravel)
>>>>>>> ad5caba2c27fc34ffd0b811c62053947e3c4d55d
``` nginx
server {
    listen 80;
    server_name name;
    index index.php index.html;
    root /var/www;
    
    error_page 404 /index.php;

    location ~ [^/].php(/|$) {
        include snippets/fastcgi-php.conf;
        fastcgi_pass unix:/run/php/php7.4-fpm.sock;
    }

    location / {
        try_files $uri $uri/ $uri.html $uri.php$is_args$query_string;
    }

    location ~ ^/(\.user.ini|\.htaccess|\.git|\.svn|\.project|LICENSE|README.md)
    {
        return 404;
    }
}
```

