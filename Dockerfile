FROM ubuntu:latest

RUN apt-get update && \
    apt-get install nginx -y && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

COPY index.html /var/www/html/
COPY nnix.com /etc/nginx/sites-enabled/



CMD ["nginx", "-g", "daemon off;"]