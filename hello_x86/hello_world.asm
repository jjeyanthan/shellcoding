bits 32

global main

section .text

    main:
        ; initialize  registers to 0
        xor eax,eax
        xor ebx,ebx
        xor ecx,ecx
        xor edx,edx

        mov al, 0x4 ;  syscall number for write
        jmp hello_string

        print_and_exit : 
            pop ecx ; ecx now contain the address of the string 'Hello World' 
            mov bl, 0x1
            mov dl,0xd ;  length of the string 'hello world!'
            int 0x80

            ; exit
            xor eax,eax
            xor ebx,ebx
            mov al,0x1
            int 0x80


    hello_string:
        call print_and_exit
        db "Hello World !"

        