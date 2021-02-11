# nnix.com static website
This is just an nginx container and config.

## to redeploy the website:
```
docker pull nnix/www
docker container run --rm --detach --name nnix.com-www --publish 80:80 nnix/www:latest
```

## from here, we need to do:
- redirects, to get them out of S3
- content from GitHub instead of in the container
