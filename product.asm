.data
	msg1: .asciiz "enter first integer:"
	msg2: .asciiz "\n enter second integer:"
	msg3: .asciiz " product is "
	
.text
.globl main
.ent main
main:
    li $v0,4
	la $a0,msg1
	syscall

    li $v0,5
    syscall
    move $t0,$v0

    li $v0,4
	la $a0,msg2
	syscall

    li $v0,5
    syscall
    move $t1,$v0

    mul $t2,$t0,$t1
    mflo $t3
    mfhi $t4

    add $t5,$t4,$t3

    li $v0,4
	la $a0,msg3
	syscall

    li $v0,1
    move $a0,$t5
    syscall

    jr $ra

.end main









