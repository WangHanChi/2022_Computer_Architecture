.data
test0: .word 2, 6, 4, 1
test1: .word 1, 2, 34, 3, 4, 5, 7, 23, 12
test2: .word 1, 3, 5, 7, 9, 11, 13, 15, 17
str0:  .string "\nThe answer is false\n"
str1:  .string "\nThe answer is true\n"
str2:  .string " "
.text
# a0 : save the return value
# a1 : the base address of arr
# a2 : the size of arr
# t0 : i
# t1 : count
# s0 : arr[i]
# s1 : the value of (*(arr + 1) & 1)

main:
    addi s2, x0, 3
    addi t3, x0, 1            # Load the constant t3 = 1        
    la a1, test0        # Load the address to s1
    addi a2, x0, 4            # Load the array size to s2
    jal ra, print_number
    la a1, test1              # Load the address to s1
    addi a2, x0, 9            # Load the array size to s2
    jal ra, print_number 
    la a1, test2        # Load the address to s1
    addi a2, x0, 9            # Load the array size to s2
    jal ra, print_number
    j Exit
print_number:
    mv t2, a2
    lw s0, 0(a1)
    addi a1, a1, 4
    addi a0, s0, 0
    li, a7, 1
    ecall
    la a0, str2    #load string
    li a7, 4    # Call system call, and print string
    ecall    
    addi a2, a2, -1
    bge a2, t3, print_number
threeConsecutiveOdds: 
	add t0, x0, x0         # int i = 0;
    blt s2, s3, false      # if(arrSize < 3) return false
forloop: 
    lw s0, 0(a1)            # Load the value of s1 to t1
    addi a1, a1, 4          # *(arr + 1)  
    andi s1, s0, 1          # (*(arr + i) & 1) and t2 will store it
    beq t3, s1, isEqual     # (*(arr + i) & 1) equal 1 or not
    addi t1, x0, 0          # count = 0
    addi t0, t0, 1          # i = i + 1
    blt t0, s2, forloop     # if i < arrSize
    j false
isEqual:
    addi t1, t1, 1        # ++count
    beq s2, t1, true      # if(++count == 3)
    j forloop             # return to the forloop 
true: 
    la a0, str1    #load string
    li a7, 4    # Call system call, and print string
    ecall
    ret
false: 
    la a0, str0    #load string
    li a7, 4    # Call system call, and print string
    ecall
    ret
Exit:
    li a7, 10           # Exit the program
    ecall
    
