include ../../../Makefile.base

default: all

all: jasmin_syscall_enclave.o jasmin_syscall_host.o

jasmin_syscall_enclave.o: jasmin_syscall_enclave.c
	$(TRUSTED_CC) $(TRUSTED_CFLAGS) -c $< -o $@

jasmin_syscall_host.o: jasmin_syscall_host.c
	$(UNTRUSTED_CC) $(UNTRUSTED_CFLAGS) -c $< -o $@

clean:
	rm -rf *.o