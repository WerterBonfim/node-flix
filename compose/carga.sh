#!/bin/bash

mongoimport \
	--authenticationDatabase admin \
	-u mongo \
	-p '!123Senha' \
	--db=nodeflix \
	--collection=movies \
	--type=json \
	--jsonArray \
	--file movies.json
