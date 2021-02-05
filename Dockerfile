FROM ubuntu:latest

RUN apt-get update && \
    apt-get install nginx -y && \
    apt-get clean && rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/www/html && \
    mkdir /var/www/nnix.com

COPY index.html /var/www/nnix.com/
COPY nnix.com /etc/nginx/sites-available/

RUN rm -rf /etc/nginx/sites-enabled/default && \
    ln -s /etc/nginx/sites-available/nnix.com /etc/nginx/sites-enabled/nnix.com

CMD ["nginx", "-g", "daemon off;"]