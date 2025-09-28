# Use official nginx image as base - lightweight web server
FROM nginx:alpine

# Copy our HTML file to nginx web directory
COPY index.html /usr/share/nginx/html/

# Expose port 80 for web traffic
EXPOSE 80

# nginx starts automatically, so no CMD needed