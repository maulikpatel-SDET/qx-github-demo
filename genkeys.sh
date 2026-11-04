#!/usr/bin/env bash
set -e
# Real key generation via the openssl CLI - algorithm lives in the arg string.
openssl genrsa -out server.key 2048
openssl ecparam -name secp256k1 -genkey -noout -out ec.key
openssl dgst -sha1 -sign server.key -out sig.bin message.txt
