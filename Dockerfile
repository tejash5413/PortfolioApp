FROM nginx:latest
WORKDIR /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
