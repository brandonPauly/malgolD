                    .data
   _printf_string:
                    .ascii    "%d\n\0"
                    .text
                    .global _main

            _main:
                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $172, %esp
                    leal      -48(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -56(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      $4, %eax
                    movl      %eax, %ecx
                    movl      $1, %eax
                    imull     %ecx, %eax
                    movl      %eax, %ecx
                    leal      -64(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -64(%ebp), %eax
                    movl      %eax, %ecx
                    movl      -56(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -56(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      $1, %eax
                    movl      %eax, %ecx
                    leal      -56(%ebp), %eax
                    movl      (%eax), %eax
                    movl      %ecx, (%eax)
                    movl      $2, %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
     L_loop_test1:
                    movl      $10, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    cmpl      %ecx, %eax
                    setl      %al
                    movzbl    %al, %eax
                    movl      %eax, %ecx
                    leal      -72(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -72(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_loop_body2
                    jmp       L_loop_exit3
     L_loop_body2:
                    leal      -48(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -80(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      $4, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    imull     %ecx, %eax
                    movl      %eax, %ecx
                    leal      -88(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -88(%ebp), %eax
                    movl      %eax, %ecx
                    movl      -80(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -80(%ebp), %eax
                    movl      %ecx, (%eax)
                    leal      -48(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -96(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      $1, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    subl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -112(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      $4, %eax
                    movl      %eax, %ecx
                    movl      -112(%ebp), %eax
                    imull     %ecx, %eax
                    movl      %eax, %ecx
                    leal      -104(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -104(%ebp), %eax
                    movl      %eax, %ecx
                    movl      -96(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -96(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -4(%ebp), %eax
                    movl      %eax, %ecx
                    movl      -96(%ebp), %eax
                    movl      (%eax), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -120(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -120(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -80(%ebp), %eax
                    movl      (%eax), %eax
                    movl      %ecx, (%eax)
                    movl      $1, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -128(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -128(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
                    jmp       L_loop_test1
     L_loop_exit3:
                    nop
                    movl      $1, %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
     L_loop_test4:
                    movl      $10, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    cmpl      %ecx, %eax
                    setl      %al
                    movzbl    %al, %eax
                    movl      %eax, %ecx
                    leal      -136(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -136(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_loop_body5
                    jmp       L_loop_exit6
     L_loop_body5:
                    leal      -48(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -144(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      $4, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
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
                    movl      -144(%ebp), %eax
                    movl      (%eax), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
                    movl      $2, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -160(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -160(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
                    jmp       L_loop_test4
     L_loop_exit6:
                    nop
                    movl      $0, %eax
                    leave
                    ret

