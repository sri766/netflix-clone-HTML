# Use a lightweight web server as a base image
FROM nginx:alpine

# Copy your HTML, CSS, and images folder to the web server's document root
COPY index.html /usr/share/nginx/html
COPY style.css /usr/share/nginx/html
COPY images/ /usr/share/nginx/html/images/

# Expose port 80 (default for HTTP) for web traffic
EXPOSE 80

# Start the web server when the container runs
CMD ["nginx", "-g", "daemon off;"]
