# Use the official lightweight NGINX image
FROM nginx:alpine

# (Optional) Remove the default NGINX static files
RUN rm -rf /usr/share/nginx/html/*

# Copy all files from your repository into the NGINX html folder
COPY . /usr/share/nginx/html

# Expose port 80 so that the container can be accessed on that port
EXPOSE 80

# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]
