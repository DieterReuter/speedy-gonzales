webserver: webserver.c uv/uv.a http-parser/http_parser.o
	gcc -o webserver webserver.c uv/uv.a http-parser/http_parser.o

uv/uv.a:
	make -C uv

http-parser/http_parser.o:
	make -C http-parser http_parser.o

clean:
	make -C http-parser clean
	make -C uv distclean
	rm webserver
