.data
	cTemp: .word 27
    fTemp: .word 0
	
.text
.globl main
.ent main
main:
    lw $t0, cTemp
    li $t1, 9
    li $t2, 5

    mul $t3, $t1, $t0
    addi $t4, $t3, 2
    div $t4, $t2
    mflo $t5
    addi $t1, $t5, 32

    sw $t1, fTemp

    li $v0, 1
    move $a0, $t1
    syscall

    jr $ra

.end main









