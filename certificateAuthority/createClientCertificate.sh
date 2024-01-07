
clear

echo "you need 0..n serve station certificate           "
echo "an min. 1 checkout station certificate              "

# Step 1 create a certificate request
openssl req -newkey rsa:4096 -nodes -keyout client.key -out client.csr
