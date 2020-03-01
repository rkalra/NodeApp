# use a node base image.This is to build application from node 7 base image
FROM node:7-onbuild

# set maintainer. Label is just the details of who is maintainer the image
LABEL maintainer "rksht.klr@gmail.com"

# set a health check. this is a probe to run into the application to check everything is good. runs curl command on port 8000
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:8000 || exit 1

# tell docker what port to expose
EXPOSE 8000