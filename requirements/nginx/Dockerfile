FROM nginx:latest

COPY ./requirements/nginx/ssl/cloudflare.crt /etc/nginx/ssl/cloudflare.crt
COPY ./requirements/nginx/ssl/cloudflare.key /etc/nginx/ssl/cloudflare.key

COPY ./requirements/nginx/nginx.conf /etc/nginx/nginx.conf
