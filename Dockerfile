FROM nginx:stable

COPY nginx.conf /etc/nginx/nginx.conf

RUN touch /var/run/nginx.pid && \
  chown -R www-data:www-data /var/run/nginx.pid && \
  chown -R www-data:www-data /var/cache/nginx

RUN mkdir -p /opt/packages/

COPY packages /opt/packages

USER www-data
