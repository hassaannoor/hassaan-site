# Use a lightweight Alpine Linux base image
FROM alpine:latest

# Install Nginx
RUN apk add --no-cache nginx

# Copy the HTML file to the Nginx web root
COPY index.html /usr/share/nginx/html/

# Set the working directory to the Nginx web root
WORKDIR /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
