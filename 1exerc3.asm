	.data
	
A: .asciiz "A\n"
B: .asciiz "B\n"
C: .asciiz "C\n"
D: .asciiz "D\n"
E: .asciiz "E\n"

	.text
	
main:
	li, $v0, 5
	syscall
	
	move $t0, $v0
	
	beq $t0, $zero, notaE
	bge $t0, 86, notaA
	
	slti $t1, $t0, 86
	slti $t2, $t0, 61
	
	and $t3, $t1, $t2
	beq $t3, $zero, notaB
			
	slti $t1, $t0, 61
	slti $t2, $t0, 36
	
	and $t3, $t1, $t2
	beq $t3, $zero, notaC
	
	slti $t1, $t0, 36
	slti $t2, $t0, 1
	
	and $t3, $t1, $t2
	beq $t3, $zero, notaD
	
notaA:
	li, $v0, 4
	la, $a0, A
	syscall
	
	j termina
	
notaB:
	li, $v0, 4
	la, $a0, B
	syscall
	
	j termina
	
notaC:
	li, $v0, 4
	la, $a0, C
	syscall
	
	j termina
	
notaD:
	li, $v0, 4
	la, $a0, D
	syscall
	
	j termina
	
notaE:
	li, $v0, 4
	la, $a0, E
	syscall
	
termina: 
	li $v0, 10
	syscall