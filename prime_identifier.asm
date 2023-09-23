.data
	msg1: .asciiz "enter some integer:"
    msg3: .asciiz "The number is composite"
    msg4: .asciiz "The number is prime"
	
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

    addi $t1,$0,2

    loop:
        slt $t2,$t1,$t0
        beq $t2,$0,Exit

        div $t0,$t1
        mfhi $t3

        beq $t3,$0,label

        addi $t1,$t1,1
        j loop

    label:
        li $v0,4
        la $a0,msg3
        syscall

        jr $ra

    Exit:
        li $v0,4
        la $a0,msg4
        syscall
        
        jr $ra


.end main 







