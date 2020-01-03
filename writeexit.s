  .text
# an implementation of write and exit in assembly
# 
  .globl writeA	 
  .type	writeA, @function
  # the string length is passed in %edx
  # the string address is passed in %esi
  # the number of the stream is passed in %edi
writeA:	
  .cfi_startproc
        pushq  %rbp          # save register ebx
        movl   %esi,%ecx     # move the string address to ecx
        movl   $0x4,%eax     # set up code for write system call
        int    $0x80         # trigger cpu interrupt
        popq   %rbp          # restore ebx
        ret
  .cfi_endproc
        .globl exitA
exitA:
        pushq   %rbp         # save %rbp
        movl    %edi,%ebx    # move the number to return to %ebx
        movl   $0x1,%eax     # set up code for exit system call
        int    $0x80         # trigger cpu interrupt
        
  .globl _start
# the program is started by a call to _start   

_start:
# call the C code 
  call	main                      
  .globl main

   
