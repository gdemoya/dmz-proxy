# dmz-proxy

Disable security tls + basic auth from web page locally

## config
create ssl folder with the configuration and the certificates
you can see an example in the ssl_template

## run
docker build -t dmz-proxy .
docker run -v $(pwd)/ssl:/etc/nginx/ssl --network host dmz-proxy