prepare_all:
	nasm -f bin hello_world.asm -o hello_world.bin
	nasm -f elf32 hello_world.asm -o hello_world.o
	gcc -m32 hello_world.o  -o hello_world
# line 1 transform our assembly code into binary format  (more info using nasm -hf)
# line 2 to obtain an object file  in elf32 format   (more info using nasm -hf)
# link this object with you libc to obtain a valid binary 

	
