.data
	msg1: .asciiz "enter dividend:"
	msg2: .asciiz "enter divisor:"
	msg3: .asciiz " quotient is "
    msg4: .asciiz " remainder is "
	
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

    div $t2,$t0,$t1
    mflo $t3
    mfhi $t4

    li $v0,4
	la $a0,msg3
	syscall

    li $v0,1
    move $a0,$t3
    syscall

    li $v0,4
	la $a0,msg4
	syscall

    li $v0,1
    move $a0,$t4
    syscall

    jr $ra

.end main









