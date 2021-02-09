all: shellcode exploit

shellcode: shellcode.c
	mkdir libnss_x
	$(CC) -O3 -shared -nostdlib -o libnss_x/x.so.2 shellcode.c

exploit: exploit.c
	$(CC) -O3 -w -o exploit exploit.c

clean:
	rm -rf libnss_x exploit
