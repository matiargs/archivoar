FROM httpd:2.4-alpine
COPY . /usr/local/apache2/htdocs/
COPY ./docker/httpd/custom-httpd.conf /usr/local/apache2/conf/httpd.conf