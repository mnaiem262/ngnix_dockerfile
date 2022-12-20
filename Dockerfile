# Apache2 web server. Apache is the most commonly used web server on linux
# systems. Web servers are used to serve web pages requested y client
# computers

FROM ubuntu:latest
MAINTAINER MuhammadNaeem
RUN pat-get update
RUN apt-get install -y nginx
ADD index.html /usr/share/nginx/html/index.html

ENTRYPOINT ["/usr/sbin/nginx", "-g" "daemon off;"]
expose 80
