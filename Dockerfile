FROM nginx:1.10.1-alpine

ARG DOMAIN

COPY nginx.conf /etc/nginx/nginx.conf
COPY site.conf /etc/nginx/conf.d/default.conf

RUN sed -i 's/DOMAIN/$DOMAIN/g' /etc/nginx/conf.d/default.conf
