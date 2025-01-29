# Use the official Nginx image
FROM nginx
RUN apt-get update && apt-get install -y libvips-dev
# Copy the self-signed SSL certificates into the container
COPY ./nginx-selfsigned.crt /etc/nginx/ssl/nginx-selfsigned.crt
COPY ./nginx-selfsigned.key /etc/nginx/ssl/nginx-selfsigned.key

# Copy a custom Nginx configuration file into the container
COPY ./nginx.conf /etc/nginx/nginx.conf
