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

## note on .crypto
If you want to use .crypto domains, you need to add the Unstoppable Domains resolver secure DNS resolver setting in Chrome (of course, this can also be done in Firefox, Brave, Edge, Opera, etc).
```
https://resolver.unstoppable.io/dns-query
```