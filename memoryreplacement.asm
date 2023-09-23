.data
	value: .word 10, 20, 0
.text 
.globl main
.ent main 
main:
	la $t0, value 
	lw $t1, 0($t0) 
	lw $t2, 4($t0) 
	sw $t1, 4($t0) 
	sw $t2, 0($t0)
	jr $ra 
.end main