# Use a lightweight web server image (nginx)
FROM nginx:alpine

# Copy the app files into the default Nginx directory
COPY . /usr/share/nginx/html

# Expose port 80 so that it can be accessed via the browser
EXPOSE 80
