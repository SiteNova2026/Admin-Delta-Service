FROM nginx:alpine

# Remove default Nginx website configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy main Nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy our frontend reverse proxy configuration
COPY conf.d/ /etc/nginx/conf.d/

EXPOSE 80
