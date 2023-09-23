.data
	msg1: .asciiz "enter base:"
    msg2: .asciiz "enter power:"
    msg3: .asciiz "the answer is:"
	
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

    addi $t2,$0,0
    addi $t4,$0,1

    loop:
        slt $t3,$t2,$t1
        beq $t3,$0,Exit

        mul $t4,$t4,$t0

        addi $t2,$t2,1
        j loop


    Exit:
        li $v0,4
        la $a0,msg3
        syscall
        
        li $v0, 1
        move $a0, $t4
        syscall

        jr $ra


.end main 







