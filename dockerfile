
# Use an official Nginx image from Docker Hub
FROM nginx:alpine

# Copy the HTML file into the Nginx web root
COPY ./index.html /usr/share/nginx/html

# Expose port 80
EXPOSE 80
