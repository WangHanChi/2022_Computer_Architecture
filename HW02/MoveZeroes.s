	.file	"MoveZeroes.c"
	.option nopic
	.attribute arch, "rv32i2p1"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	moveZeroes
	.type	moveZeroes, @function
moveZeroes:
	addi	sp,sp,-48
	sw	s0,44(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	zero,-20(s0)
	sw	zero,-24(s0)
	j	.L2
.L5:
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	beq	a5,zero,.L3
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a4,a4,a5
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a3,-36(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	beq	a4,a5,.L4
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	sw	zero,0(a5)
.L4:
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L3:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	blt	a4,a5,.L5
	nop
	nop
	lw	s0,44(sp)
	addi	sp,sp,48
	jr	ra
	.size	moveZeroes, .-moveZeroes
	.section	.rodata
	.align	2
.LC1:
	.string	"Test 0 :"
	.align	2
.LC2:
	.string	"%d "
	.align	2
.LC3:
	.string	"Test 1 :"
	.align	2
.LC4:
	.string	"Test 2 :"
	.align	2
.LC0:
	.word	0
	.word	1
	.word	0
	.word	3
	.word	12
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-112
	sw	ra,108(sp)
	sw	s0,104(sp)
	addi	s0,sp,112
	sw	a0,-100(s0)
	sw	a1,-104(s0)
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	lw	a1,0(a5)
	lw	a2,4(a5)
	lw	a3,8(a5)
	lw	a4,12(a5)
	lw	a5,16(a5)
	sw	a1,-60(s0)
	sw	a2,-56(s0)
	sw	a3,-52(s0)
	sw	a4,-48(s0)
	sw	a5,-44(s0)
	sw	zero,-64(s0)
	sw	zero,-88(s0)
	sw	zero,-84(s0)
	sw	zero,-80(s0)
	sw	zero,-76(s0)
	sw	zero,-72(s0)
	li	a5,1
	sw	a5,-68(s0)
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	puts
	sw	zero,-20(s0)
	j	.L7
.L8:
	lw	a5,-20(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-44(a5)
	mv	a1,a5
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L7:
	lw	a4,-20(s0)
	li	a5,4
	ble	a4,a5,.L8
	li	a0,10
	call	putchar
	addi	a5,s0,-60
	li	a1,5
	mv	a0,a5
	call	moveZeroes
	sw	zero,-24(s0)
	j	.L9
.L10:
	lw	a5,-24(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-44(a5)
	mv	a1,a5
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L9:
	lw	a4,-24(s0)
	li	a5,4
	ble	a4,a5,.L10
	li	a0,10
	call	putchar
	li	a0,10
	call	putchar
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	puts
	sw	zero,-28(s0)
	j	.L11
.L12:
	lw	a5,-28(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-48(a5)
	mv	a1,a5
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L11:
	lw	a5,-28(s0)
	ble	a5,zero,.L12
	li	a0,10
	call	putchar
	addi	a5,s0,-64
	li	a1,1
	mv	a0,a5
	call	moveZeroes
	sw	zero,-32(s0)
	j	.L13
.L14:
	lw	a5,-32(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-48(a5)
	mv	a1,a5
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L13:
	lw	a5,-32(s0)
	ble	a5,zero,.L14
	li	a0,10
	call	putchar
	li	a0,10
	call	putchar
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	puts
	sw	zero,-36(s0)
	j	.L15
.L16:
	lw	a5,-36(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-72(a5)
	mv	a1,a5
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L15:
	lw	a4,-36(s0)
	li	a5,5
	ble	a4,a5,.L16
	li	a0,10
	call	putchar
	addi	a5,s0,-88
	li	a1,6
	mv	a0,a5
	call	moveZeroes
	sw	zero,-40(s0)
	j	.L17
.L18:
	lw	a5,-40(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-72(a5)
	mv	a1,a5
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	lw	a5,-40(s0)
	addi	a5,a5,1
	sw	a5,-40(s0)
.L17:
	lw	a4,-40(s0)
	li	a5,5
	ble	a4,a5,.L18
	li	a0,10
	call	putchar
	li	a0,10
	call	putchar
	li	a5,0
	mv	a0,a5
	lw	ra,108(sp)
	lw	s0,104(sp)
	addi	sp,sp,112
	jr	ra
	.size	main, .-main
	.ident	"GCC: (xPack GNU RISC-V Embedded GCC x86_64) 12.2.0"
