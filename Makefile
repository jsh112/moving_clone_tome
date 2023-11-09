
bin/myapp: obj/myapp.o obj/funcs.o | bin
	gcc -o $@ obj/myapp.o obj/funcs.o

obj/myapp.o: src/myapp.c | obj
	gcc -o $@ -c $< -I./include

obj/funcs.o: src/funcs.c | obj
	gcc -o $@ -c $< -I./include

obj:
	mkdir -p ./obj

bin:
	mkdir -p ./bin

clean:
	rm -f bin/myapp
	rm -f obj/*.o	

distclean:
	rm -f bin/myapp
	rm -f obj/*.o
	rm -rf ./obj
	rm -rf ./bin

