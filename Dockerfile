FROM php:alpine

COPY StuffInSpace/web-root/ /var/www/localhost/htdocs/
COPY entrypoint.sh /

# Add basics first
RUN \
  apk add --no-cache apache2 php-apache2 php-json \
  && sed -i "s/#LoadModule\ rewrite_module/LoadModule\ rewrite_module/" /etc/apache2/httpd.conf \
  && sed -i "s/#LoadModule\ session_module/LoadModule\ session_module/" /etc/apache2/httpd.conf \
  && sed -i "s/#LoadModule\ session_cookie_module/LoadModule\ session_cookie_module/" /etc/apache2/httpd.conf \
  && sed -i "s/#LoadModule\ session_crypto_module/LoadModule\ session_crypto_module/" /etc/apache2/httpd.conf \
  && sed -i "s/#LoadModule\ deflate_module/LoadModule\ deflate_module/" /etc/apache2/httpd.conf \
  && chown -R www-data:www-data /var/www/localhost/htdocs/ \
  && chmod -R 755 /var/www/localhost/htdocs/ \
  && sed -i "s/index.html/index.php/g" /etc/apache2/httpd.conf \
  && chmod +x /entrypoint.sh

EXPOSE 80
ENTRYPOINT ["/entrypoint.sh"]
