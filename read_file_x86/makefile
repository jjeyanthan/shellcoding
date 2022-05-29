prepare_all:
	nasm -f bin read_file.asm -o read_file.bin
	nasm -f elf32 read_file.asm -o read_file.o
	gcc -m32 read_file.o  -o read_file
# line 1 transform our assembly code into binary format  (more info using nasm -hf)
# line 2 to obtain an object file  in elf32 format   (more info using nasm -hf)
# link this object with you libc to obtain a valid binary 

	
