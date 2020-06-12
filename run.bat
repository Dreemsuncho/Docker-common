REM clear old containers
docker container rm app-apache app-nginx -f

REM clear unused images
docker system prune

REM build the image
docker build -t image-apache ./httpd
docker build -t image-nginx ./nginx

REM run the container
docker run -dit --name app-apache -p 8080:80 image-apache
docker run -dit --name app-nginx -p 8081:80 image-nginx
