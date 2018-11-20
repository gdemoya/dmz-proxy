test url:
http://localhost/lon02-tst-002-k01/elasticsearch/

exec:
docker build -t dmz-proxy .
docker run -v ssl:/etc/nginx/ssl --network host dmz-proxy