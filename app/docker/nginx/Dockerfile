# Use the official NGINX base image
FROM nginx:latest

# Remove default nginx file 
RUN rm /etc/nginx/conf.d/default.conf

# Copy the NGINX configuration file to the container
COPY ./app/docker/nginx/nginx.conf /etc/nginx/conf.d/nginx.conf

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start NGINX when the container starts
CMD ["nginx-debug", "-g", "daemon off;"]