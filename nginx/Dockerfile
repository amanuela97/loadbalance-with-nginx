# Use the smaller Alpine-based NGINX image from the Docker Hub 
FROM nginx:1.26-alpine-perl

# Copy the local nginx.conf to the container's nginx configuration directory
COPY nginx.conf /etc/nginx/nginx.conf

# for documentation purpose it shows port 80 should be exposed to the outside world
EXPOSE 80

# Run NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]