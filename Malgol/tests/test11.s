                    .data
   _printf_string:
                    .ascii    "%d\n\0"
                    .text
                    .global _main

          _choose:
                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $72, %esp
                    movl      $0, %eax
                    movl      %eax, %ecx
                    movl      12(%ebp), %eax
                    cmpl      %ecx, %eax
                    setz      %al
                    movzbl    %al, %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -4(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_if_true1
                    jmp       L_if_false2
       L_if_true1:
                    movl      $1, %eax
                    leave
                    ret
                    jmp       L_if_end3
      L_if_false2:
                    movl      8(%ebp), %eax
                    movl      %eax, %ecx
                    movl      12(%ebp), %eax
                    cmpl      %ecx, %eax
                    setz      %al
                    movzbl    %al, %eax
                    movl      %eax, %ecx
                    leal      -12(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -12(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_if_true4
                    jmp       L_if_false5
       L_if_true4:
                    movl      $1, %eax
                    leave
                    ret
                    jmp       L_if_end6
      L_if_false5:
                    movl      $1, %eax
                    movl      %eax, %ecx
                    movl      8(%ebp), %eax
                    subl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -20(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -20(%ebp), %eax
                    movl      %eax, (%esp)
                    movl      12(%ebp), %eax
                    movl      %eax, 4(%esp)
                    call      _choose
                    movl      %eax, %ecx
                    leal      -28(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      $1, %eax
                    movl      %eax, %ecx
                    movl      8(%ebp), %eax
                    subl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -36(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      $1, %eax
                    movl      %eax, %ecx
                    movl      12(%ebp), %eax
                    subl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -44(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -36(%ebp), %eax
                    movl      %eax, (%esp)
                    movl      -44(%ebp), %eax
                    movl      %eax, 4(%esp)
                    call      _choose
                    movl      %eax, %ecx
                    leal      -52(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -52(%ebp), %eax
                    movl      %eax, %ecx
                    movl      -28(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -60(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -60(%ebp), %eax
                    leave
                    ret
        L_if_end6:
                    nop
        L_if_end3:
                    nop
            _main:
                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $72, %esp
                    movl      $5, %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
     L_loop_test7:
                    movl      $6, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    cmpl      %ecx, %eax
                    setle     %al
                    movzbl    %al, %eax
                    movl      %eax, %ecx
                    leal      -12(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -12(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_loop_body8
                    jmp       L_loop_exit9
     L_loop_body8:
                    movl      $0, %eax
                    movl      %eax, %ecx
                    leal      -20(%ebp), %eax
                    movl      %ecx, (%eax)
    L_loop_test10:
                    movl      -4(%ebp), %eax
                    movl      %eax, %ecx
                    movl      -20(%ebp), %eax
                    cmpl      %ecx, %eax
                    setle     %al
                    movzbl    %al, %eax
                    movl      %eax, %ecx
                    leal      -28(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -28(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_loop_body11
                    jmp       L_loop_exit12
    L_loop_body11:
                    movl      -4(%ebp), %eax
                    movl      %eax, (%esp)
                    movl      -20(%ebp), %eax
                    movl      %eax, 4(%esp)
                    call      _choose
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
                    leal      -44(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -44(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -20(%ebp), %eax
                    movl      %ecx, (%eax)
                    jmp       L_loop_test10
    L_loop_exit12:
                    nop
                    movl      $999999, %eax
                    negl      %eax
                    movl      %eax, %ecx
                    leal      -52(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -52(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
                    movl      $1, %eax
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
                    jmp       L_loop_test7
     L_loop_exit9:
                    nop
                    movl      $0, %eax
                    leave
                    ret

