.data
	msg1: .asciiz "Enter first integer:"
    msg2: .asciiz "Enter the 2nd integer:"
    msg3: .asciiz "Enter the 3rd integer"
	msg4: .asciiz "Your average is: "
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

    li $v0,4
	la $a0,msg3
	syscall

    li $v0,5
    syscall
    move $t2,$v0

    move $a0, $t0
    move $a1, $t1
    move $a2, $t2

    jal Average

    move $t0, $v0

    li $v0,4
	la $a0,msg4
	syscall

    li $v0,1
    move $a0, $t0
	syscall

    li $v0, 10
    syscall
.end main 

Average:
    addi $sp, $sp, -4
    sw $s0, 0($sp)
    add $s0, $a0, $a1
    add $s0, $s0, $a2 # a+b+c
    li $t4, 3
    div $s0, $t4
    mflo $t5
    mfhi $t6
    lw $s0, 0($sp)
    addi $sp, $sp, 4
    move $v0, $t5
    jr $ra




