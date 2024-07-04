FROM nginx:latest

COPY ./ssl/cloudflare.crt /etc/nginx/ssl/cloudflare.crt
COPY ./ssl/cloudflare.key /etc/nginx/ssl/cloudflare.key

COPY ./nginx.conf /etc/nginx/nginx.conf
