                    .data
   _printf_string:
                    .ascii    "%d\n\0"
                    .text
                    .global _main

             _max:
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
        _arrayMax:
                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $80, %esp
                    movl      $1, %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
                    leal      8(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -20(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      $4, %eax
                    movl      %eax, %ecx
                    movl      $0, %eax
                    imull     %ecx, %eax
                    movl      %eax, %ecx
                    leal      -28(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -28(%ebp), %eax
                    movl      %eax, %ecx
                    movl      -20(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -20(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -20(%ebp), %eax
                    movl      (%eax), %eax
                    movl      %eax, %ecx
                    leal      -12(%ebp), %eax
                    movl      %ecx, (%eax)
     L_loop_test4:
                    movl      $20, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    cmpl      %ecx, %eax
                    setl      %al
                    movzbl    %al, %eax
                    movl      %eax, %ecx
                    leal      -36(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -36(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_loop_body5
                    jmp       L_loop_exit6
     L_loop_body5:
                    leal      8(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -44(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      $4, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    imull     %ecx, %eax
                    movl      %eax, %ecx
                    leal      -52(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -52(%ebp), %eax
                    movl      %eax, %ecx
                    movl      -44(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -44(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -12(%ebp), %eax
                    movl      %eax, (%esp)
                    movl      -44(%ebp), %eax
                    movl      (%eax), %eax
                    movl      %eax, 4(%esp)
                    call      _max
                    movl      %eax, %ecx
                    leal      -60(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -60(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -12(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      $1, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -68(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -68(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
                    jmp       L_loop_test4
     L_loop_exit6:
                    nop
                    movl      -12(%ebp), %eax
                    leave
                    ret
            _main:
                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $228, %esp
                    movl      $0, %eax
                    movl      %eax, %ecx
                    leal      -88(%ebp), %eax
                    movl      %ecx, (%eax)
     L_loop_test7:
                    movl      $20, %eax
                    movl      %eax, %ecx
                    movl      -88(%ebp), %eax
                    cmpl      %ecx, %eax
                    setl      %al
                    movzbl    %al, %eax
                    movl      %eax, %ecx
                    leal      -96(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -96(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_loop_body8
                    jmp       L_loop_exit9
     L_loop_body8:
                    movl      $2, %eax
                    movl      %eax, %ecx
                    movl      -88(%ebp), %eax
                    cltd
                    idivl     %ecx
                    movl      %edx, %eax
                    movl      %eax, %ecx
                    leal      -104(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      $0, %eax
                    movl      %eax, %ecx
                    movl      -104(%ebp), %eax
                    cmpl      %ecx, %eax
                    setz      %al
                    movzbl    %al, %eax
                    movl      %eax, %ecx
                    leal      -112(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -112(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_if_true10
                    jmp       L_if_false11
      L_if_true10:
                    leal      -80(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -120(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      $4, %eax
                    movl      %eax, %ecx
                    movl      -88(%ebp), %eax
                    imull     %ecx, %eax
                    movl      %eax, %ecx
                    leal      -128(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -128(%ebp), %eax
                    movl      %eax, %ecx
                    movl      -120(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -120(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -88(%ebp), %eax
                    negl      %eax
                    movl      %eax, %ecx
                    leal      -136(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -136(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -120(%ebp), %eax
                    movl      (%eax), %eax
                    movl      %ecx, (%eax)
                    jmp       L_if_end12
     L_if_false11:
                    leal      -80(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -144(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      $4, %eax
                    movl      %eax, %ecx
                    movl      -88(%ebp), %eax
                    imull     %ecx, %eax
                    movl      %eax, %ecx
                    leal      -152(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -152(%ebp), %eax
                    movl      %eax, %ecx
                    movl      -144(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -144(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -88(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -144(%ebp), %eax
                    movl      (%eax), %eax
                    movl      %ecx, (%eax)
       L_if_end12:
                    nop
                    movl      $1, %eax
                    movl      %eax, %ecx
                    movl      -88(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -160(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -160(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -88(%ebp), %eax
                    movl      %ecx, (%eax)
                    jmp       L_loop_test7
     L_loop_exit9:
                    nop
                    leal      -80(%ebp), %eax
                    movl      %eax, (%esp)
                    call      _arrayMax
                    movl      %eax, %ecx
                    leal      -168(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -168(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
                    leal      -80(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -176(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      $4, %eax
                    movl      %eax, %ecx
                    movl      $19, %eax
                    imull     %ecx, %eax
                    movl      %eax, %ecx
                    leal      -184(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -184(%ebp), %eax
                    movl      %eax, %ecx
                    movl      -176(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -176(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      $0, %eax
                    movl      %eax, %ecx
                    leal      -176(%ebp), %eax
                    movl      (%eax), %eax
                    movl      %ecx, (%eax)
                    leal      -80(%ebp), %eax
                    movl      %eax, (%esp)
                    call      _arrayMax
                    movl      %eax, %ecx
                    leal      -192(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -192(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
                    leal      -80(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -200(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      $4, %eax
                    movl      %eax, %ecx
                    movl      $10, %eax
                    imull     %ecx, %eax
                    movl      %eax, %ecx
                    leal      -208(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -208(%ebp), %eax
                    movl      %eax, %ecx
                    movl      -200(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -200(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      $101, %eax
                    movl      %eax, %ecx
                    leal      -200(%ebp), %eax
                    movl      (%eax), %eax
                    movl      %ecx, (%eax)
                    leal      -80(%ebp), %eax
                    movl      %eax, (%esp)
                    call      _arrayMax
                    movl      %eax, %ecx
                    leal      -216(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -216(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
                    movl      $0, %eax
                    leave
                    ret

