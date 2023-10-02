# Use a base image with Nginx
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Clone the repository inside the container
RUN ls /usr/share/nginx/html
COPY /var/lib/jenkins/workspace/WebApp /usr/share/nginx/html

# Expose port 80 for the web server
EXPOSE 8070

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
