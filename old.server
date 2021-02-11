server {
        listen 80 default_server;
        listen [::]:80 default_server;
        root /var/www/nnix.com;
        index index.html index.htm;
        server_name nnix.com www.nnix.com;
        location / {
                try_files $uri $uri/ =404;
        }
}