	.data

quebra_linha: .asciiz "\n"

	.text
	
main:
	li $v0, 5
	syscall	
	
	move $a1, $v0
	move $s0, $zero
	
	jal loop
	
	move $a1, $v0
	
	li $v0,1
	la $a0, ($a1)
	syscall
	
	li $v0, 4
	la $a0, quebra_linha
	syscall
	
	li $v0, 10
	syscall
	
loop:
	slt $t0, $s0, $a1
	beq $t0, $zero, EXIT
	
	li $v0, 5
	syscall	
	
	move $s1, $v0
	
	add $s2, $s2, $s1
	
	addi $s0, $s0, 1
	
	j loop
	
	EXIT:
	add $v0, $s2, $zero
	
	jr $ra
