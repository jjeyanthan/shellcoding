
f=open("shell_with_priv_x86/shell_priv.bin",'rb').readline()

shellcode = "\\"
for i in f:
    if len(hex(i)[1:]) < 3:
        shellcode +=  hex(i)[1:2] + "0" + hex(i)[2:] + "\\"
    else:
        shellcode +=  hex(i)[1:] + "\\"

print(shellcode[:-1])

