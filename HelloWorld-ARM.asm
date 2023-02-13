.data
msg:
.ascii "Hello, world!"
len = . - msg
.text
.globl _start
_start:
mov %r0, $1
ldr %r1, =msg
ldr %r2, =len
mov %r7, $4
swi $0
mov %r0, $0
mov %r7, $1
swi $0
