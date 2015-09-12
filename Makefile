
all : bin/libmedian.a

bin/libmedian.a : obj/median_master.o obj/median_slave.o
	@[ -d bin ] || mkdir -p bin
	ar rs bin/libmedian.a obj/median_master.o obj/median_slave.o 

clean :
	rm obj/* bin/*

obj/median_master.o : src/median_master.c
	@[ -d obj ] || mkdir -p obj
	gcc -ggdb -c src/median_master.c -Iinclude -o obj/median_master.o

obj/median_slave.o : src/median_slave.c
	@[ -d obj ] || mkdir -p obj
	gcc -ggdb -c src/median_slave.c -Iinclude -o obj/median_slave.o

