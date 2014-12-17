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
            _main:
                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $104, %esp
                    movl      $1, %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
     L_loop_test4:
                    movl      $5, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    cmpl      %ecx, %eax
                    setl      %al
                    movzbl    %al, %eax
                    movl      %eax, %ecx
                    leal      -12(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -12(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_loop_body5
                    jmp       L_loop_exit6
     L_loop_body5:
                    movl      $1, %eax
                    movl      %eax, %ecx
                    leal      -20(%ebp), %eax
                    movl      %ecx, (%eax)
     L_loop_test7:
                    movl      $5, %eax
                    movl      %eax, %ecx
                    movl      -20(%ebp), %eax
                    cmpl      %ecx, %eax
                    setl      %al
                    movzbl    %al, %eax
                    movl      %eax, %ecx
                    leal      -28(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -28(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_loop_body8
                    jmp       L_loop_exit9
     L_loop_body8:
                    movl      $2, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    imull     %ecx, %eax
                    movl      %eax, %ecx
                    leal      -44(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      $90, %eax
                    movl      %eax, %ecx
                    movl      -44(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -52(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      $2, %eax
                    movl      %eax, %ecx
                    movl      -20(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -60(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      $20, %eax
                    movl      %eax, %ecx
                    movl      -60(%ebp), %eax
                    imull     %ecx, %eax
                    movl      %eax, %ecx
                    leal      -68(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -52(%ebp), %eax
                    movl      %eax, (%esp)
                    movl      -68(%ebp), %eax
                    movl      %eax, 4(%esp)
                    call      _max2
                    movl      %eax, %ecx
                    leal      -76(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -76(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -36(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -36(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
                    movl      $1, %eax
                    movl      %eax, %ecx
                    movl      -20(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -84(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -84(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -20(%ebp), %eax
                    movl      %ecx, (%eax)
                    jmp       L_loop_test7
     L_loop_exit9:
                    nop
                    movl      $1, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -92(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -92(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
                    jmp       L_loop_test4
     L_loop_exit6:
                    nop
                    movl      $0, %eax
                    leave
                    ret

