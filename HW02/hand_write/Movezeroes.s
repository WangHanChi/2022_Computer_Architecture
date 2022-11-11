.org 0
.global _start

/* newlib system calls */
.set SYSEXIT, 93
.set SYSWRITE, 64

.data
nums0:
	.word 1, 0, 0, 2, 5
	.set arr0_size, .-nums0
nums1:
    .word 1, 9, 0, 6, 7
    .set arr1_size, .-nums1
nums2:
    .word 0, 0, 0, 0, 4
    .set arr2_size, .-nums2

# a-area
# a0 : standard output
# a1 : the address of array
# a2 : the size of array

# s-area
# s1 : the base address of the array

# t-area
# t0 : the size of array
# t1 : temporary store s1

.text
_start:
	la s1, nums0
    addi t0, x0, arr0_size
    jal ra, printf
    j exit
	
printf:

    li a7, SYSWRITE
    li a0, 1
    lw a1, s1
    addi a1, a1, 48
    li a2, 1
    ecall
    jr ra

exit:
    li a7, SYSEXIT
    addi a0, x0, 0
    ecall



