	.file	"threeConsecutiveOdds.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	threeConsecutiveOdds
	.type	threeConsecutiveOdds, @function
threeConsecutiveOdds:
	addi	sp,sp,-48
	sd	s0,40(sp)
	addi	s0,sp,48
	sd	a0,-40(s0)
	mv	a5,a1
	sw	a5,-44(s0)
	sw	zero,-20(s0)
	lw	a5,-44(s0)
	sext.w	a4,a5
	li	a5,2
	bgt	a4,a5,.L2
	li	a5,0
	j	.L3
.L2:
	sw	zero,-24(s0)
	j	.L4
.L7:
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L5
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,3
	bne	a4,a5,.L6
	li	a5,1
	j	.L3
.L5:
	sw	zero,-20(s0)
.L6:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L4:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L7
	li	a5,0
.L3:
	mv	a0,a5
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	threeConsecutiveOdds, .-threeConsecutiveOdds
	.section	.rodata
	.align	3
.LC3:
	.string	"The answer1 is %d\n"
	.align	3
.LC4:
	.string	"The answer2 is %d\n"
	.align	3
.LC5:
	.string	"The answer3 is %d\n"
	.align	3
.LC0:
	.word	2
	.word	6
	.word	4
	.word	1
	.align	3
.LC1:
	.word	1
	.word	2
	.word	34
	.word	3
	.word	4
	.word	5
	.word	7
	.word	23
	.word	12
	.align	3
.LC2:
	.word	1
	.word	3
	.word	5
	.word	7
	.word	9
	.word	11
	.word	13
	.word	15
	.word	17
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-144
	sd	ra,136(sp)
	sd	s0,128(sp)
	addi	s0,sp,144
	mv	a5,a0
	sd	a1,-144(s0)
	sw	a5,-132(s0)
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	ld	a4,0(a5)
	sd	a4,-40(s0)
	ld	a5,8(a5)
	sd	a5,-32(s0)
	lui	a5,%hi(.LC1)
	addi	a5,a5,%lo(.LC1)
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	sd	a1,-80(s0)
	sd	a2,-72(s0)
	sd	a3,-64(s0)
	sd	a4,-56(s0)
	lw	a5,32(a5)
	sw	a5,-48(s0)
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	sd	a1,-120(s0)
	sd	a2,-112(s0)
	sd	a3,-104(s0)
	sd	a4,-96(s0)
	lw	a5,32(a5)
	sw	a5,-88(s0)
	addi	a5,s0,-40
	li	a1,4
	mv	a0,a5
	call	threeConsecutiveOdds
	mv	a5,a0
	sb	a5,-17(s0)
	addi	a5,s0,-80
	li	a1,9
	mv	a0,a5
	call	threeConsecutiveOdds
	mv	a5,a0
	sb	a5,-18(s0)
	addi	a5,s0,-120
	li	a1,9
	mv	a0,a5
	call	threeConsecutiveOdds
	mv	a5,a0
	sb	a5,-19(s0)
	lbu	a5,-17(s0)
	sext.w	a5,a5
	mv	a1,a5
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	lbu	a5,-18(s0)
	sext.w	a5,a5
	mv	a1,a5
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	printf
	lbu	a5,-19(s0)
	sext.w	a5,a5
	mv	a1,a5
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	printf
	li	a5,0
	mv	a0,a5
	ld	ra,136(sp)
	ld	s0,128(sp)
	addi	sp,sp,144
	jr	ra
	.size	main, .-main
	.ident	"GCC: (g2ee5e430018) 12.2.0"
