                    .data
   _printf_string:
                    .ascii    "%d\n\0"
                    .text
                    .global _main

               _g:
                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $8, %esp
                    movl      $3, %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
                    movl      $4, %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
                    movl      $5, %eax
                    leave
                    ret
               _f:
                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $24, %esp
                    movl      $2, %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
                    call      _g
                    movl      %eax, %ecx
                    leal      -12(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -12(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -4(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
                    movl      $6, %eax
                    leave
                    ret
            _main:
                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $24, %esp
                    movl      $1, %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
                    call      _f
                    movl      %eax, %ecx
                    leal      -12(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -12(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
                    movl      -4(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
                    movl      $0, %eax
                    leave
                    ret

