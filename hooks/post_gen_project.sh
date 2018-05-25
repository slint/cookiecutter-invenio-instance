#!/usr/bin/env sh

echo "-------------------------------------------------------------------------------"
echo
echo "Generating SSL certificate and private key for testing..."

openssl req -x509 -newkey rsa:4096 -nodes -out docker/nginx/test.crt -keyout docker/nginx/test.key -days 365 -subj "/C=CH/ST=./L=./O=./OU=./CN=localhost/emailAddress=."
cat docker/nginx/test.crt docker/nginx/test.key > docker/haproxy/haproxy_cert.pem

echo "-------------------------------------------------------------------------------"
echo
echo "Skeleton generated..."
echo
echo "Before moving to production, make sure to address the TODOs in this project."
echo "You can have a summarized view of them by running the following command:"
echo
echo "    grep --color=always --recursive --context=3 --line-number TODO ."
echo
echo "-------------------------------------------------------------------------------"
echo

rm -r misc/
