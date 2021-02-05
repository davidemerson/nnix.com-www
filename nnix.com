server {
        listen 80 default_server;
        listen [::]:80 default_server;
        root /var/www/nnix.com;
        index index.html index.htm;
        server_name _;
        location / {
                try_files $uri $uri/ =404;
        }
}