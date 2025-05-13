#!/bin/bash

cd .. > /dev/null 2>&1 &

if [[ ! -d "auth" ]]; then
	mkdir -p "auth"
fi

if [[ -d ".server/www" ]]; then
	rm -rf ".server/www"
	mkdir -p ".server/www"
else
	mkdir -p ".server/www"
	
fi

if [[ -e ".server/.loclx" ]]; then
	rm -rf ".server/.loclx"

fi

if [[ -d ".server/.cld.log" ]]; then
	rm -rf ".server/.cld.log"    
fi

if [[ ! -d ".sever" ]]; then
	mkdir -p ".server"
fi

mv .server cd ..
mv auth cd ..
