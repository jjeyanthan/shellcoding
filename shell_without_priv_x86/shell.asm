bits 32
global main


section .text
    main:     
        xor eax,eax
        xor ebx,ebx
        xor ecx,ecx
        xor edx,edx

        mov al, 0xb  ; syscall number for execve is 11 

        ; we need to push on the stack '/bin/sh/\0'
        ; '/bin/sh'  is more than 4 bytes we need to split it in 2 group
        ; 'n/sh'   4 bytes
        ; //bi    4 bytes
        ;  and yes it work //bin/sh work you can test it in your shell 

        push edx     ;  push null terminator first for exemple ebx or edx in our case (edx is alread 0 )
        push "n/sh"   
        push "//bi"
        mov ebx,esp  ; ebx is now pointing on the value on the top of the stack -> /bin/sh
        int 0x80
