FROM nginx:1.12.2

RUN mkdir -p /data/nginx/cache
COPY nginx.conf /etc/nginx/nginx.conf

COPY run.sh /etc/nginx/run.sh
WORKDIR /etc/nginx
RUN chmod +x run.sh

CMD ["./run.sh"]