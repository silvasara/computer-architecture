.data:
	quebra_linha: .asciiz "\n"

.text:
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	li $v0, 5
	syscall
	
	move $t1, $v0
	
	sub $t2, $t0, $t1
	
	li $v0, 1
	la $a0, ($t2)
	syscall
	
	li $v0, 4
	la $a0, quebra_linha
	syscall
	  