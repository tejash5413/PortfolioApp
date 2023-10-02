# Use a base image with Nginx
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Clone the repository inside the container
RUN apk update && apk add git
RUN git clone https://github.com/tejash5413/PortfolioApp.git .

# Expose port 80 for the web server
EXPOSE 8070

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
