
default: heartleech

openssl/libssl.a: 
	echo "Build openssl using `./config && make` in openssl directory"
	false

openssl/libcrypto.a:
	echo "Build openssl using `./config && make` in openssl directory"
	false

heartleech: heartleech.c
	gcc heartleech.c openssl/libssl.a openssl/libcrypto.a -I openssl/include -o heartleech -ldl -lpthread


