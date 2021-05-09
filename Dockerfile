# download Alpine docker image 
# that is binaries, libraries, etc ...
FROM alpine
# install php inside the php cpntainer
RUN apk add php
# create folder /app inside the container
WORKDIR /app
# copy source code into /app
COPY src/index.php /app
# run the following command inside the container
# php -f index.php -S 0.0.0.0:8080
# run the following command
ENTRYPOINT ["php"]
# pass this arguments to the command
CMD ["-f", "index.php", "-S", "0.0.0.0:8080"]
# without brackets: sh -c "php -f index.php -S 0.0.0.0:8080" -> PID 1 = sh
# with brackets: php -f index.php -S 0.0.0.0:8080 -> PID 1 = php
# expose port 8080 inside the container
EXPOSE 8080
