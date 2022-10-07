.data
test0: .word 2, 6, 4, 1
test1: .word 1, 2, 34, 3, 4, 5, 7, 23, 12
test2: .word 1, 3, 5, 7, 9, 11, 13, 15, 17
str0:  .string "\nThe answer is false\n"
str1:  .string "\nThe answer is true\n"
str2:  .string " "
.text
# s1 : array base address
# s2 : the size of array(int arrSize)
# s3 : int count = 0
# s4 : 3
# t0 = i
# t1 = arr[i]
# t2 # the value of (*(array + i) & 1) 
# t3 :1
main:
    la s1, test0              # Load the address to s1
    addi s2, x0, 4            # Load the array size to s2
    addi s4, x0, 3            # Load the constant s4 = 3
    addi t3, x0, 1            # Load the constant t3 = 1
    jal ra, print_number
    la s1, test0              # Load the address to s1
    addi s2, x0, 4            # Load the array size to s2
    jal ra, threeConsecutiveOdds
    la s1, test1              # Load the address to s1
    addi s2, x0, 9            # Load the array size to s2
    addi s4, x0, 3            # Load the constant s4 = 3
    addi t3, x0, 1            # Load the constant t3 = 1
    jal ra, print_number
    la s1, test1              # Load the address to s1
    addi s2, x0, 4            # Load the array size to s2
    jal ra, threeConsecutiveOdds
    la s1, test2              # Load the address to s1
    addi s2, x0, 9            # Load the array size to s2
    addi s4, x0, 3            # Load the constant s4 = 3
    addi t3, x0, 1            # Load the constant t3 = 1
    jal ra, print_number
    la s1, test2        # Load the address to s1
    addi s2, x0, 4            # Load the array size to s2
    jal ra, threeConsecutiveOdds
    j Exit
    
print_number:
    lw t1, 0(s1)
    addi s1, s1, 4
    addi a0, t1, 0
    li, a7, 1
    ecall
    la a0, str2     #load string
    li a7, 4        # Call system call, and print string
    ecall    
    addi s2, s2, -1
    bge s2, t3, print_number
    ret
    
threeConsecutiveOdds: 
    add t0, x0, x0         # int i = 0;
    blt s2, s4, false      # if(arrSize < 3) return false
    #j forloop        # arrSize >= 3, and will go to forloop
forloop: 
    lw t1, 0(s1)            # Load the value of s1 to t1
    addi s1, s1, 4          # *(arr + 1)  
    andi t2, t1, 1          # (*(arr + i) & 1) and t2 will store it
    beq t3, t2, isEqual     # (*(arr + i) & 1) equal 1 or not
    addi s3, x0, 0          # count = 0
    addi t0, t0, 1          # i = i + 1
    blt t0, s2, forloop     # if i < arrSize
    j false
isEqual:
    addi s3, s3, 1        # ++count
    beq s3, s4, true      # if(++count == 3)
    j forloop             # return to the forloop 
true: 
    la a0, str1    #load string
    li a7, 4       # Call system call, and print string
    ecall
    ret
#   j Exit
false: 
    la a0, str0    #load string
    li a7, 4    # Call system call, and print string
    ecall
    ret
#    j Exit  
Exit:
    li a7, 10           # Exit the program
    ecall
