FROM nginx:alpine
WORKDIR /usr/share/nginx/html
RUN pwd
EXPOSE 8070
CMD ["nginx", "-g", "daemon off;"]
