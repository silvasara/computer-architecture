	.data
buffer: .space 20	
	
	.text

main: 
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	addi $t0, $t0, 1
	li $v0, 8
	la $a0, buffer
	la $a1, ($t0)
	move $t1, $a0
	syscall
	
	la $a0, buffer #reload byte space to primary address
        move $a0,$t1 # primary address = t0 address (load pointer)
        li $v0,4 # print string
        syscall

compare:
    lb      $t2,0($t0)          # get next char in 'Input'
    addi    $t0,$t0,1           # advance pointer to next char

    beq     $t2,$s2,done        # is current char 0?  if yes, fly and print

    bne     $t2,$t3,compare     # does current match check? If no, loop
    addi    $s1,$s1,1           # yes, increment count
    b       compare             # loop

done:
    li      $v0,1               # print_int syscall
    move    $a0,$s1             # get total count to correct register
    syscall
compara
	
	
         li $v0,10 #end program
         syscall