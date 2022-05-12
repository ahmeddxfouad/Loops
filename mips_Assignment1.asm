.data
arrSize: .word 10     
arrElements: .word 4,5,9,3,12,15,13,7,6,14

.text 
la $t0,arrSize      # load the address of array size

lw  $s0, 0($t0)      # load the value of array size s0=5
la $t0,arrElements  # load the address of array elements

addi $s1,$zero,1  # i =1

lw $t8,0($t0) #t8 is the largest element f
lw $t9,0($t0) #t9 is the smallest element k

For:

beq $s1,$s0,EndFor  # if t2=zero branch to EndFor (if i>5 exit from loop)

mul $t1,$s1,4         # multiply s1(i) by 4 
add $t3,$t0,$t1        # add i*4 to base address register(t0) to move one word at a time

lw  $s2, 0($t3)       # load the value of the array  'y'


bge $t8,$s2,Small #if $t8 >= $2 then Small      convert it slt and beq
move $t8,$s2

Small :

ble $t9,$s2,Last #if $t9 <= $2 then Last
move $t9,$s2

Last :

addi $s1,$s1,1        # i++


j For

EndFor:
