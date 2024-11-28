# Use an official Nginx image from Docker Hub
FROM nginx:latest

# Copy the HTML and CSS files into the Nginx container
COPY index.html /usr/share/nginx/html/index.html
COPY styles.css /usr/share/nginx/html/styles.css

# Expose port 80 to access the app in the browser
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
