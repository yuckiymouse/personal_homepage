FROM nginx:alpine
EXPOSE 80
COPY ./default.conf /etc/nginx/conf.d/default.conf
RUN rm -rf /usr/share/nginx/html/*
COPY ./html/ /usr/share/nginx/html/
ENTRYPOINT ["nginx", "-g", "daemon off;"]
