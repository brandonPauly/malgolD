                    .data
   _printf_string:
                    .ascii    "%d\n\0"
                    .text
                    .global _main

            _max2:
                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $16, %esp
                    movl      12(%ebp), %eax
                    movl      %eax, %ecx
                    movl      8(%ebp), %eax
                    cmpl      %ecx, %eax
                    setg      %al
                    movzbl    %al, %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -4(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_if_true1
                    jmp       L_if_false2
       L_if_true1:
                    movl      8(%ebp), %eax
                    leave
                    ret
                    jmp       L_if_end3
      L_if_false2:
                    movl      12(%ebp), %eax
                    leave
                    ret
        L_if_end3:
                    nop
            _max4:
                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $56, %esp
                    movl      8(%ebp), %eax
                    movl      %eax, (%esp)
                    movl      12(%ebp), %eax
                    movl      %eax, 4(%esp)
                    call      _max2
                    movl      %eax, %ecx
                    leal      -28(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -28(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      16(%ebp), %eax
                    movl      %eax, (%esp)
                    movl      20(%ebp), %eax
                    movl      %eax, 4(%esp)
                    call      _max2
                    movl      %eax, %ecx
                    leal      -36(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -36(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -12(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -4(%ebp), %eax
                    movl      %eax, (%esp)
                    movl      -12(%ebp), %eax
                    movl      %eax, 4(%esp)
                    call      _max2
                    movl      %eax, %ecx
                    leal      -44(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -44(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -20(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -20(%ebp), %eax
                    leave
                    ret
            _main:
                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $72, %esp
                    movl      $10, %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      $30, %eax
                    movl      %eax, %ecx
                    leal      -12(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -4(%ebp), %eax
                    movl      %eax, (%esp)
                    movl      $20, %eax
                    movl      %eax, 4(%esp)
                    movl      -12(%ebp), %eax
                    movl      %eax, 8(%esp)
                    movl      $40, %eax
                    movl      %eax, 12(%esp)
                    call      _max4
                    movl      %eax, %ecx
                    leal      -28(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -28(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -20(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -20(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
                    movl      $40, %eax
                    movl      %eax, (%esp)
                    movl      -12(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $20, %eax
                    movl      %eax, 8(%esp)
                    movl      -4(%ebp), %eax
                    movl      %eax, 12(%esp)
                    call      _max4
                    movl      %eax, %ecx
                    leal      -36(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -36(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -20(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -20(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
                    movl      $1, %eax
                    movl      %eax, (%esp)
                    movl      -12(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      -4(%ebp), %eax
                    movl      %eax, 8(%esp)
                    movl      -4(%ebp), %eax
                    movl      %eax, 12(%esp)
                    call      _max4
                    movl      %eax, %ecx
                    leal      -44(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -44(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -20(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -20(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
                    movl      -4(%ebp), %eax
                    movl      %eax, (%esp)
                    movl      -4(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      -4(%ebp), %eax
                    movl      %eax, 8(%esp)
                    movl      -4(%ebp), %eax
                    movl      %eax, 12(%esp)
                    call      _max4
                    movl      %eax, %ecx
                    leal      -52(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -52(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -20(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -20(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
                    movl      $0, %eax
                    leave
                    ret

