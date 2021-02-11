# nnix.com static website
This is a docker-compose deployment of nginx and certbot for static hosting.

## use
1. Provision a server with docker and docker-compose installed.
2. Clone the repo here into the server.
```
git clone https://github.com/davidemerson/nnix.com-www.git
```
3. Edit the variables in init-letsencrypt.sh for appropriate domain and email address.
4. Set permissions on init-letsencrypt.sh
```
chmod 755 init-letsencrypt.sh
```
5. Run init-letsencrypt.sh for the first time. This will have some errors.
```
./init-letsencrypt.sh
```
6. Start the docker-compose deployment and background the process.
```
docker-compose up &
```
7. Run init-letsencrypt.sh again for real this time, now that you can validate the site.
```
./init-letsencrypt.sh
```

## note
There's a 301 redirect in my nginx conf here to ensure http gets routed to https. This might break cert validation, so comment it out if you need to validate, and then you should be good to reintroduce it afterwards.