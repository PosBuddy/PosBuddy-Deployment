
clear

echo "you need 0..n serve station certificate             "
echo "an min. 1 checkout station certificate              "

# Step 1 create a certificate request
# Set here the Common Name CN=serve / CN=checkout
#openssl req -newkey rsa:4096 -nodes -keyout client.key -out client.csr

# Step 2 Sign the client CSR with the CA
#openssl x509 -req -CA cacert.pem -CAkey cacert.key -in client.csr -out client.pem -days 365 -CAcreateserial

# Step 3 optinal verify and inspect the certificate
#openssl x509 -in client.pem -text

# Step 4 Bundle the certificate and private key in PKCS#12 format
#openssl pkcs12 -export -out client.p12 -name "client" -inkey client.key -in client.pem
