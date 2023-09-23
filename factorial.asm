.data
	msg1: .asciiz "enter positive integer:"
	msg2: .asciiz "factorial ="
	
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

    addi $t1,$0,1
    add $t2,$t0,$t1
    addi $t5,$0,1

    loop:
        slt $t3,$t1,$t2
        beq $t3,$0,Exit

        mul $t5,$t5,$t1

        addi $t1,$t1,1
        j loop

    Exit:
        li $v0,4
        la $a0,msg2
        syscall

        li $v0,1
        move $a0,$t5
        syscall
        
        jr $ra


.end main 







