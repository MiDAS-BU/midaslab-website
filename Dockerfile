FROM dbogatov/docker-images:nginx-latest

MAINTAINER Dmytro Bogatov dmytro@dbogatov.org

WORKDIR /srv

# Copy the source
COPY . .

# Copy the NGINX config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Remove NGINX config from source
RUN rm nginx.conf

CMD ["nginx", "-g", "daemon off;"]
