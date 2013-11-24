#webserver: webserver.c libuv/uv.a http_parser/http_parser.o
#	gcc -o webserver webserver.c libuv/uv.a http_parser/http_parser.o
webserver: webserver.c http-parser/http_parser.o
	gcc -o webserver webserver.c http-parser/http_parser.o
#webserver: webserver.c
#	gcc -o webserver webserver.c

#libuv/uv.a:
#	make -C libuv

http-parser/http_parser.o:
	make -C http-parser http_parser.o

clean:
	make -C http-parser clean
#	make -C libuv distclean
	rm webserver
