FROM floryn90/hugo:ext-alpine-onbuild AS builder

FROM httpd:2.4-alpine
COPY --from=builder /target /usr/local/apache2/htdocs/
COPY ./docker/httpd/custom-httpd.conf /usr/local/apache2/conf/httpd.conf