FROM alpine:3.21.3

RUN apk update && apk upgrade
RUN apk add nginx

EXPOSE 80

COPY ./nginx-conf/conf.d/ /etc/nginx/conf.d/

VOLUME ["/etc/nginx/http.d"]

USER nginx

CMD ["nginx", "-g", "daemon off;"]
