                    .data
   _printf_string:
                    .ascii    "%d\n\0"
                    .text
                    .global _main

               _f:
                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $24, %esp
                    movl      $10, %eax
                    movl      %eax, %ecx
                    movl      8(%ebp), %eax
                    imull     %ecx, %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -4(%ebp), %eax
                    movl      %eax, %ecx
                    movl      12(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -12(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -12(%ebp), %eax
                    leave
                    ret
            _main:
                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $72, %esp
                    movl      $1, %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
     L_loop_test1:
                    movl      $20, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    cmpl      %ecx, %eax
                    setl      %al
                    movzbl    %al, %eax
                    movl      %eax, %ecx
                    leal      -20(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -20(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_loop_body2
                    jmp       L_loop_exit3
     L_loop_body2:
                    movl      $1, %eax
                    movl      %eax, %ecx
                    leal      -12(%ebp), %eax
                    movl      %ecx, (%eax)
     L_loop_test4:
                    movl      $10, %eax
                    movl      %eax, %ecx
                    movl      -12(%ebp), %eax
                    cmpl      %ecx, %eax
                    setl      %al
                    movzbl    %al, %eax
                    movl      %eax, %ecx
                    leal      -28(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -28(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_loop_body5
                    jmp       L_loop_exit6
     L_loop_body5:
                    movl      -4(%ebp), %eax
                    movl      %eax, (%esp)
                    movl      -12(%ebp), %eax
                    movl      %eax, 4(%esp)
                    call      _f
                    movl      %eax, %ecx
                    leal      -44(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -44(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -36(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -36(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
                    movl      $3, %eax
                    movl      %eax, %ecx
                    movl      -12(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -52(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -52(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -12(%ebp), %eax
                    movl      %ecx, (%eax)
                    jmp       L_loop_test4
     L_loop_exit6:
                    nop
                    movl      $5, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -60(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -60(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
                    jmp       L_loop_test1
     L_loop_exit3:
                    nop
                    movl      $0, %eax
                    leave
                    ret

