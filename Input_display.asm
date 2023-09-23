.data
	msg1: .asciiz "enter your name:"
	msg2: .asciiz "\n enter your age:"
	msg3: .asciiz " Welcome! Your name is "
	msg4: .asciiz " and you are "
	msg5: .asciiz " years old "
.text
.globl main
.ent main
main:
	li $v0,4
	la $a0,msg1
	syscall

      li $v0,8
      syscall
      move $t0,$v0
	
      
      li $v0,4
      la $a0,msg2
      syscall

      li $v0,5
      syscall
      move $t1,$v0
      
      li $v0,4
	la $a0, msg3
	syscall

	li $v0, 4
	la $a0,msg1
	syscall

	li $v0,4
	la $a0,msg4
	syscall

	li $v0,1
	move $a0,$t1
	syscall

	li $v0,4
	la $a0,msg5
	syscall

      jr $ra

.end main
