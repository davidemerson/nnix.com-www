#server {
#        listen 80 default_server;
#        listen [::]:80 default_server;
#        root /var/www/nnix.com;
#        index index.html index.htm;
#        server_name nnix.com www.nnix.com;
#        location / {
#                try_files $uri $uri/ =404;
#        }
#}

server {
        listen 80 default_server;
        listen [::]:80 default_server;
        server_name nnix.com www.nnix.com;
        location / {
        proxy_set_header   X-Forwarded-For $remote_addr;
        proxy_set_header   Host $http_host;
        proxy_pass         "http://127.0.0.1:8080";
    	}
}