.data
	msg1: .asciiz "enter positive integer:"
	msg2: .asciiz "Sum ="
	
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
    add $t0,$t0,$t1
    add $t2,$0,$0

    loop:
        slt $t3,$t1,$t0
        beq $t3,$0,Exit

        add $t2,$t2,$t1

        addi $t1,$t1,1
        j loop

    Exit:
        li $v0,4
        la $a0,msg2
        syscall

        li $v0,1
        move $a0,$t2
        syscall
        
        jr $ra


.end main 







