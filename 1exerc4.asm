	.data
	
quebra_linha: .asciiz "\n"

	.text
	
main:
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	slti $t1, $t0, 11
	beq $t1, 1, caso1
	
	slti $t1, $t0, 31
	slti $t2, $t0, 11
	or $t3, $t1, $t2
	beq $t3, 1, caso2

	slti $t1, $t0, 101
	slti $t2, $t0, 31
	or $t3, $t1, $t2
	beq $t3, 1, caso3
	
	bge $t0, 101, caso4	
	 
caso1:
	li $v0, 1
	la $a0, 7
	syscall 
	
	li $v0, 4
	la $a0, quebra_linha
	syscall
	
	j termina
	
caso2:
	subi $t4, $t0, 10
	addi $t4, $t4, 7
	
	li $v0, 1
	la $a0, ($t4)
	syscall 
	
	li $v0, 4
	la $a0, quebra_linha
	syscall
	
	j termina
	
caso3:
	subi $t4, $t0, 30
	mul $t4, $t4, 2
	addi $t4, $t4, 27
	
	li $v0, 1
	la $a0, ($t4)
	syscall 
	
	li $v0, 4
	la $a0, quebra_linha
	syscall
	
	j termina
	
caso4:
	subi $t4, $t0, 100
	mul $t4, $t4, 5
	addi $t4, $t4, 167
	
	li $v0, 1
	la $a0, ($t4)
	syscall 
	
	li $v0, 4
	la $a0, quebra_linha
	syscall
	
termina:
	li $v0, 10
	syscall

