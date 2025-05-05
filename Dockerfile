# Use official nginx image
FROM nginx:alpine

# Copy your index.html to the default nginx public folder
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80
