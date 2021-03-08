	.file	"eFruit.c"
	.intel_syntax noprefix
	.text
Ltext0:
	.globl	_ClearConsole
	.def	_ClearConsole;	.scl	2;	.type	32;	.endef
_ClearConsole:
LFB25:
	.file 1 "eFruit.c"
	.loc 1 4 0
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 88
	.loc 1 5 0
	mov	DWORD PTR [esp], -11
	call	_GetStdHandle@4
	sub	esp, 4
	mov	DWORD PTR [ebp-12], eax
	.loc 1 8 0
	mov	WORD PTR [ebp-48], 0
	mov	WORD PTR [ebp-46], 0
	.loc 1 10 0
	lea	eax, [ebp-38]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp-12]
	mov	DWORD PTR [esp], eax
	call	_GetConsoleScreenBufferInfo@8
	sub	esp, 8
	test	eax, eax
	je	L2
LBB2:
	.loc 1 12 0
	movzx	eax, WORD PTR [ebp-38]
	movsx	edx, ax
	movzx	eax, WORD PTR [ebp-36]
	cwde
	imul	eax, edx
	mov	DWORD PTR [ebp-16], eax
	.loc 1 14 0
	lea	eax, [ebp-44]
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [ebp-48]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [ebp-16]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+4], 32
	mov	eax, DWORD PTR [ebp-12]
	mov	DWORD PTR [esp], eax
	call	_FillConsoleOutputCharacterA@20
	sub	esp, 20
	.loc 1 15 0
	movzx	eax, WORD PTR [ebp-30]
	movzx	eax, ax
	lea	edx, [ebp-44]
	mov	DWORD PTR [esp+16], edx
	mov	edx, DWORD PTR [ebp-48]
	mov	DWORD PTR [esp+12], edx
	mov	edx, DWORD PTR [ebp-16]
	mov	DWORD PTR [esp+8], edx
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp-12]
	mov	DWORD PTR [esp], eax
	call	_FillConsoleOutputAttribute@20
	sub	esp, 20
L2:
LBE2:
	.loc 1 17 0
	mov	eax, DWORD PTR [ebp-48]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp-12]
	mov	DWORD PTR [esp], eax
	call	_SetConsoleCursorPosition@8
	sub	esp, 8
	.loc 1 18 0
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE25:
	.globl	_kCurrency
	.section .rdata,"dr"
_kCurrency:
	.byte	36
	.globl	_kPriceTangerine
	.align 8
_kPriceTangerine:
	.long	-1546188227
	.long	1072840048
	.globl	_kPricePeach
	.align 8
_kPricePeach:
	.long	0
	.long	1072693248
	.globl	_kPriceGrape
	.align 8
_kPriceGrape:
	.long	1202590843
	.long	1072986849
	.globl	_kPriceDeliveryPackage1
	.align 8
_kPriceDeliveryPackage1:
	.long	0
	.long	1072693248
	.globl	_kPriceDeliveryPackage2
	.align 8
_kPriceDeliveryPackage2:
	.long	0
	.long	1074266112
	.globl	_kPriceDeliveryPackage3
	.align 8
_kPriceDeliveryPackage3:
	.long	0
	.long	1076101120
	.globl	_kPriceEveryExtraKilogram
	.align 8
_kPriceEveryExtraKilogram:
	.long	0
	.long	1073741824
	.globl	_kLargeOrderDiscount
	.align 8
_kLargeOrderDiscount:
	.long	-1717986918
	.long	1069128089
	.globl	_kShopName
	.align 4
_kShopName:
	.ascii "eFruit.shop\0"
	.globl	_kShopLicenseNumber
	.align 4
_kShopLicenseNumber:
	.ascii "135464885\0"
	.globl	_kShopInfo
	.align 32
_kShopInfo:
	.ascii "Belarus , Minsk , BSUIR , FCSN\12email@emailcom, +123 45 67 89\0"
	.globl	_kMenuItems
	.align 32
_kMenuItems:
	.ascii "Order tangerines\0"
	.space 3
	.ascii "Order grape\0"
	.space 8
	.ascii "Order peaches\0"
	.space 6
	.ascii "Show Cart\0"
	.space 10
	.ascii "Show full price\0"
	.space 4
	.ascii "Exit\0"
	.space 15
	.text
	.globl	_GenerateSession
	.def	_GenerateSession;	.scl	2;	.type	32;	.endef
_GenerateSession:
LFB26:
	.loc 1 38 0
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 40
	.loc 1 39 0
	mov	DWORD PTR [esp], 48
	call	_malloc
	mov	DWORD PTR [ebp-12], eax
	.loc 1 40 0
	mov	eax, DWORD PTR [ebp-12]
	fldz
	fstp	QWORD PTR [eax+8]
	mov	eax, DWORD PTR [ebp-12]
	fld	QWORD PTR [eax+8]
	mov	eax, DWORD PTR [ebp-12]
	fstp	QWORD PTR [eax+16]
	mov	eax, DWORD PTR [ebp-12]
	fld	QWORD PTR [eax+16]
	mov	eax, DWORD PTR [ebp-12]
	fstp	QWORD PTR [eax]
	.loc 1 41 0
	mov	eax, DWORD PTR [ebp-12]
	fldz
	fstp	QWORD PTR [eax+40]
	mov	eax, DWORD PTR [ebp-12]
	fld	QWORD PTR [eax+40]
	mov	eax, DWORD PTR [ebp-12]
	fstp	QWORD PTR [eax+24]
	.loc 1 42 0
	mov	eax, DWORD PTR [ebp-12]
	fldz
	fstp	QWORD PTR [eax+32]
	.loc 1 44 0
	mov	eax, DWORD PTR [ebp-12]
	.loc 1 45 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE26:
	.section .rdata,"dr"
LC2:
	.ascii "Cart is currently empty\0"
LC3:
	.ascii "CURRENTLY IN THE CART: \0"
	.align 4
LC5:
	.ascii "Grapes in the cart: %.3lf kg. Price: %.3lf %c\12\0"
	.align 4
LC7:
	.ascii "Peaches in the cart: %.3lf kg. Price: %.3lf %c\12\0"
	.align 4
LC9:
	.ascii "Tangerines in the cart: %.3lf kg. Price: %.3lf %c\12\0"
	.align 4
LC10:
	.ascii "\12__________________\12Total Price: %.3lf %c\12\0"
	.text
	.globl	_PrintCartInfo
	.def	_PrintCartInfo;	.scl	2;	.type	32;	.endef
_PrintCartInfo:
LFB27:
	.loc 1 48 0
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 40
	.loc 1 49 0
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_UpdateSession
	.loc 1 51 0
	mov	eax, DWORD PTR [ebp+8]
	fld	QWORD PTR [eax+24]
	fldz
	fucomp	st(1)
	fnstsw	ax
	sahf
	jp	L19
	fldz
	fucompp
	fnstsw	ax
	sahf
	jne	L6
	.loc 1 53 0
	mov	DWORD PTR [esp], OFFSET FLAT:LC2
	call	_puts
	.loc 1 54 0
	jmp	L5
L19:
	fstp	st(0)
L6:
	.loc 1 57 0
	mov	DWORD PTR [esp], OFFSET FLAT:LC3
	call	_puts
	.loc 1 58 0
	mov	eax, DWORD PTR [ebp+8]
	fld	QWORD PTR [eax+8]
	fldz
	fxch	st(1)
	fucompp
	fnstsw	ax
	sahf
	jbe	L9
	.loc 1 59 0
	mov	eax, 36
	movsx	eax, al
	mov	edx, DWORD PTR [ebp+8]
	fld	QWORD PTR [edx+8]
	fld	QWORD PTR LC4
	fmulp	st(1), st
	mov	edx, DWORD PTR [ebp+8]
	fld	QWORD PTR [edx+8]
	fxch	st(1)
	mov	DWORD PTR [esp+20], eax
	fstp	QWORD PTR [esp+12]
	fstp	QWORD PTR [esp+4]
	mov	DWORD PTR [esp], OFFSET FLAT:LC5
	call	_printf
L9:
	.loc 1 62 0
	mov	eax, DWORD PTR [ebp+8]
	fld	QWORD PTR [eax+16]
	fldz
	fxch	st(1)
	fucompp
	fnstsw	ax
	sahf
	jbe	L11
	.loc 1 63 0
	mov	eax, 36
	movsx	eax, al
	mov	edx, DWORD PTR [ebp+8]
	fld	QWORD PTR [edx+16]
	fld1
	fmulp	st(1), st
	mov	edx, DWORD PTR [ebp+8]
	fld	QWORD PTR [edx+16]
	fxch	st(1)
	mov	DWORD PTR [esp+20], eax
	fstp	QWORD PTR [esp+12]
	fstp	QWORD PTR [esp+4]
	mov	DWORD PTR [esp], OFFSET FLAT:LC7
	call	_printf
L11:
	.loc 1 66 0
	mov	eax, DWORD PTR [ebp+8]
	fld	QWORD PTR [eax]
	fldz
	fxch	st(1)
	fucompp
	fnstsw	ax
	sahf
	jbe	L13
	.loc 1 67 0
	mov	eax, 36
	movsx	eax, al
	.loc 1 68 0
	mov	edx, DWORD PTR [ebp+8]
	fld	QWORD PTR [edx]
	.loc 1 67 0
	fld	QWORD PTR LC8
	fmulp	st(1), st
	mov	edx, DWORD PTR [ebp+8]
	fld	QWORD PTR [edx]
	fxch	st(1)
	mov	DWORD PTR [esp+20], eax
	fstp	QWORD PTR [esp+12]
	fstp	QWORD PTR [esp+4]
	mov	DWORD PTR [esp], OFFSET FLAT:LC9
	call	_printf
L13:
	.loc 1 70 0
	mov	eax, 36
	movsx	eax, al
	mov	edx, DWORD PTR [ebp+8]
	fld	QWORD PTR [edx+24]
	mov	DWORD PTR [esp+12], eax
	fstp	QWORD PTR [esp+4]
	mov	DWORD PTR [esp], OFFSET FLAT:LC10
	call	_printf
L5:
	.loc 1 71 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE27:
	.globl	_UpdateTotalPrice
	.def	_UpdateTotalPrice;	.scl	2;	.type	32;	.endef
_UpdateTotalPrice:
LFB28:
	.loc 1 74 0
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	.loc 1 77 0
	mov	eax, DWORD PTR [ebp+8]
	fld	QWORD PTR [eax]
	fld	QWORD PTR LC8
	fmulp	st(1), st
	mov	eax, DWORD PTR [ebp+8]
	fld	QWORD PTR [eax+16]
	fld1
	fmulp	st(1), st
	faddp	st(1), st
	mov	eax, DWORD PTR [ebp+8]
	fld	QWORD PTR [eax+8]
	fld	QWORD PTR LC4
	fmulp	st(1), st
	faddp	st(1), st
	.loc 1 76 0
	mov	eax, DWORD PTR [ebp+8]
	fstp	QWORD PTR [eax+24]
	.loc 1 81 0
	nop
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE28:
	.globl	_UpdateTotalWeight
	.def	_UpdateTotalWeight;	.scl	2;	.type	32;	.endef
_UpdateTotalWeight:
LFB29:
	.loc 1 84 0
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	.loc 1 85 0
	mov	eax, DWORD PTR [ebp+8]
	fld	QWORD PTR [eax+8]
	mov	eax, DWORD PTR [ebp+8]
	fld	QWORD PTR [eax+16]
	faddp	st(1), st
	mov	eax, DWORD PTR [ebp+8]
	fld	QWORD PTR [eax]
	faddp	st(1), st
	mov	eax, DWORD PTR [ebp+8]
	fstp	QWORD PTR [eax+24]
	.loc 1 86 0
	nop
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE29:
	.globl	_UpdateDeliveryCost
	.def	_UpdateDeliveryCost;	.scl	2;	.type	32;	.endef
_UpdateDeliveryCost:
LFB30:
	.loc 1 89 0
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	.loc 1 90 0
	mov	eax, DWORD PTR [ebp+8]
	fld	QWORD PTR [eax+32]
	fld	QWORD PTR LC11
	fucompp
	fnstsw	ax
	sahf
	jbe	L30
	.loc 1 91 0
	fld1
	mov	eax, DWORD PTR [ebp+8]
	fstp	QWORD PTR [eax+40]
	.loc 1 96 0
	jmp	L32
L30:
	.loc 1 92 0
	mov	eax, DWORD PTR [ebp+8]
	fld	QWORD PTR [eax+32]
	fld	QWORD PTR LC12
	fucompp
	fnstsw	ax
	sahf
	jbe	L31
	.loc 1 93 0
	fld	QWORD PTR LC13
	mov	eax, DWORD PTR [ebp+8]
	fstp	QWORD PTR [eax+40]
	.loc 1 96 0
	jmp	L32
L31:
	.loc 1 95 0
	mov	eax, DWORD PTR [ebp+8]
	fld	QWORD PTR [eax+32]
	fld	QWORD PTR LC12
	fsubp	st(1), st
	fld	QWORD PTR LC14
	fmulp	st(1), st
	fld	QWORD PTR LC15
	faddp	st(1), st
	mov	eax, DWORD PTR [ebp+8]
	fstp	QWORD PTR [eax+40]
L32:
	.loc 1 96 0
	nop
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE30:
	.globl	_UpdateSession
	.def	_UpdateSession;	.scl	2;	.type	32;	.endef
_UpdateSession:
LFB31:
	.loc 1 99 0
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 8
	.loc 1 100 0
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_UpdateTotalWeight
	.loc 1 101 0
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_UpdateTotalPrice
	.loc 1 102 0
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_UpdateDeliveryCost
	.loc 1 104 0
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE31:
	.section .rdata,"dr"
	.align 4
LC16:
	.ascii "Price for kg of tangerines %.2lf %c.Add to Cart: \0"
LC17:
	.ascii "%lf\0"
	.text
	.globl	_OrderTangerines
	.def	_OrderTangerines;	.scl	2;	.type	32;	.endef
_OrderTangerines:
LFB32:
	.loc 1 107 0
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 40
	.loc 1 109 0
	mov	eax, 36
	movsx	eax, al
	fld	QWORD PTR LC8
	mov	DWORD PTR [esp+12], eax
	fstp	QWORD PTR [esp+4]
	mov	DWORD PTR [esp], OFFSET FLAT:LC16
	call	_printf
	.loc 1 110 0
	lea	eax, [ebp-16]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC17
	call	_scanf
	.loc 1 111 0
	mov	eax, DWORD PTR [ebp+8]
	fld	QWORD PTR [eax]
	fld	QWORD PTR [ebp-16]
	faddp	st(1), st
	mov	eax, DWORD PTR [ebp+8]
	fstp	QWORD PTR [eax]
	.loc 1 112 0
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_UpdateSession
	.loc 1 113 0
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE32:
	.section .rdata,"dr"
	.align 4
LC18:
	.ascii "Price for kg of peaches %.2lf %c.Add to Cart: \0"
	.text
	.globl	_OrderPeaches
	.def	_OrderPeaches;	.scl	2;	.type	32;	.endef
_OrderPeaches:
LFB33:
	.loc 1 116 0
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 40
	.loc 1 118 0
	mov	eax, 36
	movsx	eax, al
	fld1
	mov	DWORD PTR [esp+12], eax
	fstp	QWORD PTR [esp+4]
	mov	DWORD PTR [esp], OFFSET FLAT:LC18
	call	_printf
	.loc 1 119 0
	lea	eax, [ebp-16]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC17
	call	_scanf
	.loc 1 120 0
	mov	eax, DWORD PTR [ebp+8]
	fld	QWORD PTR [eax+16]
	fld	QWORD PTR [ebp-16]
	faddp	st(1), st
	mov	eax, DWORD PTR [ebp+8]
	fstp	QWORD PTR [eax+16]
	.loc 1 121 0
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_UpdateSession
	.loc 1 122 0
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE33:
	.section .rdata,"dr"
	.align 4
LC19:
	.ascii "Price for kg of grape %.2lf %c.Add to Cart: \0"
	.text
	.globl	_OrderGrape
	.def	_OrderGrape;	.scl	2;	.type	32;	.endef
_OrderGrape:
LFB34:
	.loc 1 125 0
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 40
	.loc 1 127 0
	mov	eax, 36
	movsx	eax, al
	fld	QWORD PTR LC4
	mov	DWORD PTR [esp+12], eax
	fstp	QWORD PTR [esp+4]
	mov	DWORD PTR [esp], OFFSET FLAT:LC19
	call	_printf
	.loc 1 128 0
	lea	eax, [ebp-16]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC17
	call	_scanf
	.loc 1 129 0
	mov	eax, DWORD PTR [ebp+8]
	fld	QWORD PTR [eax+8]
	fld	QWORD PTR [ebp-16]
	faddp	st(1), st
	mov	eax, DWORD PTR [ebp+8]
	fstp	QWORD PTR [eax+8]
	.loc 1 130 0
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_UpdateSession
	.loc 1 131 0
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE34:
	.section .rdata,"dr"
LC20:
	.ascii "%s\12%s\12%s\12\12\0"
	.text
	.globl	_PrintShopInfo
	.def	_PrintShopInfo;	.scl	2;	.type	32;	.endef
_PrintShopInfo:
LFB35:
	.loc 1 134 0
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	.loc 1 135 0
	mov	DWORD PTR [esp+12], OFFSET FLAT:_kShopInfo
	mov	DWORD PTR [esp+8], OFFSET FLAT:_kShopLicenseNumber
	mov	DWORD PTR [esp+4], OFFSET FLAT:_kShopName
	mov	DWORD PTR [esp], OFFSET FLAT:LC20
	call	_printf
	.loc 1 136 0
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE35:
	.section .rdata,"dr"
LC21:
	.ascii "Total price %.3lf %c\0"
	.align 4
LC24:
	.ascii " + discount %.2lf% . => Total price is %.3lf %c\0"
LC25:
	.ascii "\12Delivery cost: %.3lf %c\12\0"
	.text
	.globl	_ShowFullPrice
	.def	_ShowFullPrice;	.scl	2;	.type	32;	.endef
_ShowFullPrice:
LFB36:
	.loc 1 139 0
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 40
	.loc 1 140 0
	mov	eax, DWORD PTR [ebp+8]
	fld	QWORD PTR [eax+24]
	fldz
	fucomp	st(1)
	fnstsw	ax
	sahf
	jp	L46
	fldz
	fucompp
	fnstsw	ax
	sahf
	jne	L39
	.loc 1 142 0
	mov	DWORD PTR [esp], OFFSET FLAT:LC2
	call	_puts
	.loc 1 143 0
	jmp	L38
L46:
	fstp	st(0)
L39:
	.loc 1 146 0
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_UpdateSession
	.loc 1 148 0
	mov	eax, 36
	movsx	eax, al
	mov	edx, DWORD PTR [ebp+8]
	fld	QWORD PTR [edx+24]
	mov	DWORD PTR [esp+12], eax
	fstp	QWORD PTR [esp+4]
	mov	DWORD PTR [esp], OFFSET FLAT:LC21
	call	_printf
	.loc 1 149 0
	mov	eax, DWORD PTR [ebp+8]
	fld	QWORD PTR [eax+24]
	fld	QWORD PTR LC22
	fxch	st(1)
	fucompp
	fnstsw	ax
	sahf
	jbe	L42
	.loc 1 150 0
	mov	eax, 36
	movsx	eax, al
	mov	edx, DWORD PTR [ebp+8]
	fld	QWORD PTR [edx+24]
	fld	QWORD PTR LC23
	fld1
	fsubrp	st(1), st
	fmulp	st(1), st
	fld	QWORD PTR LC23
	fld	QWORD PTR LC22
	fmulp	st(1), st
	fxch	st(1)
	mov	DWORD PTR [esp+20], eax
	fstp	QWORD PTR [esp+12]
	fstp	QWORD PTR [esp+4]
	mov	DWORD PTR [esp], OFFSET FLAT:LC24
	call	_printf
L42:
	.loc 1 151 0
	mov	eax, 36
	movsx	eax, al
	mov	edx, DWORD PTR [ebp+8]
	fld	QWORD PTR [edx+40]
	mov	DWORD PTR [esp+12], eax
	fstp	QWORD PTR [esp+4]
	mov	DWORD PTR [esp], OFFSET FLAT:LC25
	call	_printf
L38:
	.loc 1 152 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE36:
	.section .rdata,"dr"
LC26:
	.ascii "%hu %s\12\0"
	.text
	.globl	_PrintMenu
	.def	_PrintMenu;	.scl	2;	.type	32;	.endef
_PrintMenu:
LFB37:
	.loc 1 155 0
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 40
	.loc 1 157 0
	mov	WORD PTR [ebp-10], 0
	jmp	L48
L49:
	.loc 1 158 0 discriminator 3
	movzx	edx, WORD PTR [ebp-10]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	sal	eax, 2
	lea	edx, _kMenuItems[eax]
	movzx	eax, WORD PTR [ebp-10]
	add	eax, 1
	mov	DWORD PTR [esp+8], edx
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC26
	call	_printf
	.loc 1 157 0 discriminator 3
	add	WORD PTR [ebp-10], 1
L48:
	.loc 1 157 0 is_stmt 0 discriminator 1
	cmp	WORD PTR [ebp-10], 5
	jbe	L49
	.loc 1 160 0 is_stmt 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE37:
	.globl	_ProcessVariant
	.def	_ProcessVariant;	.scl	2;	.type	32;	.endef
_ProcessVariant:
LFB38:
	.loc 1 163 0
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 40
	mov	eax, DWORD PTR [ebp+8]
	mov	WORD PTR [ebp-12], ax
	.loc 1 164 0
	movzx	eax, WORD PTR [ebp-12]
	cmp	eax, 5
	ja	L60
	mov	eax, DWORD PTR L53[0+eax*4]
	jmp	eax
	.section .rdata,"dr"
	.align 4
L53:
	.long	L52
	.long	L54
	.long	L55
	.long	L56
	.long	L57
	.long	L58
	.text
L52:
	.loc 1 168 0
	call	_ClearConsole
	.loc 1 169 0
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp], eax
	call	_OrderTangerines
	.loc 1 170 0
	jmp	L50
L54:
	.loc 1 174 0
	call	_ClearConsole
	.loc 1 175 0
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp], eax
	call	_OrderGrape
	.loc 1 176 0
	jmp	L50
L55:
	.loc 1 180 0
	call	_ClearConsole
	.loc 1 181 0
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp], eax
	call	_OrderPeaches
	.loc 1 182 0
	jmp	L50
L56:
	.loc 1 186 0
	call	_ClearConsole
	.loc 1 187 0
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp], eax
	call	_PrintCartInfo
	.loc 1 188 0
	jmp	L50
L57:
	.loc 1 192 0
	call	_ClearConsole
	.loc 1 193 0
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp], eax
	call	_ShowFullPrice
	.loc 1 194 0
	jmp	L50
L58:
	.loc 1 198 0
	call	_ClearConsole
	.loc 1 199 0
	jmp	L50
L60:
	.loc 1 202 0
	nop
L50:
	.loc 1 204 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE38:
	.section .rdata,"dr"
LC27:
	.ascii "%hd\0"
LC28:
	.ascii "\12Press any key \0"
	.text
	.globl	_Launch
	.def	_Launch;	.scl	2;	.type	32;	.endef
_Launch:
LFB39:
	.loc 1 207 0
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 40
L64:
	.loc 1 211 0
	call	_ClearConsole
	.loc 1 212 0
	call	_PrintMenu
	.loc 1 213 0
	lea	eax, [ebp-10]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC27
	call	_scanf
	.loc 1 214 0
	movzx	eax, WORD PTR [ebp-10]
	sub	eax, 1
	movzx	eax, ax
	mov	edx, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	_ProcessVariant
	.loc 1 215 0
	mov	DWORD PTR [esp], OFFSET FLAT:LC28
	call	_printf
	.loc 1 216 0
	call	_getch
	.loc 1 217 0
	movzx	eax, WORD PTR [ebp-10]
	cmp	ax, 6
	je	L66
	.loc 1 211 0
	jmp	L64
L66:
	.loc 1 218 0
	nop
	.loc 1 220 0
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE39:
	.section .rdata,"dr"
	.align 8
LC4:
	.long	1202590843
	.long	1072986849
	.align 8
LC8:
	.long	-1546188227
	.long	1072840048
	.align 8
LC11:
	.long	0
	.long	1075052544
	.align 8
LC12:
	.long	0
	.long	1077149696
	.align 8
LC13:
	.long	0
	.long	1074266112
	.align 8
LC14:
	.long	0
	.long	1073741824
	.align 8
LC15:
	.long	0
	.long	1076101120
	.align 8
LC22:
	.long	0
	.long	1079574528
	.align 8
LC23:
	.long	-1717986918
	.long	1069128089
	.text
Letext0:
	.file 2 "c:/mingw/include/stdlib.h"
	.file 3 "c:/mingw/include/stdio.h"
	.file 4 "c:/mingw/include/windef.h"
	.file 5 "c:/mingw/include/winnt.h"
	.file 6 "c:/mingw/include/wincon.h"
	.file 7 "c:/mingw/include/basetyps.h"
	.file 8 "c:/mingw/include/unknwn.h"
	.file 9 "c:/mingw/include/objidl.h"
	.file 10 "c:/mingw/include/cguid.h"
	.file 11 "c:/mingw/include/olectlid.h"
	.file 12 "c:/mingw/include/oaidl.h"
	.file 13 "eFruit.h"
	.file 14 "c:/mingw/include/wtypes.h"
	.file 15 "c:/mingw/include/winsock.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x2335
	.word	0x4
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C11 6.3.0 -masm=intel -mtune=generic -march=i586 -g3\0"
	.byte	0xc
	.ascii "eFruit.c\0"
	.ascii "C:\\Users\\User\\Desktop\\Other\\HomeWork\\Programming\\LR2\\Z2.1_V23\0"
	.long	Ltext0
	.long	Letext0-Ltext0
	.secrel32	Ldebug_line0
	.secrel32	Ldebug_macro0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x3
	.long	0xad
	.uleb128 0x4
	.ascii "_argc\0"
	.byte	0x2
	.byte	0x63
	.long	0xd5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x4
	.ascii "_argv\0"
	.byte	0x2
	.byte	0x64
	.long	0xe9
	.uleb128 0x5
	.byte	0x4
	.long	0xef
	.uleb128 0x5
	.byte	0x4
	.long	0xf5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x3
	.long	0xf5
	.uleb128 0x4
	.ascii "__mb_cur_max\0"
	.byte	0x2
	.byte	0x8e
	.long	0xd5
	.uleb128 0x4
	.ascii "_sys_nerr\0"
	.byte	0x2
	.byte	0xca
	.long	0xd5
	.uleb128 0x6
	.long	0xef
	.long	0x132
	.uleb128 0x7
	.byte	0
	.uleb128 0x4
	.ascii "_sys_errlist\0"
	.byte	0x2
	.byte	0xe3
	.long	0x127
	.uleb128 0x4
	.ascii "_osver\0"
	.byte	0x2
	.byte	0xfa
	.long	0x9d
	.uleb128 0x4
	.ascii "_winver\0"
	.byte	0x2
	.byte	0xfb
	.long	0x9d
	.uleb128 0x4
	.ascii "_winmajor\0"
	.byte	0x2
	.byte	0xfc
	.long	0x9d
	.uleb128 0x4
	.ascii "_winminor\0"
	.byte	0x2
	.byte	0xfd
	.long	0x9d
	.uleb128 0x8
	.ascii "_fmode\0"
	.byte	0x2
	.word	0x145
	.long	0xd5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x9
	.ascii "_iobuf\0"
	.byte	0x20
	.byte	0x3
	.byte	0xd2
	.long	0x238
	.uleb128 0xa
	.ascii "_ptr\0"
	.byte	0x3
	.byte	0xd4
	.long	0xef
	.byte	0
	.uleb128 0xa
	.ascii "_cnt\0"
	.byte	0x3
	.byte	0xd5
	.long	0xd5
	.byte	0x4
	.uleb128 0xa
	.ascii "_base\0"
	.byte	0x3
	.byte	0xd6
	.long	0xef
	.byte	0x8
	.uleb128 0xa
	.ascii "_flag\0"
	.byte	0x3
	.byte	0xd7
	.long	0xd5
	.byte	0xc
	.uleb128 0xa
	.ascii "_file\0"
	.byte	0x3
	.byte	0xd8
	.long	0xd5
	.byte	0x10
	.uleb128 0xa
	.ascii "_charbuf\0"
	.byte	0x3
	.byte	0xd9
	.long	0xd5
	.byte	0x14
	.uleb128 0xa
	.ascii "_bufsiz\0"
	.byte	0x3
	.byte	0xda
	.long	0xd5
	.byte	0x18
	.uleb128 0xa
	.ascii "_tmpfname\0"
	.byte	0x3
	.byte	0xdb
	.long	0xef
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.ascii "FILE\0"
	.byte	0x3
	.byte	0xdc
	.long	0x1b1
	.uleb128 0x6
	.long	0x238
	.long	0x24f
	.uleb128 0x7
	.byte	0
	.uleb128 0x4
	.ascii "_iob\0"
	.byte	0x3
	.byte	0xef
	.long	0x244
	.uleb128 0xb
	.ascii "DWORD\0"
	.byte	0x4
	.byte	0xf5
	.long	0x268
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0xc
	.ascii "WORD\0"
	.byte	0x4
	.word	0x101
	.long	0xad
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0xb
	.ascii "SHORT\0"
	.byte	0x5
	.byte	0x5c
	.long	0x2b1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0xd
	.byte	0x4
	.uleb128 0xb
	.ascii "HANDLE\0"
	.byte	0x5
	.byte	0xa2
	.long	0x2be
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0xe
	.ascii "_GUID\0"
	.byte	0x10
	.byte	0x5
	.word	0x704
	.long	0x343
	.uleb128 0xf
	.ascii "Data1\0"
	.byte	0x5
	.word	0x705
	.long	0x268
	.byte	0
	.uleb128 0xf
	.ascii "Data2\0"
	.byte	0x5
	.word	0x706
	.long	0xad
	.byte	0x4
	.uleb128 0xf
	.ascii "Data3\0"
	.byte	0x5
	.word	0x707
	.long	0xad
	.byte	0x6
	.uleb128 0xf
	.ascii "Data4\0"
	.byte	0x5
	.word	0x708
	.long	0x343
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	0x27d
	.long	0x353
	.uleb128 0x10
	.long	0x353
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0xc
	.ascii "GUID\0"
	.byte	0x5
	.word	0x709
	.long	0x2f7
	.uleb128 0x3
	.long	0x35f
	.uleb128 0x9
	.ascii "_SMALL_RECT\0"
	.byte	0x8
	.byte	0x6
	.byte	0x45
	.long	0x3bc
	.uleb128 0xa
	.ascii "Left\0"
	.byte	0x6
	.byte	0x46
	.long	0x2a4
	.byte	0
	.uleb128 0xa
	.ascii "Top\0"
	.byte	0x6
	.byte	0x47
	.long	0x2a4
	.byte	0x2
	.uleb128 0xa
	.ascii "Right\0"
	.byte	0x6
	.byte	0x48
	.long	0x2a4
	.byte	0x4
	.uleb128 0xa
	.ascii "Bottom\0"
	.byte	0x6
	.byte	0x49
	.long	0x2a4
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.ascii "SMALL_RECT\0"
	.byte	0x6
	.byte	0x4a
	.long	0x371
	.uleb128 0x9
	.ascii "_COORD\0"
	.byte	0x4
	.byte	0x6
	.byte	0x4f
	.long	0x3f2
	.uleb128 0xa
	.ascii "X\0"
	.byte	0x6
	.byte	0x50
	.long	0x2a4
	.byte	0
	.uleb128 0xa
	.ascii "Y\0"
	.byte	0x6
	.byte	0x51
	.long	0x2a4
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.ascii "COORD\0"
	.byte	0x6
	.byte	0x52
	.long	0x3ce
	.uleb128 0x9
	.ascii "_CONSOLE_SCREEN_BUFFER_INFO\0"
	.byte	0x16
	.byte	0x6
	.byte	0x57
	.long	0x48d
	.uleb128 0xa
	.ascii "dwSize\0"
	.byte	0x6
	.byte	0x58
	.long	0x3f2
	.byte	0
	.uleb128 0xa
	.ascii "dwCursorPosition\0"
	.byte	0x6
	.byte	0x59
	.long	0x3f2
	.byte	0x4
	.uleb128 0xa
	.ascii "wAttributes\0"
	.byte	0x6
	.byte	0x5a
	.long	0x28e
	.byte	0x8
	.uleb128 0xa
	.ascii "srWindow\0"
	.byte	0x6
	.byte	0x5b
	.long	0x3bc
	.byte	0xa
	.uleb128 0xa
	.ascii "dwMaximumWindowSize\0"
	.byte	0x6
	.byte	0x5c
	.long	0x3f2
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.ascii "CONSOLE_SCREEN_BUFFER_INFO\0"
	.byte	0x6
	.byte	0x5d
	.long	0x3ff
	.uleb128 0xb
	.ascii "IID\0"
	.byte	0x7
	.byte	0x81
	.long	0x35f
	.uleb128 0x3
	.long	0x4af
	.uleb128 0xb
	.ascii "CLSID\0"
	.byte	0x7
	.byte	0x83
	.long	0x35f
	.uleb128 0x3
	.long	0x4bf
	.uleb128 0xb
	.ascii "FMTID\0"
	.byte	0x7
	.byte	0x88
	.long	0x35f
	.uleb128 0x3
	.long	0x4d1
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x3
	.long	0x4e3
	.uleb128 0x11
	.ascii "VARENUM\0"
	.byte	0x4
	.long	0x9d
	.byte	0xe
	.byte	0xdd
	.long	0x765
	.uleb128 0x12
	.ascii "VT_EMPTY\0"
	.byte	0
	.uleb128 0x12
	.ascii "VT_NULL\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "VT_I2\0"
	.byte	0x2
	.uleb128 0x12
	.ascii "VT_I4\0"
	.byte	0x3
	.uleb128 0x12
	.ascii "VT_R4\0"
	.byte	0x4
	.uleb128 0x12
	.ascii "VT_R8\0"
	.byte	0x5
	.uleb128 0x12
	.ascii "VT_CY\0"
	.byte	0x6
	.uleb128 0x12
	.ascii "VT_DATE\0"
	.byte	0x7
	.uleb128 0x12
	.ascii "VT_BSTR\0"
	.byte	0x8
	.uleb128 0x12
	.ascii "VT_DISPATCH\0"
	.byte	0x9
	.uleb128 0x12
	.ascii "VT_ERROR\0"
	.byte	0xa
	.uleb128 0x12
	.ascii "VT_BOOL\0"
	.byte	0xb
	.uleb128 0x12
	.ascii "VT_VARIANT\0"
	.byte	0xc
	.uleb128 0x12
	.ascii "VT_UNKNOWN\0"
	.byte	0xd
	.uleb128 0x12
	.ascii "VT_DECIMAL\0"
	.byte	0xe
	.uleb128 0x12
	.ascii "VT_I1\0"
	.byte	0x10
	.uleb128 0x12
	.ascii "VT_UI1\0"
	.byte	0x11
	.uleb128 0x12
	.ascii "VT_UI2\0"
	.byte	0x12
	.uleb128 0x12
	.ascii "VT_UI4\0"
	.byte	0x13
	.uleb128 0x12
	.ascii "VT_I8\0"
	.byte	0x14
	.uleb128 0x12
	.ascii "VT_UI8\0"
	.byte	0x15
	.uleb128 0x12
	.ascii "VT_INT\0"
	.byte	0x16
	.uleb128 0x12
	.ascii "VT_UINT\0"
	.byte	0x17
	.uleb128 0x12
	.ascii "VT_VOID\0"
	.byte	0x18
	.uleb128 0x12
	.ascii "VT_HRESULT\0"
	.byte	0x19
	.uleb128 0x12
	.ascii "VT_PTR\0"
	.byte	0x1a
	.uleb128 0x12
	.ascii "VT_SAFEARRAY\0"
	.byte	0x1b
	.uleb128 0x12
	.ascii "VT_CARRAY\0"
	.byte	0x1c
	.uleb128 0x12
	.ascii "VT_USERDEFINED\0"
	.byte	0x1d
	.uleb128 0x12
	.ascii "VT_LPSTR\0"
	.byte	0x1e
	.uleb128 0x12
	.ascii "VT_LPWSTR\0"
	.byte	0x1f
	.uleb128 0x12
	.ascii "VT_RECORD\0"
	.byte	0x24
	.uleb128 0x12
	.ascii "VT_INT_PTR\0"
	.byte	0x25
	.uleb128 0x12
	.ascii "VT_UINT_PTR\0"
	.byte	0x26
	.uleb128 0x12
	.ascii "VT_FILETIME\0"
	.byte	0x40
	.uleb128 0x12
	.ascii "VT_BLOB\0"
	.byte	0x41
	.uleb128 0x12
	.ascii "VT_STREAM\0"
	.byte	0x42
	.uleb128 0x12
	.ascii "VT_STORAGE\0"
	.byte	0x43
	.uleb128 0x12
	.ascii "VT_STREAMED_OBJECT\0"
	.byte	0x44
	.uleb128 0x12
	.ascii "VT_STORED_OBJECT\0"
	.byte	0x45
	.uleb128 0x12
	.ascii "VT_BLOB_OBJECT\0"
	.byte	0x46
	.uleb128 0x12
	.ascii "VT_CF\0"
	.byte	0x47
	.uleb128 0x12
	.ascii "VT_CLSID\0"
	.byte	0x48
	.uleb128 0x13
	.ascii "VT_BSTR_BLOB\0"
	.word	0xfff
	.uleb128 0x13
	.ascii "VT_VECTOR\0"
	.word	0x1000
	.uleb128 0x13
	.ascii "VT_ARRAY\0"
	.word	0x2000
	.uleb128 0x13
	.ascii "VT_BYREF\0"
	.word	0x4000
	.uleb128 0x13
	.ascii "VT_RESERVED\0"
	.word	0x8000
	.uleb128 0x13
	.ascii "VT_ILLEGAL\0"
	.word	0xffff
	.uleb128 0x13
	.ascii "VT_ILLEGALMASKED\0"
	.word	0xfff
	.uleb128 0x13
	.ascii "VT_TYPEMASK\0"
	.word	0xfff
	.byte	0
	.uleb128 0x4
	.ascii "IID_IUnknown\0"
	.byte	0x8
	.byte	0x13
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_IClassFactory\0"
	.byte	0x8
	.byte	0x14
	.long	0x4ba
	.uleb128 0x14
	.byte	0x4
	.long	0x9d
	.byte	0xf
	.word	0x207
	.long	0x869
	.uleb128 0x12
	.ascii "FD_READ_BIT\0"
	.byte	0
	.uleb128 0x12
	.ascii "FD_WRITE_BIT\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "FD_OOB_BIT\0"
	.byte	0x2
	.uleb128 0x12
	.ascii "FD_ACCEPT_BIT\0"
	.byte	0x3
	.uleb128 0x12
	.ascii "FD_CONNECT_BIT\0"
	.byte	0x4
	.uleb128 0x12
	.ascii "FD_CLOSE_BIT\0"
	.byte	0x5
	.uleb128 0x12
	.ascii "FD_QOS_BIT\0"
	.byte	0x6
	.uleb128 0x12
	.ascii "FD_GROUP_QOS_BIT\0"
	.byte	0x7
	.uleb128 0x12
	.ascii "FD_ROUTING_INTERFACE_CHANGE_BIT\0"
	.byte	0x8
	.uleb128 0x12
	.ascii "FD_ADDRESS_LIST_CHANGE_BIT\0"
	.byte	0x9
	.uleb128 0x12
	.ascii "FD_MAX_EVENTS\0"
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.ascii "FMTID_SummaryInformation\0"
	.byte	0x9
	.word	0x1c2
	.long	0x4de
	.uleb128 0x8
	.ascii "FMTID_DocSummaryInformation\0"
	.byte	0x9
	.word	0x1c3
	.long	0x4de
	.uleb128 0x8
	.ascii "FMTID_UserDefinedProperties\0"
	.byte	0x9
	.word	0x1c4
	.long	0x4de
	.uleb128 0x8
	.ascii "IID_ISequentialStream\0"
	.byte	0x9
	.word	0x1d0
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IStream\0"
	.byte	0x9
	.word	0x1dc
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IMarshal\0"
	.byte	0x9
	.word	0x1f1
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IStdMarshalInfo\0"
	.byte	0x9
	.word	0x201
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IMalloc\0"
	.byte	0x9
	.word	0x20c
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IMallocSpy\0"
	.byte	0x9
	.word	0x21c
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IMessageFilter\0"
	.byte	0x9
	.word	0x232
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IPersist\0"
	.byte	0x9
	.word	0x23f
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IPersistStream\0"
	.byte	0x9
	.word	0x24a
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IRunningObjectTable\0"
	.byte	0x9
	.word	0x259
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IBindCtx\0"
	.byte	0x9
	.word	0x26a
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IMoniker\0"
	.byte	0x9
	.word	0x27e
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IPersistStorage\0"
	.byte	0x9
	.word	0x29c
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IPersistFile\0"
	.byte	0x9
	.word	0x2ad
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IAdviseSink\0"
	.byte	0x9
	.word	0x2bd
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IAdviseSink2\0"
	.byte	0x9
	.word	0x2cc
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IDataObject\0"
	.byte	0x9
	.word	0x2dc
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IDataAdviseHolder\0"
	.byte	0x9
	.word	0x2ef
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IStorage\0"
	.byte	0x9
	.word	0x2fd
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IRootStorage\0"
	.byte	0x9
	.word	0x316
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IRpcChannelBuffer\0"
	.byte	0x9
	.word	0x321
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IRpcProxyBuffer\0"
	.byte	0x9
	.word	0x330
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IRpcStubBuffer\0"
	.byte	0x9
	.word	0x33d
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IPSFactoryBuffer\0"
	.byte	0x9
	.word	0x34e
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_ILockBytes\0"
	.byte	0x9
	.word	0x35b
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IExternalConnection\0"
	.byte	0x9
	.word	0x36c
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IRunnableObject\0"
	.byte	0x9
	.word	0x378
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IROTData\0"
	.byte	0x9
	.word	0x387
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IChannelHook\0"
	.byte	0x9
	.word	0x392
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IPropertyStorage\0"
	.byte	0x9
	.word	0x3a2
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IPropertySetStorage\0"
	.byte	0x9
	.word	0x3b8
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IClientSecurity\0"
	.byte	0x9
	.word	0x3c6
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IServerSecurity\0"
	.byte	0x9
	.word	0x3d3
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IClassActivator\0"
	.byte	0x9
	.word	0x3e1
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IFillLockBytes\0"
	.byte	0x9
	.word	0x3ec
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IProgressNotify\0"
	.byte	0x9
	.word	0x3fa
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_ILayoutStorage\0"
	.byte	0x9
	.word	0x405
	.long	0x4ba
	.uleb128 0x8
	.ascii "IID_IGlobalInterfaceTable\0"
	.byte	0x9
	.word	0x413
	.long	0x4ba
	.uleb128 0x4
	.ascii "GUID_NULL\0"
	.byte	0xa
	.byte	0xa
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_IRpcChannel\0"
	.byte	0xa
	.byte	0xb
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_IRpcStub\0"
	.byte	0xa
	.byte	0xc
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_IStubManager\0"
	.byte	0xa
	.byte	0xd
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_IRpcProxy\0"
	.byte	0xa
	.byte	0xe
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_IProxyManager\0"
	.byte	0xa
	.byte	0xf
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_IPSFactory\0"
	.byte	0xa
	.byte	0x10
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_IInternalMoniker\0"
	.byte	0xa
	.byte	0x11
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_IDfReserved1\0"
	.byte	0xa
	.byte	0x12
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_IDfReserved2\0"
	.byte	0xa
	.byte	0x13
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_IDfReserved3\0"
	.byte	0xa
	.byte	0x14
	.long	0x4ba
	.uleb128 0x4
	.ascii "CLSID_StdMarshal\0"
	.byte	0xa
	.byte	0x15
	.long	0x4cc
	.uleb128 0x4
	.ascii "IID_IStub\0"
	.byte	0xa
	.byte	0x16
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_IProxy\0"
	.byte	0xa
	.byte	0x17
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_IEnumGeneric\0"
	.byte	0xa
	.byte	0x18
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_IEnumHolder\0"
	.byte	0xa
	.byte	0x19
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_IEnumCallback\0"
	.byte	0xa
	.byte	0x1a
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_IOleManager\0"
	.byte	0xa
	.byte	0x1b
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_IOlePresObj\0"
	.byte	0xa
	.byte	0x1c
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_IDebug\0"
	.byte	0xa
	.byte	0x1d
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_IDebugStream\0"
	.byte	0xa
	.byte	0x1e
	.long	0x4ba
	.uleb128 0x4
	.ascii "CLSID_PSGenObject\0"
	.byte	0xa
	.byte	0x1f
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_PSClientSite\0"
	.byte	0xa
	.byte	0x20
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_PSClassObject\0"
	.byte	0xa
	.byte	0x21
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_PSInPlaceActive\0"
	.byte	0xa
	.byte	0x22
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_PSInPlaceFrame\0"
	.byte	0xa
	.byte	0x23
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_PSDragDrop\0"
	.byte	0xa
	.byte	0x24
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_PSBindCtx\0"
	.byte	0xa
	.byte	0x25
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_PSEnumerators\0"
	.byte	0xa
	.byte	0x26
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_StaticMetafile\0"
	.byte	0xa
	.byte	0x27
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_StaticDib\0"
	.byte	0xa
	.byte	0x28
	.long	0x4cc
	.uleb128 0x4
	.ascii "CID_CDfsVolume\0"
	.byte	0xa
	.byte	0x29
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CCDFormKrnl\0"
	.byte	0xa
	.byte	0x2a
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CCDPropertyPage\0"
	.byte	0xa
	.byte	0x2b
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CCDFormDialog\0"
	.byte	0xa
	.byte	0x2c
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CCDCommandButton\0"
	.byte	0xa
	.byte	0x2d
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CCDComboBox\0"
	.byte	0xa
	.byte	0x2e
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CCDTextBox\0"
	.byte	0xa
	.byte	0x2f
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CCDCheckBox\0"
	.byte	0xa
	.byte	0x30
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CCDLabel\0"
	.byte	0xa
	.byte	0x31
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CCDOptionButton\0"
	.byte	0xa
	.byte	0x32
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CCDListBox\0"
	.byte	0xa
	.byte	0x33
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CCDScrollBar\0"
	.byte	0xa
	.byte	0x34
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CCDGroupBox\0"
	.byte	0xa
	.byte	0x35
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CCDGeneralPropertyPage\0"
	.byte	0xa
	.byte	0x36
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CCDGenericPropertyPage\0"
	.byte	0xa
	.byte	0x37
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CCDFontPropertyPage\0"
	.byte	0xa
	.byte	0x38
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CCDColorPropertyPage\0"
	.byte	0xa
	.byte	0x39
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CCDLabelPropertyPage\0"
	.byte	0xa
	.byte	0x3a
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CCDCheckBoxPropertyPage\0"
	.byte	0xa
	.byte	0x3b
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CCDTextBoxPropertyPage\0"
	.byte	0xa
	.byte	0x3c
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CCDOptionButtonPropertyPage\0"
	.byte	0xa
	.byte	0x3d
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CCDListBoxPropertyPage\0"
	.byte	0xa
	.byte	0x3e
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CCDCommandButtonPropertyPage\0"
	.byte	0xa
	.byte	0x3f
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CCDComboBoxPropertyPage\0"
	.byte	0xa
	.byte	0x40
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CCDScrollBarPropertyPage\0"
	.byte	0xa
	.byte	0x41
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CCDGroupBoxPropertyPage\0"
	.byte	0xa
	.byte	0x42
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CCDXObjectPropertyPage\0"
	.byte	0xa
	.byte	0x43
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CStdPropertyFrame\0"
	.byte	0xa
	.byte	0x44
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CFormPropertyPage\0"
	.byte	0xa
	.byte	0x45
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CGridPropertyPage\0"
	.byte	0xa
	.byte	0x46
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CWSJArticlePage\0"
	.byte	0xa
	.byte	0x47
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_CSystemPage\0"
	.byte	0xa
	.byte	0x48
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_IdentityUnmarshal\0"
	.byte	0xa
	.byte	0x49
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_InProcFreeMarshaler\0"
	.byte	0xa
	.byte	0x4a
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_Picture_Metafile\0"
	.byte	0xa
	.byte	0x4b
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_Picture_EnhMetafile\0"
	.byte	0xa
	.byte	0x4c
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_Picture_Dib\0"
	.byte	0xa
	.byte	0x4d
	.long	0x4cc
	.uleb128 0x4
	.ascii "CLSID_StdGlobalInterfaceTable\0"
	.byte	0xa
	.byte	0x4e
	.long	0x4cc
	.uleb128 0x4
	.ascii "GUID_TRISTATE\0"
	.byte	0xa
	.byte	0x4f
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IDispatch\0"
	.byte	0xb
	.byte	0xb
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IPropertyNotifySink\0"
	.byte	0xb
	.byte	0xc
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IClassFactory2\0"
	.byte	0xb
	.byte	0xd
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IProvideClassInfo\0"
	.byte	0xb
	.byte	0xe
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IProvideClassInfo2\0"
	.byte	0xb
	.byte	0xf
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IConnectionPointContainer\0"
	.byte	0xb
	.byte	0x10
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IEnumConnectionPoints\0"
	.byte	0xb
	.byte	0x11
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IConnectionPoint\0"
	.byte	0xb
	.byte	0x12
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IEnumConnections\0"
	.byte	0xb
	.byte	0x13
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IOleControl\0"
	.byte	0xb
	.byte	0x14
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IOleControlSite\0"
	.byte	0xb
	.byte	0x15
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_ISimpleFrameSite\0"
	.byte	0xb
	.byte	0x16
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IPersistStreamInit\0"
	.byte	0xb
	.byte	0x17
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IPersistMemory\0"
	.byte	0xb
	.byte	0x18
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IPersistPropertyBag\0"
	.byte	0xb
	.byte	0x19
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IPropertyBag\0"
	.byte	0xb
	.byte	0x1a
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IErrorLog\0"
	.byte	0xb
	.byte	0x1b
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IPropertyFrame\0"
	.byte	0xb
	.byte	0x1c
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_ISpecifyPropertyPages\0"
	.byte	0xb
	.byte	0x1d
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IPerPropertyBrowsing\0"
	.byte	0xb
	.byte	0x1e
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IPropertyPageSite\0"
	.byte	0xb
	.byte	0x1f
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IPropertyPage\0"
	.byte	0xb
	.byte	0x20
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IPropertyPage2\0"
	.byte	0xb
	.byte	0x21
	.long	0x36c
	.uleb128 0x4
	.ascii "CLSID_CFontPropPage\0"
	.byte	0xb
	.byte	0x22
	.long	0x36c
	.uleb128 0x4
	.ascii "CLSID_CColorPropPage\0"
	.byte	0xb
	.byte	0x23
	.long	0x36c
	.uleb128 0x4
	.ascii "CLSID_CPicturePropPage\0"
	.byte	0xb
	.byte	0x24
	.long	0x36c
	.uleb128 0x4
	.ascii "CLSID_PersistPropset\0"
	.byte	0xb
	.byte	0x25
	.long	0x36c
	.uleb128 0x4
	.ascii "CLSID_ConvertVBX\0"
	.byte	0xb
	.byte	0x26
	.long	0x36c
	.uleb128 0x4
	.ascii "CLSID_StdFont\0"
	.byte	0xb
	.byte	0x27
	.long	0x36c
	.uleb128 0x4
	.ascii "CLSID_StdPicture\0"
	.byte	0xb
	.byte	0x28
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IFont\0"
	.byte	0xb
	.byte	0x29
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IFontDisp\0"
	.byte	0xb
	.byte	0x2a
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IPicture\0"
	.byte	0xb
	.byte	0x2b
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IPictureDisp\0"
	.byte	0xb
	.byte	0x2c
	.long	0x36c
	.uleb128 0x4
	.ascii "GUID_HIMETRIC\0"
	.byte	0xb
	.byte	0x2d
	.long	0x36c
	.uleb128 0x4
	.ascii "GUID_COLOR\0"
	.byte	0xb
	.byte	0x2e
	.long	0x36c
	.uleb128 0x4
	.ascii "GUID_XPOSPIXEL\0"
	.byte	0xb
	.byte	0x2f
	.long	0x36c
	.uleb128 0x4
	.ascii "GUID_YPOSPIXEL\0"
	.byte	0xb
	.byte	0x30
	.long	0x36c
	.uleb128 0x4
	.ascii "GUID_XSIZEPIXEL\0"
	.byte	0xb
	.byte	0x31
	.long	0x36c
	.uleb128 0x4
	.ascii "GUID_YSIZEPIXEL\0"
	.byte	0xb
	.byte	0x32
	.long	0x36c
	.uleb128 0x4
	.ascii "GUID_XPOS\0"
	.byte	0xb
	.byte	0x33
	.long	0x36c
	.uleb128 0x4
	.ascii "GUID_YPOS\0"
	.byte	0xb
	.byte	0x34
	.long	0x36c
	.uleb128 0x4
	.ascii "GUID_XSIZE\0"
	.byte	0xb
	.byte	0x35
	.long	0x36c
	.uleb128 0x4
	.ascii "GUID_YSIZE\0"
	.byte	0xb
	.byte	0x36
	.long	0x36c
	.uleb128 0x4
	.ascii "GUID_OPTIONVALUEEXCLUSIVE\0"
	.byte	0xb
	.byte	0x38
	.long	0x36c
	.uleb128 0x4
	.ascii "GUID_CHECKVALUEEXCLUSIVE\0"
	.byte	0xb
	.byte	0x39
	.long	0x36c
	.uleb128 0x4
	.ascii "GUID_FONTNAME\0"
	.byte	0xb
	.byte	0x3a
	.long	0x36c
	.uleb128 0x4
	.ascii "GUID_FONTSIZE\0"
	.byte	0xb
	.byte	0x3b
	.long	0x36c
	.uleb128 0x4
	.ascii "GUID_FONTBOLD\0"
	.byte	0xb
	.byte	0x3c
	.long	0x36c
	.uleb128 0x4
	.ascii "GUID_FONTITALIC\0"
	.byte	0xb
	.byte	0x3d
	.long	0x36c
	.uleb128 0x4
	.ascii "GUID_FONTUNDERSCORE\0"
	.byte	0xb
	.byte	0x3e
	.long	0x36c
	.uleb128 0x4
	.ascii "GUID_FONTSTRIKETHROUGH\0"
	.byte	0xb
	.byte	0x3f
	.long	0x36c
	.uleb128 0x4
	.ascii "GUID_HANDLE\0"
	.byte	0xb
	.byte	0x40
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IEnumUnknown\0"
	.byte	0xb
	.byte	0x41
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IEnumString\0"
	.byte	0xb
	.byte	0x42
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IEnumMoniker\0"
	.byte	0xb
	.byte	0x43
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IEnumFORMATETC\0"
	.byte	0xb
	.byte	0x44
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IEnumOLEVERB\0"
	.byte	0xb
	.byte	0x45
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IEnumSTATDATA\0"
	.byte	0xb
	.byte	0x46
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IEnumSTATSTG\0"
	.byte	0xb
	.byte	0x47
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IViewObject\0"
	.byte	0xb
	.byte	0x4f
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IOleAdviseHolder\0"
	.byte	0xb
	.byte	0x53
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IOleObject\0"
	.byte	0xb
	.byte	0x54
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IOleInPlaceObject\0"
	.byte	0xb
	.byte	0x55
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IOleWindow\0"
	.byte	0xb
	.byte	0x56
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IOleInPlaceUIWindow\0"
	.byte	0xb
	.byte	0x57
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IOleInPlaceFrame\0"
	.byte	0xb
	.byte	0x58
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IOleInPlaceActiveObject\0"
	.byte	0xb
	.byte	0x59
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IOleClientSite\0"
	.byte	0xb
	.byte	0x5a
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IOleInPlaceSite\0"
	.byte	0xb
	.byte	0x5b
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IParseDisplayName\0"
	.byte	0xb
	.byte	0x5c
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IOleContainer\0"
	.byte	0xb
	.byte	0x5d
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IOleItemContainer\0"
	.byte	0xb
	.byte	0x5e
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IOleLink\0"
	.byte	0xb
	.byte	0x5f
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IOleCache\0"
	.byte	0xb
	.byte	0x60
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IDropSource\0"
	.byte	0xb
	.byte	0x63
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IDropTarget\0"
	.byte	0xb
	.byte	0x64
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IViewObject2\0"
	.byte	0xb
	.byte	0x69
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IOleCache2\0"
	.byte	0xb
	.byte	0x6a
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_IOleCacheControl\0"
	.byte	0xb
	.byte	0x6b
	.long	0x36c
	.uleb128 0x4
	.ascii "IID_ITypeLib\0"
	.byte	0xc
	.byte	0x52
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_ITypeLib2\0"
	.byte	0xc
	.byte	0x53
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_ICreateTypeInfo\0"
	.byte	0xc
	.byte	0x54
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_ICreateTypeInfo2\0"
	.byte	0xc
	.byte	0x55
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_ICreateTypeLib\0"
	.byte	0xc
	.byte	0x56
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_ICreateTypeLib2\0"
	.byte	0xc
	.byte	0x57
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_ITypeInfo\0"
	.byte	0xc
	.byte	0x58
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_ITypeInfo2\0"
	.byte	0xc
	.byte	0x59
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_IErrorInfo\0"
	.byte	0xc
	.byte	0x5a
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_IEnumVARIANT\0"
	.byte	0xc
	.byte	0x5c
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_ICreateErrorInfo\0"
	.byte	0xc
	.byte	0x5d
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_ISupportErrorInfo\0"
	.byte	0xc
	.byte	0x5e
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_IRecordInfo\0"
	.byte	0xc
	.byte	0x5f
	.long	0x4ba
	.uleb128 0x4
	.ascii "IID_ITypeMarshal\0"
	.byte	0xc
	.byte	0x60
	.long	0x4ba
	.uleb128 0x9
	.ascii "eFruit\0"
	.byte	0x30
	.byte	0xd
	.byte	0x9
	.long	0x1e05
	.uleb128 0xa
	.ascii "tangerine\0"
	.byte	0xd
	.byte	0xb
	.long	0x4e3
	.byte	0
	.uleb128 0xa
	.ascii "grape\0"
	.byte	0xd
	.byte	0xc
	.long	0x4e3
	.byte	0x8
	.uleb128 0xa
	.ascii "peach\0"
	.byte	0xd
	.byte	0xd
	.long	0x4e3
	.byte	0x10
	.uleb128 0xa
	.ascii "total_price_products\0"
	.byte	0xd
	.byte	0xe
	.long	0x4e3
	.byte	0x18
	.uleb128 0xa
	.ascii "total_weight\0"
	.byte	0xd
	.byte	0xf
	.long	0x4e3
	.byte	0x20
	.uleb128 0xa
	.ascii "delivery_price\0"
	.byte	0xd
	.byte	0x10
	.long	0x4e3
	.byte	0x28
	.byte	0
	.uleb128 0x15
	.ascii "kCurrency\0"
	.byte	0x1
	.byte	0x14
	.long	0xfd
	.uleb128 0x5
	.byte	0x3
	.long	_kCurrency
	.uleb128 0x15
	.ascii "kPriceTangerine\0"
	.byte	0x1
	.byte	0x15
	.long	0x4ed
	.uleb128 0x5
	.byte	0x3
	.long	_kPriceTangerine
	.uleb128 0x15
	.ascii "kPricePeach\0"
	.byte	0x1
	.byte	0x16
	.long	0x4ed
	.uleb128 0x5
	.byte	0x3
	.long	_kPricePeach
	.uleb128 0x15
	.ascii "kPriceGrape\0"
	.byte	0x1
	.byte	0x17
	.long	0x4ed
	.uleb128 0x5
	.byte	0x3
	.long	_kPriceGrape
	.uleb128 0x15
	.ascii "kPriceDeliveryPackage1\0"
	.byte	0x1
	.byte	0x18
	.long	0x4ed
	.uleb128 0x5
	.byte	0x3
	.long	_kPriceDeliveryPackage1
	.uleb128 0x15
	.ascii "kPriceDeliveryPackage2\0"
	.byte	0x1
	.byte	0x19
	.long	0x4ed
	.uleb128 0x5
	.byte	0x3
	.long	_kPriceDeliveryPackage2
	.uleb128 0x15
	.ascii "kPriceDeliveryPackage3\0"
	.byte	0x1
	.byte	0x1a
	.long	0x4ed
	.uleb128 0x5
	.byte	0x3
	.long	_kPriceDeliveryPackage3
	.uleb128 0x15
	.ascii "kPriceEveryExtraKilogram\0"
	.byte	0x1
	.byte	0x1b
	.long	0x4ed
	.uleb128 0x5
	.byte	0x3
	.long	_kPriceEveryExtraKilogram
	.uleb128 0x15
	.ascii "kLargeOrderDiscount\0"
	.byte	0x1
	.byte	0x1c
	.long	0x4ed
	.uleb128 0x5
	.byte	0x3
	.long	_kLargeOrderDiscount
	.uleb128 0x6
	.long	0xfd
	.long	0x1f2e
	.uleb128 0x10
	.long	0x353
	.byte	0xb
	.byte	0
	.uleb128 0x3
	.long	0x1f1e
	.uleb128 0x15
	.ascii "kShopName\0"
	.byte	0x1
	.byte	0x1e
	.long	0x1f2e
	.uleb128 0x5
	.byte	0x3
	.long	_kShopName
	.uleb128 0x6
	.long	0xfd
	.long	0x1f5a
	.uleb128 0x10
	.long	0x353
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.long	0x1f4a
	.uleb128 0x15
	.ascii "kShopLicenseNumber\0"
	.byte	0x1
	.byte	0x1f
	.long	0x1f5a
	.uleb128 0x5
	.byte	0x3
	.long	_kShopLicenseNumber
	.uleb128 0x6
	.long	0xfd
	.long	0x1f8f
	.uleb128 0x10
	.long	0x353
	.byte	0x3c
	.byte	0
	.uleb128 0x3
	.long	0x1f7f
	.uleb128 0x15
	.ascii "kShopInfo\0"
	.byte	0x1
	.byte	0x20
	.long	0x1f8f
	.uleb128 0x5
	.byte	0x3
	.long	_kShopInfo
	.uleb128 0x6
	.long	0xfd
	.long	0x1fc1
	.uleb128 0x10
	.long	0x353
	.byte	0x5
	.uleb128 0x10
	.long	0x353
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.long	0x1fab
	.uleb128 0x15
	.ascii "kMenuItems\0"
	.byte	0x1
	.byte	0x22
	.long	0x1fc1
	.uleb128 0x5
	.byte	0x3
	.long	_kMenuItems
	.uleb128 0x16
	.ascii "Launch\0"
	.byte	0x1
	.byte	0xce
	.long	LFB39
	.long	LFE39-LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x2017
	.uleb128 0x17
	.secrel32	LASF0
	.byte	0x1
	.byte	0xce
	.long	0x2017
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.ascii "variant\0"
	.byte	0x1
	.byte	0xd0
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x1d7e
	.uleb128 0x16
	.ascii "ProcessVariant\0"
	.byte	0x1
	.byte	0xa2
	.long	LFB38
	.long	LFE38-LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x205e
	.uleb128 0x19
	.ascii "choosed\0"
	.byte	0x1
	.byte	0xa2
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.secrel32	LASF0
	.byte	0x1
	.byte	0xa2
	.long	0x2017
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x1a
	.ascii "PrintMenu\0"
	.byte	0x1
	.byte	0x9a
	.long	LFB37
	.long	LFE37-LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x208c
	.uleb128 0x18
	.ascii "counter\0"
	.byte	0x1
	.byte	0x9c
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x16
	.ascii "ShowFullPrice\0"
	.byte	0x1
	.byte	0x8a
	.long	LFB36
	.long	LFE36-LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x20ba
	.uleb128 0x17
	.secrel32	LASF0
	.byte	0x1
	.byte	0x8a
	.long	0x2017
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.ascii "PrintShopInfo\0"
	.byte	0x1
	.byte	0x85
	.long	LFB35
	.long	LFE35-LFB35
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.ascii "OrderGrape\0"
	.byte	0x1
	.byte	0x7c
	.long	LFB34
	.long	LFE34-LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x210e
	.uleb128 0x17
	.secrel32	LASF0
	.byte	0x1
	.byte	0x7c
	.long	0x2017
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x1
	.byte	0x7e
	.long	0x4e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.ascii "OrderPeaches\0"
	.byte	0x1
	.byte	0x73
	.long	LFB33
	.long	LFE33-LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x2149
	.uleb128 0x17
	.secrel32	LASF0
	.byte	0x1
	.byte	0x73
	.long	0x2017
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x1
	.byte	0x75
	.long	0x4e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.ascii "OrderTangerines\0"
	.byte	0x1
	.byte	0x6a
	.long	LFB32
	.long	LFE32-LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x2187
	.uleb128 0x17
	.secrel32	LASF0
	.byte	0x1
	.byte	0x6a
	.long	0x2017
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x1
	.byte	0x6c
	.long	0x4e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.ascii "UpdateSession\0"
	.byte	0x1
	.byte	0x62
	.long	LFB31
	.long	LFE31-LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x21b5
	.uleb128 0x17
	.secrel32	LASF0
	.byte	0x1
	.byte	0x62
	.long	0x2017
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.ascii "UpdateDeliveryCost\0"
	.byte	0x1
	.byte	0x58
	.long	LFB30
	.long	LFE30-LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x21e8
	.uleb128 0x17
	.secrel32	LASF0
	.byte	0x1
	.byte	0x58
	.long	0x2017
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.ascii "UpdateTotalWeight\0"
	.byte	0x1
	.byte	0x53
	.long	LFB29
	.long	LFE29-LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x221a
	.uleb128 0x17
	.secrel32	LASF0
	.byte	0x1
	.byte	0x53
	.long	0x2017
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.ascii "UpdateTotalPrice\0"
	.byte	0x1
	.byte	0x49
	.long	LFB28
	.long	LFE28-LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x224b
	.uleb128 0x17
	.secrel32	LASF0
	.byte	0x1
	.byte	0x49
	.long	0x2017
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.ascii "PrintCartInfo\0"
	.byte	0x1
	.byte	0x2f
	.long	LFB27
	.long	LFE27-LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x2279
	.uleb128 0x17
	.secrel32	LASF0
	.byte	0x1
	.byte	0x2f
	.long	0x2017
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.ascii "GenerateSession\0"
	.byte	0x1
	.byte	0x25
	.long	0x2017
	.long	LFB26
	.long	LFE26-LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x22b5
	.uleb128 0x18
	.ascii "new_session\0"
	.byte	0x1
	.byte	0x27
	.long	0x2017
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.ascii "ClearConsole\0"
	.byte	0x1
	.byte	0x3
	.long	LFB25
	.long	LFE25-LFB25
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.ascii "consoleHandle\0"
	.byte	0x1
	.byte	0x5
	.long	0x2c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.ascii "csbi\0"
	.byte	0x1
	.byte	0x6
	.long	0x48d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x18
	.ascii "written\0"
	.byte	0x1
	.byte	0x7
	.long	0x25b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x18
	.ascii "zeroPos\0"
	.byte	0x1
	.byte	0x8
	.long	0x3f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	LBB2
	.long	LBE2-LBB2
	.uleb128 0x18
	.ascii "numChars\0"
	.byte	0x1
	.byte	0xc
	.long	0x25b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x1c
	.word	0x2
	.secrel32	Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	Ltext0
	.long	Letext0-Ltext0
	.long	0
	.long	0
	.section	.debug_macro,"dr"
Ldebug_macro0:
	.word	0x4
	.byte	0x2
	.secrel32	Ldebug_line0
	.byte	0x1
	.uleb128 0
	.ascii "__STDC__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__STDC_VERSION__ 201112L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__STDC_UTF_16__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__STDC_UTF_32__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__STDC_HOSTED__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC__ 6\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_MINOR__ 3\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_PATCHLEVEL__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__VERSION__ \"6.3.0\"\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_RELAXED 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_SEQ_CST 5\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_ACQUIRE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_RELEASE 3\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_ACQ_REL 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_CONSUME 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FINITE_MATH_ONLY__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_INT__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_LONG__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_LONG_LONG__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_SHORT__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_FLOAT__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_DOUBLE__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_LONG_DOUBLE__ 12\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_SIZE_T__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__CHAR_BIT__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BIGGEST_ALIGNMENT__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ORDER_LITTLE_ENDIAN__ 1234\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ORDER_BIG_ENDIAN__ 4321\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ORDER_PDP_ENDIAN__ 3412\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_POINTER__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZE_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PTRDIFF_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTMAX_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__CHAR16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__CHAR32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT16_TYPE__ short int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT32_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT64_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT64_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST16_TYPE__ short int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST32_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST64_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST64_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST16_TYPE__ short int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST32_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST64_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST64_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTPTR_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTPTR_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__has_include(STR) __has_include__(STR)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__has_include_next(STR) __has_include_next__(STR)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GXX_ABI_VERSION 1010\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SCHAR_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SHRT_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LONG_MAX__ 0x7fffffffL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LONG_LONG_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_MIN__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_MIN__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PTRDIFF_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZE_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_C(c) c ## LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTMAX_MAX__ 0xffffffffffffffffULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTMAX_C(c) c ## ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT8_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT16_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT32_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT64_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT8_MAX__ 0xff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT16_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT32_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT64_MAX__ 0xffffffffffffffffULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST8_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT8_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST16_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT16_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST32_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT32_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT64_C(c) c ## LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST8_MAX__ 0xff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT8_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST16_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT16_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST32_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT32_C(c) c ## U\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT64_C(c) c ## ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST8_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST16_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST32_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST64_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST8_MAX__ 0xff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST16_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST32_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST64_MAX__ 0xffffffffffffffffULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTPTR_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTPTR_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_IEC_559 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_IEC_559_COMPLEX 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_EVAL_METHOD__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC_EVAL_METHOD__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_RADIX__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MANT_DIG__ 24\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_DIG__ 6\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MIN_EXP__ (-125)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MIN_10_EXP__ (-37)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MAX_EXP__ 128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MAX_10_EXP__ 38\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_DECIMAL_DIG__ 9\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MAX__ 3.40282346638528859812e+38F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MIN__ 1.17549435082228750797e-38F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_EPSILON__ 1.19209289550781250000e-7F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_DENORM_MIN__ 1.40129846432481707092e-45F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MANT_DIG__ 53\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_DIG__ 15\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MIN_EXP__ (-1021)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MIN_10_EXP__ (-307)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MAX_EXP__ 1024\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MAX_10_EXP__ 308\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_DECIMAL_DIG__ 17\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MAX__ ((double)1.79769313486231570815e+308L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MIN__ ((double)2.22507385850720138309e-308L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_EPSILON__ ((double)2.22044604925031308085e-16L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_DENORM_MIN__ ((double)4.94065645841246544177e-324L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MANT_DIG__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_DIG__ 18\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MIN_EXP__ (-16381)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MIN_10_EXP__ (-4931)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MAX_EXP__ 16384\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MAX_10_EXP__ 4932\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DECIMAL_DIG__ 21\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MAX__ 1.18973149535723176502e+4932L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MIN__ 3.36210314311209350626e-4932L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_EPSILON__ 1.08420217248550443401e-19L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_DENORM_MIN__ 3.64519953188247460253e-4951L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MANT_DIG__ 7\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MIN_EXP__ (-94)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MAX_EXP__ 97\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MIN__ 1E-95DF\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MAX__ 9.999999E96DF\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_EPSILON__ 1E-6DF\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MANT_DIG__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MIN_EXP__ (-382)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MAX_EXP__ 385\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MIN__ 1E-383DD\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MAX__ 9.999999999999999E384DD\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_EPSILON__ 1E-15DD\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MANT_DIG__ 34\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MIN_EXP__ (-6142)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MAX_EXP__ 6145\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MIN__ 1E-6143DL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_EPSILON__ 1E-33DL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__REGISTER_PREFIX__ \0"
	.byte	0x1
	.uleb128 0
	.ascii "__USER_LABEL_PREFIX__ _\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_STDC_INLINE__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__NO_INLINE__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_BOOL_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_CHAR_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_SHORT_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_INT_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_LONG_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_LLONG_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_POINTER_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_HAVE_DWARF2_CFI_ASM 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PRAGMA_REDEFINE_EXTNAME 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_WCHAR_T__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_WINT_T__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_PTRDIFF_T__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__i386 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__i386__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "i386 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_FLOAT80__ 12\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_FLOAT128__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_HLE_ACQUIRE 65536\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_HLE_RELEASE 131072\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ASM_FLAG_OUTPUTS__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__i586 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__i586__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__pentium 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__pentium__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__code_model_32__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SEG_FS 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SEG_GS 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "_X86_ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__stdcall __attribute__((__stdcall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__fastcall __attribute__((__fastcall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__thiscall __attribute__((__thiscall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__cdecl __attribute__((__cdecl__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "_stdcall __attribute__((__stdcall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "_fastcall __attribute__((__fastcall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "_thiscall __attribute__((__thiscall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "_cdecl __attribute__((__cdecl__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GXX_MERGED_TYPEINFO_NAMES 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GXX_TYPEINFO_EQUALITY_INLINE 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__MSVCRT__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__MINGW32__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "_WIN32 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WIN32 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WIN32__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "WIN32 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINNT 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINNT__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "WINNT 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "_INTEGRAL_MAX_BITS 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__declspec(x) __attribute__((x))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DECIMAL_BID_FORMAT__ 1\0"
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x3
	.uleb128 0x1
	.uleb128 0xd
	.byte	0x1
	.uleb128 0x2
	.ascii "Z2_1_V23_EFRUIT_H \0"
	.file 16 "c:/mingw/include/malloc.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x10
	.byte	0x1
	.uleb128 0xf
	.ascii "_MALLOC_H_ \0"
	.file 17 "c:/mingw/include/_mingw.h"
	.byte	0x3
	.uleb128 0x12
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x22
	.ascii "__MINGW_H \0"
	.byte	0x1
	.uleb128 0x31
	.ascii "__MINGW32_VERSION 5000002L\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "__MINGW32_MAJOR_VERSION 5\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "__MINGW32_MINOR_VERSION 0\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "__MINGW32_PATCHLEVEL 2\0"
	.file 18 "c:/mingw/include/msvcrtver.h"
	.byte	0x3
	.uleb128 0x42
	.uleb128 0x12
	.byte	0x1
	.uleb128 0x22
	.ascii "_MSVCRTVER_H \0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "__MSVCR60_DLL 0x0600\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "__MSVCR61_DLL 0x0601\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "__MSVCR70_DLL 0x0700\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "__MSVCR71_DLL 0x0701\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "__MSVCR80_DLL 0x0800\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "__MSVCR90_DLL 0x0900\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "__MSVCR100_DLL 0x1000\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "__MSVCR110_DLL 0x1100\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "__MSVCR120_DLL 0x1200\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "__MSVCRT_VERSION__ __MSVCR60_DLL\0"
	.byte	0x4
	.file 19 "c:/mingw/include/w32api.h"
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x22
	.ascii "_W32API_H \0"
	.byte	0x1
	.uleb128 0x33
	.ascii "__W32API_VERSION 5000002L\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "__W32API_MAJOR_VERSION 5\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "__W32API_MINOR_VERSION 0\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "__W32API_PATCHLEVEL 2\0"
	.file 20 "c:/mingw/include/sdkddkver.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x14
	.byte	0x1
	.uleb128 0x22
	.ascii "_SDKDDKVER_H \0"
	.byte	0x1
	.uleb128 0x29
	.ascii "OSVERSION_MASK 0xFFFF0000\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "SPVERSION_MASK 0x0000FF00\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "SUBVERSION_MASK 0x000000FF\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "OSVER(ver) ((ver) & OSVERSION_MASK)\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "SPVER(ver) (((ver) & SPVERSION_MASK) >> 8)\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "SUBVER(ver) ((ver) & SUBVERSION_MASK)\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "WINNTVER(ver) ((ver) >> 16)\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "NTDDI_VERSION_FROM_WIN32_WINNT(ver) _NTDDI_VERSION_FROM_WIN32_WINNT(ver)\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "_NTDDI_VERSION_FROM_WIN32_WINNT(ver) ver ##0000\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "_WIN32_WINNT_NT4 0x0400\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "_WIN32_WINNT_NT4E 0x0401\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "_WIN32_WINNT_NT4SP3 0x0403\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "_WIN32_WINDOWS_95 0x0400\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "_WIN32_WINDOWS_98 0x0410\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "_WIN32_WINDOWS_ME 0x0490\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "_WIN32_WINNT_WIN2K 0x0500\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "_WIN32_WINNT_WINXP 0x0501\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "_WIN32_WINNT_WS03 0x0502\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "_WIN32_WINNT_WIN6 0x0600\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "_WIN32_WINNT_VISTA 0x0600\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "_WIN32_WINNT_WS08 0x0600\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "_WIN32_WINNT_LONGHORN 0x0600\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "_WIN32_WINNT_WIN7 0x0601\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "_WIN32_WINNT_WIN8 0x0602\0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "_WIN32_WINNT_WINBLUE 0x0603\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "_WIN32_IE_IE50 0x0500\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "_WIN32_IE_IE501 0x0501\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "_WIN32_IE_IE55 0x0550\0"
	.byte	0x1
	.uleb128 0x55
	.ascii "_WIN32_IE_IE56 0x0560\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "_WIN32_IE_IE60 0x0600\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "_WIN32_IE_IE60SP1 0x0601\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "_WIN32_IE_IE60SP2 0x0603\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "_WIN32_IE_IE70 0x0700\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "_WIN32_IE_IE80 0x0800\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "_WIN32_IE_IE30 0x0300\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "_WIN32_IE_IE301 0x0301\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "_WIN32_IE_IE302 0x0302\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "_WIN32_IE_IE40 0x0400\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "_WIN32_IE_IE401 0x0401\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "__NTDDI_WIN5 0x05000000\0"
	.byte	0x1
	.uleb128 0x66
	.ascii "__NTDDI_WIN51 0x05010000\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "__NTDDI_WIN52 0x05020000\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "__NTDDI_WIN6 0x06000000\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "__NTDDI_WIN61 0x06010000\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "__NTDDI_WIN62 0x06020000\0"
	.byte	0x1
	.uleb128 0x6b
	.ascii "__NTDDI_WIN63 0x06030000\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "__NTDDI_SP0 0x00000000\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "__NTDDI_SP1 0x00000100\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "__NTDDI_SP2 0x00000200\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "__NTDDI_SP3 0x00000300\0"
	.byte	0x1
	.uleb128 0x70
	.ascii "__NTDDI_SP4 0x00000400\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "NTDDI_WIN2K __NTDDI_WIN5 + __NTDDI_SP0\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "NTDDI_WIN2KSP1 __NTDDI_WIN5 + __NTDDI_SP1\0"
	.byte	0x1
	.uleb128 0x74
	.ascii "NTDDI_WIN2KSP2 __NTDDI_WIN5 + __NTDDI_SP2\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "NTDDI_WIN2KSP3 __NTDDI_WIN5 + __NTDDI_SP3\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "NTDDI_WIN2KSP4 __NTDDI_WIN5 + __NTDDI_SP4\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "NTDDI_WINXP __NTDDI_WIN51 + __NTDDI_SP0\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "NTDDI_WINXPSP1 __NTDDI_WIN51 + __NTDDI_SP1\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "NTDDI_WINXPSP2 __NTDDI_WIN51 + __NTDDI_SP2\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "NTDDI_WINXPSP3 __NTDDI_WIN51 + __NTDDI_SP3\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "NTDDI_WS03 __NTDDI_WIN52 + __NTDDI_SP0\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "NTDDI_WS03SP1 __NTDDI_WIN52 + __NTDDI_SP1\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "NTDDI_WS03SP2 __NTDDI_WIN52 + __NTDDI_SP2\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "NTDDI_VISTA __NTDDI_WIN6 + __NTDDI_SP0\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "NTDDI_VISTASP1 __NTDDI_WIN6 + __NTDDI_SP1\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "NTDDI_VISTASP2 __NTDDI_WIN6 + __NTDDI_SP2\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "NTDDI_LONGHORN NTDDI_VISTA\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "NTDDI_WIN6 NTDDI_VISTA\0"
	.byte	0x1
	.uleb128 0x88
	.ascii "NTDDI_WIN6SP1 NTDDI_VISTASP1\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "NTDDI_WIN6SP2 NTDDI_VISTASP2\0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "NTDDI_WS08 __NTDDI_WIN6 + __NTDDI_SP1\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "NTDDI_WIN7 __NTDDI_WIN61 + __NTDDI_SP0\0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "NTDDI_WIN8 __NTDDI_WIN62 + __NTDDI_SP0\0"
	.byte	0x1
	.uleb128 0x91
	.ascii "NTDDI_WINBLUE __NTDDI_WIN63 + __NTDDI_SP0\0"
	.byte	0x1
	.uleb128 0xb9
	.ascii "_WIN32_WINNT _WIN32_WINNT_WIN2K\0"
	.byte	0x1
	.uleb128 0xbe
	.ascii "WINVER _WIN32_WINNT\0"
	.byte	0x1
	.uleb128 0xc9
	.ascii "NTDDI_VERSION NTDDI_VERSION_FROM_WIN32_WINNT(_WIN32_WINNT)\0"
	.byte	0x1
	.uleb128 0xdc
	.ascii "_M_IX86 500\0"
	.byte	0x1
	.uleb128 0x106
	.ascii "_M_IX86_FP 0\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x4f
	.ascii "Windows95 _WIN32_WINDOWS_95\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "Windows98 _WIN32_WINDOWS_98\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "WindowsME _WIN32_WINDOWS_ME\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "WindowsNT4 _WIN32_WINNT_NT4\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "Windows2000 _WIN32_WINNT_WIN2K\0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "WindowsXP _WIN32_WINNT_WINXP\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "Windows2003 _WIN32_WINNT_WS03\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "WindowsVista _WIN32_WINNT_VISTA\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "IE3 _WIN32_IE_IE30\0"
	.byte	0x1
	.uleb128 0x66
	.ascii "IE301 _WIN32_IE_IE301\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "IE302 _WIN32_IE_IE302\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "IE4 _WIN32_IE_IE40\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "IE401 _WIN32_IE_IE401\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "IE5 _WIN32_IE_IE50\0"
	.byte	0x1
	.uleb128 0x6b
	.ascii "IE5a _WIN32_IE_IE50\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "IE5b _WIN32_IE_IE50\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "IE501 _WIN32_IE_IE501\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "IE55 _WIN32_IE_IE55\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "IE56 _WIN32_IE_IE56\0"
	.byte	0x1
	.uleb128 0x70
	.ascii "IE6 _WIN32_IE_IE60\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "IE601 _WIN32_IE_IE60SP1\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "IE602 _WIN32_IE_IE60SP2\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "IE7 _WIN32_IE_IE70\0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "__AW_SUFFIXED__(__NAME__) __NAME__ ##A\0"
	.byte	0x1
	.uleb128 0xa0
	.ascii "__AW_EXTENDED__(__NAME__) __AW_SUFFIXED__(__NAME__ ##_)\0"
	.byte	0x1
	.uleb128 0xa9
	.ascii "__AW_STRING_A__(__TEXT__) __TEXT__\0"
	.byte	0x1
	.uleb128 0xaa
	.ascii "__AW__WCHAR_T__(__TEXT__) __AW_STRING_A__(L ##__TEXT__)\0"
	.byte	0x1
	.uleb128 0xab
	.ascii "__AW_STRING_W__(__TEXT__) __AW__WCHAR_T__(__TEXT__)\0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "__AW_ALIAS__(__NAME__) __AW_SUFFIXED__(__NAME__) __NAME__\0"
	.byte	0x1
	.uleb128 0xb3
	.ascii "__AW_ALIAS_EX__(__NAME__) __AW_EXTENDED__(__NAME__) __NAME__\0"
	.byte	0x1
	.uleb128 0xc1
	.ascii "_EXTERN_C extern\0"
	.byte	0x1
	.uleb128 0xc2
	.ascii "_BEGIN_C_DECLS \0"
	.byte	0x1
	.uleb128 0xc3
	.ascii "_END_C_DECLS \0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x6d
	.ascii "__CRT_GLOB_USE_MSVCRT__ 0x0001\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "__CRT_GLOB_USE_MINGW__ 0x0002\0"
	.byte	0x1
	.uleb128 0x97
	.ascii "__CRT_GLOB_USE_SINGLE_QUOTE__ 0x0010\0"
	.byte	0x1
	.uleb128 0x98
	.ascii "__CRT_GLOB_BRACKET_GROUPS__ 0x0020\0"
	.byte	0x1
	.uleb128 0xa1
	.ascii "__CRT_GLOB_ESCAPE_CHAR__ (char)(127)\0"
	.byte	0x1
	.uleb128 0xa7
	.ascii "__MINGW_ANSI_STDIO__ 0x0000000000000001ULL\0"
	.byte	0x1
	.uleb128 0xac
	.ascii "__MINGW_LC_EXTENSIONS__ 0x0000000000000050ULL\0"
	.byte	0x1
	.uleb128 0xad
	.ascii "__MINGW_LC_MESSAGES__ 0x0000000000000010ULL\0"
	.byte	0x1
	.uleb128 0xae
	.ascii "__MINGW_LC_ENVVARS__ 0x0000000000000040ULL\0"
	.byte	0x2
	.uleb128 0xb3
	.ascii "__attribute__\0"
	.byte	0x1
	.uleb128 0xe1
	.ascii "__MINGW_IMPORT extern __attribute__((__dllimport__))\0"
	.byte	0x1
	.uleb128 0xe7
	.ascii "_CRTIMP \0"
	.byte	0x1
	.uleb128 0xea
	.ascii "__DECLSPEC_SUPPORTED \0"
	.byte	0x1
	.uleb128 0xfe
	.ascii "__int64 long long\0"
	.byte	0x1
	.uleb128 0x101
	.ascii "__int32 long\0"
	.byte	0x1
	.uleb128 0x104
	.ascii "__int16 short\0"
	.byte	0x1
	.uleb128 0x107
	.ascii "__int8 char\0"
	.byte	0x1
	.uleb128 0x10a
	.ascii "__small char\0"
	.byte	0x1
	.uleb128 0x10d
	.ascii "__hyper long long\0"
	.byte	0x1
	.uleb128 0x11b
	.ascii "__MINGW_GNUC_PREREQ(major,minor) (__GNUC__ > (major) || (__GNUC__ == (major) && __GNUC_MINOR__ >= (minor)))\0"
	.byte	0x1
	.uleb128 0x126
	.ascii "__CRT_INLINE extern inline __attribute__((__gnu_inline__))\0"
	.byte	0x1
	.uleb128 0x132
	.ascii "_CRTALIAS __CRT_INLINE __attribute__((__always_inline__))\0"
	.byte	0x1
	.uleb128 0x133
	.ascii "__CRT_ALIAS __CRT_INLINE __attribute__((__always_inline__))\0"
	.byte	0x1
	.uleb128 0x141
	.ascii "__JMPSTUB__(__BUILD_HINT__) \0"
	.byte	0x1
	.uleb128 0x142
	.ascii "__LIBIMPL__(__BUILD_HINT__) \0"
	.byte	0x1
	.uleb128 0x148
	.ascii "__UNUSED_PARAM(x) x __attribute__((__unused__))\0"
	.byte	0x1
	.uleb128 0x14f
	.ascii "__MINGW_ATTRIB_NORETURN __attribute__((__noreturn__))\0"
	.byte	0x1
	.uleb128 0x150
	.ascii "__MINGW_ATTRIB_CONST __attribute__((__const__))\0"
	.byte	0x1
	.uleb128 0x157
	.ascii "__MINGW_ATTRIB_MALLOC __attribute__((__malloc__))\0"
	.byte	0x1
	.uleb128 0x158
	.ascii "__MINGW_ATTRIB_PURE __attribute__((__pure__))\0"
	.byte	0x1
	.uleb128 0x162
	.ascii "__MINGW_ATTRIB_NONNULL(arg) __attribute__((__nonnull__(arg)))\0"
	.byte	0x1
	.uleb128 0x168
	.ascii "__MINGW_ATTRIB_DEPRECATED __attribute__((__deprecated__))\0"
	.byte	0x1
	.uleb128 0x16e
	.ascii "__MINGW_NOTHROW __attribute__((__nothrow__))\0"
	.byte	0x1
	.uleb128 0x190
	.ascii "__USE_MINGW_ANSI_STDIO (__MINGW_FEATURES__ & __MINGW_ANSI_STDIO__)\0"
	.byte	0x1
	.uleb128 0x19b
	.ascii "__paste(prefix,suffix) prefix ## suffix\0"
	.byte	0x1
	.uleb128 0x19c
	.ascii "__valueless(token) ((token - 0) == 0) && (__paste(token,10) == 10)\0"
	.byte	0x1
	.uleb128 0x1ce
	.ascii "_POSIX_C_SOURCE 200809L\0"
	.byte	0x1
	.uleb128 0x1d5
	.ascii "_EMULATE_GLIBC 1\0"
	.byte	0x1
	.uleb128 0x1f5
	.ascii "_ISOC99_SOURCE 0x07\0"
	.byte	0x1
	.uleb128 0x21e
	.ascii "_MINGW32_SOURCE_EXTENDED 1\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x2b
	.ascii "_STDLIB_H \0"
	.byte	0x1
	.uleb128 0x34
	.ascii "__need_size_t \0"
	.byte	0x1
	.uleb128 0x35
	.ascii "__need_wchar_t \0"
	.byte	0x1
	.uleb128 0x36
	.ascii "__need_NULL \0"
	.file 21 "c:/mingw/lib/gcc/mingw32/6.3.0/include/stddef.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x15
	.byte	0x1
	.uleb128 0xbb
	.ascii "__size_t__ \0"
	.byte	0x1
	.uleb128 0xbc
	.ascii "__SIZE_T__ \0"
	.byte	0x1
	.uleb128 0xbd
	.ascii "_SIZE_T \0"
	.byte	0x1
	.uleb128 0xbe
	.ascii "_SYS_SIZE_T_H \0"
	.byte	0x1
	.uleb128 0xbf
	.ascii "_T_SIZE_ \0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "_T_SIZE \0"
	.byte	0x1
	.uleb128 0xc1
	.ascii "__SIZE_T \0"
	.byte	0x1
	.uleb128 0xc2
	.ascii "_SIZE_T_ \0"
	.byte	0x1
	.uleb128 0xc3
	.ascii "_BSD_SIZE_T_ \0"
	.byte	0x1
	.uleb128 0xc4
	.ascii "_SIZE_T_DEFINED_ \0"
	.byte	0x1
	.uleb128 0xc5
	.ascii "_SIZE_T_DEFINED \0"
	.byte	0x1
	.uleb128 0xc6
	.ascii "_BSD_SIZE_T_DEFINED_ \0"
	.byte	0x1
	.uleb128 0xc7
	.ascii "_SIZE_T_DECLARED \0"
	.byte	0x1
	.uleb128 0xc8
	.ascii "___int_size_t_h \0"
	.byte	0x1
	.uleb128 0xc9
	.ascii "_GCC_SIZE_T \0"
	.byte	0x1
	.uleb128 0xca
	.ascii "_SIZET_ \0"
	.byte	0x1
	.uleb128 0xd2
	.ascii "__size_t \0"
	.byte	0x2
	.uleb128 0xee
	.ascii "__need_size_t\0"
	.byte	0x1
	.uleb128 0x10b
	.ascii "__wchar_t__ \0"
	.byte	0x1
	.uleb128 0x10c
	.ascii "__WCHAR_T__ \0"
	.byte	0x1
	.uleb128 0x10d
	.ascii "_WCHAR_T \0"
	.byte	0x1
	.uleb128 0x10e
	.ascii "_T_WCHAR_ \0"
	.byte	0x1
	.uleb128 0x10f
	.ascii "_T_WCHAR \0"
	.byte	0x1
	.uleb128 0x110
	.ascii "__WCHAR_T \0"
	.byte	0x1
	.uleb128 0x111
	.ascii "_WCHAR_T_ \0"
	.byte	0x1
	.uleb128 0x112
	.ascii "_BSD_WCHAR_T_ \0"
	.byte	0x1
	.uleb128 0x113
	.ascii "_WCHAR_T_DEFINED_ \0"
	.byte	0x1
	.uleb128 0x114
	.ascii "_WCHAR_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x115
	.ascii "_WCHAR_T_H \0"
	.byte	0x1
	.uleb128 0x116
	.ascii "___int_wchar_t_h \0"
	.byte	0x1
	.uleb128 0x117
	.ascii "__INT_WCHAR_T_H \0"
	.byte	0x1
	.uleb128 0x118
	.ascii "_GCC_WCHAR_T \0"
	.byte	0x1
	.uleb128 0x119
	.ascii "_WCHAR_T_DECLARED \0"
	.byte	0x2
	.uleb128 0x126
	.ascii "_BSD_WCHAR_T_\0"
	.byte	0x2
	.uleb128 0x15b
	.ascii "__need_wchar_t\0"
	.byte	0x2
	.uleb128 0x191
	.ascii "NULL\0"
	.byte	0x1
	.uleb128 0x196
	.ascii "NULL ((void *)0)\0"
	.byte	0x2
	.uleb128 0x19c
	.ascii "__need_NULL\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x3d
	.ascii "RAND_MAX 0x7FFF\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "EXIT_SUCCESS 0\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "EXIT_FAILURE 1\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "MAX_PATH (260)\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "_MAX_PATH MAX_PATH\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "_MAX_DRIVE (3)\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "_MAX_DIR 256\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "_MAX_FNAME 256\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "_MAX_EXT 256\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "__argc (*__p___argc())\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "__argv (*__p___argv())\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "__wargv (*__p___wargv())\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "MB_CUR_MAX __mb_cur_max\0"
	.byte	0x1
	.uleb128 0xa7
	.ascii "errno (*_errno())\0"
	.byte	0x1
	.uleb128 0xaa
	.ascii "_doserrno (*__doserrno())\0"
	.byte	0x1
	.uleb128 0xb0
	.ascii "_environ (*__p__environ())\0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "_wenviron (*__p__wenviron())\0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "environ _environ\0"
	.byte	0x1
	.uleb128 0xcd
	.ascii "sys_nerr _sys_nerr\0"
	.byte	0x1
	.uleb128 0xe6
	.ascii "sys_errlist _sys_errlist\0"
	.byte	0x1
	.uleb128 0x120
	.ascii "_pgmptr (*__p__pgmptr())\0"
	.byte	0x1
	.uleb128 0x123
	.ascii "_wpgmptr (*__p__wpgmptr())\0"
	.byte	0x1
	.uleb128 0x250
	.ascii "_OUT_TO_DEFAULT 0\0"
	.byte	0x1
	.uleb128 0x251
	.ascii "_OUT_TO_STDERR 1\0"
	.byte	0x1
	.uleb128 0x252
	.ascii "_OUT_TO_MSGBOX 2\0"
	.byte	0x1
	.uleb128 0x253
	.ascii "_REPORT_ERRMODE 3\0"
	.byte	0x1
	.uleb128 0x320
	.ascii "_MKSTEMP_INVOKE 0\0"
	.byte	0x1
	.uleb128 0x321
	.ascii "_MKSTEMP_DEFAULT _O_CREAT | _O_EXCL | _O_RDWR\0"
	.byte	0x1
	.uleb128 0x322
	.ascii "_MKSTEMP_SETMODE(M) __mingw_mkstemp( _MKSTEMP_DEFAULT | (M), NULL )\0"
	.byte	0x1
	.uleb128 0x325
	.ascii "MKSTEMP_SETMODE(M) __mingw_mkstemp( _MKSTEMP_DEFAULT | (M), NULL )\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x23
	.ascii "_FREEENTRY 0\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "_USEDENTRY 1\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "_HEAPEMPTY (-1)\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "_HEAPOK (-2)\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "_HEAPBADBEGIN (-3)\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "_HEAPBADNODE (-4)\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "_HEAPEND (-5)\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "_HEAPBADPTR (-6)\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "_HEAP_MAXREQ 0xFFFFFFE0\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "_alloca(x) __builtin_alloca((x))\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "alloca(x) __builtin_alloca((x))\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x3
	.byte	0x1
	.uleb128 0x33
	.ascii "_STDIO_H \0"
	.byte	0x1
	.uleb128 0x41
	.ascii "__need_NULL \0"
	.byte	0x1
	.uleb128 0x42
	.ascii "__need_size_t \0"
	.byte	0x1
	.uleb128 0x43
	.ascii "__need_wchar_t \0"
	.byte	0x1
	.uleb128 0x44
	.ascii "__need_wint_t \0"
	.byte	0x3
	.uleb128 0x45
	.uleb128 0x15
	.byte	0x2
	.uleb128 0xee
	.ascii "__need_size_t\0"
	.byte	0x2
	.uleb128 0x15b
	.ascii "__need_wchar_t\0"
	.byte	0x1
	.uleb128 0x160
	.ascii "_WINT_T \0"
	.byte	0x2
	.uleb128 0x167
	.ascii "__need_wint_t\0"
	.byte	0x2
	.uleb128 0x191
	.ascii "NULL\0"
	.byte	0x1
	.uleb128 0x196
	.ascii "NULL ((void *)0)\0"
	.byte	0x2
	.uleb128 0x19c
	.ascii "__need_NULL\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x4b
	.ascii "__need_off_t \0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "__need_ssize_t \0"
	.byte	0x1
	.uleb128 0x53
	.ascii "__need___off64_t \0"
	.file 22 "c:/mingw/include/sys/types.h"
	.byte	0x3
	.uleb128 0x5e
	.uleb128 0x16
	.byte	0x2
	.uleb128 0x54
	.ascii "__need_off_t\0"
	.byte	0x2
	.uleb128 0x6c
	.ascii "__need___off64_t\0"
	.byte	0x2
	.uleb128 0x84
	.ascii "__need_ssize_t\0"
	.byte	0x2
	.uleb128 0xa3
	.ascii "__need_time_t\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x65
	.ascii "__need___va_list \0"
	.file 23 "c:/mingw/lib/gcc/mingw32/6.3.0/include/stdarg.h"
	.byte	0x3
	.uleb128 0x66
	.uleb128 0x17
	.byte	0x2
	.uleb128 0x22
	.ascii "__need___va_list\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "__GNUC_VA_LIST \0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x67
	.ascii "__VALIST __builtin_va_list\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "_IOREAD 1\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "_IOWRT 2\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "_IORW 0x0080\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "STDIN_FILENO 0\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "STDOUT_FILENO 1\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "STDERR_FILENO 2\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "EOF (-1)\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "FILENAME_MAX (260)\0"
	.byte	0x1
	.uleb128 0x93
	.ascii "FOPEN_MAX (20)\0"
	.byte	0x1
	.uleb128 0x97
	.ascii "TMP_MAX 32767\0"
	.byte	0x1
	.uleb128 0x9e
	.ascii "_P_tmpdir \"\\\\\"\0"
	.byte	0x1
	.uleb128 0xa0
	.ascii "P_tmpdir _P_tmpdir\0"
	.byte	0x1
	.uleb128 0xa2
	.ascii "_wP_tmpdir L\"\\\\\"\0"
	.byte	0x1
	.uleb128 0xa9
	.ascii "L_tmpnam (16)\0"
	.byte	0x1
	.uleb128 0xab
	.ascii "_IOFBF 0x0000\0"
	.byte	0x1
	.uleb128 0xac
	.ascii "_IOLBF 0x0040\0"
	.byte	0x1
	.uleb128 0xad
	.ascii "_IONBF 0x0004\0"
	.byte	0x1
	.uleb128 0xaf
	.ascii "_IOMYBUF 0x0008\0"
	.byte	0x1
	.uleb128 0xb0
	.ascii "_IOEOF 0x0010\0"
	.byte	0x1
	.uleb128 0xb1
	.ascii "_IOERR 0x0020\0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "_IOSTRG 0x0040\0"
	.byte	0x1
	.uleb128 0xba
	.ascii "BUFSIZ 512\0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "SEEK_SET 0\0"
	.byte	0x1
	.uleb128 0xc1
	.ascii "SEEK_CUR 1\0"
	.byte	0x1
	.uleb128 0xc2
	.ascii "SEEK_END 2\0"
	.byte	0x1
	.uleb128 0xf3
	.ascii "stdin (&_iob[STDIN_FILENO])\0"
	.byte	0x1
	.uleb128 0xf4
	.ascii "stdout (&_iob[STDOUT_FILENO])\0"
	.byte	0x1
	.uleb128 0xf5
	.ascii "stderr (&_iob[STDERR_FILENO])\0"
	.byte	0x2
	.uleb128 0x12f
	.ascii "__mingw_stdio_redirect__\0"
	.byte	0x1
	.uleb128 0x130
	.ascii "__mingw_stdio_redirect__(F) __cdecl __MINGW_NOTHROW __Wformat(F)\0"
	.byte	0x1
	.uleb128 0x131
	.ascii "__Wformat_mingw_printf(F,A) __attribute__((__format__(__mingw_printf__,F,A)))\0"
	.byte	0x1
	.uleb128 0x137
	.ascii "__Wformat(F) __Wformat_ ##F __mingw_ ##F\0"
	.byte	0x1
	.uleb128 0x149
	.ascii "__Wformat_printf __Wformat_mingw_printf(1,2)\0"
	.byte	0x1
	.uleb128 0x14a
	.ascii "__Wformat_fprintf __Wformat_mingw_printf(2,3)\0"
	.byte	0x1
	.uleb128 0x14b
	.ascii "__Wformat_sprintf __Wformat_mingw_printf(2,3)\0"
	.byte	0x1
	.uleb128 0x14c
	.ascii "__Wformat_vprintf __Wformat_mingw_printf(1,0)\0"
	.byte	0x1
	.uleb128 0x14d
	.ascii "__Wformat_vfprintf __Wformat_mingw_printf(2,0)\0"
	.byte	0x1
	.uleb128 0x14e
	.ascii "__Wformat_vsprintf __Wformat_mingw_printf(2,0)\0"
	.byte	0x1
	.uleb128 0x153
	.ascii "__Wformat_snprintf __Wformat_mingw_printf(3,4)\0"
	.byte	0x1
	.uleb128 0x154
	.ascii "__Wformat_vsnprintf __Wformat_mingw_printf(3,0)\0"
	.byte	0x1
	.uleb128 0x163
	.ascii "_MSVC_PRINTF_QUIRKS 0x0100U\0"
	.byte	0x1
	.uleb128 0x164
	.ascii "_QUERY_MSVC_PRINTF_QUIRKS ~0U, 0U\0"
	.byte	0x1
	.uleb128 0x165
	.ascii "_DISABLE_MSVC_PRINTF_QUIRKS ~_MSVC_PRINTF_QUIRKS, 0U\0"
	.byte	0x1
	.uleb128 0x166
	.ascii "_ENABLE_MSVC_PRINTF_QUIRKS ~0U, _MSVC_PRINTF_QUIRKS\0"
	.byte	0x2
	.uleb128 0x1d1
	.ascii "__Wformat\0"
	.byte	0x2
	.uleb128 0x1d2
	.ascii "__mingw_stdio_redirect__\0"
	.byte	0x1
	.uleb128 0x1d3
	.ascii "__mingw_stdio_redirect__(F) __cdecl __MINGW_NOTHROW __Wformat(F)\0"
	.byte	0x1
	.uleb128 0x1d4
	.ascii "__Wformat_msvcrt_printf(F,A) __attribute__((__format__(__ms_printf__,F,A)))\0"
	.byte	0x1
	.uleb128 0x1d5
	.ascii "__Wformat(F) __Wformat_ms_ ##F __msvcrt_ ##F\0"
	.byte	0x1
	.uleb128 0x1d7
	.ascii "__Wformat_ms_printf __Wformat_msvcrt_printf(1,2)\0"
	.byte	0x1
	.uleb128 0x1d8
	.ascii "__Wformat_ms_fprintf __Wformat_msvcrt_printf(2,3)\0"
	.byte	0x1
	.uleb128 0x1d9
	.ascii "__Wformat_ms_sprintf __Wformat_msvcrt_printf(2,3)\0"
	.byte	0x1
	.uleb128 0x1da
	.ascii "__Wformat_ms_vprintf __Wformat_msvcrt_printf(1,0)\0"
	.byte	0x1
	.uleb128 0x1db
	.ascii "__Wformat_ms_vfprintf __Wformat_msvcrt_printf(2,0)\0"
	.byte	0x1
	.uleb128 0x1dc
	.ascii "__Wformat_ms_vsprintf __Wformat_msvcrt_printf(2,0)\0"
	.byte	0x2
	.uleb128 0x1e5
	.ascii "__mingw_stdio_redirect__\0"
	.byte	0x2
	.uleb128 0x1e6
	.ascii "__Wformat\0"
	.byte	0x1
	.uleb128 0x324
	.ascii "feof(__F) ((__F)->_flag & _IOEOF)\0"
	.byte	0x1
	.uleb128 0x325
	.ascii "ferror(__F) ((__F)->_flag & _IOERR)\0"
	.byte	0x1
	.uleb128 0x34d
	.ascii "_TWO_DIGIT_EXPONENT 1\0"
	.byte	0x1
	.uleb128 0x354
	.ascii "_THREE_DIGIT_EXPONENT 0\0"
	.byte	0x1
	.uleb128 0x359
	.ascii "_EXPONENT_DIGIT_MASK (_TWO_DIGIT_EXPONENT | _THREE_DIGIT_EXPONENT)\0"
	.byte	0x1
	.uleb128 0x38b
	.ascii "__USE_MINGW_PRINTF 0\0"
	.byte	0x1
	.uleb128 0x39c
	.ascii "_fileno(__F) ((__F)->_file)\0"
	.byte	0x1
	.uleb128 0x39e
	.ascii "fileno(__F) ((__F)->_file)\0"
	.byte	0x4
	.file 24 "c:/mingw/include/conio.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x18
	.byte	0x1
	.uleb128 0xd
	.ascii "_CONIO_H_ \0"
	.byte	0x4
	.file 25 "c:/mingw/include/windows.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x19
	.byte	0x1
	.uleb128 0x22
	.ascii "_WINDOWS_H \0"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x1f
	.ascii "_STDARG_H \0"
	.byte	0x1
	.uleb128 0x20
	.ascii "_ANSI_STDARG_H_ \0"
	.byte	0x2
	.uleb128 0x22
	.ascii "__need___va_list\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "va_start(v,l) __builtin_va_start(v,l)\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "va_end(v) __builtin_va_end(v)\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "va_arg(v,l) __builtin_va_arg(v,l)\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "va_copy(d,s) __builtin_va_copy(d,s)\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "__va_copy(d,s) __builtin_va_copy(d,s)\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "_VA_LIST_ \0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "_VA_LIST \0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "_VA_LIST_DEFINED \0"
	.byte	0x1
	.uleb128 0x72
	.ascii "_VA_LIST_T_H \0"
	.byte	0x1
	.uleb128 0x75
	.ascii "__va_list__ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x21
	.ascii "_WINDEF_H \0"
	.byte	0x1
	.uleb128 0x34
	.ascii "FAR \0"
	.byte	0x1
	.uleb128 0x35
	.ascii "far \0"
	.byte	0x1
	.uleb128 0x36
	.ascii "NEAR \0"
	.byte	0x1
	.uleb128 0x37
	.ascii "near \0"
	.byte	0x1
	.uleb128 0x39
	.ascii "CONST const\0"
	.byte	0x2
	.uleb128 0x3b
	.ascii "MAX_PATH\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "MAX_PATH 260\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "FALSE 0\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "TRUE 1\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "IN \0"
	.byte	0x1
	.uleb128 0x53
	.ascii "OUT \0"
	.byte	0x1
	.uleb128 0x55
	.ascii "OPTIONAL \0"
	.byte	0x1
	.uleb128 0x70
	.ascii "_declspec(e) __attribute__((e))\0"
	.byte	0x2
	.uleb128 0x77
	.ascii "pascal\0"
	.byte	0x2
	.uleb128 0x78
	.ascii "_pascal\0"
	.byte	0x2
	.uleb128 0x79
	.ascii "__pascal\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "pascal __stdcall\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "_pascal __stdcall\0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "__pascal __stdcall\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "PASCAL _pascal\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "CDECL _cdecl\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "STDCALL __stdcall\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "FASTCALL __fastcall\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "WINAPI __stdcall\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "WINAPIV __cdecl\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "APIENTRY __stdcall\0"
	.byte	0x1
	.uleb128 0x84
	.ascii "CALLBACK __stdcall\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "APIPRIVATE __stdcall\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "DECLSPEC_IMPORT __declspec(dllimport)\0"
	.byte	0x1
	.uleb128 0x88
	.ascii "DECLSPEC_EXPORT __declspec(dllexport)\0"
	.byte	0x1
	.uleb128 0x8a
	.ascii "DECLSPEC_NORETURN __declspec(noreturn)\0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "DECLARE_STDCALL_P(type) __stdcall type\0"
	.byte	0x1
	.uleb128 0x90
	.ascii "MAKEWORD(a,b) ((WORD)(((BYTE)(a))|(((WORD)((BYTE)(b)))<<8)))\0"
	.byte	0x1
	.uleb128 0x91
	.ascii "MAKELONG(a,b) ((LONG)(((WORD)(a))|(((DWORD)((WORD)(b)))<<16)))\0"
	.byte	0x1
	.uleb128 0x92
	.ascii "LOWORD(l) ((WORD)((DWORD)(l)))\0"
	.byte	0x1
	.uleb128 0x93
	.ascii "HIWORD(l) ((WORD)(((DWORD)(l)>>16)&0xFFFF))\0"
	.byte	0x1
	.uleb128 0x94
	.ascii "LOBYTE(w) ((BYTE)(w))\0"
	.byte	0x1
	.uleb128 0x95
	.ascii "HIBYTE(w) ((BYTE)(((WORD)(w)>>8)&0xFF))\0"
	.byte	0x1
	.uleb128 0x99
	.ascii "_export \0"
	.byte	0x1
	.uleb128 0x9c
	.ascii "__export \0"
	.byte	0x1
	.uleb128 0xa2
	.ascii "max(a,b) ((a)>(b)?(a):(b))\0"
	.byte	0x1
	.uleb128 0xa5
	.ascii "min(a,b) ((a)<(b)?(a):(b))\0"
	.byte	0x1
	.uleb128 0xa9
	.ascii "UNREFERENCED_PARAMETER(P) {(P)=(P);}\0"
	.byte	0x1
	.uleb128 0xaa
	.ascii "UNREFERENCED_LOCAL_VARIABLE(L) {(L)=(L);}\0"
	.byte	0x1
	.uleb128 0xab
	.ascii "DBG_UNREFERENCED_PARAMETER(P) \0"
	.byte	0x1
	.uleb128 0xac
	.ascii "DBG_UNREFERENCED_LOCAL_VARIABLE(L) \0"
	.byte	0x1
	.uleb128 0xb1
	.ascii "_ANONYMOUS_UNION __extension__\0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "_ANONYMOUS_STRUCT __extension__\0"
	.byte	0x1
	.uleb128 0xca
	.ascii "_UNION_NAME(x) \0"
	.byte	0x1
	.uleb128 0xcb
	.ascii "DUMMYUNIONNAME \0"
	.byte	0x1
	.uleb128 0xcc
	.ascii "DUMMYUNIONNAME2 \0"
	.byte	0x1
	.uleb128 0xcd
	.ascii "DUMMYUNIONNAME3 \0"
	.byte	0x1
	.uleb128 0xce
	.ascii "DUMMYUNIONNAME4 \0"
	.byte	0x1
	.uleb128 0xcf
	.ascii "DUMMYUNIONNAME5 \0"
	.byte	0x1
	.uleb128 0xd0
	.ascii "DUMMYUNIONNAME6 \0"
	.byte	0x1
	.uleb128 0xd1
	.ascii "DUMMYUNIONNAME7 \0"
	.byte	0x1
	.uleb128 0xd2
	.ascii "DUMMYUNIONNAME8 \0"
	.byte	0x1
	.uleb128 0xdb
	.ascii "_STRUCT_NAME(x) \0"
	.byte	0x1
	.uleb128 0xdc
	.ascii "DUMMYSTRUCTNAME \0"
	.byte	0x1
	.uleb128 0xdd
	.ascii "DUMMYSTRUCTNAME2 \0"
	.byte	0x1
	.uleb128 0xde
	.ascii "DUMMYSTRUCTNAME3 \0"
	.byte	0x1
	.uleb128 0xe3
	.ascii "STRICT 1\0"
	.byte	0x3
	.uleb128 0x10d
	.uleb128 0x5
	.byte	0x3
	.uleb128 0x26
	.uleb128 0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0x2c
	.ascii "_WINNT_H \0"
	.file 26 "c:/mingw/include/winerror.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x1a
	.byte	0x1
	.uleb128 0x29
	.ascii "_WINERROR_H \0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "_HRESULT_TYPEDEF_(_sc) ((HRESULT)(_sc))\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "ERROR_SUCCESS 0L\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "NO_ERROR 0L\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "ERROR_INVALID_FUNCTION 1L\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "ERROR_FILE_NOT_FOUND 2L\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "ERROR_PATH_NOT_FOUND 3L\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "ERROR_TOO_MANY_OPEN_FILES 4L\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "ERROR_ACCESS_DENIED 5L\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "ERROR_INVALID_HANDLE 6L\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "ERROR_ARENA_TRASHED 7L\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "ERROR_NOT_ENOUGH_MEMORY 8L\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "ERROR_INVALID_BLOCK 9L\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "ERROR_BAD_ENVIRONMENT 10L\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "ERROR_BAD_FORMAT 11L\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "ERROR_INVALID_ACCESS 12L\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "ERROR_INVALID_DATA 13L\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "ERROR_OUTOFMEMORY 14L\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "ERROR_INVALID_DRIVE 15L\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "ERROR_CURRENT_DIRECTORY 16L\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "ERROR_NOT_SAME_DEVICE 17L\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "ERROR_NO_MORE_FILES 18L\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "ERROR_WRITE_PROTECT 19L\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "ERROR_BAD_UNIT 20L\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "ERROR_NOT_READY 21L\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "ERROR_BAD_COMMAND 22L\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "ERROR_CRC 23L\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "ERROR_BAD_LENGTH 24L\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "ERROR_SEEK 25L\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "ERROR_NOT_DOS_DISK 26L\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "ERROR_SECTOR_NOT_FOUND 27L\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "ERROR_OUT_OF_PAPER 28L\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "ERROR_WRITE_FAULT 29L\0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "ERROR_READ_FAULT 30L\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "ERROR_GEN_FAILURE 31L\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "ERROR_SHARING_VIOLATION 32L\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "ERROR_LOCK_VIOLATION 33L\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "ERROR_WRONG_DISK 34L\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "ERROR_SHARING_BUFFER_EXCEEDED 36L\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "ERROR_HANDLE_EOF 38L\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "ERROR_HANDLE_DISK_FULL 39L\0"
	.byte	0x1
	.uleb128 0x55
	.ascii "ERROR_NOT_SUPPORTED 50L\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "ERROR_REM_NOT_LIST 51L\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "ERROR_DUP_NAME 52L\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "ERROR_BAD_NETPATH 53L\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "ERROR_NETWORK_BUSY 54L\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "ERROR_DEV_NOT_EXIST 55L\0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "ERROR_TOO_MANY_CMDS 56L\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "ERROR_ADAP_HDW_ERR 57L\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "ERROR_BAD_NET_RESP 58L\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "ERROR_UNEXP_NET_ERR 59L\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "ERROR_BAD_REM_ADAP 60L\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "ERROR_PRINTQ_FULL 61L\0"
	.byte	0x1
	.uleb128 0x61
	.ascii "ERROR_NO_SPOOL_SPACE 62L\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "ERROR_PRINT_CANCELLED 63L\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "ERROR_NETNAME_DELETED 64L\0"
	.byte	0x1
	.uleb128 0x64
	.ascii "ERROR_NETWORK_ACCESS_DENIED 65L\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "ERROR_BAD_DEV_TYPE 66L\0"
	.byte	0x1
	.uleb128 0x66
	.ascii "ERROR_BAD_NET_NAME 67L\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "ERROR_TOO_MANY_NAMES 68L\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "ERROR_TOO_MANY_SESS 69L\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "ERROR_SHARING_PAUSED 70L\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "ERROR_REQ_NOT_ACCEP 71L\0"
	.byte	0x1
	.uleb128 0x6b
	.ascii "ERROR_REDIR_PAUSED 72L\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "ERROR_FILE_EXISTS 80L\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "ERROR_CANNOT_MAKE 82L\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "ERROR_FAIL_I24 83L\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "ERROR_OUT_OF_STRUCTURES 84L\0"
	.byte	0x1
	.uleb128 0x70
	.ascii "ERROR_ALREADY_ASSIGNED 85L\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "ERROR_INVALID_PASSWORD 86L\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "ERROR_INVALID_PARAMETER 87L\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "ERROR_NET_WRITE_FAULT 88L\0"
	.byte	0x1
	.uleb128 0x74
	.ascii "ERROR_NO_PROC_SLOTS 89L\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "ERROR_TOO_MANY_SEMAPHORES 100L\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "ERROR_EXCL_SEM_ALREADY_OWNED 101L\0"
	.byte	0x1
	.uleb128 0x77
	.ascii "ERROR_SEM_IS_SET 102L\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "ERROR_TOO_MANY_SEM_REQUESTS 103L\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "ERROR_INVALID_AT_INTERRUPT_TIME 104L\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "ERROR_SEM_OWNER_DIED 105L\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "ERROR_SEM_USER_LIMIT 106L\0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "ERROR_DISK_CHANGE 107L\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "ERROR_DRIVE_LOCKED 108L\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "ERROR_BROKEN_PIPE 109L\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "ERROR_OPEN_FAILED 110L\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "ERROR_BUFFER_OVERFLOW 111L\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "ERROR_DISK_FULL 112L\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "ERROR_NO_MORE_SEARCH_HANDLES 113L\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "ERROR_INVALID_TARGET_HANDLE 114L\0"
	.byte	0x1
	.uleb128 0x84
	.ascii "ERROR_INVALID_CATEGORY 117L\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "ERROR_INVALID_VERIFY_SWITCH 118L\0"
	.byte	0x1
	.uleb128 0x86
	.ascii "ERROR_BAD_DRIVER_LEVEL 119L\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "ERROR_CALL_NOT_IMPLEMENTED 120L\0"
	.byte	0x1
	.uleb128 0x88
	.ascii "ERROR_SEM_TIMEOUT 121L\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "ERROR_INSUFFICIENT_BUFFER 122L\0"
	.byte	0x1
	.uleb128 0x8a
	.ascii "ERROR_INVALID_NAME 123L\0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "ERROR_INVALID_LEVEL 124L\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "ERROR_NO_VOLUME_LABEL 125L\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "ERROR_MOD_NOT_FOUND 126L\0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "ERROR_PROC_NOT_FOUND 127L\0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "ERROR_WAIT_NO_CHILDREN 128L\0"
	.byte	0x1
	.uleb128 0x90
	.ascii "ERROR_CHILD_NOT_COMPLETE 129L\0"
	.byte	0x1
	.uleb128 0x91
	.ascii "ERROR_DIRECT_ACCESS_HANDLE 130L\0"
	.byte	0x1
	.uleb128 0x92
	.ascii "ERROR_NEGATIVE_SEEK 131L\0"
	.byte	0x1
	.uleb128 0x93
	.ascii "ERROR_SEEK_ON_DEVICE 132L\0"
	.byte	0x1
	.uleb128 0x94
	.ascii "ERROR_IS_JOIN_TARGET 133L\0"
	.byte	0x1
	.uleb128 0x95
	.ascii "ERROR_IS_JOINED 134L\0"
	.byte	0x1
	.uleb128 0x96
	.ascii "ERROR_IS_SUBSTED 135L\0"
	.byte	0x1
	.uleb128 0x97
	.ascii "ERROR_NOT_JOINED 136L\0"
	.byte	0x1
	.uleb128 0x98
	.ascii "ERROR_NOT_SUBSTED 137L\0"
	.byte	0x1
	.uleb128 0x99
	.ascii "ERROR_JOIN_TO_JOIN 138L\0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "ERROR_SUBST_TO_SUBST 139L\0"
	.byte	0x1
	.uleb128 0x9b
	.ascii "ERROR_JOIN_TO_SUBST 140L\0"
	.byte	0x1
	.uleb128 0x9c
	.ascii "ERROR_SUBST_TO_JOIN 141L\0"
	.byte	0x1
	.uleb128 0x9d
	.ascii "ERROR_BUSY_DRIVE 142L\0"
	.byte	0x1
	.uleb128 0x9e
	.ascii "ERROR_SAME_DRIVE 143L\0"
	.byte	0x1
	.uleb128 0x9f
	.ascii "ERROR_DIR_NOT_ROOT 144L\0"
	.byte	0x1
	.uleb128 0xa0
	.ascii "ERROR_DIR_NOT_EMPTY 145L\0"
	.byte	0x1
	.uleb128 0xa1
	.ascii "ERROR_IS_SUBST_PATH 146L\0"
	.byte	0x1
	.uleb128 0xa2
	.ascii "ERROR_IS_JOIN_PATH 147L\0"
	.byte	0x1
	.uleb128 0xa3
	.ascii "ERROR_PATH_BUSY 148L\0"
	.byte	0x1
	.uleb128 0xa4
	.ascii "ERROR_IS_SUBST_TARGET 149L\0"
	.byte	0x1
	.uleb128 0xa5
	.ascii "ERROR_SYSTEM_TRACE 150L\0"
	.byte	0x1
	.uleb128 0xa6
	.ascii "ERROR_INVALID_EVENT_COUNT 151L\0"
	.byte	0x1
	.uleb128 0xa7
	.ascii "ERROR_TOO_MANY_MUXWAITERS 152L\0"
	.byte	0x1
	.uleb128 0xa8
	.ascii "ERROR_INVALID_LIST_FORMAT 153L\0"
	.byte	0x1
	.uleb128 0xa9
	.ascii "ERROR_LABEL_TOO_LONG 154L\0"
	.byte	0x1
	.uleb128 0xaa
	.ascii "ERROR_TOO_MANY_TCBS 155L\0"
	.byte	0x1
	.uleb128 0xab
	.ascii "ERROR_SIGNAL_REFUSED 156L\0"
	.byte	0x1
	.uleb128 0xac
	.ascii "ERROR_DISCARDED 157L\0"
	.byte	0x1
	.uleb128 0xad
	.ascii "ERROR_NOT_LOCKED 158L\0"
	.byte	0x1
	.uleb128 0xae
	.ascii "ERROR_BAD_THREADID_ADDR 159L\0"
	.byte	0x1
	.uleb128 0xaf
	.ascii "ERROR_BAD_ARGUMENTS 160L\0"
	.byte	0x1
	.uleb128 0xb0
	.ascii "ERROR_BAD_PATHNAME 161L\0"
	.byte	0x1
	.uleb128 0xb1
	.ascii "ERROR_SIGNAL_PENDING 162L\0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "ERROR_MAX_THRDS_REACHED 164L\0"
	.byte	0x1
	.uleb128 0xb3
	.ascii "ERROR_LOCK_FAILED 167L\0"
	.byte	0x1
	.uleb128 0xb4
	.ascii "ERROR_BUSY 170L\0"
	.byte	0x1
	.uleb128 0xb5
	.ascii "ERROR_CANCEL_VIOLATION 173L\0"
	.byte	0x1
	.uleb128 0xb6
	.ascii "ERROR_ATOMIC_LOCKS_NOT_SUPPORTED 174L\0"
	.byte	0x1
	.uleb128 0xb7
	.ascii "ERROR_INVALID_SEGMENT_NUMBER 180L\0"
	.byte	0x1
	.uleb128 0xb8
	.ascii "ERROR_INVALID_ORDINAL 182L\0"
	.byte	0x1
	.uleb128 0xb9
	.ascii "ERROR_ALREADY_EXISTS 183L\0"
	.byte	0x1
	.uleb128 0xba
	.ascii "ERROR_INVALID_FLAG_NUMBER 186L\0"
	.byte	0x1
	.uleb128 0xbb
	.ascii "ERROR_SEM_NOT_FOUND 187L\0"
	.byte	0x1
	.uleb128 0xbc
	.ascii "ERROR_INVALID_STARTING_CODESEG 188L\0"
	.byte	0x1
	.uleb128 0xbd
	.ascii "ERROR_INVALID_STACKSEG 189L\0"
	.byte	0x1
	.uleb128 0xbe
	.ascii "ERROR_INVALID_MODULETYPE 190L\0"
	.byte	0x1
	.uleb128 0xbf
	.ascii "ERROR_INVALID_EXE_SIGNATURE 191L\0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "ERROR_EXE_MARKED_INVALID 192L\0"
	.byte	0x1
	.uleb128 0xc1
	.ascii "ERROR_BAD_EXE_FORMAT 193L\0"
	.byte	0x1
	.uleb128 0xc2
	.ascii "ERROR_ITERATED_DATA_EXCEEDS_64k 194L\0"
	.byte	0x1
	.uleb128 0xc3
	.ascii "ERROR_INVALID_MINALLOCSIZE 195L\0"
	.byte	0x1
	.uleb128 0xc4
	.ascii "ERROR_DYNLINK_FROM_INVALID_RING 196L\0"
	.byte	0x1
	.uleb128 0xc5
	.ascii "ERROR_IOPL_NOT_ENABLED 197L\0"
	.byte	0x1
	.uleb128 0xc6
	.ascii "ERROR_INVALID_SEGDPL 198L\0"
	.byte	0x1
	.uleb128 0xc7
	.ascii "ERROR_AUTODATASEG_EXCEEDS_64k 199L\0"
	.byte	0x1
	.uleb128 0xc8
	.ascii "ERROR_RING2SEG_MUST_BE_MOVABLE 200L\0"
	.byte	0x1
	.uleb128 0xc9
	.ascii "ERROR_RELOC_CHAIN_XEEDS_SEGLIM 201L\0"
	.byte	0x1
	.uleb128 0xca
	.ascii "ERROR_INFLOOP_IN_RELOC_CHAIN 202L\0"
	.byte	0x1
	.uleb128 0xcb
	.ascii "ERROR_ENVVAR_NOT_FOUND 203L\0"
	.byte	0x1
	.uleb128 0xcc
	.ascii "ERROR_NO_SIGNAL_SENT 205L\0"
	.byte	0x1
	.uleb128 0xcd
	.ascii "ERROR_FILENAME_EXCED_RANGE 206L\0"
	.byte	0x1
	.uleb128 0xce
	.ascii "ERROR_RING2_STACK_IN_USE 207L\0"
	.byte	0x1
	.uleb128 0xcf
	.ascii "ERROR_META_EXPANSION_TOO_LONG 208L\0"
	.byte	0x1
	.uleb128 0xd0
	.ascii "ERROR_INVALID_SIGNAL_NUMBER 209L\0"
	.byte	0x1
	.uleb128 0xd1
	.ascii "ERROR_THREAD_1_INACTIVE 210L\0"
	.byte	0x1
	.uleb128 0xd2
	.ascii "ERROR_LOCKED 212L\0"
	.byte	0x1
	.uleb128 0xd3
	.ascii "ERROR_TOO_MANY_MODULES 214L\0"
	.byte	0x1
	.uleb128 0xd4
	.ascii "ERROR_NESTING_NOT_ALLOWED 215L\0"
	.byte	0x1
	.uleb128 0xd5
	.ascii "ERROR_EXE_MACHINE_TYPE_MISMATCH 216L\0"
	.byte	0x1
	.uleb128 0xd6
	.ascii "ERROR_EXE_CANNOT_MODIFY_SIGNED_BINARY 217L\0"
	.byte	0x1
	.uleb128 0xd7
	.ascii "ERROR_EXE_CANNOT_MODIFY_STRONG_SIGNED_BINARY 218L\0"
	.byte	0x1
	.uleb128 0xd8
	.ascii "ERROR_BAD_PIPE 230L\0"
	.byte	0x1
	.uleb128 0xd9
	.ascii "ERROR_PIPE_BUSY 231L\0"
	.byte	0x1
	.uleb128 0xda
	.ascii "ERROR_NO_DATA 232L\0"
	.byte	0x1
	.uleb128 0xdb
	.ascii "ERROR_PIPE_NOT_CONNECTED 233L\0"
	.byte	0x1
	.uleb128 0xdc
	.ascii "ERROR_MORE_DATA 234L\0"
	.byte	0x1
	.uleb128 0xdd
	.ascii "ERROR_VC_DISCONNECTED 240L\0"
	.byte	0x1
	.uleb128 0xde
	.ascii "ERROR_INVALID_EA_NAME 254L\0"
	.byte	0x1
	.uleb128 0xdf
	.ascii "ERROR_EA_LIST_INCONSISTENT 255L\0"
	.byte	0x1
	.uleb128 0xe5
	.ascii "WAIT_TIMEOUT 258L\0"
	.byte	0x1
	.uleb128 0xe7
	.ascii "ERROR_NO_MORE_ITEMS 259L\0"
	.byte	0x1
	.uleb128 0xe8
	.ascii "ERROR_CANNOT_COPY 266L\0"
	.byte	0x1
	.uleb128 0xe9
	.ascii "ERROR_DIRECTORY 267L\0"
	.byte	0x1
	.uleb128 0xea
	.ascii "ERROR_EAS_DIDNT_FIT 275L\0"
	.byte	0x1
	.uleb128 0xeb
	.ascii "ERROR_EA_FILE_CORRUPT 276L\0"
	.byte	0x1
	.uleb128 0xec
	.ascii "ERROR_EA_TABLE_FULL 277L\0"
	.byte	0x1
	.uleb128 0xed
	.ascii "ERROR_INVALID_EA_HANDLE 278L\0"
	.byte	0x1
	.uleb128 0xee
	.ascii "ERROR_EAS_NOT_SUPPORTED 282L\0"
	.byte	0x1
	.uleb128 0xef
	.ascii "ERROR_NOT_OWNER 288L\0"
	.byte	0x1
	.uleb128 0xf0
	.ascii "ERROR_TOO_MANY_POSTS 298L\0"
	.byte	0x1
	.uleb128 0xf1
	.ascii "ERROR_PARTIAL_COPY 299L\0"
	.byte	0x1
	.uleb128 0xf2
	.ascii "ERROR_OPLOCK_NOT_GRANTED 300L\0"
	.byte	0x1
	.uleb128 0xf3
	.ascii "ERROR_INVALID_OPLOCK_PROTOCOL 301L\0"
	.byte	0x1
	.uleb128 0xf4
	.ascii "ERROR_DISK_TOO_FRAGMENTED 302L\0"
	.byte	0x1
	.uleb128 0xf5
	.ascii "ERROR_DELETE_PENDING 303L\0"
	.byte	0x1
	.uleb128 0xf6
	.ascii "ERROR_MR_MID_NOT_FOUND 317L\0"
	.byte	0x1
	.uleb128 0xf7
	.ascii "ERROR_SCOPE_NOT_FOUND 318L\0"
	.byte	0x1
	.uleb128 0xf8
	.ascii "ERROR_INVALID_ADDRESS 487L\0"
	.byte	0x1
	.uleb128 0xf9
	.ascii "ERROR_ARITHMETIC_OVERFLOW 534L\0"
	.byte	0x1
	.uleb128 0xfa
	.ascii "ERROR_PIPE_CONNECTED 535L\0"
	.byte	0x1
	.uleb128 0xfb
	.ascii "ERROR_PIPE_LISTENING 536L\0"
	.byte	0x1
	.uleb128 0xfc
	.ascii "ERROR_EA_ACCESS_DENIED 994L\0"
	.byte	0x1
	.uleb128 0xfd
	.ascii "ERROR_OPERATION_ABORTED 995L\0"
	.byte	0x1
	.uleb128 0xfe
	.ascii "ERROR_IO_INCOMPLETE 996L\0"
	.byte	0x1
	.uleb128 0xff
	.ascii "ERROR_IO_PENDING 997L\0"
	.byte	0x1
	.uleb128 0x100
	.ascii "ERROR_NOACCESS 998L\0"
	.byte	0x1
	.uleb128 0x101
	.ascii "ERROR_SWAPERROR 999L\0"
	.byte	0x1
	.uleb128 0x102
	.ascii "ERROR_STACK_OVERFLOW 1001L\0"
	.byte	0x1
	.uleb128 0x103
	.ascii "ERROR_INVALID_MESSAGE 1002L\0"
	.byte	0x1
	.uleb128 0x104
	.ascii "ERROR_CAN_NOT_COMPLETE 1003L\0"
	.byte	0x1
	.uleb128 0x105
	.ascii "ERROR_INVALID_FLAGS 1004L\0"
	.byte	0x1
	.uleb128 0x106
	.ascii "ERROR_UNRECOGNIZED_VOLUME 1005L\0"
	.byte	0x1
	.uleb128 0x107
	.ascii "ERROR_FILE_INVALID 1006L\0"
	.byte	0x1
	.uleb128 0x108
	.ascii "ERROR_FULLSCREEN_MODE 1007L\0"
	.byte	0x1
	.uleb128 0x109
	.ascii "ERROR_NO_TOKEN 1008L\0"
	.byte	0x1
	.uleb128 0x10a
	.ascii "ERROR_BADDB 1009L\0"
	.byte	0x1
	.uleb128 0x10b
	.ascii "ERROR_BADKEY 1010L\0"
	.byte	0x1
	.uleb128 0x10c
	.ascii "ERROR_CANTOPEN 1011L\0"
	.byte	0x1
	.uleb128 0x10d
	.ascii "ERROR_CANTREAD 1012L\0"
	.byte	0x1
	.uleb128 0x10e
	.ascii "ERROR_CANTWRITE 1013L\0"
	.byte	0x1
	.uleb128 0x10f
	.ascii "ERROR_REGISTRY_RECOVERED 1014L\0"
	.byte	0x1
	.uleb128 0x110
	.ascii "ERROR_REGISTRY_CORRUPT 1015L\0"
	.byte	0x1
	.uleb128 0x111
	.ascii "ERROR_REGISTRY_IO_FAILED 1016L\0"
	.byte	0x1
	.uleb128 0x112
	.ascii "ERROR_NOT_REGISTRY_FILE 1017L\0"
	.byte	0x1
	.uleb128 0x113
	.ascii "ERROR_KEY_DELETED 1018L\0"
	.byte	0x1
	.uleb128 0x114
	.ascii "ERROR_NO_LOG_SPACE 1019L\0"
	.byte	0x1
	.uleb128 0x115
	.ascii "ERROR_KEY_HAS_CHILDREN 1020L\0"
	.byte	0x1
	.uleb128 0x116
	.ascii "ERROR_CHILD_MUST_BE_VOLATILE 1021L\0"
	.byte	0x1
	.uleb128 0x117
	.ascii "ERROR_NOTIFY_ENUM_DIR 1022L\0"
	.byte	0x1
	.uleb128 0x118
	.ascii "ERROR_DEPENDENT_SERVICES_RUNNING 1051L\0"
	.byte	0x1
	.uleb128 0x119
	.ascii "ERROR_INVALID_SERVICE_CONTROL 1052L\0"
	.byte	0x1
	.uleb128 0x11a
	.ascii "ERROR_SERVICE_REQUEST_TIMEOUT 1053L\0"
	.byte	0x1
	.uleb128 0x11b
	.ascii "ERROR_SERVICE_NO_THREAD 1054L\0"
	.byte	0x1
	.uleb128 0x11c
	.ascii "ERROR_SERVICE_DATABASE_LOCKED 1055L\0"
	.byte	0x1
	.uleb128 0x11d
	.ascii "ERROR_SERVICE_ALREADY_RUNNING 1056L\0"
	.byte	0x1
	.uleb128 0x11e
	.ascii "ERROR_INVALID_SERVICE_ACCOUNT 1057L\0"
	.byte	0x1
	.uleb128 0x11f
	.ascii "ERROR_SERVICE_DISABLED 1058L\0"
	.byte	0x1
	.uleb128 0x120
	.ascii "ERROR_CIRCULAR_DEPENDENCY 1059L\0"
	.byte	0x1
	.uleb128 0x121
	.ascii "ERROR_SERVICE_DOES_NOT_EXIST 1060L\0"
	.byte	0x1
	.uleb128 0x122
	.ascii "ERROR_SERVICE_CANNOT_ACCEPT_CTRL 1061L\0"
	.byte	0x1
	.uleb128 0x123
	.ascii "ERROR_SERVICE_NOT_ACTIVE 1062L\0"
	.byte	0x1
	.uleb128 0x124
	.ascii "ERROR_FAILED_SERVICE_CONTROLLER_CONNECT 1063L\0"
	.byte	0x1
	.uleb128 0x125
	.ascii "ERROR_EXCEPTION_IN_SERVICE 1064L\0"
	.byte	0x1
	.uleb128 0x126
	.ascii "ERROR_DATABASE_DOES_NOT_EXIST 1065L\0"
	.byte	0x1
	.uleb128 0x127
	.ascii "ERROR_SERVICE_SPECIFIC_ERROR 1066L\0"
	.byte	0x1
	.uleb128 0x128
	.ascii "ERROR_PROCESS_ABORTED 1067L\0"
	.byte	0x1
	.uleb128 0x129
	.ascii "ERROR_SERVICE_DEPENDENCY_FAIL 1068L\0"
	.byte	0x1
	.uleb128 0x12a
	.ascii "ERROR_SERVICE_LOGON_FAILED 1069L\0"
	.byte	0x1
	.uleb128 0x12b
	.ascii "ERROR_SERVICE_START_HANG 1070L\0"
	.byte	0x1
	.uleb128 0x12c
	.ascii "ERROR_INVALID_SERVICE_LOCK 1071L\0"
	.byte	0x1
	.uleb128 0x12d
	.ascii "ERROR_SERVICE_MARKED_FOR_DELETE 1072L\0"
	.byte	0x1
	.uleb128 0x12e
	.ascii "ERROR_SERVICE_EXISTS 1073L\0"
	.byte	0x1
	.uleb128 0x12f
	.ascii "ERROR_ALREADY_RUNNING_LKG 1074L\0"
	.byte	0x1
	.uleb128 0x130
	.ascii "ERROR_SERVICE_DEPENDENCY_DELETED 1075L\0"
	.byte	0x1
	.uleb128 0x131
	.ascii "ERROR_BOOT_ALREADY_ACCEPTED 1076L\0"
	.byte	0x1
	.uleb128 0x132
	.ascii "ERROR_SERVICE_NEVER_STARTED 1077L\0"
	.byte	0x1
	.uleb128 0x133
	.ascii "ERROR_DUPLICATE_SERVICE_NAME 1078L\0"
	.byte	0x1
	.uleb128 0x134
	.ascii "ERROR_DIFFERENT_SERVICE_ACCOUNT 1079L\0"
	.byte	0x1
	.uleb128 0x135
	.ascii "ERROR_CANNOT_DETECT_DRIVER_FAILURE 1080L\0"
	.byte	0x1
	.uleb128 0x136
	.ascii "ERROR_CANNOT_DETECT_PROCESS_ABORT 1081L\0"
	.byte	0x1
	.uleb128 0x137
	.ascii "ERROR_NO_RECOVERY_PROGRAM 1082L\0"
	.byte	0x1
	.uleb128 0x138
	.ascii "ERROR_SERVICE_NOT_IN_EXE 1083L\0"
	.byte	0x1
	.uleb128 0x139
	.ascii "ERROR_NOT_SAFEBOOT_SERVICE 1084L\0"
	.byte	0x1
	.uleb128 0x13a
	.ascii "ERROR_END_OF_MEDIA 1100L\0"
	.byte	0x1
	.uleb128 0x13b
	.ascii "ERROR_FILEMARK_DETECTED 1101L\0"
	.byte	0x1
	.uleb128 0x13c
	.ascii "ERROR_BEGINNING_OF_MEDIA 1102L\0"
	.byte	0x1
	.uleb128 0x13d
	.ascii "ERROR_SETMARK_DETECTED 1103L\0"
	.byte	0x1
	.uleb128 0x13e
	.ascii "ERROR_NO_DATA_DETECTED 1104L\0"
	.byte	0x1
	.uleb128 0x13f
	.ascii "ERROR_PARTITION_FAILURE 1105L\0"
	.byte	0x1
	.uleb128 0x140
	.ascii "ERROR_INVALID_BLOCK_LENGTH 1106L\0"
	.byte	0x1
	.uleb128 0x141
	.ascii "ERROR_DEVICE_NOT_PARTITIONED 1107L\0"
	.byte	0x1
	.uleb128 0x142
	.ascii "ERROR_UNABLE_TO_LOCK_MEDIA 1108L\0"
	.byte	0x1
	.uleb128 0x143
	.ascii "ERROR_UNABLE_TO_UNLOAD_MEDIA 1109L\0"
	.byte	0x1
	.uleb128 0x144
	.ascii "ERROR_MEDIA_CHANGED 1110L\0"
	.byte	0x1
	.uleb128 0x145
	.ascii "ERROR_BUS_RESET 1111L\0"
	.byte	0x1
	.uleb128 0x146
	.ascii "ERROR_NO_MEDIA_IN_DRIVE 1112L\0"
	.byte	0x1
	.uleb128 0x147
	.ascii "ERROR_NO_UNICODE_TRANSLATION 1113L\0"
	.byte	0x1
	.uleb128 0x148
	.ascii "ERROR_DLL_INIT_FAILED 1114L\0"
	.byte	0x1
	.uleb128 0x149
	.ascii "ERROR_SHUTDOWN_IN_PROGRESS 1115L\0"
	.byte	0x1
	.uleb128 0x14a
	.ascii "ERROR_NO_SHUTDOWN_IN_PROGRESS 1116L\0"
	.byte	0x1
	.uleb128 0x14b
	.ascii "ERROR_IO_DEVICE 1117L\0"
	.byte	0x1
	.uleb128 0x14c
	.ascii "ERROR_SERIAL_NO_DEVICE 1118L\0"
	.byte	0x1
	.uleb128 0x14d
	.ascii "ERROR_IRQ_BUSY 1119L\0"
	.byte	0x1
	.uleb128 0x14e
	.ascii "ERROR_MORE_WRITES 1120L\0"
	.byte	0x1
	.uleb128 0x14f
	.ascii "ERROR_COUNTER_TIMEOUT 1121L\0"
	.byte	0x1
	.uleb128 0x150
	.ascii "ERROR_FLOPPY_ID_MARK_NOT_FOUND 1122L\0"
	.byte	0x1
	.uleb128 0x151
	.ascii "ERROR_FLOPPY_WRONG_CYLINDER 1123L\0"
	.byte	0x1
	.uleb128 0x152
	.ascii "ERROR_FLOPPY_UNKNOWN_ERROR 1124L\0"
	.byte	0x1
	.uleb128 0x153
	.ascii "ERROR_FLOPPY_BAD_REGISTERS 1125L\0"
	.byte	0x1
	.uleb128 0x154
	.ascii "ERROR_DISK_RECALIBRATE_FAILED 1126L\0"
	.byte	0x1
	.uleb128 0x155
	.ascii "ERROR_DISK_OPERATION_FAILED 1127L\0"
	.byte	0x1
	.uleb128 0x156
	.ascii "ERROR_DISK_RESET_FAILED 1128L\0"
	.byte	0x1
	.uleb128 0x157
	.ascii "ERROR_EOM_OVERFLOW 1129L\0"
	.byte	0x1
	.uleb128 0x158
	.ascii "ERROR_NOT_ENOUGH_SERVER_MEMORY 1130L\0"
	.byte	0x1
	.uleb128 0x159
	.ascii "ERROR_POSSIBLE_DEADLOCK 1131L\0"
	.byte	0x1
	.uleb128 0x15a
	.ascii "ERROR_MAPPED_ALIGNMENT 1132L\0"
	.byte	0x1
	.uleb128 0x15b
	.ascii "ERROR_SET_POWER_STATE_VETOED 1140L\0"
	.byte	0x1
	.uleb128 0x15c
	.ascii "ERROR_SET_POWER_STATE_FAILED 1141L\0"
	.byte	0x1
	.uleb128 0x15d
	.ascii "ERROR_TOO_MANY_LINKS 1142L\0"
	.byte	0x1
	.uleb128 0x15e
	.ascii "ERROR_OLD_WIN_VERSION 1150L\0"
	.byte	0x1
	.uleb128 0x15f
	.ascii "ERROR_APP_WRONG_OS 1151L\0"
	.byte	0x1
	.uleb128 0x160
	.ascii "ERROR_SINGLE_INSTANCE_APP 1152L\0"
	.byte	0x1
	.uleb128 0x161
	.ascii "ERROR_RMODE_APP 1153L\0"
	.byte	0x1
	.uleb128 0x162
	.ascii "ERROR_INVALID_DLL 1154L\0"
	.byte	0x1
	.uleb128 0x163
	.ascii "ERROR_NO_ASSOCIATION 1155L\0"
	.byte	0x1
	.uleb128 0x164
	.ascii "ERROR_DDE_FAIL 1156L\0"
	.byte	0x1
	.uleb128 0x165
	.ascii "ERROR_DLL_NOT_FOUND 1157L\0"
	.byte	0x1
	.uleb128 0x166
	.ascii "ERROR_NO_MORE_USER_HANDLES 1158L\0"
	.byte	0x1
	.uleb128 0x167
	.ascii "ERROR_MESSAGE_SYNC_ONLY 1159L\0"
	.byte	0x1
	.uleb128 0x168
	.ascii "ERROR_SOURCE_ELEMENT_EMPTY 1160L\0"
	.byte	0x1
	.uleb128 0x169
	.ascii "ERROR_DESTINATION_ELEMENT_FULL 1161L\0"
	.byte	0x1
	.uleb128 0x16a
	.ascii "ERROR_ILLEGAL_ELEMENT_ADDRESS 1162L\0"
	.byte	0x1
	.uleb128 0x16b
	.ascii "ERROR_MAGAZINE_NOT_PRESENT 1163L\0"
	.byte	0x1
	.uleb128 0x16c
	.ascii "ERROR_DEVICE_REINITIALIZATION_NEEDED 1164L\0"
	.byte	0x1
	.uleb128 0x16d
	.ascii "ERROR_DEVICE_REQUIRES_CLEANING 1165L\0"
	.byte	0x1
	.uleb128 0x16e
	.ascii "ERROR_DEVICE_DOOR_OPEN 1166L\0"
	.byte	0x1
	.uleb128 0x16f
	.ascii "ERROR_DEVICE_NOT_CONNECTED 1167L\0"
	.byte	0x1
	.uleb128 0x170
	.ascii "ERROR_NOT_FOUND 1168L\0"
	.byte	0x1
	.uleb128 0x171
	.ascii "ERROR_NO_MATCH 1169L\0"
	.byte	0x1
	.uleb128 0x172
	.ascii "ERROR_SET_NOT_FOUND 1170L\0"
	.byte	0x1
	.uleb128 0x173
	.ascii "ERROR_POINT_NOT_FOUND 1171L\0"
	.byte	0x1
	.uleb128 0x174
	.ascii "ERROR_NO_TRACKING_SERVICE 1172L\0"
	.byte	0x1
	.uleb128 0x175
	.ascii "ERROR_NO_VOLUME_ID 1173L\0"
	.byte	0x1
	.uleb128 0x176
	.ascii "ERROR_UNABLE_TO_REMOVE_REPLACED 1175L\0"
	.byte	0x1
	.uleb128 0x177
	.ascii "ERROR_UNABLE_TO_MOVE_REPLACEMENT 1176L\0"
	.byte	0x1
	.uleb128 0x178
	.ascii "ERROR_UNABLE_TO_MOVE_REPLACEMENT_2 1177L\0"
	.byte	0x1
	.uleb128 0x179
	.ascii "ERROR_JOURNAL_DELETE_IN_PROGRESS 1178L\0"
	.byte	0x1
	.uleb128 0x17a
	.ascii "ERROR_JOURNAL_NOT_ACTIVE 1179L\0"
	.byte	0x1
	.uleb128 0x17b
	.ascii "ERROR_POTENTIAL_FILE_FOUND 1180L\0"
	.byte	0x1
	.uleb128 0x17c
	.ascii "ERROR_JOURNAL_ENTRY_DELETED 1181L\0"
	.byte	0x1
	.uleb128 0x17d
	.ascii "ERROR_BAD_DEVICE 1200L\0"
	.byte	0x1
	.uleb128 0x17e
	.ascii "ERROR_CONNECTION_UNAVAIL 1201L\0"
	.byte	0x1
	.uleb128 0x17f
	.ascii "ERROR_DEVICE_ALREADY_REMEMBERED 1202L\0"
	.byte	0x1
	.uleb128 0x180
	.ascii "ERROR_NO_NET_OR_BAD_PATH 1203L\0"
	.byte	0x1
	.uleb128 0x181
	.ascii "ERROR_BAD_PROVIDER 1204L\0"
	.byte	0x1
	.uleb128 0x182
	.ascii "ERROR_CANNOT_OPEN_PROFILE 1205L\0"
	.byte	0x1
	.uleb128 0x183
	.ascii "ERROR_BAD_PROFILE 1206L\0"
	.byte	0x1
	.uleb128 0x184
	.ascii "ERROR_NOT_CONTAINER 1207L\0"
	.byte	0x1
	.uleb128 0x185
	.ascii "ERROR_EXTENDED_ERROR 1208L\0"
	.byte	0x1
	.uleb128 0x186
	.ascii "ERROR_INVALID_GROUPNAME 1209L\0"
	.byte	0x1
	.uleb128 0x187
	.ascii "ERROR_INVALID_COMPUTERNAME 1210L\0"
	.byte	0x1
	.uleb128 0x188
	.ascii "ERROR_INVALID_EVENTNAME 1211L\0"
	.byte	0x1
	.uleb128 0x189
	.ascii "ERROR_INVALID_DOMAINNAME 1212L\0"
	.byte	0x1
	.uleb128 0x18a
	.ascii "ERROR_INVALID_SERVICENAME 1213L\0"
	.byte	0x1
	.uleb128 0x18b
	.ascii "ERROR_INVALID_NETNAME 1214L\0"
	.byte	0x1
	.uleb128 0x18c
	.ascii "ERROR_INVALID_SHARENAME 1215L\0"
	.byte	0x1
	.uleb128 0x18d
	.ascii "ERROR_INVALID_PASSWORDNAME 1216L\0"
	.byte	0x1
	.uleb128 0x18e
	.ascii "ERROR_INVALID_MESSAGENAME 1217L\0"
	.byte	0x1
	.uleb128 0x18f
	.ascii "ERROR_INVALID_MESSAGEDEST 1218L\0"
	.byte	0x1
	.uleb128 0x190
	.ascii "ERROR_SESSION_CREDENTIAL_CONFLICT 1219L\0"
	.byte	0x1
	.uleb128 0x191
	.ascii "ERROR_REMOTE_SESSION_LIMIT_EXCEEDED 1220L\0"
	.byte	0x1
	.uleb128 0x192
	.ascii "ERROR_DUP_DOMAINNAME 1221L\0"
	.byte	0x1
	.uleb128 0x193
	.ascii "ERROR_NO_NETWORK 1222L\0"
	.byte	0x1
	.uleb128 0x194
	.ascii "ERROR_CANCELLED 1223L\0"
	.byte	0x1
	.uleb128 0x195
	.ascii "ERROR_USER_MAPPED_FILE 1224L\0"
	.byte	0x1
	.uleb128 0x196
	.ascii "ERROR_CONNECTION_REFUSED 1225L\0"
	.byte	0x1
	.uleb128 0x197
	.ascii "ERROR_GRACEFUL_DISCONNECT 1226L\0"
	.byte	0x1
	.uleb128 0x198
	.ascii "ERROR_ADDRESS_ALREADY_ASSOCIATED 1227L\0"
	.byte	0x1
	.uleb128 0x199
	.ascii "ERROR_ADDRESS_NOT_ASSOCIATED 1228L\0"
	.byte	0x1
	.uleb128 0x19a
	.ascii "ERROR_CONNECTION_INVALID 1229L\0"
	.byte	0x1
	.uleb128 0x19b
	.ascii "ERROR_CONNECTION_ACTIVE 1230L\0"
	.byte	0x1
	.uleb128 0x19c
	.ascii "ERROR_NETWORK_UNREACHABLE 1231L\0"
	.byte	0x1
	.uleb128 0x19d
	.ascii "ERROR_HOST_UNREACHABLE 1232L\0"
	.byte	0x1
	.uleb128 0x19e
	.ascii "ERROR_PROTOCOL_UNREACHABLE 1233L\0"
	.byte	0x1
	.uleb128 0x19f
	.ascii "ERROR_PORT_UNREACHABLE 1234L\0"
	.byte	0x1
	.uleb128 0x1a0
	.ascii "ERROR_REQUEST_ABORTED 1235L\0"
	.byte	0x1
	.uleb128 0x1a1
	.ascii "ERROR_CONNECTION_ABORTED 1236L\0"
	.byte	0x1
	.uleb128 0x1a2
	.ascii "ERROR_RETRY 1237L\0"
	.byte	0x1
	.uleb128 0x1a3
	.ascii "ERROR_CONNECTION_COUNT_LIMIT 1238L\0"
	.byte	0x1
	.uleb128 0x1a4
	.ascii "ERROR_LOGIN_TIME_RESTRICTION 1239L\0"
	.byte	0x1
	.uleb128 0x1a5
	.ascii "ERROR_LOGIN_WKSTA_RESTRICTION 1240L\0"
	.byte	0x1
	.uleb128 0x1a6
	.ascii "ERROR_INCORRECT_ADDRESS 1241L\0"
	.byte	0x1
	.uleb128 0x1a7
	.ascii "ERROR_ALREADY_REGISTERED 1242L\0"
	.byte	0x1
	.uleb128 0x1a8
	.ascii "ERROR_SERVICE_NOT_FOUND 1243L\0"
	.byte	0x1
	.uleb128 0x1a9
	.ascii "ERROR_NOT_AUTHENTICATED 1244L\0"
	.byte	0x1
	.uleb128 0x1aa
	.ascii "ERROR_NOT_LOGGED_ON 1245L\0"
	.byte	0x1
	.uleb128 0x1ab
	.ascii "ERROR_CONTINUE 1246L\0"
	.byte	0x1
	.uleb128 0x1ac
	.ascii "ERROR_ALREADY_INITIALIZED 1247L\0"
	.byte	0x1
	.uleb128 0x1ad
	.ascii "ERROR_NO_MORE_DEVICES 1248L\0"
	.byte	0x1
	.uleb128 0x1ae
	.ascii "ERROR_NO_SUCH_SITE 1249L\0"
	.byte	0x1
	.uleb128 0x1af
	.ascii "ERROR_DOMAIN_CONTROLLER_EXISTS 1250L\0"
	.byte	0x1
	.uleb128 0x1b0
	.ascii "ERROR_ONLY_IF_CONNECTED 1251L\0"
	.byte	0x1
	.uleb128 0x1b1
	.ascii "ERROR_OVERRIDE_NOCHANGES 1252L\0"
	.byte	0x1
	.uleb128 0x1b2
	.ascii "ERROR_BAD_USER_PROFILE 1253L\0"
	.byte	0x1
	.uleb128 0x1b3
	.ascii "ERROR_NOT_SUPPORTED_ON_SBS 1254L\0"
	.byte	0x1
	.uleb128 0x1b4
	.ascii "ERROR_SERVER_SHUTDOWN_IN_PROGRESS 1255L\0"
	.byte	0x1
	.uleb128 0x1b5
	.ascii "ERROR_HOST_DOWN 1256L\0"
	.byte	0x1
	.uleb128 0x1b6
	.ascii "ERROR_NON_ACCOUNT_SID 1257L\0"
	.byte	0x1
	.uleb128 0x1b7
	.ascii "ERROR_NON_DOMAIN_SID 1258L\0"
	.byte	0x1
	.uleb128 0x1b8
	.ascii "ERROR_APPHELP_BLOCK 1259L\0"
	.byte	0x1
	.uleb128 0x1b9
	.ascii "ERROR_ACCESS_DISABLED_BY_POLICY 1260L\0"
	.byte	0x1
	.uleb128 0x1ba
	.ascii "ERROR_REG_NAT_CONSUMPTION 1261L\0"
	.byte	0x1
	.uleb128 0x1bb
	.ascii "ERROR_CSCSHARE_OFFLINE 1262L\0"
	.byte	0x1
	.uleb128 0x1bc
	.ascii "ERROR_PKINIT_FAILURE 1263L\0"
	.byte	0x1
	.uleb128 0x1bd
	.ascii "ERROR_SMARTCARD_SUBSYSTEM_FAILURE 1264L\0"
	.byte	0x1
	.uleb128 0x1be
	.ascii "ERROR_DOWNGRADE_DETECTED 1265L\0"
	.byte	0x1
	.uleb128 0x1bf
	.ascii "SEC_E_SMARTCARD_CERT_REVOKED 1266L\0"
	.byte	0x1
	.uleb128 0x1c0
	.ascii "SEC_E_ISSUING_CA_UNTRUSTED 1267L\0"
	.byte	0x1
	.uleb128 0x1c1
	.ascii "SEC_E_REVOCATION_OFFLINE_C 1268L\0"
	.byte	0x1
	.uleb128 0x1c2
	.ascii "SEC_E_PKINIT_CLIENT_FAILUR 1269L\0"
	.byte	0x1
	.uleb128 0x1c3
	.ascii "SEC_E_SMARTCARD_CERT_EXPIRED 1270L\0"
	.byte	0x1
	.uleb128 0x1c4
	.ascii "ERROR_MACHINE_LOCKED 1271L\0"
	.byte	0x1
	.uleb128 0x1c5
	.ascii "ERROR_CALLBACK_SUPPLIED_INVALID_DATA 1273L\0"
	.byte	0x1
	.uleb128 0x1c6
	.ascii "ERROR_SYNC_FOREGROUND_REFRESH_REQUIRED 1274L\0"
	.byte	0x1
	.uleb128 0x1c7
	.ascii "ERROR_DRIVER_BLOCKED 1275L\0"
	.byte	0x1
	.uleb128 0x1c8
	.ascii "ERROR_INVALID_IMPORT_OF_NON_DLL 1276L\0"
	.byte	0x1
	.uleb128 0x1c9
	.ascii "ERROR_ACCESS_DISABLED_WEBBLADE 1277L\0"
	.byte	0x1
	.uleb128 0x1ca
	.ascii "ERROR_ACCESS_DISABLED_WEBBLADE_TAMPER 1278L\0"
	.byte	0x1
	.uleb128 0x1cb
	.ascii "ERROR_RECOVERY_FAILURE 1279L\0"
	.byte	0x1
	.uleb128 0x1cc
	.ascii "ERROR_ALREADY_FIBER 1280L\0"
	.byte	0x1
	.uleb128 0x1cd
	.ascii "ERROR_ALREADY_THREAD 1281L\0"
	.byte	0x1
	.uleb128 0x1ce
	.ascii "ERROR_STACK_BUFFER_OVERRUN 1282L\0"
	.byte	0x1
	.uleb128 0x1cf
	.ascii "ERROR_PARAMETER_QUOTA_EXCEEDED 1283L\0"
	.byte	0x1
	.uleb128 0x1d0
	.ascii "ERROR_DEBUGGER_INACTIVE 1284L\0"
	.byte	0x1
	.uleb128 0x1d1
	.ascii "ERROR_NOT_ALL_ASSIGNED 1300L\0"
	.byte	0x1
	.uleb128 0x1d2
	.ascii "ERROR_SOME_NOT_MAPPED 1301L\0"
	.byte	0x1
	.uleb128 0x1d3
	.ascii "ERROR_NO_QUOTAS_FOR_ACCOUNT 1302L\0"
	.byte	0x1
	.uleb128 0x1d4
	.ascii "ERROR_LOCAL_USER_SESSION_KEY 1303L\0"
	.byte	0x1
	.uleb128 0x1d5
	.ascii "ERROR_NULL_LM_PASSWORD 1304L\0"
	.byte	0x1
	.uleb128 0x1d6
	.ascii "ERROR_UNKNOWN_REVISION 1305L\0"
	.byte	0x1
	.uleb128 0x1d7
	.ascii "ERROR_REVISION_MISMATCH 1306L\0"
	.byte	0x1
	.uleb128 0x1d8
	.ascii "ERROR_INVALID_OWNER 1307L\0"
	.byte	0x1
	.uleb128 0x1d9
	.ascii "ERROR_INVALID_PRIMARY_GROUP 1308L\0"
	.byte	0x1
	.uleb128 0x1da
	.ascii "ERROR_NO_IMPERSONATION_TOKEN 1309L\0"
	.byte	0x1
	.uleb128 0x1db
	.ascii "ERROR_CANT_DISABLE_MANDATORY 1310L\0"
	.byte	0x1
	.uleb128 0x1dc
	.ascii "ERROR_NO_LOGON_SERVERS 1311L\0"
	.byte	0x1
	.uleb128 0x1dd
	.ascii "ERROR_NO_SUCH_LOGON_SESSION 1312L\0"
	.byte	0x1
	.uleb128 0x1de
	.ascii "ERROR_NO_SUCH_PRIVILEGE 1313L\0"
	.byte	0x1
	.uleb128 0x1df
	.ascii "ERROR_PRIVILEGE_NOT_HELD 1314L\0"
	.byte	0x1
	.uleb128 0x1e0
	.ascii "ERROR_INVALID_ACCOUNT_NAME 1315L\0"
	.byte	0x1
	.uleb128 0x1e1
	.ascii "ERROR_USER_EXISTS 1316L\0"
	.byte	0x1
	.uleb128 0x1e2
	.ascii "ERROR_NO_SUCH_USER 1317L\0"
	.byte	0x1
	.uleb128 0x1e3
	.ascii "ERROR_GROUP_EXISTS 1318L\0"
	.byte	0x1
	.uleb128 0x1e4
	.ascii "ERROR_NO_SUCH_GROUP 1319L\0"
	.byte	0x1
	.uleb128 0x1e5
	.ascii "ERROR_MEMBER_IN_GROUP 1320L\0"
	.byte	0x1
	.uleb128 0x1e6
	.ascii "ERROR_MEMBER_NOT_IN_GROUP 1321L\0"
	.byte	0x1
	.uleb128 0x1e7
	.ascii "ERROR_LAST_ADMIN 1322L\0"
	.byte	0x1
	.uleb128 0x1e8
	.ascii "ERROR_WRONG_PASSWORD 1323L\0"
	.byte	0x1
	.uleb128 0x1e9
	.ascii "ERROR_ILL_FORMED_PASSWORD 1324L\0"
	.byte	0x1
	.uleb128 0x1ea
	.ascii "ERROR_PASSWORD_RESTRICTION 1325L\0"
	.byte	0x1
	.uleb128 0x1eb
	.ascii "ERROR_LOGON_FAILURE 1326L\0"
	.byte	0x1
	.uleb128 0x1ec
	.ascii "ERROR_ACCOUNT_RESTRICTION 1327L\0"
	.byte	0x1
	.uleb128 0x1ed
	.ascii "ERROR_INVALID_LOGON_HOURS 1328L\0"
	.byte	0x1
	.uleb128 0x1ee
	.ascii "ERROR_INVALID_WORKSTATION 1329L\0"
	.byte	0x1
	.uleb128 0x1ef
	.ascii "ERROR_PASSWORD_EXPIRED 1330L\0"
	.byte	0x1
	.uleb128 0x1f0
	.ascii "ERROR_ACCOUNT_DISABLED 1331L\0"
	.byte	0x1
	.uleb128 0x1f1
	.ascii "ERROR_NONE_MAPPED 1332L\0"
	.byte	0x1
	.uleb128 0x1f2
	.ascii "ERROR_TOO_MANY_LUIDS_REQUESTED 1333L\0"
	.byte	0x1
	.uleb128 0x1f3
	.ascii "ERROR_LUIDS_EXHAUSTED 1334L\0"
	.byte	0x1
	.uleb128 0x1f4
	.ascii "ERROR_INVALID_SUB_AUTHORITY 1335L\0"
	.byte	0x1
	.uleb128 0x1f5
	.ascii "ERROR_INVALID_ACL 1336L\0"
	.byte	0x1
	.uleb128 0x1f6
	.ascii "ERROR_INVALID_SID 1337L\0"
	.byte	0x1
	.uleb128 0x1f7
	.ascii "ERROR_INVALID_SECURITY_DESCR 1338L\0"
	.byte	0x1
	.uleb128 0x1f8
	.ascii "ERROR_BAD_INHERITANCE_ACL 1340L\0"
	.byte	0x1
	.uleb128 0x1f9
	.ascii "ERROR_SERVER_DISABLED 1341L\0"
	.byte	0x1
	.uleb128 0x1fa
	.ascii "ERROR_SERVER_NOT_DISABLED 1342L\0"
	.byte	0x1
	.uleb128 0x1fb
	.ascii "ERROR_INVALID_ID_AUTHORITY 1343L\0"
	.byte	0x1
	.uleb128 0x1fc
	.ascii "ERROR_ALLOTTED_SPACE_EXCEEDED 1344L\0"
	.byte	0x1
	.uleb128 0x1fd
	.ascii "ERROR_INVALID_GROUP_ATTRIBUTES 1345L\0"
	.byte	0x1
	.uleb128 0x1fe
	.ascii "ERROR_BAD_IMPERSONATION_LEVEL 1346L\0"
	.byte	0x1
	.uleb128 0x1ff
	.ascii "ERROR_CANT_OPEN_ANONYMOUS 1347L\0"
	.byte	0x1
	.uleb128 0x200
	.ascii "ERROR_BAD_VALIDATION_CLASS 1348L\0"
	.byte	0x1
	.uleb128 0x201
	.ascii "ERROR_BAD_TOKEN_TYPE 1349L\0"
	.byte	0x1
	.uleb128 0x202
	.ascii "ERROR_NO_SECURITY_ON_OBJECT 1350L\0"
	.byte	0x1
	.uleb128 0x203
	.ascii "ERROR_CANT_ACCESS_DOMAIN_INFO 1351L\0"
	.byte	0x1
	.uleb128 0x204
	.ascii "ERROR_INVALID_SERVER_STATE 1352L\0"
	.byte	0x1
	.uleb128 0x205
	.ascii "ERROR_INVALID_DOMAIN_STATE 1353L\0"
	.byte	0x1
	.uleb128 0x206
	.ascii "ERROR_INVALID_DOMAIN_ROLE 1354L\0"
	.byte	0x1
	.uleb128 0x207
	.ascii "ERROR_NO_SUCH_DOMAIN 1355L\0"
	.byte	0x1
	.uleb128 0x208
	.ascii "ERROR_DOMAIN_EXISTS 1356L\0"
	.byte	0x1
	.uleb128 0x209
	.ascii "ERROR_DOMAIN_LIMIT_EXCEEDED 1357L\0"
	.byte	0x1
	.uleb128 0x20a
	.ascii "ERROR_INTERNAL_DB_CORRUPTION 1358L\0"
	.byte	0x1
	.uleb128 0x20b
	.ascii "ERROR_INTERNAL_ERROR 1359L\0"
	.byte	0x1
	.uleb128 0x20c
	.ascii "ERROR_GENERIC_NOT_MAPPED 1360L\0"
	.byte	0x1
	.uleb128 0x20d
	.ascii "ERROR_BAD_DESCRIPTOR_FORMAT 1361L\0"
	.byte	0x1
	.uleb128 0x20e
	.ascii "ERROR_NOT_LOGON_PROCESS 1362L\0"
	.byte	0x1
	.uleb128 0x20f
	.ascii "ERROR_LOGON_SESSION_EXISTS 1363L\0"
	.byte	0x1
	.uleb128 0x210
	.ascii "ERROR_NO_SUCH_PACKAGE 1364L\0"
	.byte	0x1
	.uleb128 0x211
	.ascii "ERROR_BAD_LOGON_SESSION_STATE 1365L\0"
	.byte	0x1
	.uleb128 0x212
	.ascii "ERROR_LOGON_SESSION_COLLISION 1366L\0"
	.byte	0x1
	.uleb128 0x213
	.ascii "ERROR_INVALID_LOGON_TYPE 1367L\0"
	.byte	0x1
	.uleb128 0x214
	.ascii "ERROR_CANNOT_IMPERSONATE 1368L\0"
	.byte	0x1
	.uleb128 0x215
	.ascii "ERROR_RXACT_INVALID_STATE 1369L\0"
	.byte	0x1
	.uleb128 0x216
	.ascii "ERROR_RXACT_COMMIT_FAILURE 1370L\0"
	.byte	0x1
	.uleb128 0x217
	.ascii "ERROR_SPECIAL_ACCOUNT 1371L\0"
	.byte	0x1
	.uleb128 0x218
	.ascii "ERROR_SPECIAL_GROUP 1372L\0"
	.byte	0x1
	.uleb128 0x219
	.ascii "ERROR_SPECIAL_USER 1373L\0"
	.byte	0x1
	.uleb128 0x21a
	.ascii "ERROR_MEMBERS_PRIMARY_GROUP 1374L\0"
	.byte	0x1
	.uleb128 0x21b
	.ascii "ERROR_TOKEN_ALREADY_IN_USE 1375L\0"
	.byte	0x1
	.uleb128 0x21c
	.ascii "ERROR_NO_SUCH_ALIAS 1376L\0"
	.byte	0x1
	.uleb128 0x21d
	.ascii "ERROR_MEMBER_NOT_IN_ALIAS 1377L\0"
	.byte	0x1
	.uleb128 0x21e
	.ascii "ERROR_MEMBER_IN_ALIAS 1378L\0"
	.byte	0x1
	.uleb128 0x21f
	.ascii "ERROR_ALIAS_EXISTS 1379L\0"
	.byte	0x1
	.uleb128 0x220
	.ascii "ERROR_LOGON_NOT_GRANTED 1380L\0"
	.byte	0x1
	.uleb128 0x221
	.ascii "ERROR_TOO_MANY_SECRETS 1381L\0"
	.byte	0x1
	.uleb128 0x222
	.ascii "ERROR_SECRET_TOO_LONG 1382L\0"
	.byte	0x1
	.uleb128 0x223
	.ascii "ERROR_INTERNAL_DB_ERROR 1383L\0"
	.byte	0x1
	.uleb128 0x224
	.ascii "ERROR_TOO_MANY_CONTEXT_IDS 1384L\0"
	.byte	0x1
	.uleb128 0x225
	.ascii "ERROR_LOGON_TYPE_NOT_GRANTED 1385L\0"
	.byte	0x1
	.uleb128 0x226
	.ascii "ERROR_NT_CROSS_ENCRYPTION_REQUIRED 1386L\0"
	.byte	0x1
	.uleb128 0x227
	.ascii "ERROR_NO_SUCH_MEMBER 1387L\0"
	.byte	0x1
	.uleb128 0x228
	.ascii "ERROR_INVALID_MEMBER 1388L\0"
	.byte	0x1
	.uleb128 0x229
	.ascii "ERROR_TOO_MANY_SIDS 1389L\0"
	.byte	0x1
	.uleb128 0x22a
	.ascii "ERROR_LM_CROSS_ENCRYPTION_REQUIRED 1390L\0"
	.byte	0x1
	.uleb128 0x22b
	.ascii "ERROR_NO_INHERITANCE 1391L\0"
	.byte	0x1
	.uleb128 0x22c
	.ascii "ERROR_FILE_CORRUPT 1392L\0"
	.byte	0x1
	.uleb128 0x22d
	.ascii "ERROR_DISK_CORRUPT 1393L\0"
	.byte	0x1
	.uleb128 0x22e
	.ascii "ERROR_NO_USER_SESSION_KEY 1394L\0"
	.byte	0x1
	.uleb128 0x22f
	.ascii "ERROR_LICENSE_QUOTA_EXCEEDED 1395L\0"
	.byte	0x1
	.uleb128 0x230
	.ascii "ERROR_WRONG_TARGET_NAME 1396L\0"
	.byte	0x1
	.uleb128 0x231
	.ascii "ERROR_MUTUAL_AUTH_FAILED 1397L\0"
	.byte	0x1
	.uleb128 0x232
	.ascii "ERROR_TIME_SKEW 1398L\0"
	.byte	0x1
	.uleb128 0x233
	.ascii "ERROR_CURRENT_DOMAIN_NOT_ALLOWED 1399L\0"
	.byte	0x1
	.uleb128 0x234
	.ascii "ERROR_INVALID_WINDOW_HANDLE 1400L\0"
	.byte	0x1
	.uleb128 0x235
	.ascii "ERROR_INVALID_MENU_HANDLE 1401L\0"
	.byte	0x1
	.uleb128 0x236
	.ascii "ERROR_INVALID_CURSOR_HANDLE 1402L\0"
	.byte	0x1
	.uleb128 0x237
	.ascii "ERROR_INVALID_ACCEL_HANDLE 1403L\0"
	.byte	0x1
	.uleb128 0x238
	.ascii "ERROR_INVALID_HOOK_HANDLE 1404L\0"
	.byte	0x1
	.uleb128 0x239
	.ascii "ERROR_INVALID_DWP_HANDLE 1405L\0"
	.byte	0x1
	.uleb128 0x23a
	.ascii "ERROR_TLW_WITH_WSCHILD 1406L\0"
	.byte	0x1
	.uleb128 0x23b
	.ascii "ERROR_CANNOT_FIND_WND_CLASS 1407L\0"
	.byte	0x1
	.uleb128 0x23c
	.ascii "ERROR_WINDOW_OF_OTHER_THREAD 1408L\0"
	.byte	0x1
	.uleb128 0x23d
	.ascii "ERROR_HOTKEY_ALREADY_REGISTERED 1409L\0"
	.byte	0x1
	.uleb128 0x23e
	.ascii "ERROR_CLASS_ALREADY_EXISTS 1410L\0"
	.byte	0x1
	.uleb128 0x23f
	.ascii "ERROR_CLASS_DOES_NOT_EXIST 1411L\0"
	.byte	0x1
	.uleb128 0x240
	.ascii "ERROR_CLASS_HAS_WINDOWS 1412L\0"
	.byte	0x1
	.uleb128 0x241
	.ascii "ERROR_INVALID_INDEX 1413L\0"
	.byte	0x1
	.uleb128 0x242
	.ascii "ERROR_INVALID_ICON_HANDLE 1414L\0"
	.byte	0x1
	.uleb128 0x243
	.ascii "ERROR_PRIVATE_DIALOG_INDEX 1415L\0"
	.byte	0x1
	.uleb128 0x244
	.ascii "ERROR_LISTBOX_ID_NOT_FOUND 1416L\0"
	.byte	0x1
	.uleb128 0x245
	.ascii "ERROR_NO_WILDCARD_CHARACTERS 1417L\0"
	.byte	0x1
	.uleb128 0x246
	.ascii "ERROR_CLIPBOARD_NOT_OPEN 1418L\0"
	.byte	0x1
	.uleb128 0x247
	.ascii "ERROR_HOTKEY_NOT_REGISTERED 1419L\0"
	.byte	0x1
	.uleb128 0x248
	.ascii "ERROR_WINDOW_NOT_DIALOG 1420L\0"
	.byte	0x1
	.uleb128 0x249
	.ascii "ERROR_CONTROL_ID_NOT_FOUND 1421L\0"
	.byte	0x1
	.uleb128 0x24a
	.ascii "ERROR_INVALID_COMBOBOX_MESSAGE 1422L\0"
	.byte	0x1
	.uleb128 0x24b
	.ascii "ERROR_WINDOW_NOT_COMBOBOX 1423L\0"
	.byte	0x1
	.uleb128 0x24c
	.ascii "ERROR_INVALID_EDIT_HEIGHT 1424L\0"
	.byte	0x1
	.uleb128 0x24d
	.ascii "ERROR_DC_NOT_FOUND 1425L\0"
	.byte	0x1
	.uleb128 0x24e
	.ascii "ERROR_INVALID_HOOK_FILTER 1426L\0"
	.byte	0x1
	.uleb128 0x24f
	.ascii "ERROR_INVALID_FILTER_PROC 1427L\0"
	.byte	0x1
	.uleb128 0x250
	.ascii "ERROR_HOOK_NEEDS_HMOD 1428L\0"
	.byte	0x1
	.uleb128 0x251
	.ascii "ERROR_GLOBAL_ONLY_HOOK 1429L\0"
	.byte	0x1
	.uleb128 0x252
	.ascii "ERROR_JOURNAL_HOOK_SET 1430L\0"
	.byte	0x1
	.uleb128 0x253
	.ascii "ERROR_HOOK_NOT_INSTALLED 1431L\0"
	.byte	0x1
	.uleb128 0x254
	.ascii "ERROR_INVALID_LB_MESSAGE 1432L\0"
	.byte	0x1
	.uleb128 0x255
	.ascii "ERROR_SETCOUNT_ON_BAD_LB 1433L\0"
	.byte	0x1
	.uleb128 0x256
	.ascii "ERROR_LB_WITHOUT_TABSTOPS 1434L\0"
	.byte	0x1
	.uleb128 0x257
	.ascii "ERROR_DESTROY_OBJECT_OF_OTHER_THREAD 1435L\0"
	.byte	0x1
	.uleb128 0x258
	.ascii "ERROR_CHILD_WINDOW_MENU 1436L\0"
	.byte	0x1
	.uleb128 0x259
	.ascii "ERROR_NO_SYSTEM_MENU 1437L\0"
	.byte	0x1
	.uleb128 0x25a
	.ascii "ERROR_INVALID_MSGBOX_STYLE 1438L\0"
	.byte	0x1
	.uleb128 0x25b
	.ascii "ERROR_INVALID_SPI_VALUE 1439L\0"
	.byte	0x1
	.uleb128 0x25c
	.ascii "ERROR_SCREEN_ALREADY_LOCKED 1440L\0"
	.byte	0x1
	.uleb128 0x25d
	.ascii "ERROR_HWNDS_HAVE_DIFF_PARENT 1441L\0"
	.byte	0x1
	.uleb128 0x25e
	.ascii "ERROR_NOT_CHILD_WINDOW 1442L\0"
	.byte	0x1
	.uleb128 0x25f
	.ascii "ERROR_INVALID_GW_COMMAND 1443L\0"
	.byte	0x1
	.uleb128 0x260
	.ascii "ERROR_INVALID_THREAD_ID 1444L\0"
	.byte	0x1
	.uleb128 0x261
	.ascii "ERROR_NON_MDICHILD_WINDOW 1445L\0"
	.byte	0x1
	.uleb128 0x262
	.ascii "ERROR_POPUP_ALREADY_ACTIVE 1446L\0"
	.byte	0x1
	.uleb128 0x263
	.ascii "ERROR_NO_SCROLLBARS 1447L\0"
	.byte	0x1
	.uleb128 0x264
	.ascii "ERROR_INVALID_SCROLLBAR_RANGE 1448L\0"
	.byte	0x1
	.uleb128 0x265
	.ascii "ERROR_INVALID_SHOWWIN_COMMAND 1449L\0"
	.byte	0x1
	.uleb128 0x266
	.ascii "ERROR_NO_SYSTEM_RESOURCES 1450L\0"
	.byte	0x1
	.uleb128 0x267
	.ascii "ERROR_NONPAGED_SYSTEM_RESOURCES 1451L\0"
	.byte	0x1
	.uleb128 0x268
	.ascii "ERROR_PAGED_SYSTEM_RESOURCES 1452L\0"
	.byte	0x1
	.uleb128 0x269
	.ascii "ERROR_WORKING_SET_QUOTA 1453L\0"
	.byte	0x1
	.uleb128 0x26a
	.ascii "ERROR_PAGEFILE_QUOTA 1454L\0"
	.byte	0x1
	.uleb128 0x26b
	.ascii "ERROR_COMMITMENT_LIMIT 1455L\0"
	.byte	0x1
	.uleb128 0x26c
	.ascii "ERROR_MENU_ITEM_NOT_FOUND 1456L\0"
	.byte	0x1
	.uleb128 0x26d
	.ascii "ERROR_INVALID_KEYBOARD_HANDLE 1457L\0"
	.byte	0x1
	.uleb128 0x26e
	.ascii "ERROR_HOOK_TYPE_NOT_ALLOWED 1458L\0"
	.byte	0x1
	.uleb128 0x26f
	.ascii "ERROR_REQUIRES_INTERACTIVE_WINDOWSTATION 1459L\0"
	.byte	0x1
	.uleb128 0x270
	.ascii "ERROR_TIMEOUT 1460L\0"
	.byte	0x1
	.uleb128 0x271
	.ascii "ERROR_INVALID_MONITOR_HANDLE 1461L\0"
	.byte	0x1
	.uleb128 0x272
	.ascii "ERROR_EVENTLOG_FILE_CORRUPT 1500L\0"
	.byte	0x1
	.uleb128 0x273
	.ascii "ERROR_EVENTLOG_CANT_START 1501L\0"
	.byte	0x1
	.uleb128 0x274
	.ascii "ERROR_LOG_FILE_FULL 1502L\0"
	.byte	0x1
	.uleb128 0x275
	.ascii "ERROR_EVENTLOG_FILE_CHANGED 1503L\0"
	.byte	0x1
	.uleb128 0x276
	.ascii "ERROR_INSTALL_SERVICE_FAILURE 1601L\0"
	.byte	0x1
	.uleb128 0x277
	.ascii "ERROR_INSTALL_USEREXIT 1602L\0"
	.byte	0x1
	.uleb128 0x278
	.ascii "ERROR_INSTALL_FAILURE 1603L\0"
	.byte	0x1
	.uleb128 0x279
	.ascii "ERROR_INSTALL_SUSPEND 1604L\0"
	.byte	0x1
	.uleb128 0x27a
	.ascii "ERROR_UNKNOWN_PRODUCT 1605L\0"
	.byte	0x1
	.uleb128 0x27b
	.ascii "ERROR_UNKNOWN_FEATURE 1606L\0"
	.byte	0x1
	.uleb128 0x27c
	.ascii "ERROR_UNKNOWN_COMPONENT 1607L\0"
	.byte	0x1
	.uleb128 0x27d
	.ascii "ERROR_UNKNOWN_PROPERTY 1608L\0"
	.byte	0x1
	.uleb128 0x27e
	.ascii "ERROR_INVALID_HANDLE_STATE 1609L\0"
	.byte	0x1
	.uleb128 0x27f
	.ascii "ERROR_BAD_CONFIGURATION 1610L\0"
	.byte	0x1
	.uleb128 0x280
	.ascii "ERROR_INDEX_ABSENT 1611L\0"
	.byte	0x1
	.uleb128 0x281
	.ascii "ERROR_INSTALL_SOURCE_ABSENT 1612L\0"
	.byte	0x1
	.uleb128 0x282
	.ascii "ERROR_INSTALL_PACKAGE_VERSION 1613L\0"
	.byte	0x1
	.uleb128 0x283
	.ascii "ERROR_PRODUCT_UNINSTALLED 1614L\0"
	.byte	0x1
	.uleb128 0x284
	.ascii "ERROR_BAD_QUERY_SYNTAX 1615L\0"
	.byte	0x1
	.uleb128 0x285
	.ascii "ERROR_INVALID_FIELD 1616L\0"
	.byte	0x1
	.uleb128 0x286
	.ascii "ERROR_DEVICE_REMOVED 1617L\0"
	.byte	0x1
	.uleb128 0x287
	.ascii "ERROR_INSTALL_ALREADY_RUNNING 1618L\0"
	.byte	0x1
	.uleb128 0x288
	.ascii "ERROR_INSTALL_PACKAGE_OPEN_FAILED 1619L\0"
	.byte	0x1
	.uleb128 0x289
	.ascii "ERROR_INSTALL_PACKAGE_INVALID 1620L\0"
	.byte	0x1
	.uleb128 0x28a
	.ascii "ERROR_INSTALL_UI_FAILURE 1621L\0"
	.byte	0x1
	.uleb128 0x28b
	.ascii "ERROR_INSTALL_LOG_FAILURE 1622L\0"
	.byte	0x1
	.uleb128 0x28c
	.ascii "ERROR_INSTALL_LANGUAGE_UNSUPPORTED 1623L\0"
	.byte	0x1
	.uleb128 0x28d
	.ascii "ERROR_INSTALL_TRANSFORM_FAILURE 1624L\0"
	.byte	0x1
	.uleb128 0x28e
	.ascii "ERROR_INSTALL_PACKAGE_REJECTED 1625L\0"
	.byte	0x1
	.uleb128 0x28f
	.ascii "ERROR_FUNCTION_NOT_CALLED 1626L\0"
	.byte	0x1
	.uleb128 0x290
	.ascii "ERROR_FUNCTION_FAILED 1627L\0"
	.byte	0x1
	.uleb128 0x291
	.ascii "ERROR_INVALID_TABLE 1628L\0"
	.byte	0x1
	.uleb128 0x292
	.ascii "ERROR_DATATYPE_MISMATCH 1629L\0"
	.byte	0x1
	.uleb128 0x293
	.ascii "ERROR_UNSUPPORTED_TYPE 1630L\0"
	.byte	0x1
	.uleb128 0x294
	.ascii "ERROR_CREATE_FAILED 1631L\0"
	.byte	0x1
	.uleb128 0x295
	.ascii "ERROR_INSTALL_TEMP_UNWRITABLE 1632L\0"
	.byte	0x1
	.uleb128 0x296
	.ascii "ERROR_INSTALL_PLATFORM_UNSUPPORTED 1633L\0"
	.byte	0x1
	.uleb128 0x297
	.ascii "ERROR_INSTALL_NOTUSED 1634L\0"
	.byte	0x1
	.uleb128 0x298
	.ascii "ERROR_PATCH_PACKAGE_OPEN_FAILED 1635L\0"
	.byte	0x1
	.uleb128 0x299
	.ascii "ERROR_PATCH_PACKAGE_INVALID 1636L\0"
	.byte	0x1
	.uleb128 0x29a
	.ascii "ERROR_PATCH_PACKAGE_UNSUPPORTED 1637L\0"
	.byte	0x1
	.uleb128 0x29b
	.ascii "ERROR_PRODUCT_VERSION 1638L\0"
	.byte	0x1
	.uleb128 0x29c
	.ascii "ERROR_INVALID_COMMAND_LINE 1639L\0"
	.byte	0x1
	.uleb128 0x29d
	.ascii "ERROR_INSTALL_REMOTE_DISALLOWED 1640L\0"
	.byte	0x1
	.uleb128 0x29e
	.ascii "ERROR_SUCCESS_REBOOT_INITIATED 1641L\0"
	.byte	0x1
	.uleb128 0x29f
	.ascii "ERROR_PATCH_TARGET_NOT_FOUND 1642L\0"
	.byte	0x1
	.uleb128 0x2a0
	.ascii "ERROR_PATCH_PACKAGE_REJECTED 1643L\0"
	.byte	0x1
	.uleb128 0x2a1
	.ascii "ERROR_INSTALL_TRANSFORM_REJECTED 1644L\0"
	.byte	0x1
	.uleb128 0x2a2
	.ascii "ERROR_INSTALL_REMOTE_PROHIBITED 1645L\0"
	.byte	0x1
	.uleb128 0x2a3
	.ascii "RPC_S_INVALID_STRING_BINDING 1700L\0"
	.byte	0x1
	.uleb128 0x2a4
	.ascii "RPC_S_WRONG_KIND_OF_BINDING 1701L\0"
	.byte	0x1
	.uleb128 0x2a5
	.ascii "RPC_S_INVALID_BINDING 1702L\0"
	.byte	0x1
	.uleb128 0x2a6
	.ascii "RPC_S_PROTSEQ_NOT_SUPPORTED 1703L\0"
	.byte	0x1
	.uleb128 0x2a7
	.ascii "RPC_S_INVALID_RPC_PROTSEQ 1704L\0"
	.byte	0x1
	.uleb128 0x2a8
	.ascii "RPC_S_INVALID_STRING_UUID 1705L\0"
	.byte	0x1
	.uleb128 0x2a9
	.ascii "RPC_S_INVALID_ENDPOINT_FORMAT 1706L\0"
	.byte	0x1
	.uleb128 0x2aa
	.ascii "RPC_S_INVALID_NET_ADDR 1707L\0"
	.byte	0x1
	.uleb128 0x2ab
	.ascii "RPC_S_NO_ENDPOINT_FOUND 1708L\0"
	.byte	0x1
	.uleb128 0x2ac
	.ascii "RPC_S_INVALID_TIMEOUT 1709L\0"
	.byte	0x1
	.uleb128 0x2ad
	.ascii "RPC_S_OBJECT_NOT_FOUND 1710L\0"
	.byte	0x1
	.uleb128 0x2ae
	.ascii "RPC_S_ALREADY_REGISTERED 1711L\0"
	.byte	0x1
	.uleb128 0x2af
	.ascii "RPC_S_TYPE_ALREADY_REGISTERED 1712L\0"
	.byte	0x1
	.uleb128 0x2b0
	.ascii "RPC_S_ALREADY_LISTENING 1713L\0"
	.byte	0x1
	.uleb128 0x2b1
	.ascii "RPC_S_NO_PROTSEQS_REGISTERED 1714L\0"
	.byte	0x1
	.uleb128 0x2b2
	.ascii "RPC_S_NOT_LISTENING 1715L\0"
	.byte	0x1
	.uleb128 0x2b3
	.ascii "RPC_S_UNKNOWN_MGR_TYPE 1716L\0"
	.byte	0x1
	.uleb128 0x2b4
	.ascii "RPC_S_UNKNOWN_IF 1717L\0"
	.byte	0x1
	.uleb128 0x2b5
	.ascii "RPC_S_NO_BINDINGS 1718L\0"
	.byte	0x1
	.uleb128 0x2b6
	.ascii "RPC_S_NO_PROTSEQS 1719L\0"
	.byte	0x1
	.uleb128 0x2b7
	.ascii "RPC_S_CANT_CREATE_ENDPOINT 1720L\0"
	.byte	0x1
	.uleb128 0x2b8
	.ascii "RPC_S_OUT_OF_RESOURCES 1721L\0"
	.byte	0x1
	.uleb128 0x2b9
	.ascii "RPC_S_SERVER_UNAVAILABLE 1722L\0"
	.byte	0x1
	.uleb128 0x2ba
	.ascii "RPC_S_SERVER_TOO_BUSY 1723L\0"
	.byte	0x1
	.uleb128 0x2bb
	.ascii "RPC_S_INVALID_NETWORK_OPTIONS 1724L\0"
	.byte	0x1
	.uleb128 0x2bc
	.ascii "RPC_S_NO_CALL_ACTIVE 1725L\0"
	.byte	0x1
	.uleb128 0x2bd
	.ascii "RPC_S_CALL_FAILED 1726L\0"
	.byte	0x1
	.uleb128 0x2be
	.ascii "RPC_S_CALL_FAILED_DNE 1727L\0"
	.byte	0x1
	.uleb128 0x2bf
	.ascii "RPC_S_PROTOCOL_ERROR 1728L\0"
	.byte	0x1
	.uleb128 0x2c0
	.ascii "RPC_S_UNSUPPORTED_TRANS_SYN 1730L\0"
	.byte	0x1
	.uleb128 0x2c1
	.ascii "RPC_S_UNSUPPORTED_TYPE 1732L\0"
	.byte	0x1
	.uleb128 0x2c2
	.ascii "RPC_S_INVALID_TAG 1733L\0"
	.byte	0x1
	.uleb128 0x2c3
	.ascii "RPC_S_INVALID_BOUND 1734L\0"
	.byte	0x1
	.uleb128 0x2c4
	.ascii "RPC_S_NO_ENTRY_NAME 1735L\0"
	.byte	0x1
	.uleb128 0x2c5
	.ascii "RPC_S_INVALID_NAME_SYNTAX 1736L\0"
	.byte	0x1
	.uleb128 0x2c6
	.ascii "RPC_S_UNSUPPORTED_NAME_SYNTAX 1737L\0"
	.byte	0x1
	.uleb128 0x2c7
	.ascii "RPC_S_UUID_NO_ADDRESS 1739L\0"
	.byte	0x1
	.uleb128 0x2c8
	.ascii "RPC_S_DUPLICATE_ENDPOINT 1740L\0"
	.byte	0x1
	.uleb128 0x2c9
	.ascii "RPC_S_UNKNOWN_AUTHN_TYPE 1741L\0"
	.byte	0x1
	.uleb128 0x2ca
	.ascii "RPC_S_MAX_CALLS_TOO_SMALL 1742L\0"
	.byte	0x1
	.uleb128 0x2cb
	.ascii "RPC_S_STRING_TOO_LONG 1743L\0"
	.byte	0x1
	.uleb128 0x2cc
	.ascii "RPC_S_PROTSEQ_NOT_FOUND 1744L\0"
	.byte	0x1
	.uleb128 0x2cd
	.ascii "RPC_S_PROCNUM_OUT_OF_RANGE 1745L\0"
	.byte	0x1
	.uleb128 0x2ce
	.ascii "RPC_S_BINDING_HAS_NO_AUTH 1746L\0"
	.byte	0x1
	.uleb128 0x2cf
	.ascii "RPC_S_UNKNOWN_AUTHN_SERVICE 1747L\0"
	.byte	0x1
	.uleb128 0x2d0
	.ascii "RPC_S_UNKNOWN_AUTHN_LEVEL 1748L\0"
	.byte	0x1
	.uleb128 0x2d1
	.ascii "RPC_S_INVALID_AUTH_IDENTITY 1749L\0"
	.byte	0x1
	.uleb128 0x2d2
	.ascii "RPC_S_UNKNOWN_AUTHZ_SERVICE 1750L\0"
	.byte	0x1
	.uleb128 0x2d3
	.ascii "EPT_S_INVALID_ENTRY 1751L\0"
	.byte	0x1
	.uleb128 0x2d4
	.ascii "EPT_S_CANT_PERFORM_OP 1752L\0"
	.byte	0x1
	.uleb128 0x2d5
	.ascii "EPT_S_NOT_REGISTERED 1753L\0"
	.byte	0x1
	.uleb128 0x2d6
	.ascii "RPC_S_NOTHING_TO_EXPORT 1754L\0"
	.byte	0x1
	.uleb128 0x2d7
	.ascii "RPC_S_INCOMPLETE_NAME 1755L\0"
	.byte	0x1
	.uleb128 0x2d8
	.ascii "RPC_S_INVALID_VERS_OPTION 1756L\0"
	.byte	0x1
	.uleb128 0x2d9
	.ascii "RPC_S_NO_MORE_MEMBERS 1757L\0"
	.byte	0x1
	.uleb128 0x2da
	.ascii "RPC_S_NOT_ALL_OBJS_UNEXPORTED 1758L\0"
	.byte	0x1
	.uleb128 0x2db
	.ascii "RPC_S_INTERFACE_NOT_FOUND 1759L\0"
	.byte	0x1
	.uleb128 0x2dc
	.ascii "RPC_S_ENTRY_ALREADY_EXISTS 1760L\0"
	.byte	0x1
	.uleb128 0x2dd
	.ascii "RPC_S_ENTRY_NOT_FOUND 1761L\0"
	.byte	0x1
	.uleb128 0x2de
	.ascii "RPC_S_NAME_SERVICE_UNAVAILABLE 1762L\0"
	.byte	0x1
	.uleb128 0x2df
	.ascii "RPC_S_INVALID_NAF_ID 1763L\0"
	.byte	0x1
	.uleb128 0x2e0
	.ascii "RPC_S_CANNOT_SUPPORT 1764L\0"
	.byte	0x1
	.uleb128 0x2e1
	.ascii "RPC_S_NO_CONTEXT_AVAILABLE 1765L\0"
	.byte	0x1
	.uleb128 0x2e2
	.ascii "RPC_S_INTERNAL_ERROR 1766L\0"
	.byte	0x1
	.uleb128 0x2e3
	.ascii "RPC_S_ZERO_DIVIDE 1767L\0"
	.byte	0x1
	.uleb128 0x2e4
	.ascii "RPC_S_ADDRESS_ERROR 1768L\0"
	.byte	0x1
	.uleb128 0x2e5
	.ascii "RPC_S_FP_DIV_ZERO 1769L\0"
	.byte	0x1
	.uleb128 0x2e6
	.ascii "RPC_S_FP_UNDERFLOW 1770L\0"
	.byte	0x1
	.uleb128 0x2e7
	.ascii "RPC_S_FP_OVERFLOW 1771L\0"
	.byte	0x1
	.uleb128 0x2e8
	.ascii "RPC_X_NO_MORE_ENTRIES 1772L\0"
	.byte	0x1
	.uleb128 0x2e9
	.ascii "RPC_X_SS_CHAR_TRANS_OPEN_FAIL 1773L\0"
	.byte	0x1
	.uleb128 0x2ea
	.ascii "RPC_X_SS_CHAR_TRANS_SHORT_FILE 1774L\0"
	.byte	0x1
	.uleb128 0x2eb
	.ascii "RPC_X_SS_IN_NULL_CONTEXT 1775L\0"
	.byte	0x1
	.uleb128 0x2ec
	.ascii "RPC_X_SS_CONTEXT_DAMAGED 1777L\0"
	.byte	0x1
	.uleb128 0x2ed
	.ascii "RPC_X_SS_HANDLES_MISMATCH 1778L\0"
	.byte	0x1
	.uleb128 0x2ee
	.ascii "RPC_X_SS_CANNOT_GET_CALL_HANDLE 1779L\0"
	.byte	0x1
	.uleb128 0x2ef
	.ascii "RPC_X_NULL_REF_POINTER 1780L\0"
	.byte	0x1
	.uleb128 0x2f0
	.ascii "RPC_X_ENUM_VALUE_OUT_OF_RANGE 1781L\0"
	.byte	0x1
	.uleb128 0x2f1
	.ascii "RPC_X_BYTE_COUNT_TOO_SMALL 1782L\0"
	.byte	0x1
	.uleb128 0x2f2
	.ascii "RPC_X_BAD_STUB_DATA 1783L\0"
	.byte	0x1
	.uleb128 0x2f3
	.ascii "ERROR_INVALID_USER_BUFFER 1784L\0"
	.byte	0x1
	.uleb128 0x2f4
	.ascii "ERROR_UNRECOGNIZED_MEDIA 1785L\0"
	.byte	0x1
	.uleb128 0x2f5
	.ascii "ERROR_NO_TRUST_LSA_SECRET 1786L\0"
	.byte	0x1
	.uleb128 0x2f6
	.ascii "ERROR_NO_TRUST_SAM_ACCOUNT 1787L\0"
	.byte	0x1
	.uleb128 0x2f7
	.ascii "ERROR_TRUSTED_DOMAIN_FAILURE 1788L\0"
	.byte	0x1
	.uleb128 0x2f8
	.ascii "ERROR_TRUSTED_RELATIONSHIP_FAILURE 1789L\0"
	.byte	0x1
	.uleb128 0x2f9
	.ascii "ERROR_TRUST_FAILURE 1790L\0"
	.byte	0x1
	.uleb128 0x2fa
	.ascii "RPC_S_CALL_IN_PROGRESS 1791L\0"
	.byte	0x1
	.uleb128 0x2fb
	.ascii "ERROR_NETLOGON_NOT_STARTED 1792L\0"
	.byte	0x1
	.uleb128 0x2fc
	.ascii "ERROR_ACCOUNT_EXPIRED 1793L\0"
	.byte	0x1
	.uleb128 0x2fd
	.ascii "ERROR_REDIRECTOR_HAS_OPEN_HANDLES 1794L\0"
	.byte	0x1
	.uleb128 0x2fe
	.ascii "ERROR_PRINTER_DRIVER_ALREADY_INSTALLED 1795L\0"
	.byte	0x1
	.uleb128 0x2ff
	.ascii "ERROR_UNKNOWN_PORT 1796L\0"
	.byte	0x1
	.uleb128 0x300
	.ascii "ERROR_UNKNOWN_PRINTER_DRIVER 1797L\0"
	.byte	0x1
	.uleb128 0x301
	.ascii "ERROR_UNKNOWN_PRINTPROCESSOR 1798L\0"
	.byte	0x1
	.uleb128 0x302
	.ascii "ERROR_INVALID_SEPARATOR_FILE 1799L\0"
	.byte	0x1
	.uleb128 0x303
	.ascii "ERROR_INVALID_PRIORITY 1800L\0"
	.byte	0x1
	.uleb128 0x304
	.ascii "ERROR_INVALID_PRINTER_NAME 1801L\0"
	.byte	0x1
	.uleb128 0x305
	.ascii "ERROR_PRINTER_ALREADY_EXISTS 1802L\0"
	.byte	0x1
	.uleb128 0x306
	.ascii "ERROR_INVALID_PRINTER_COMMAND 1803L\0"
	.byte	0x1
	.uleb128 0x307
	.ascii "ERROR_INVALID_DATATYPE 1804L\0"
	.byte	0x1
	.uleb128 0x308
	.ascii "ERROR_INVALID_ENVIRONMENT 1805L\0"
	.byte	0x1
	.uleb128 0x309
	.ascii "RPC_S_NO_MORE_BINDINGS 1806L\0"
	.byte	0x1
	.uleb128 0x30a
	.ascii "ERROR_NOLOGON_INTERDOMAIN_TRUST_ACCOUNT 1807L\0"
	.byte	0x1
	.uleb128 0x30b
	.ascii "ERROR_NOLOGON_WORKSTATION_TRUST_ACCOUNT 1808L\0"
	.byte	0x1
	.uleb128 0x30c
	.ascii "ERROR_NOLOGON_SERVER_TRUST_ACCOUNT 1809L\0"
	.byte	0x1
	.uleb128 0x30d
	.ascii "ERROR_DOMAIN_TRUST_INCONSISTENT 1810L\0"
	.byte	0x1
	.uleb128 0x30e
	.ascii "ERROR_SERVER_HAS_OPEN_HANDLES 1811L\0"
	.byte	0x1
	.uleb128 0x30f
	.ascii "ERROR_RESOURCE_DATA_NOT_FOUND 1812L\0"
	.byte	0x1
	.uleb128 0x310
	.ascii "ERROR_RESOURCE_TYPE_NOT_FOUND 1813L\0"
	.byte	0x1
	.uleb128 0x311
	.ascii "ERROR_RESOURCE_NAME_NOT_FOUND 1814L\0"
	.byte	0x1
	.uleb128 0x312
	.ascii "ERROR_RESOURCE_LANG_NOT_FOUND 1815L\0"
	.byte	0x1
	.uleb128 0x313
	.ascii "ERROR_NOT_ENOUGH_QUOTA 1816L\0"
	.byte	0x1
	.uleb128 0x314
	.ascii "RPC_S_NO_INTERFACES 1817L\0"
	.byte	0x1
	.uleb128 0x315
	.ascii "RPC_S_CALL_CANCELLED 1818L\0"
	.byte	0x1
	.uleb128 0x316
	.ascii "RPC_S_BINDING_INCOMPLETE 1819L\0"
	.byte	0x1
	.uleb128 0x317
	.ascii "RPC_S_COMM_FAILURE 1820L\0"
	.byte	0x1
	.uleb128 0x318
	.ascii "RPC_S_UNSUPPORTED_AUTHN_LEVEL 1821L\0"
	.byte	0x1
	.uleb128 0x319
	.ascii "RPC_S_NO_PRINC_NAME 1822L\0"
	.byte	0x1
	.uleb128 0x31a
	.ascii "RPC_S_NOT_RPC_ERROR 1823L\0"
	.byte	0x1
	.uleb128 0x31b
	.ascii "RPC_S_UUID_LOCAL_ONLY 1824L\0"
	.byte	0x1
	.uleb128 0x31c
	.ascii "RPC_S_SEC_PKG_ERROR 1825L\0"
	.byte	0x1
	.uleb128 0x31d
	.ascii "RPC_S_NOT_CANCELLED 1826L\0"
	.byte	0x1
	.uleb128 0x31e
	.ascii "RPC_X_INVALID_ES_ACTION 1827L\0"
	.byte	0x1
	.uleb128 0x31f
	.ascii "RPC_X_WRONG_ES_VERSION 1828L\0"
	.byte	0x1
	.uleb128 0x320
	.ascii "RPC_X_WRONG_STUB_VERSION 1829L\0"
	.byte	0x1
	.uleb128 0x321
	.ascii "RPC_X_INVALID_PIPE_OBJECT 1830L\0"
	.byte	0x1
	.uleb128 0x322
	.ascii "RPC_X_WRONG_PIPE_ORDER 1831L\0"
	.byte	0x1
	.uleb128 0x323
	.ascii "RPC_X_WRONG_PIPE_VERSION 1832L\0"
	.byte	0x1
	.uleb128 0x324
	.ascii "RPC_S_GROUP_MEMBER_NOT_FOUND 1898L\0"
	.byte	0x1
	.uleb128 0x325
	.ascii "EPT_S_CANT_CREATE 1899L\0"
	.byte	0x1
	.uleb128 0x326
	.ascii "RPC_S_INVALID_OBJECT 1900L\0"
	.byte	0x1
	.uleb128 0x327
	.ascii "ERROR_INVALID_TIME 1901L\0"
	.byte	0x1
	.uleb128 0x328
	.ascii "ERROR_INVALID_FORM_NAME 1902L\0"
	.byte	0x1
	.uleb128 0x329
	.ascii "ERROR_INVALID_FORM_SIZE 1903L\0"
	.byte	0x1
	.uleb128 0x32a
	.ascii "ERROR_ALREADY_WAITING 1904L\0"
	.byte	0x1
	.uleb128 0x32b
	.ascii "ERROR_PRINTER_DELETED 1905L\0"
	.byte	0x1
	.uleb128 0x32c
	.ascii "ERROR_INVALID_PRINTER_STATE 1906L\0"
	.byte	0x1
	.uleb128 0x32d
	.ascii "ERROR_PASSWORD_MUST_CHANGE 1907L\0"
	.byte	0x1
	.uleb128 0x32e
	.ascii "ERROR_DOMAIN_CONTROLLER_NOT_FOUND 1908L\0"
	.byte	0x1
	.uleb128 0x32f
	.ascii "ERROR_ACCOUNT_LOCKED_OUT 1909L\0"
	.byte	0x1
	.uleb128 0x330
	.ascii "OR_INVALID_OXID 1910L\0"
	.byte	0x1
	.uleb128 0x331
	.ascii "OR_INVALID_OID 1911L\0"
	.byte	0x1
	.uleb128 0x332
	.ascii "OR_INVALID_SET 1912L\0"
	.byte	0x1
	.uleb128 0x333
	.ascii "RPC_S_SEND_INCOMPLETE 1913L\0"
	.byte	0x1
	.uleb128 0x334
	.ascii "RPC_S_INVALID_ASYNC_HANDLE 1914L\0"
	.byte	0x1
	.uleb128 0x335
	.ascii "RPC_S_INVALID_ASYNC_CALL 1915L\0"
	.byte	0x1
	.uleb128 0x336
	.ascii "RPC_X_PIPE_CLOSED 1916L\0"
	.byte	0x1
	.uleb128 0x337
	.ascii "RPC_X_PIPE_DISCIPLINE_ERROR 1917L\0"
	.byte	0x1
	.uleb128 0x338
	.ascii "RPC_X_PIPE_EMPTY 1918L\0"
	.byte	0x1
	.uleb128 0x339
	.ascii "ERROR_NO_SITENAME 1919L\0"
	.byte	0x1
	.uleb128 0x33a
	.ascii "ERROR_CANT_ACCESS_FILE 1920L\0"
	.byte	0x1
	.uleb128 0x33b
	.ascii "ERROR_CANT_RESOLVE_FILENAME 1921L\0"
	.byte	0x1
	.uleb128 0x33c
	.ascii "RPC_S_ENTRY_TYPE_MISMATCH 1922L\0"
	.byte	0x1
	.uleb128 0x33d
	.ascii "RPC_S_NOT_ALL_OBJS_EXPORTED 1923L\0"
	.byte	0x1
	.uleb128 0x33e
	.ascii "RPC_S_INTERFACE_NOT_EXPORTED 1924L\0"
	.byte	0x1
	.uleb128 0x33f
	.ascii "RPC_S_PROFILE_NOT_ADDED 1925L\0"
	.byte	0x1
	.uleb128 0x340
	.ascii "RPC_S_PRF_ELT_NOT_ADDED 1926L\0"
	.byte	0x1
	.uleb128 0x341
	.ascii "RPC_S_PRF_ELT_NOT_REMOVED 1927L\0"
	.byte	0x1
	.uleb128 0x342
	.ascii "RPC_S_GRP_ELT_NOT_ADDED 1928L\0"
	.byte	0x1
	.uleb128 0x343
	.ascii "RPC_S_GRP_ELT_NOT_REMOVED 1929L\0"
	.byte	0x1
	.uleb128 0x344
	.ascii "ERROR_KM_DRIVER_BLOCKED 1930L\0"
	.byte	0x1
	.uleb128 0x345
	.ascii "ERROR_CONTEXT_EXPIRED 1931L\0"
	.byte	0x1
	.uleb128 0x346
	.ascii "ERROR_PER_USER_TRUST_QUOTA_EXCEEDED 1932L\0"
	.byte	0x1
	.uleb128 0x347
	.ascii "ERROR_ALL_USER_TRUST_QUOTA_EXCEEDED 1933L\0"
	.byte	0x1
	.uleb128 0x348
	.ascii "ERROR_USER_DELETE_TRUST_QUOTA_EXCEEDED 1934L\0"
	.byte	0x1
	.uleb128 0x349
	.ascii "ERROR_INVALID_PIXEL_FORMAT 2000L\0"
	.byte	0x1
	.uleb128 0x34a
	.ascii "ERROR_BAD_DRIVER 2001L\0"
	.byte	0x1
	.uleb128 0x34b
	.ascii "ERROR_INVALID_WINDOW_STYLE 2002L\0"
	.byte	0x1
	.uleb128 0x34c
	.ascii "ERROR_METAFILE_NOT_SUPPORTED 2003L\0"
	.byte	0x1
	.uleb128 0x34d
	.ascii "ERROR_TRANSFORM_NOT_SUPPORTED 2004L\0"
	.byte	0x1
	.uleb128 0x34e
	.ascii "ERROR_CLIPPING_NOT_SUPPORTED 2005L\0"
	.byte	0x1
	.uleb128 0x34f
	.ascii "ERROR_INVALID_CMM 2010L\0"
	.byte	0x1
	.uleb128 0x350
	.ascii "ERROR_INVALID_PROFILE 2011L\0"
	.byte	0x1
	.uleb128 0x351
	.ascii "ERROR_TAG_NOT_FOUND 2012L\0"
	.byte	0x1
	.uleb128 0x352
	.ascii "ERROR_TAG_NOT_PRESENT 2013L\0"
	.byte	0x1
	.uleb128 0x353
	.ascii "ERROR_DUPLICATE_TAG 2014L\0"
	.byte	0x1
	.uleb128 0x354
	.ascii "ERROR_PROFILE_NOT_ASSOCIATED_WITH_DEVICE 2015L\0"
	.byte	0x1
	.uleb128 0x355
	.ascii "ERROR_PROFILE_NOT_FOUND 2016L\0"
	.byte	0x1
	.uleb128 0x356
	.ascii "ERROR_INVALID_COLORSPACE 2017L\0"
	.byte	0x1
	.uleb128 0x357
	.ascii "ERROR_ICM_NOT_ENABLED 2018L\0"
	.byte	0x1
	.uleb128 0x358
	.ascii "ERROR_DELETING_ICM_XFORM 2019L\0"
	.byte	0x1
	.uleb128 0x359
	.ascii "ERROR_INVALID_TRANSFORM 2020L\0"
	.byte	0x1
	.uleb128 0x35a
	.ascii "ERROR_COLORSPACE_MISMATCH 2021L\0"
	.byte	0x1
	.uleb128 0x35b
	.ascii "ERROR_INVALID_COLORINDEX 2022L\0"
	.byte	0x1
	.uleb128 0x35c
	.ascii "ERROR_CONNECTED_OTHER_PASSWORD 2108L\0"
	.byte	0x1
	.uleb128 0x35d
	.ascii "ERROR_CONNECTED_OTHER_PASSWORD_DEFAULT 2109L\0"
	.byte	0x1
	.uleb128 0x35e
	.ascii "ERROR_BAD_USERNAME 2202L\0"
	.byte	0x1
	.uleb128 0x35f
	.ascii "ERROR_NOT_CONNECTED 2250L\0"
	.byte	0x1
	.uleb128 0x360
	.ascii "ERROR_OPEN_FILES 2401L\0"
	.byte	0x1
	.uleb128 0x361
	.ascii "ERROR_ACTIVE_CONNECTIONS 2402L\0"
	.byte	0x1
	.uleb128 0x362
	.ascii "ERROR_DEVICE_IN_USE 2404L\0"
	.byte	0x1
	.uleb128 0x363
	.ascii "ERROR_UNKNOWN_PRINT_MONITOR 3000L\0"
	.byte	0x1
	.uleb128 0x364
	.ascii "ERROR_PRINTER_DRIVER_IN_USE 3001L\0"
	.byte	0x1
	.uleb128 0x365
	.ascii "ERROR_SPOOL_FILE_NOT_FOUND 3002L\0"
	.byte	0x1
	.uleb128 0x366
	.ascii "ERROR_SPL_NO_STARTDOC 3003L\0"
	.byte	0x1
	.uleb128 0x367
	.ascii "ERROR_SPL_NO_ADDJOB 3004L\0"
	.byte	0x1
	.uleb128 0x368
	.ascii "ERROR_PRINT_PROCESSOR_ALREADY_INSTALLED 3005L\0"
	.byte	0x1
	.uleb128 0x369
	.ascii "ERROR_PRINT_MONITOR_ALREADY_INSTALLED 3006L\0"
	.byte	0x1
	.uleb128 0x36a
	.ascii "ERROR_INVALID_PRINT_MONITOR 3007L\0"
	.byte	0x1
	.uleb128 0x36b
	.ascii "ERROR_PRINT_MONITOR_IN_USE 3008L\0"
	.byte	0x1
	.uleb128 0x36c
	.ascii "ERROR_PRINTER_HAS_JOBS_QUEUED 3009L\0"
	.byte	0x1
	.uleb128 0x36d
	.ascii "ERROR_SUCCESS_REBOOT_REQUIRED 3010L\0"
	.byte	0x1
	.uleb128 0x36e
	.ascii "ERROR_SUCCESS_RESTART_REQUIRED 3011L\0"
	.byte	0x1
	.uleb128 0x36f
	.ascii "ERROR_PRINTER_NOT_FOUND 3012L\0"
	.byte	0x1
	.uleb128 0x370
	.ascii "ERROR_PRINTER_DRIVER_WARNED 3013L\0"
	.byte	0x1
	.uleb128 0x371
	.ascii "ERROR_PRINTER_DRIVER_BLOCKED 3014L\0"
	.byte	0x1
	.uleb128 0x372
	.ascii "ERROR_WINS_INTERNAL 4000L\0"
	.byte	0x1
	.uleb128 0x373
	.ascii "ERROR_CAN_NOT_DEL_LOCAL_WINS 4001L\0"
	.byte	0x1
	.uleb128 0x374
	.ascii "ERROR_STATIC_INIT 4002L\0"
	.byte	0x1
	.uleb128 0x375
	.ascii "ERROR_INC_BACKUP 4003L\0"
	.byte	0x1
	.uleb128 0x376
	.ascii "ERROR_FULL_BACKUP 4004L\0"
	.byte	0x1
	.uleb128 0x377
	.ascii "ERROR_REC_NON_EXISTENT 4005L\0"
	.byte	0x1
	.uleb128 0x378
	.ascii "ERROR_RPL_NOT_ALLOWED 4006L\0"
	.byte	0x1
	.uleb128 0x379
	.ascii "ERROR_DHCP_ADDRESS_CONFLICT 4100L\0"
	.byte	0x1
	.uleb128 0x37a
	.ascii "ERROR_WMI_GUID_NOT_FOUND 4200L\0"
	.byte	0x1
	.uleb128 0x37b
	.ascii "ERROR_WMI_INSTANCE_NOT_FOUND 4201L\0"
	.byte	0x1
	.uleb128 0x37c
	.ascii "ERROR_WMI_ITEMID_NOT_FOUND 4202L\0"
	.byte	0x1
	.uleb128 0x37d
	.ascii "ERROR_WMI_TRY_AGAIN 4203L\0"
	.byte	0x1
	.uleb128 0x37e
	.ascii "ERROR_WMI_DP_NOT_FOUND 4204L\0"
	.byte	0x1
	.uleb128 0x37f
	.ascii "ERROR_WMI_UNRESOLVED_INSTANCE_REF 4205L\0"
	.byte	0x1
	.uleb128 0x380
	.ascii "ERROR_WMI_ALREADY_ENABLED 4206L\0"
	.byte	0x1
	.uleb128 0x381
	.ascii "ERROR_WMI_GUID_DISCONNECTED 4207L\0"
	.byte	0x1
	.uleb128 0x382
	.ascii "ERROR_WMI_SERVER_UNAVAILABLE 4208L\0"
	.byte	0x1
	.uleb128 0x383
	.ascii "ERROR_WMI_DP_FAILED 4209L\0"
	.byte	0x1
	.uleb128 0x384
	.ascii "ERROR_WMI_INVALID_MOF 4210L\0"
	.byte	0x1
	.uleb128 0x385
	.ascii "ERROR_WMI_INVALID_REGINFO 4211L\0"
	.byte	0x1
	.uleb128 0x386
	.ascii "ERROR_WMI_ALREADY_DISABLED 4212L\0"
	.byte	0x1
	.uleb128 0x387
	.ascii "ERROR_WMI_READ_ONLY 4213L\0"
	.byte	0x1
	.uleb128 0x388
	.ascii "ERROR_WMI_SET_FAILURE 4214L\0"
	.byte	0x1
	.uleb128 0x389
	.ascii "ERROR_INVALID_MEDIA 4300L\0"
	.byte	0x1
	.uleb128 0x38a
	.ascii "ERROR_INVALID_LIBRARY 4301L\0"
	.byte	0x1
	.uleb128 0x38b
	.ascii "ERROR_INVALID_MEDIA_POOL 4302L\0"
	.byte	0x1
	.uleb128 0x38c
	.ascii "ERROR_DRIVE_MEDIA_MISMATCH 4303L\0"
	.byte	0x1
	.uleb128 0x38d
	.ascii "ERROR_MEDIA_OFFLINE 4304L\0"
	.byte	0x1
	.uleb128 0x38e
	.ascii "ERROR_LIBRARY_OFFLINE 4305L\0"
	.byte	0x1
	.uleb128 0x38f
	.ascii "ERROR_EMPTY 4306L\0"
	.byte	0x1
	.uleb128 0x390
	.ascii "ERROR_NOT_EMPTY 4307L\0"
	.byte	0x1
	.uleb128 0x391
	.ascii "ERROR_MEDIA_UNAVAILABLE 4308L\0"
	.byte	0x1
	.uleb128 0x392
	.ascii "ERROR_RESOURCE_DISABLED 4309L\0"
	.byte	0x1
	.uleb128 0x393
	.ascii "ERROR_INVALID_CLEANER 4310L\0"
	.byte	0x1
	.uleb128 0x394
	.ascii "ERROR_UNABLE_TO_CLEAN 4311L\0"
	.byte	0x1
	.uleb128 0x395
	.ascii "ERROR_OBJECT_NOT_FOUND 4312L\0"
	.byte	0x1
	.uleb128 0x396
	.ascii "ERROR_DATABASE_FAILURE 4313L\0"
	.byte	0x1
	.uleb128 0x397
	.ascii "ERROR_DATABASE_FULL 4314L\0"
	.byte	0x1
	.uleb128 0x398
	.ascii "ERROR_MEDIA_INCOMPATIBLE 4315L\0"
	.byte	0x1
	.uleb128 0x399
	.ascii "ERROR_RESOURCE_NOT_PRESENT 4316L\0"
	.byte	0x1
	.uleb128 0x39a
	.ascii "ERROR_INVALID_OPERATION 4317L\0"
	.byte	0x1
	.uleb128 0x39b
	.ascii "ERROR_MEDIA_NOT_AVAILABLE 4318L\0"
	.byte	0x1
	.uleb128 0x39c
	.ascii "ERROR_DEVICE_NOT_AVAILABLE 4319L\0"
	.byte	0x1
	.uleb128 0x39d
	.ascii "ERROR_REQUEST_REFUSED 4320L\0"
	.byte	0x1
	.uleb128 0x39e
	.ascii "ERROR_INVALID_DRIVE_OBJECT 4321L\0"
	.byte	0x1
	.uleb128 0x39f
	.ascii "ERROR_LIBRARY_FULL 4322L\0"
	.byte	0x1
	.uleb128 0x3a0
	.ascii "ERROR_MEDIUM_NOT_ACCESSIBLE 4323L\0"
	.byte	0x1
	.uleb128 0x3a1
	.ascii "ERROR_UNABLE_TO_LOAD_MEDIUM 4324L\0"
	.byte	0x1
	.uleb128 0x3a2
	.ascii "ERROR_UNABLE_TO_INVENTORY_DRIVE 4325L\0"
	.byte	0x1
	.uleb128 0x3a3
	.ascii "ERROR_UNABLE_TO_INVENTORY_SLOT 4326L\0"
	.byte	0x1
	.uleb128 0x3a4
	.ascii "ERROR_UNABLE_TO_INVENTORY_TRANSPORT 4327L\0"
	.byte	0x1
	.uleb128 0x3a5
	.ascii "ERROR_TRANSPORT_FULL 4328L\0"
	.byte	0x1
	.uleb128 0x3a6
	.ascii "ERROR_CONTROLLING_IEPORT 4329L\0"
	.byte	0x1
	.uleb128 0x3a7
	.ascii "ERROR_UNABLE_TO_EJECT_MOUNTED_MEDIA 4330L\0"
	.byte	0x1
	.uleb128 0x3a8
	.ascii "ERROR_CLEANER_SLOT_SET 4331L\0"
	.byte	0x1
	.uleb128 0x3a9
	.ascii "ERROR_CLEANER_SLOT_NOT_SET 4332L\0"
	.byte	0x1
	.uleb128 0x3aa
	.ascii "ERROR_CLEANER_CARTRIDGE_SPENT 4333L\0"
	.byte	0x1
	.uleb128 0x3ab
	.ascii "ERROR_UNEXPECTED_OMID 4334L\0"
	.byte	0x1
	.uleb128 0x3ac
	.ascii "ERROR_CANT_DELETE_LAST_ITEM 4335L\0"
	.byte	0x1
	.uleb128 0x3ad
	.ascii "ERROR_MESSAGE_EXCEEDS_MAX_SIZE 4336L\0"
	.byte	0x1
	.uleb128 0x3ae
	.ascii "ERROR_VOLUME_CONTAINS_SYS_FILES 4337L\0"
	.byte	0x1
	.uleb128 0x3af
	.ascii "ERROR_INDIGENOUS_TYPE 4338L\0"
	.byte	0x1
	.uleb128 0x3b0
	.ascii "ERROR_NO_SUPPORTING_DRIVES 4339L\0"
	.byte	0x1
	.uleb128 0x3b1
	.ascii "ERROR_CLEANER_CARTRIDGE_INSTALLED 4340L\0"
	.byte	0x1
	.uleb128 0x3b2
	.ascii "ERROR_FILE_OFFLINE 4350L\0"
	.byte	0x1
	.uleb128 0x3b3
	.ascii "ERROR_REMOTE_STORAGE_NOT_ACTIVE 4351L\0"
	.byte	0x1
	.uleb128 0x3b4
	.ascii "ERROR_REMOTE_STORAGE_MEDIA_ERROR 4352L\0"
	.byte	0x1
	.uleb128 0x3b5
	.ascii "ERROR_NOT_A_REPARSE_POINT 4390L\0"
	.byte	0x1
	.uleb128 0x3b6
	.ascii "ERROR_REPARSE_ATTRIBUTE_CONFLICT 4391L\0"
	.byte	0x1
	.uleb128 0x3b7
	.ascii "ERROR_INVALID_REPARSE_DATA 4392L\0"
	.byte	0x1
	.uleb128 0x3b8
	.ascii "ERROR_REPARSE_TAG_INVALID 4393L\0"
	.byte	0x1
	.uleb128 0x3b9
	.ascii "ERROR_REPARSE_TAG_MISMATCH 4394L\0"
	.byte	0x1
	.uleb128 0x3ba
	.ascii "ERROR_VOLUME_NOT_SIS_ENABLED 4500L\0"
	.byte	0x1
	.uleb128 0x3bb
	.ascii "ERROR_DEPENDENT_RESOURCE_EXISTS 5001L\0"
	.byte	0x1
	.uleb128 0x3bc
	.ascii "ERROR_DEPENDENCY_NOT_FOUND 5002L\0"
	.byte	0x1
	.uleb128 0x3bd
	.ascii "ERROR_DEPENDENCY_ALREADY_EXISTS 5003L\0"
	.byte	0x1
	.uleb128 0x3be
	.ascii "ERROR_RESOURCE_NOT_ONLINE 5004L\0"
	.byte	0x1
	.uleb128 0x3bf
	.ascii "ERROR_HOST_NODE_NOT_AVAILABLE 5005L\0"
	.byte	0x1
	.uleb128 0x3c0
	.ascii "ERROR_RESOURCE_NOT_AVAILABLE 5006L\0"
	.byte	0x1
	.uleb128 0x3c1
	.ascii "ERROR_RESOURCE_NOT_FOUND 5007L\0"
	.byte	0x1
	.uleb128 0x3c2
	.ascii "ERROR_SHUTDOWN_CLUSTER 5008L\0"
	.byte	0x1
	.uleb128 0x3c3
	.ascii "ERROR_CANT_EVICT_ACTIVE_NODE 5009L\0"
	.byte	0x1
	.uleb128 0x3c4
	.ascii "ERROR_OBJECT_ALREADY_EXISTS 5010L\0"
	.byte	0x1
	.uleb128 0x3c5
	.ascii "ERROR_OBJECT_IN_LIST 5011L\0"
	.byte	0x1
	.uleb128 0x3c6
	.ascii "ERROR_GROUP_NOT_AVAILABLE 5012L\0"
	.byte	0x1
	.uleb128 0x3c7
	.ascii "ERROR_GROUP_NOT_FOUND 5013L\0"
	.byte	0x1
	.uleb128 0x3c8
	.ascii "ERROR_GROUP_NOT_ONLINE 5014L\0"
	.byte	0x1
	.uleb128 0x3c9
	.ascii "ERROR_HOST_NODE_NOT_RESOURCE_OWNER 5015L\0"
	.byte	0x1
	.uleb128 0x3ca
	.ascii "ERROR_HOST_NODE_NOT_GROUP_OWNER 5016L\0"
	.byte	0x1
	.uleb128 0x3cb
	.ascii "ERROR_RESMON_CREATE_FAILED 5017L\0"
	.byte	0x1
	.uleb128 0x3cc
	.ascii "ERROR_RESMON_ONLINE_FAILED 5018L\0"
	.byte	0x1
	.uleb128 0x3cd
	.ascii "ERROR_RESOURCE_ONLINE 5019L\0"
	.byte	0x1
	.uleb128 0x3ce
	.ascii "ERROR_QUORUM_RESOURCE 5020L\0"
	.byte	0x1
	.uleb128 0x3cf
	.ascii "ERROR_NOT_QUORUM_CAPABLE 5021L\0"
	.byte	0x1
	.uleb128 0x3d0
	.ascii "ERROR_CLUSTER_SHUTTING_DOWN 5022L\0"
	.byte	0x1
	.uleb128 0x3d1
	.ascii "ERROR_INVALID_STATE 5023L\0"
	.byte	0x1
	.uleb128 0x3d2
	.ascii "ERROR_RESOURCE_PROPERTIES_STORED 5024L\0"
	.byte	0x1
	.uleb128 0x3d3
	.ascii "ERROR_NOT_QUORUM_CLASS 5025L\0"
	.byte	0x1
	.uleb128 0x3d4
	.ascii "ERROR_CORE_RESOURCE 5026L\0"
	.byte	0x1
	.uleb128 0x3d5
	.ascii "ERROR_QUORUM_RESOURCE_ONLINE_FAILED 5027L\0"
	.byte	0x1
	.uleb128 0x3d6
	.ascii "ERROR_QUORUMLOG_OPEN_FAILED 5028L\0"
	.byte	0x1
	.uleb128 0x3d7
	.ascii "ERROR_CLUSTERLOG_CORRUPT 5029L\0"
	.byte	0x1
	.uleb128 0x3d8
	.ascii "ERROR_CLUSTERLOG_RECORD_EXCEEDS_MAXSIZE 5030L\0"
	.byte	0x1
	.uleb128 0x3d9
	.ascii "ERROR_CLUSTERLOG_EXCEEDS_MAXSIZE 5031L\0"
	.byte	0x1
	.uleb128 0x3da
	.ascii "ERROR_CLUSTERLOG_CHKPOINT_NOT_FOUND 5032L\0"
	.byte	0x1
	.uleb128 0x3db
	.ascii "ERROR_CLUSTERLOG_NOT_ENOUGH_SPACE 5033L\0"
	.byte	0x1
	.uleb128 0x3dc
	.ascii "ERROR_QUORUM_OWNER_ALIVE 5034L\0"
	.byte	0x1
	.uleb128 0x3dd
	.ascii "ERROR_NETWORK_NOT_AVAILABLE 5035L\0"
	.byte	0x1
	.uleb128 0x3de
	.ascii "ERROR_NODE_NOT_AVAILABLE 5036L\0"
	.byte	0x1
	.uleb128 0x3df
	.ascii "ERROR_ALL_NODES_NOT_AVAILABLE 5037L\0"
	.byte	0x1
	.uleb128 0x3e0
	.ascii "ERROR_RESOURCE_FAILED 5038L\0"
	.byte	0x1
	.uleb128 0x3e1
	.ascii "ERROR_CLUSTER_INVALID_NODE 5039L\0"
	.byte	0x1
	.uleb128 0x3e2
	.ascii "ERROR_CLUSTER_NODE_EXISTS 5040L\0"
	.byte	0x1
	.uleb128 0x3e3
	.ascii "ERROR_CLUSTER_JOIN_IN_PROGRESS 5041L\0"
	.byte	0x1
	.uleb128 0x3e4
	.ascii "ERROR_CLUSTER_NODE_NOT_FOUND 5042L\0"
	.byte	0x1
	.uleb128 0x3e5
	.ascii "ERROR_CLUSTER_LOCAL_NODE_NOT_FOUND 5043L\0"
	.byte	0x1
	.uleb128 0x3e6
	.ascii "ERROR_CLUSTER_NETWORK_EXISTS 5044L\0"
	.byte	0x1
	.uleb128 0x3e7
	.ascii "ERROR_CLUSTER_NETWORK_NOT_FOUND 5045L\0"
	.byte	0x1
	.uleb128 0x3e8
	.ascii "ERROR_CLUSTER_NETINTERFACE_EXISTS 5046L\0"
	.byte	0x1
	.uleb128 0x3e9
	.ascii "ERROR_CLUSTER_NETINTERFACE_NOT_FOUND 5047L\0"
	.byte	0x1
	.uleb128 0x3ea
	.ascii "ERROR_CLUSTER_INVALID_REQUEST 5048L\0"
	.byte	0x1
	.uleb128 0x3eb
	.ascii "ERROR_CLUSTER_INVALID_NETWORK_PROVIDER 5049L\0"
	.byte	0x1
	.uleb128 0x3ec
	.ascii "ERROR_CLUSTER_NODE_DOWN 5050L\0"
	.byte	0x1
	.uleb128 0x3ed
	.ascii "ERROR_CLUSTER_NODE_UNREACHABLE 5051L\0"
	.byte	0x1
	.uleb128 0x3ee
	.ascii "ERROR_CLUSTER_NODE_NOT_MEMBER 5052L\0"
	.byte	0x1
	.uleb128 0x3ef
	.ascii "ERROR_CLUSTER_JOIN_NOT_IN_PROGRESS 5053L\0"
	.byte	0x1
	.uleb128 0x3f0
	.ascii "ERROR_CLUSTER_INVALID_NETWORK 5054L\0"
	.byte	0x1
	.uleb128 0x3f1
	.ascii "ERROR_CLUSTER_NODE_UP 5056L\0"
	.byte	0x1
	.uleb128 0x3f2
	.ascii "ERROR_CLUSTER_IPADDR_IN_USE 5057L\0"
	.byte	0x1
	.uleb128 0x3f3
	.ascii "ERROR_CLUSTER_NODE_NOT_PAUSED 5058L\0"
	.byte	0x1
	.uleb128 0x3f4
	.ascii "ERROR_CLUSTER_NO_SECURITY_CONTEXT 5059L\0"
	.byte	0x1
	.uleb128 0x3f5
	.ascii "ERROR_CLUSTER_NETWORK_NOT_INTERNAL 5060L\0"
	.byte	0x1
	.uleb128 0x3f6
	.ascii "ERROR_CLUSTER_NODE_ALREADY_UP 5061L\0"
	.byte	0x1
	.uleb128 0x3f7
	.ascii "ERROR_CLUSTER_NODE_ALREADY_DOWN 5062L\0"
	.byte	0x1
	.uleb128 0x3f8
	.ascii "ERROR_CLUSTER_NETWORK_ALREADY_ONLINE 5063L\0"
	.byte	0x1
	.uleb128 0x3f9
	.ascii "ERROR_CLUSTER_NETWORK_ALREADY_OFFLINE 5064L\0"
	.byte	0x1
	.uleb128 0x3fa
	.ascii "ERROR_CLUSTER_NODE_ALREADY_MEMBER 5065L\0"
	.byte	0x1
	.uleb128 0x3fb
	.ascii "ERROR_CLUSTER_LAST_INTERNAL_NETWORK 5066L\0"
	.byte	0x1
	.uleb128 0x3fc
	.ascii "ERROR_CLUSTER_NETWORK_HAS_DEPENDENTS 5067L\0"
	.byte	0x1
	.uleb128 0x3fd
	.ascii "ERROR_INVALID_OPERATION_ON_QUORUM 5068L\0"
	.byte	0x1
	.uleb128 0x3fe
	.ascii "ERROR_DEPENDENCY_NOT_ALLOWED 5069L\0"
	.byte	0x1
	.uleb128 0x3ff
	.ascii "ERROR_CLUSTER_NODE_PAUSED 5070L\0"
	.byte	0x1
	.uleb128 0x400
	.ascii "ERROR_NODE_CANT_HOST_RESOURCE 5071L\0"
	.byte	0x1
	.uleb128 0x401
	.ascii "ERROR_CLUSTER_NODE_NOT_READY 5072L\0"
	.byte	0x1
	.uleb128 0x402
	.ascii "ERROR_CLUSTER_NODE_SHUTTING_DOWN 5073L\0"
	.byte	0x1
	.uleb128 0x403
	.ascii "ERROR_CLUSTER_JOIN_ABORTED 5074L\0"
	.byte	0x1
	.uleb128 0x404
	.ascii "ERROR_CLUSTER_INCOMPATIBLE_VERSIONS 5075L\0"
	.byte	0x1
	.uleb128 0x405
	.ascii "ERROR_CLUSTER_MAXNUM_OF_RESOURCES_EXCEEDED 5076L\0"
	.byte	0x1
	.uleb128 0x406
	.ascii "ERROR_CLUSTER_SYSTEM_CONFIG_CHANGED 5077L\0"
	.byte	0x1
	.uleb128 0x407
	.ascii "ERROR_CLUSTER_RESOURCE_TYPE_NOT_FOUND 5078L\0"
	.byte	0x1
	.uleb128 0x408
	.ascii "ERROR_CLUSTER_RESTYPE_NOT_SUPPORTED 5079L\0"
	.byte	0x1
	.uleb128 0x409
	.ascii "ERROR_CLUSTER_RESNAME_NOT_FOUND 5080L\0"
	.byte	0x1
	.uleb128 0x40a
	.ascii "ERROR_CLUSTER_NO_RPC_PACKAGES_REGISTERED 5081L\0"
	.byte	0x1
	.uleb128 0x40b
	.ascii "ERROR_CLUSTER_OWNER_NOT_IN_PREFLIST 5082L\0"
	.byte	0x1
	.uleb128 0x40c
	.ascii "ERROR_CLUSTER_DATABASE_SEQMISMATCH 5083L\0"
	.byte	0x1
	.uleb128 0x40d
	.ascii "ERROR_RESMON_INVALID_STATE 5084L\0"
	.byte	0x1
	.uleb128 0x40e
	.ascii "ERROR_CLUSTER_GUM_NOT_LOCKER 5085L\0"
	.byte	0x1
	.uleb128 0x40f
	.ascii "ERROR_QUORUM_DISK_NOT_FOUND 5086L\0"
	.byte	0x1
	.uleb128 0x410
	.ascii "ERROR_DATABASE_BACKUP_CORRUPT 5087L\0"
	.byte	0x1
	.uleb128 0x411
	.ascii "ERROR_CLUSTER_NODE_ALREADY_HAS_DFS_ROOT 5088L\0"
	.byte	0x1
	.uleb128 0x412
	.ascii "ERROR_RESOURCE_PROPERTY_UNCHANGEABLE 5089L\0"
	.byte	0x1
	.uleb128 0x413
	.ascii "ERROR_CLUSTER_MEMBERSHIP_INVALID_STATE 5890L\0"
	.byte	0x1
	.uleb128 0x414
	.ascii "ERROR_CLUSTER_QUORUMLOG_NOT_FOUND 5891L\0"
	.byte	0x1
	.uleb128 0x415
	.ascii "ERROR_CLUSTER_MEMBERSHIP_HALT 5892L\0"
	.byte	0x1
	.uleb128 0x416
	.ascii "ERROR_CLUSTER_INSTANCE_ID_MISMATCH 5893L\0"
	.byte	0x1
	.uleb128 0x417
	.ascii "ERROR_CLUSTER_NETWORK_NOT_FOUND_FOR_IP 5894L\0"
	.byte	0x1
	.uleb128 0x418
	.ascii "ERROR_CLUSTER_PROPERTY_DATA_TYPE_MISMATCH 5895L\0"
	.byte	0x1
	.uleb128 0x419
	.ascii "ERROR_CLUSTER_EVICT_WITHOUT_CLEANUP 5896L\0"
	.byte	0x1
	.uleb128 0x41a
	.ascii "ERROR_CLUSTER_PARAMETER_MISMATCH 5897L\0"
	.byte	0x1
	.uleb128 0x41b
	.ascii "ERROR_NODE_CANNOT_BE_CLUSTERED 5898L\0"
	.byte	0x1
	.uleb128 0x41c
	.ascii "ERROR_CLUSTER_WRONG_OS_VERSION 5899L\0"
	.byte	0x1
	.uleb128 0x41d
	.ascii "ERROR_CLUSTER_CANT_CREATE_DUP_CLUSTER_NAME 5900L\0"
	.byte	0x1
	.uleb128 0x41e
	.ascii "ERROR_CLUSCFG_ALREADY_COMMITTED 5901L\0"
	.byte	0x1
	.uleb128 0x41f
	.ascii "ERROR_CLUSCFG_ROLLBACK_FAILED 5902L\0"
	.byte	0x1
	.uleb128 0x420
	.ascii "ERROR_CLUSCFG_SYSTEM_DISK_DRIVE_LETTER_CONFLICT 5903L\0"
	.byte	0x1
	.uleb128 0x421
	.ascii "ERROR_CLUSTER_OLD_VERSION 5904L\0"
	.byte	0x1
	.uleb128 0x422
	.ascii "ERROR_CLUSTER_MISMATCHED_COMPUTER_ACCT_NAME 5905L\0"
	.byte	0x1
	.uleb128 0x423
	.ascii "ERROR_ENCRYPTION_FAILED 6000L\0"
	.byte	0x1
	.uleb128 0x424
	.ascii "ERROR_DECRYPTION_FAILED 6001L\0"
	.byte	0x1
	.uleb128 0x425
	.ascii "ERROR_FILE_ENCRYPTED 6002L\0"
	.byte	0x1
	.uleb128 0x426
	.ascii "ERROR_NO_RECOVERY_POLICY 6003L\0"
	.byte	0x1
	.uleb128 0x427
	.ascii "ERROR_NO_EFS 6004L\0"
	.byte	0x1
	.uleb128 0x428
	.ascii "ERROR_WRONG_EFS 6005L\0"
	.byte	0x1
	.uleb128 0x429
	.ascii "ERROR_NO_USER_KEYS 6006L\0"
	.byte	0x1
	.uleb128 0x42a
	.ascii "ERROR_FILE_NOT_ENCRYPTED 6007L\0"
	.byte	0x1
	.uleb128 0x42b
	.ascii "ERROR_NOT_EXPORT_FORMAT 6008L\0"
	.byte	0x1
	.uleb128 0x42c
	.ascii "ERROR_FILE_READ_ONLY 6009L\0"
	.byte	0x1
	.uleb128 0x42d
	.ascii "ERROR_DIR_EFS_DISALLOWED 6010L\0"
	.byte	0x1
	.uleb128 0x42e
	.ascii "ERROR_EFS_SERVER_NOT_TRUSTED 6011L\0"
	.byte	0x1
	.uleb128 0x42f
	.ascii "ERROR_BAD_RECOVERY_POLICY 6012L\0"
	.byte	0x1
	.uleb128 0x430
	.ascii "ERROR_EFS_ALG_BLOB_TOO_BIG 6013L\0"
	.byte	0x1
	.uleb128 0x431
	.ascii "ERROR_VOLUME_NOT_SUPPORT_EFS 6014L\0"
	.byte	0x1
	.uleb128 0x432
	.ascii "ERROR_EFS_DISABLED 6015L\0"
	.byte	0x1
	.uleb128 0x433
	.ascii "ERROR_EFS_VERSION_NOT_SUPPORT 6016L\0"
	.byte	0x1
	.uleb128 0x434
	.ascii "ERROR_NO_BROWSER_SERVERS_FOUND 6118L\0"
	.byte	0x1
	.uleb128 0x435
	.ascii "SCHED_E_SERVICE_NOT_LOCALSYSTEM 6200L\0"
	.byte	0x1
	.uleb128 0x437
	.ascii "ERROR_CTX_WINSTATION_NAME_INVALID 7001L\0"
	.byte	0x1
	.uleb128 0x438
	.ascii "ERROR_CTX_INVALID_PD 7002L\0"
	.byte	0x1
	.uleb128 0x439
	.ascii "ERROR_CTX_PD_NOT_FOUND 7003L\0"
	.byte	0x1
	.uleb128 0x43a
	.ascii "ERROR_CTX_WD_NOT_FOUND 7004L\0"
	.byte	0x1
	.uleb128 0x43b
	.ascii "ERROR_CTX_CANNOT_MAKE_EVENTLOG_ENTRY 7005L\0"
	.byte	0x1
	.uleb128 0x43c
	.ascii "ERROR_CTX_SERVICE_NAME_COLLISION 7006L\0"
	.byte	0x1
	.uleb128 0x43d
	.ascii "ERROR_CTX_CLOSE_PENDING 7007L\0"
	.byte	0x1
	.uleb128 0x43e
	.ascii "ERROR_CTX_NO_OUTBUF 7008L\0"
	.byte	0x1
	.uleb128 0x43f
	.ascii "ERROR_CTX_MODEM_INF_NOT_FOUND 7009L\0"
	.byte	0x1
	.uleb128 0x440
	.ascii "ERROR_CTX_INVALID_MODEMNAME 7010L\0"
	.byte	0x1
	.uleb128 0x441
	.ascii "ERROR_CTX_MODEM_RESPONSE_ERROR 7011L\0"
	.byte	0x1
	.uleb128 0x442
	.ascii "ERROR_CTX_MODEM_RESPONSE_TIMEOUT 7012L\0"
	.byte	0x1
	.uleb128 0x443
	.ascii "ERROR_CTX_MODEM_RESPONSE_NO_CARRIER 7013L\0"
	.byte	0x1
	.uleb128 0x444
	.ascii "ERROR_CTX_MODEM_RESPONSE_NO_DIALTONE 7014L\0"
	.byte	0x1
	.uleb128 0x445
	.ascii "ERROR_CTX_MODEM_RESPONSE_BUSY 7015L\0"
	.byte	0x1
	.uleb128 0x446
	.ascii "ERROR_CTX_MODEM_RESPONSE_VOICE 7016L\0"
	.byte	0x1
	.uleb128 0x447
	.ascii "ERROR_CTX_TD_ERROR 7017L\0"
	.byte	0x1
	.uleb128 0x448
	.ascii "ERROR_CTX_WINSTATION_NOT_FOUND 7022L\0"
	.byte	0x1
	.uleb128 0x449
	.ascii "ERROR_CTX_WINSTATION_ALREADY_EXISTS 7023L\0"
	.byte	0x1
	.uleb128 0x44a
	.ascii "ERROR_CTX_WINSTATION_BUSY 7024L\0"
	.byte	0x1
	.uleb128 0x44b
	.ascii "ERROR_CTX_BAD_VIDEO_MODE 7025L\0"
	.byte	0x1
	.uleb128 0x44c
	.ascii "ERROR_CTX_GRAPHICS_INVALID 7035L\0"
	.byte	0x1
	.uleb128 0x44d
	.ascii "ERROR_CTX_LOGON_DISABLED 7037L\0"
	.byte	0x1
	.uleb128 0x44e
	.ascii "ERROR_CTX_NOT_CONSOLE 7038L\0"
	.byte	0x1
	.uleb128 0x44f
	.ascii "ERROR_CTX_CLIENT_QUERY_TIMEOUT 7040L\0"
	.byte	0x1
	.uleb128 0x450
	.ascii "ERROR_CTX_CONSOLE_DISCONNECT 7041L\0"
	.byte	0x1
	.uleb128 0x451
	.ascii "ERROR_CTX_CONSOLE_CONNECT 7042L\0"
	.byte	0x1
	.uleb128 0x452
	.ascii "ERROR_CTX_SHADOW_DENIED 7044L\0"
	.byte	0x1
	.uleb128 0x453
	.ascii "ERROR_CTX_WINSTATION_ACCESS_DENIED 7045L\0"
	.byte	0x1
	.uleb128 0x454
	.ascii "ERROR_CTX_INVALID_WD 7049L\0"
	.byte	0x1
	.uleb128 0x455
	.ascii "ERROR_CTX_SHADOW_INVALID 7050L\0"
	.byte	0x1
	.uleb128 0x456
	.ascii "ERROR_CTX_SHADOW_DISABLED 7051L\0"
	.byte	0x1
	.uleb128 0x457
	.ascii "ERROR_CTX_CLIENT_LICENSE_IN_USE 7052L\0"
	.byte	0x1
	.uleb128 0x458
	.ascii "ERROR_CTX_CLIENT_LICENSE_NOT_SET 7053L\0"
	.byte	0x1
	.uleb128 0x459
	.ascii "ERROR_CTX_LICENSE_NOT_AVAILABLE 7054L\0"
	.byte	0x1
	.uleb128 0x45a
	.ascii "ERROR_CTX_LICENSE_CLIENT_INVALID 7055L\0"
	.byte	0x1
	.uleb128 0x45b
	.ascii "ERROR_CTX_LICENSE_EXPIRED 7056L\0"
	.byte	0x1
	.uleb128 0x45c
	.ascii "ERROR_CTX_SHADOW_NOT_RUNNING 7057L\0"
	.byte	0x1
	.uleb128 0x45d
	.ascii "ERROR_CTX_SHADOW_ENDED_BY_MODE_CHANGE 7058L\0"
	.byte	0x1
	.uleb128 0x45e
	.ascii "ERROR_ACTIVATION_COUNT_EXCEEDED 7059L\0"
	.byte	0x1
	.uleb128 0x460
	.ascii "FRS_ERR_INVALID_API_SEQUENCE 8001L\0"
	.byte	0x1
	.uleb128 0x461
	.ascii "FRS_ERR_STARTING_SERVICE 8002L\0"
	.byte	0x1
	.uleb128 0x462
	.ascii "FRS_ERR_STOPPING_SERVICE 8003L\0"
	.byte	0x1
	.uleb128 0x463
	.ascii "FRS_ERR_INTERNAL_API 8004L\0"
	.byte	0x1
	.uleb128 0x464
	.ascii "FRS_ERR_INTERNAL 8005L\0"
	.byte	0x1
	.uleb128 0x465
	.ascii "FRS_ERR_SERVICE_COMM 8006L\0"
	.byte	0x1
	.uleb128 0x466
	.ascii "FRS_ERR_INSUFFICIENT_PRIV 8007L\0"
	.byte	0x1
	.uleb128 0x467
	.ascii "FRS_ERR_AUTHENTICATION 8008L\0"
	.byte	0x1
	.uleb128 0x468
	.ascii "FRS_ERR_PARENT_INSUFFICIENT_PRIV 8009L\0"
	.byte	0x1
	.uleb128 0x469
	.ascii "FRS_ERR_PARENT_AUTHENTICATION 8010L\0"
	.byte	0x1
	.uleb128 0x46a
	.ascii "FRS_ERR_CHILD_TO_PARENT_COMM 8011L\0"
	.byte	0x1
	.uleb128 0x46b
	.ascii "FRS_ERR_PARENT_TO_CHILD_COMM 8012L\0"
	.byte	0x1
	.uleb128 0x46c
	.ascii "FRS_ERR_SYSVOL_POPULATE 8013L\0"
	.byte	0x1
	.uleb128 0x46d
	.ascii "FRS_ERR_SYSVOL_POPULATE_TIMEOUT 8014L\0"
	.byte	0x1
	.uleb128 0x46e
	.ascii "FRS_ERR_SYSVOL_IS_BUSY 8015L\0"
	.byte	0x1
	.uleb128 0x46f
	.ascii "FRS_ERR_SYSVOL_DEMOTE 8016L\0"
	.byte	0x1
	.uleb128 0x470
	.ascii "FRS_ERR_INVALID_SERVICE_PARAMETER 8017L\0"
	.byte	0x1
	.uleb128 0x471
	.ascii "ERROR_DS_NOT_INSTALLED 8200L\0"
	.byte	0x1
	.uleb128 0x472
	.ascii "ERROR_DS_MEMBERSHIP_EVALUATED_LOCALLY 8201L\0"
	.byte	0x1
	.uleb128 0x473
	.ascii "ERROR_DS_NO_ATTRIBUTE_OR_VALUE 8202L\0"
	.byte	0x1
	.uleb128 0x474
	.ascii "ERROR_DS_INVALID_ATTRIBUTE_SYNTAX 8203L\0"
	.byte	0x1
	.uleb128 0x475
	.ascii "ERROR_DS_ATTRIBUTE_TYPE_UNDEFINED 8204L\0"
	.byte	0x1
	.uleb128 0x476
	.ascii "ERROR_DS_ATTRIBUTE_OR_VALUE_EXISTS 8205L\0"
	.byte	0x1
	.uleb128 0x477
	.ascii "ERROR_DS_BUSY 8206L\0"
	.byte	0x1
	.uleb128 0x478
	.ascii "ERROR_DS_UNAVAILABLE 8207L\0"
	.byte	0x1
	.uleb128 0x479
	.ascii "ERROR_DS_NO_RIDS_ALLOCATED 8208L\0"
	.byte	0x1
	.uleb128 0x47a
	.ascii "ERROR_DS_NO_MORE_RIDS 8209L\0"
	.byte	0x1
	.uleb128 0x47b
	.ascii "ERROR_DS_INCORRECT_ROLE_OWNER 8210L\0"
	.byte	0x1
	.uleb128 0x47c
	.ascii "ERROR_DS_RIDMGR_INIT_ERROR 8211L\0"
	.byte	0x1
	.uleb128 0x47d
	.ascii "ERROR_DS_OBJ_CLASS_VIOLATION 8212L\0"
	.byte	0x1
	.uleb128 0x47e
	.ascii "ERROR_DS_CANT_ON_NON_LEAF 8213L\0"
	.byte	0x1
	.uleb128 0x47f
	.ascii "ERROR_DS_CANT_ON_RDN 8214L\0"
	.byte	0x1
	.uleb128 0x480
	.ascii "ERROR_DS_CANT_MOD_OBJ_CLASS 8215L\0"
	.byte	0x1
	.uleb128 0x481
	.ascii "ERROR_DS_CROSS_DOM_MOVE_ERROR 8216L\0"
	.byte	0x1
	.uleb128 0x482
	.ascii "ERROR_DS_GC_NOT_AVAILABLE 8217L\0"
	.byte	0x1
	.uleb128 0x483
	.ascii "ERROR_SHARED_POLICY 8218L\0"
	.byte	0x1
	.uleb128 0x484
	.ascii "ERROR_POLICY_OBJECT_NOT_FOUND 8219L\0"
	.byte	0x1
	.uleb128 0x485
	.ascii "ERROR_POLICY_ONLY_IN_DS 8220L\0"
	.byte	0x1
	.uleb128 0x486
	.ascii "ERROR_PROMOTION_ACTIVE 8221L\0"
	.byte	0x1
	.uleb128 0x487
	.ascii "ERROR_NO_PROMOTION_ACTIVE 8222L\0"
	.byte	0x1
	.uleb128 0x488
	.ascii "ERROR_DS_OPERATIONS_ERROR 8224L\0"
	.byte	0x1
	.uleb128 0x489
	.ascii "ERROR_DS_PROTOCOL_ERROR 8225L\0"
	.byte	0x1
	.uleb128 0x48a
	.ascii "ERROR_DS_TIMELIMIT_EXCEEDED 8226L\0"
	.byte	0x1
	.uleb128 0x48b
	.ascii "ERROR_DS_SIZELIMIT_EXCEEDED 8227L\0"
	.byte	0x1
	.uleb128 0x48c
	.ascii "ERROR_DS_ADMIN_LIMIT_EXCEEDED 8228L\0"
	.byte	0x1
	.uleb128 0x48d
	.ascii "ERROR_DS_COMPARE_FALSE 8229L\0"
	.byte	0x1
	.uleb128 0x48e
	.ascii "ERROR_DS_COMPARE_TRUE 8230L\0"
	.byte	0x1
	.uleb128 0x48f
	.ascii "ERROR_DS_AUTH_METHOD_NOT_SUPPORTED 8231L\0"
	.byte	0x1
	.uleb128 0x490
	.ascii "ERROR_DS_STRONG_AUTH_REQUIRED 8232L\0"
	.byte	0x1
	.uleb128 0x491
	.ascii "ERROR_DS_INAPPROPRIATE_AUTH 8233L\0"
	.byte	0x1
	.uleb128 0x492
	.ascii "ERROR_DS_AUTH_UNKNOWN 8234L\0"
	.byte	0x1
	.uleb128 0x493
	.ascii "ERROR_DS_REFERRAL 8235L\0"
	.byte	0x1
	.uleb128 0x494
	.ascii "ERROR_DS_UNAVAILABLE_CRIT_EXTENSION 8236L\0"
	.byte	0x1
	.uleb128 0x495
	.ascii "ERROR_DS_CONFIDENTIALITY_REQUIRED 8237L\0"
	.byte	0x1
	.uleb128 0x496
	.ascii "ERROR_DS_INAPPROPRIATE_MATCHING 8238L\0"
	.byte	0x1
	.uleb128 0x497
	.ascii "ERROR_DS_CONSTRAINT_VIOLATION 8239L\0"
	.byte	0x1
	.uleb128 0x498
	.ascii "ERROR_DS_NO_SUCH_OBJECT 8240L\0"
	.byte	0x1
	.uleb128 0x499
	.ascii "ERROR_DS_ALIAS_PROBLEM 8241L\0"
	.byte	0x1
	.uleb128 0x49a
	.ascii "ERROR_DS_INVALID_DN_SYNTAX 8242L\0"
	.byte	0x1
	.uleb128 0x49b
	.ascii "ERROR_DS_IS_LEAF 8243L\0"
	.byte	0x1
	.uleb128 0x49c
	.ascii "ERROR_DS_ALIAS_DEREF_PROBLEM 8244L\0"
	.byte	0x1
	.uleb128 0x49d
	.ascii "ERROR_DS_UNWILLING_TO_PERFORM 8245L\0"
	.byte	0x1
	.uleb128 0x49e
	.ascii "ERROR_DS_LOOP_DETECT 8246L\0"
	.byte	0x1
	.uleb128 0x49f
	.ascii "ERROR_DS_NAMING_VIOLATION 8247L\0"
	.byte	0x1
	.uleb128 0x4a0
	.ascii "ERROR_DS_OBJECT_RESULTS_TOO_LARGE 8248L\0"
	.byte	0x1
	.uleb128 0x4a1
	.ascii "ERROR_DS_AFFECTS_MULTIPLE_DSAS 8249L\0"
	.byte	0x1
	.uleb128 0x4a2
	.ascii "ERROR_DS_SERVER_DOWN 8250L\0"
	.byte	0x1
	.uleb128 0x4a3
	.ascii "ERROR_DS_LOCAL_ERROR 8251L\0"
	.byte	0x1
	.uleb128 0x4a4
	.ascii "ERROR_DS_ENCODING_ERROR 8252L\0"
	.byte	0x1
	.uleb128 0x4a5
	.ascii "ERROR_DS_DECODING_ERROR 8253L\0"
	.byte	0x1
	.uleb128 0x4a6
	.ascii "ERROR_DS_FILTER_UNKNOWN 8254L\0"
	.byte	0x1
	.uleb128 0x4a7
	.ascii "ERROR_DS_PARAM_ERROR 8255L\0"
	.byte	0x1
	.uleb128 0x4a8
	.ascii "ERROR_DS_NOT_SUPPORTED 8256L\0"
	.byte	0x1
	.uleb128 0x4a9
	.ascii "ERROR_DS_NO_RESULTS_RETURNED 8257L\0"
	.byte	0x1
	.uleb128 0x4aa
	.ascii "ERROR_DS_CONTROL_NOT_FOUND 8258L\0"
	.byte	0x1
	.uleb128 0x4ab
	.ascii "ERROR_DS_CLIENT_LOOP 8259L\0"
	.byte	0x1
	.uleb128 0x4ac
	.ascii "ERROR_DS_REFERRAL_LIMIT_EXCEEDED 8260L\0"
	.byte	0x1
	.uleb128 0x4ad
	.ascii "ERROR_DS_SORT_CONTROL_MISSING 8261L\0"
	.byte	0x1
	.uleb128 0x4ae
	.ascii "ERROR_DS_OFFSET_RANGE_ERROR 8262L\0"
	.byte	0x1
	.uleb128 0x4af
	.ascii "ERROR_DS_ROOT_MUST_BE_NC 8301L\0"
	.byte	0x1
	.uleb128 0x4b0
	.ascii "ERROR_DS_ADD_REPLICA_INHIBITED 8302L\0"
	.byte	0x1
	.uleb128 0x4b1
	.ascii "ERROR_DS_ATT_NOT_DEF_IN_SCHEMA 8303L\0"
	.byte	0x1
	.uleb128 0x4b2
	.ascii "ERROR_DS_MAX_OBJ_SIZE_EXCEEDED 8304L\0"
	.byte	0x1
	.uleb128 0x4b3
	.ascii "ERROR_DS_OBJ_STRING_NAME_EXISTS 8305L\0"
	.byte	0x1
	.uleb128 0x4b4
	.ascii "ERROR_DS_NO_RDN_DEFINED_IN_SCHEMA 8306L\0"
	.byte	0x1
	.uleb128 0x4b5
	.ascii "ERROR_DS_RDN_DOESNT_MATCH_SCHEMA 8307L\0"
	.byte	0x1
	.uleb128 0x4b6
	.ascii "ERROR_DS_NO_REQUESTED_ATTS_FOUND 8308L\0"
	.byte	0x1
	.uleb128 0x4b7
	.ascii "ERROR_DS_USER_BUFFER_TO_SMALL 8309L\0"
	.byte	0x1
	.uleb128 0x4b8
	.ascii "ERROR_DS_ATT_IS_NOT_ON_OBJ 8310L\0"
	.byte	0x1
	.uleb128 0x4b9
	.ascii "ERROR_DS_ILLEGAL_MOD_OPERATION 8311L\0"
	.byte	0x1
	.uleb128 0x4ba
	.ascii "ERROR_DS_OBJ_TOO_LARGE 8312L\0"
	.byte	0x1
	.uleb128 0x4bb
	.ascii "ERROR_DS_BAD_INSTANCE_TYPE 8313L\0"
	.byte	0x1
	.uleb128 0x4bc
	.ascii "ERROR_DS_MASTERDSA_REQUIRED 8314L\0"
	.byte	0x1
	.uleb128 0x4bd
	.ascii "ERROR_DS_OBJECT_CLASS_REQUIRED 8315L\0"
	.byte	0x1
	.uleb128 0x4be
	.ascii "ERROR_DS_MISSING_REQUIRED_ATT 8316L\0"
	.byte	0x1
	.uleb128 0x4bf
	.ascii "ERROR_DS_ATT_NOT_DEF_FOR_CLASS 8317L\0"
	.byte	0x1
	.uleb128 0x4c0
	.ascii "ERROR_DS_ATT_ALREADY_EXISTS 8318L\0"
	.byte	0x1
	.uleb128 0x4c1
	.ascii "ERROR_DS_CANT_ADD_ATT_VALUES 8320L\0"
	.byte	0x1
	.uleb128 0x4c2
	.ascii "ERROR_DS_SINGLE_VALUE_CONSTRAINT 8321L\0"
	.byte	0x1
	.uleb128 0x4c3
	.ascii "ERROR_DS_RANGE_CONSTRAINT 8322L\0"
	.byte	0x1
	.uleb128 0x4c4
	.ascii "ERROR_DS_ATT_VAL_ALREADY_EXISTS 8323L\0"
	.byte	0x1
	.uleb128 0x4c5
	.ascii "ERROR_DS_CANT_REM_MISSING_ATT 8324L\0"
	.byte	0x1
	.uleb128 0x4c6
	.ascii "ERROR_DS_CANT_REM_MISSING_ATT_VAL 8325L\0"
	.byte	0x1
	.uleb128 0x4c7
	.ascii "ERROR_DS_ROOT_CANT_BE_SUBREF 8326L\0"
	.byte	0x1
	.uleb128 0x4c8
	.ascii "ERROR_DS_NO_CHAINING 8327L\0"
	.byte	0x1
	.uleb128 0x4c9
	.ascii "ERROR_DS_NO_CHAINED_EVAL 8328L\0"
	.byte	0x1
	.uleb128 0x4ca
	.ascii "ERROR_DS_NO_PARENT_OBJECT 8329L\0"
	.byte	0x1
	.uleb128 0x4cb
	.ascii "ERROR_DS_PARENT_IS_AN_ALIAS 8330L\0"
	.byte	0x1
	.uleb128 0x4cc
	.ascii "ERROR_DS_CANT_MIX_MASTER_AND_REPS 8331L\0"
	.byte	0x1
	.uleb128 0x4cd
	.ascii "ERROR_DS_CHILDREN_EXIST 8332L\0"
	.byte	0x1
	.uleb128 0x4ce
	.ascii "ERROR_DS_OBJ_NOT_FOUND 8333L\0"
	.byte	0x1
	.uleb128 0x4cf
	.ascii "ERROR_DS_ALIASED_OBJ_MISSING 8334L\0"
	.byte	0x1
	.uleb128 0x4d0
	.ascii "ERROR_DS_BAD_NAME_SYNTAX 8335L\0"
	.byte	0x1
	.uleb128 0x4d1
	.ascii "ERROR_DS_ALIAS_POINTS_TO_ALIAS 8336L\0"
	.byte	0x1
	.uleb128 0x4d2
	.ascii "ERROR_DS_CANT_DEREF_ALIAS 8337L\0"
	.byte	0x1
	.uleb128 0x4d3
	.ascii "ERROR_DS_OUT_OF_SCOPE 8338L\0"
	.byte	0x1
	.uleb128 0x4d4
	.ascii "ERROR_DS_OBJECT_BEING_REMOVED 8339L\0"
	.byte	0x1
	.uleb128 0x4d5
	.ascii "ERROR_DS_CANT_DELETE_DSA_OBJ 8340L\0"
	.byte	0x1
	.uleb128 0x4d6
	.ascii "ERROR_DS_GENERIC_ERROR 8341L\0"
	.byte	0x1
	.uleb128 0x4d7
	.ascii "ERROR_DS_DSA_MUST_BE_INT_MASTER 8342L\0"
	.byte	0x1
	.uleb128 0x4d8
	.ascii "ERROR_DS_CLASS_NOT_DSA 8343L\0"
	.byte	0x1
	.uleb128 0x4d9
	.ascii "ERROR_DS_INSUFF_ACCESS_RIGHTS 8344L\0"
	.byte	0x1
	.uleb128 0x4da
	.ascii "ERROR_DS_ILLEGAL_SUPERIOR 8345L\0"
	.byte	0x1
	.uleb128 0x4db
	.ascii "ERROR_DS_ATTRIBUTE_OWNED_BY_SAM 8346L\0"
	.byte	0x1
	.uleb128 0x4dc
	.ascii "ERROR_DS_NAME_TOO_MANY_PARTS 8347L\0"
	.byte	0x1
	.uleb128 0x4dd
	.ascii "ERROR_DS_NAME_TOO_LONG 8348L\0"
	.byte	0x1
	.uleb128 0x4de
	.ascii "ERROR_DS_NAME_VALUE_TOO_LONG 8349L\0"
	.byte	0x1
	.uleb128 0x4df
	.ascii "ERROR_DS_NAME_UNPARSEABLE 8350L\0"
	.byte	0x1
	.uleb128 0x4e0
	.ascii "ERROR_DS_NAME_TYPE_UNKNOWN 8351L\0"
	.byte	0x1
	.uleb128 0x4e1
	.ascii "ERROR_DS_NOT_AN_OBJECT 8352L\0"
	.byte	0x1
	.uleb128 0x4e2
	.ascii "ERROR_DS_SEC_DESC_TOO_SHORT 8353L\0"
	.byte	0x1
	.uleb128 0x4e3
	.ascii "ERROR_DS_SEC_DESC_INVALID 8354L\0"
	.byte	0x1
	.uleb128 0x4e4
	.ascii "ERROR_DS_NO_DELETED_NAME 8355L\0"
	.byte	0x1
	.uleb128 0x4e5
	.ascii "ERROR_DS_SUBREF_MUST_HAVE_PARENT 8356L\0"
	.byte	0x1
	.uleb128 0x4e6
	.ascii "ERROR_DS_NCNAME_MUST_BE_NC 8357L\0"
	.byte	0x1
	.uleb128 0x4e7
	.ascii "ERROR_DS_CANT_ADD_SYSTEM_ONLY 8358L\0"
	.byte	0x1
	.uleb128 0x4e8
	.ascii "ERROR_DS_CLASS_MUST_BE_CONCRETE 8359L\0"
	.byte	0x1
	.uleb128 0x4e9
	.ascii "ERROR_DS_INVALID_DMD 8360L\0"
	.byte	0x1
	.uleb128 0x4ea
	.ascii "ERROR_DS_OBJ_GUID_EXISTS 8361L\0"
	.byte	0x1
	.uleb128 0x4eb
	.ascii "ERROR_DS_NOT_ON_BACKLINK 8362L\0"
	.byte	0x1
	.uleb128 0x4ec
	.ascii "ERROR_DS_NO_CROSSREF_FOR_NC 8363L\0"
	.byte	0x1
	.uleb128 0x4ed
	.ascii "ERROR_DS_SHUTTING_DOWN 8364L\0"
	.byte	0x1
	.uleb128 0x4ee
	.ascii "ERROR_DS_UNKNOWN_OPERATION 8365L\0"
	.byte	0x1
	.uleb128 0x4ef
	.ascii "ERROR_DS_INVALID_ROLE_OWNER 8366L\0"
	.byte	0x1
	.uleb128 0x4f0
	.ascii "ERROR_DS_COULDNT_CONTACT_FSMO 8367L\0"
	.byte	0x1
	.uleb128 0x4f1
	.ascii "ERROR_DS_CROSS_NC_DN_RENAME 8368L\0"
	.byte	0x1
	.uleb128 0x4f2
	.ascii "ERROR_DS_CANT_MOD_SYSTEM_ONLY 8369L\0"
	.byte	0x1
	.uleb128 0x4f3
	.ascii "ERROR_DS_REPLICATOR_ONLY 8370L\0"
	.byte	0x1
	.uleb128 0x4f4
	.ascii "ERROR_DS_OBJ_CLASS_NOT_DEFINED 8371L\0"
	.byte	0x1
	.uleb128 0x4f5
	.ascii "ERROR_DS_OBJ_CLASS_NOT_SUBCLASS 8372L\0"
	.byte	0x1
	.uleb128 0x4f6
	.ascii "ERROR_DS_NAME_REFERENCE_INVALID 8373L\0"
	.byte	0x1
	.uleb128 0x4f7
	.ascii "ERROR_DS_CROSS_REF_EXISTS 8374L\0"
	.byte	0x1
	.uleb128 0x4f8
	.ascii "ERROR_DS_CANT_DEL_MASTER_CROSSREF 8375L\0"
	.byte	0x1
	.uleb128 0x4f9
	.ascii "ERROR_DS_SUBTREE_NOTIFY_NOT_NC_HEAD 8376L\0"
	.byte	0x1
	.uleb128 0x4fa
	.ascii "ERROR_DS_NOTIFY_FILTER_TOO_COMPLEX 8377L\0"
	.byte	0x1
	.uleb128 0x4fb
	.ascii "ERROR_DS_DUP_RDN 8378L\0"
	.byte	0x1
	.uleb128 0x4fc
	.ascii "ERROR_DS_DUP_OID 8379L\0"
	.byte	0x1
	.uleb128 0x4fd
	.ascii "ERROR_DS_DUP_MAPI_ID 8380L\0"
	.byte	0x1
	.uleb128 0x4fe
	.ascii "ERROR_DS_DUP_SCHEMA_ID_GUID 8381L\0"
	.byte	0x1
	.uleb128 0x4ff
	.ascii "ERROR_DS_DUP_LDAP_DISPLAY_NAME 8382L\0"
	.byte	0x1
	.uleb128 0x500
	.ascii "ERROR_DS_SEMANTIC_ATT_TEST 8383L\0"
	.byte	0x1
	.uleb128 0x501
	.ascii "ERROR_DS_SYNTAX_MISMATCH 8384L\0"
	.byte	0x1
	.uleb128 0x502
	.ascii "ERROR_DS_EXISTS_IN_MUST_HAVE 8385L\0"
	.byte	0x1
	.uleb128 0x503
	.ascii "ERROR_DS_EXISTS_IN_MAY_HAVE 8386L\0"
	.byte	0x1
	.uleb128 0x504
	.ascii "ERROR_DS_NONEXISTENT_MAY_HAVE 8387L\0"
	.byte	0x1
	.uleb128 0x505
	.ascii "ERROR_DS_NONEXISTENT_MUST_HAVE 8388L\0"
	.byte	0x1
	.uleb128 0x506
	.ascii "ERROR_DS_AUX_CLS_TEST_FAIL 8389L\0"
	.byte	0x1
	.uleb128 0x507
	.ascii "ERROR_DS_NONEXISTENT_POSS_SUP 8390L\0"
	.byte	0x1
	.uleb128 0x508
	.ascii "ERROR_DS_SUB_CLS_TEST_FAIL 8391L\0"
	.byte	0x1
	.uleb128 0x509
	.ascii "ERROR_DS_BAD_RDN_ATT_ID_SYNTAX 8392L\0"
	.byte	0x1
	.uleb128 0x50a
	.ascii "ERROR_DS_EXISTS_IN_AUX_CLS 8393L\0"
	.byte	0x1
	.uleb128 0x50b
	.ascii "ERROR_DS_EXISTS_IN_SUB_CLS 8394L\0"
	.byte	0x1
	.uleb128 0x50c
	.ascii "ERROR_DS_EXISTS_IN_POSS_SUP 8395L\0"
	.byte	0x1
	.uleb128 0x50d
	.ascii "ERROR_DS_RECALCSCHEMA_FAILED 8396L\0"
	.byte	0x1
	.uleb128 0x50e
	.ascii "ERROR_DS_TREE_DELETE_NOT_FINISHED 8397L\0"
	.byte	0x1
	.uleb128 0x50f
	.ascii "ERROR_DS_CANT_DELETE 8398L\0"
	.byte	0x1
	.uleb128 0x510
	.ascii "ERROR_DS_ATT_SCHEMA_REQ_ID 8399L\0"
	.byte	0x1
	.uleb128 0x511
	.ascii "ERROR_DS_BAD_ATT_SCHEMA_SYNTAX 8400L\0"
	.byte	0x1
	.uleb128 0x512
	.ascii "ERROR_DS_CANT_CACHE_ATT 8401L\0"
	.byte	0x1
	.uleb128 0x513
	.ascii "ERROR_DS_CANT_CACHE_CLASS 8402L\0"
	.byte	0x1
	.uleb128 0x514
	.ascii "ERROR_DS_CANT_REMOVE_ATT_CACHE 8403L\0"
	.byte	0x1
	.uleb128 0x515
	.ascii "ERROR_DS_CANT_REMOVE_CLASS_CACHE 8404L\0"
	.byte	0x1
	.uleb128 0x516
	.ascii "ERROR_DS_CANT_RETRIEVE_DN 8405L\0"
	.byte	0x1
	.uleb128 0x517
	.ascii "ERROR_DS_MISSING_SUPREF 8406L\0"
	.byte	0x1
	.uleb128 0x518
	.ascii "ERROR_DS_CANT_RETRIEVE_INSTANCE 8407L\0"
	.byte	0x1
	.uleb128 0x519
	.ascii "ERROR_DS_CODE_INCONSISTENCY 8408L\0"
	.byte	0x1
	.uleb128 0x51a
	.ascii "ERROR_DS_DATABASE_ERROR 8409L\0"
	.byte	0x1
	.uleb128 0x51b
	.ascii "ERROR_DS_GOVERNSID_MISSING 8410L\0"
	.byte	0x1
	.uleb128 0x51c
	.ascii "ERROR_DS_MISSING_EXPECTED_ATT 8411L\0"
	.byte	0x1
	.uleb128 0x51d
	.ascii "ERROR_DS_NCNAME_MISSING_CR_REF 8412L\0"
	.byte	0x1
	.uleb128 0x51e
	.ascii "ERROR_DS_SECURITY_CHECKING_ERROR 8413L\0"
	.byte	0x1
	.uleb128 0x51f
	.ascii "ERROR_DS_SCHEMA_NOT_LOADED 8414L\0"
	.byte	0x1
	.uleb128 0x520
	.ascii "ERROR_DS_SCHEMA_ALLOC_FAILED 8415L\0"
	.byte	0x1
	.uleb128 0x521
	.ascii "ERROR_DS_ATT_SCHEMA_REQ_SYNTAX 8416L\0"
	.byte	0x1
	.uleb128 0x522
	.ascii "ERROR_DS_GCVERIFY_ERROR 8417L\0"
	.byte	0x1
	.uleb128 0x523
	.ascii "ERROR_DS_DRA_SCHEMA_MISMATCH 8418L\0"
	.byte	0x1
	.uleb128 0x524
	.ascii "ERROR_DS_CANT_FIND_DSA_OBJ 8419L\0"
	.byte	0x1
	.uleb128 0x525
	.ascii "ERROR_DS_CANT_FIND_EXPECTED_NC 8420L\0"
	.byte	0x1
	.uleb128 0x526
	.ascii "ERROR_DS_CANT_FIND_NC_IN_CACHE 8421L\0"
	.byte	0x1
	.uleb128 0x527
	.ascii "ERROR_DS_CANT_RETRIEVE_CHILD 8422L\0"
	.byte	0x1
	.uleb128 0x528
	.ascii "ERROR_DS_SECURITY_ILLEGAL_MODIFY 8423L\0"
	.byte	0x1
	.uleb128 0x529
	.ascii "ERROR_DS_CANT_REPLACE_HIDDEN_REC 8424L\0"
	.byte	0x1
	.uleb128 0x52a
	.ascii "ERROR_DS_BAD_HIERARCHY_FILE 8425L\0"
	.byte	0x1
	.uleb128 0x52b
	.ascii "ERROR_DS_BUILD_HIERARCHY_TABLE_FAILED 8426L\0"
	.byte	0x1
	.uleb128 0x52c
	.ascii "ERROR_DS_CONFIG_PARAM_MISSING 8427L\0"
	.byte	0x1
	.uleb128 0x52d
	.ascii "ERROR_DS_COUNTING_AB_INDICES_FAILED 8428L\0"
	.byte	0x1
	.uleb128 0x52e
	.ascii "ERROR_DS_HIERARCHY_TABLE_MALLOC_FAILED 8429L\0"
	.byte	0x1
	.uleb128 0x52f
	.ascii "ERROR_DS_INTERNAL_FAILURE 8430L\0"
	.byte	0x1
	.uleb128 0x530
	.ascii "ERROR_DS_UNKNOWN_ERROR 8431L\0"
	.byte	0x1
	.uleb128 0x531
	.ascii "ERROR_DS_ROOT_REQUIRES_CLASS_TOP 8432L\0"
	.byte	0x1
	.uleb128 0x532
	.ascii "ERROR_DS_REFUSING_FSMO_ROLES 8433L\0"
	.byte	0x1
	.uleb128 0x533
	.ascii "ERROR_DS_MISSING_FSMO_SETTINGS 8434L\0"
	.byte	0x1
	.uleb128 0x534
	.ascii "ERROR_DS_UNABLE_TO_SURRENDER_ROLES 8435L\0"
	.byte	0x1
	.uleb128 0x535
	.ascii "ERROR_DS_DRA_GENERIC 8436L\0"
	.byte	0x1
	.uleb128 0x536
	.ascii "ERROR_DS_DRA_INVALID_PARAMETER 8437L\0"
	.byte	0x1
	.uleb128 0x537
	.ascii "ERROR_DS_DRA_BUSY 8438L\0"
	.byte	0x1
	.uleb128 0x538
	.ascii "ERROR_DS_DRA_BAD_DN 8439L\0"
	.byte	0x1
	.uleb128 0x539
	.ascii "ERROR_DS_DRA_BAD_NC 8440L\0"
	.byte	0x1
	.uleb128 0x53a
	.ascii "ERROR_DS_DRA_DN_EXISTS 8441L\0"
	.byte	0x1
	.uleb128 0x53b
	.ascii "ERROR_DS_DRA_INTERNAL_ERROR 8442L\0"
	.byte	0x1
	.uleb128 0x53c
	.ascii "ERROR_DS_DRA_INCONSISTENT_DIT 8443L\0"
	.byte	0x1
	.uleb128 0x53d
	.ascii "ERROR_DS_DRA_CONNECTION_FAILED 8444L\0"
	.byte	0x1
	.uleb128 0x53e
	.ascii "ERROR_DS_DRA_BAD_INSTANCE_TYPE 8445L\0"
	.byte	0x1
	.uleb128 0x53f
	.ascii "ERROR_DS_DRA_OUT_OF_MEM 8446L\0"
	.byte	0x1
	.uleb128 0x540
	.ascii "ERROR_DS_DRA_MAIL_PROBLEM 8447L\0"
	.byte	0x1
	.uleb128 0x541
	.ascii "ERROR_DS_DRA_REF_ALREADY_EXISTS 8448L\0"
	.byte	0x1
	.uleb128 0x542
	.ascii "ERROR_DS_DRA_REF_NOT_FOUND 8449L\0"
	.byte	0x1
	.uleb128 0x543
	.ascii "ERROR_DS_DRA_OBJ_IS_REP_SOURCE 8450L\0"
	.byte	0x1
	.uleb128 0x544
	.ascii "ERROR_DS_DRA_DB_ERROR 8451L\0"
	.byte	0x1
	.uleb128 0x545
	.ascii "ERROR_DS_DRA_NO_REPLICA 8452L\0"
	.byte	0x1
	.uleb128 0x546
	.ascii "ERROR_DS_DRA_ACCESS_DENIED 8453L\0"
	.byte	0x1
	.uleb128 0x547
	.ascii "ERROR_DS_DRA_NOT_SUPPORTED 8454L\0"
	.byte	0x1
	.uleb128 0x548
	.ascii "ERROR_DS_DRA_RPC_CANCELLED 8455L\0"
	.byte	0x1
	.uleb128 0x549
	.ascii "ERROR_DS_DRA_SOURCE_DISABLED 8456L\0"
	.byte	0x1
	.uleb128 0x54a
	.ascii "ERROR_DS_DRA_SINK_DISABLED 8457L\0"
	.byte	0x1
	.uleb128 0x54b
	.ascii "ERROR_DS_DRA_NAME_COLLISION 8458L\0"
	.byte	0x1
	.uleb128 0x54c
	.ascii "ERROR_DS_DRA_SOURCE_REINSTALLED 8459L\0"
	.byte	0x1
	.uleb128 0x54d
	.ascii "ERROR_DS_DRA_MISSING_PARENT 8460L\0"
	.byte	0x1
	.uleb128 0x54e
	.ascii "ERROR_DS_DRA_PREEMPTED 8461L\0"
	.byte	0x1
	.uleb128 0x54f
	.ascii "ERROR_DS_DRA_ABANDON_SYNC 8462L\0"
	.byte	0x1
	.uleb128 0x550
	.ascii "ERROR_DS_DRA_SHUTDOWN 8463L\0"
	.byte	0x1
	.uleb128 0x551
	.ascii "ERROR_DS_DRA_INCOMPATIBLE_PARTIAL_SET 8464L\0"
	.byte	0x1
	.uleb128 0x552
	.ascii "ERROR_DS_DRA_SOURCE_IS_PARTIAL_REPLICA 8465L\0"
	.byte	0x1
	.uleb128 0x553
	.ascii "ERROR_DS_DRA_EXTN_CONNECTION_FAILED 8466L\0"
	.byte	0x1
	.uleb128 0x554
	.ascii "ERROR_DS_INSTALL_SCHEMA_MISMATCH 8467L\0"
	.byte	0x1
	.uleb128 0x555
	.ascii "ERROR_DS_DUP_LINK_ID 8468L\0"
	.byte	0x1
	.uleb128 0x556
	.ascii "ERROR_DS_NAME_ERROR_RESOLVING 8469L\0"
	.byte	0x1
	.uleb128 0x557
	.ascii "ERROR_DS_NAME_ERROR_NOT_FOUND 8470L\0"
	.byte	0x1
	.uleb128 0x558
	.ascii "ERROR_DS_NAME_ERROR_NOT_UNIQUE 8471L\0"
	.byte	0x1
	.uleb128 0x559
	.ascii "ERROR_DS_NAME_ERROR_NO_MAPPING 8472L\0"
	.byte	0x1
	.uleb128 0x55a
	.ascii "ERROR_DS_NAME_ERROR_DOMAIN_ONLY 8473L\0"
	.byte	0x1
	.uleb128 0x55b
	.ascii "ERROR_DS_NAME_ERROR_NO_SYNTACTICAL_MAPPING 8474L\0"
	.byte	0x1
	.uleb128 0x55c
	.ascii "ERROR_DS_CONSTRUCTED_ATT_MOD 8475L\0"
	.byte	0x1
	.uleb128 0x55d
	.ascii "ERROR_DS_WRONG_OM_OBJ_CLASS 8476L\0"
	.byte	0x1
	.uleb128 0x55e
	.ascii "ERROR_DS_DRA_REPL_PENDING 8477L\0"
	.byte	0x1
	.uleb128 0x55f
	.ascii "ERROR_DS_DS_REQUIRED 8478L\0"
	.byte	0x1
	.uleb128 0x560
	.ascii "ERROR_DS_INVALID_LDAP_DISPLAY_NAME 8479L\0"
	.byte	0x1
	.uleb128 0x561
	.ascii "ERROR_DS_NON_BASE_SEARCH 8480L\0"
	.byte	0x1
	.uleb128 0x562
	.ascii "ERROR_DS_CANT_RETRIEVE_ATTS 8481L\0"
	.byte	0x1
	.uleb128 0x563
	.ascii "ERROR_DS_BACKLINK_WITHOUT_LINK 8482L\0"
	.byte	0x1
	.uleb128 0x564
	.ascii "ERROR_DS_EPOCH_MISMATCH 8483L\0"
	.byte	0x1
	.uleb128 0x565
	.ascii "ERROR_DS_SRC_NAME_MISMATCH 8484L\0"
	.byte	0x1
	.uleb128 0x566
	.ascii "ERROR_DS_SRC_AND_DST_NC_IDENTICAL 8485L\0"
	.byte	0x1
	.uleb128 0x567
	.ascii "ERROR_DS_DST_NC_MISMATCH 8486L\0"
	.byte	0x1
	.uleb128 0x568
	.ascii "ERROR_DS_NOT_AUTHORITIVE_FOR_DST_NC 8487L\0"
	.byte	0x1
	.uleb128 0x569
	.ascii "ERROR_DS_SRC_GUID_MISMATCH 8488L\0"
	.byte	0x1
	.uleb128 0x56a
	.ascii "ERROR_DS_CANT_MOVE_DELETED_OBJECT 8489L\0"
	.byte	0x1
	.uleb128 0x56b
	.ascii "ERROR_DS_PDC_OPERATION_IN_PROGRESS 8490L\0"
	.byte	0x1
	.uleb128 0x56c
	.ascii "ERROR_DS_CROSS_DOMAIN_CLEANUP_REQD 8491L\0"
	.byte	0x1
	.uleb128 0x56d
	.ascii "ERROR_DS_ILLEGAL_XDOM_MOVE_OPERATION 8492L\0"
	.byte	0x1
	.uleb128 0x56e
	.ascii "ERROR_DS_CANT_WITH_ACCT_GROUP_MEMBERSHPS 8493L\0"
	.byte	0x1
	.uleb128 0x56f
	.ascii "ERROR_DS_NC_MUST_HAVE_NC_PARENT 8494L\0"
	.byte	0x1
	.uleb128 0x570
	.ascii "ERROR_DS_CR_IMPOSSIBLE_TO_VALIDATE 8495L\0"
	.byte	0x1
	.uleb128 0x571
	.ascii "ERROR_DS_DST_DOMAIN_NOT_NATIVE 8496L\0"
	.byte	0x1
	.uleb128 0x572
	.ascii "ERROR_DS_MISSING_INFRASTRUCTURE_CONTAINER 8497L\0"
	.byte	0x1
	.uleb128 0x573
	.ascii "ERROR_DS_CANT_MOVE_ACCOUNT_GROUP 8498L\0"
	.byte	0x1
	.uleb128 0x574
	.ascii "ERROR_DS_CANT_MOVE_RESOURCE_GROUP 8499L\0"
	.byte	0x1
	.uleb128 0x575
	.ascii "ERROR_DS_INVALID_SEARCH_FLAG 8500L\0"
	.byte	0x1
	.uleb128 0x576
	.ascii "ERROR_DS_NO_TREE_DELETE_ABOVE_NC 8501L\0"
	.byte	0x1
	.uleb128 0x577
	.ascii "ERROR_DS_COULDNT_LOCK_TREE_FOR_DELETE 8502L\0"
	.byte	0x1
	.uleb128 0x578
	.ascii "ERROR_DS_COULDNT_IDENTIFY_OBJECTS_FOR_TREE_DELETE 8503L\0"
	.byte	0x1
	.uleb128 0x579
	.ascii "ERROR_DS_SAM_INIT_FAILURE 8504L\0"
	.byte	0x1
	.uleb128 0x57a
	.ascii "ERROR_DS_SENSITIVE_GROUP_VIOLATION 8505L\0"
	.byte	0x1
	.uleb128 0x57b
	.ascii "ERROR_DS_CANT_MOD_PRIMARYGROUPID 8506L\0"
	.byte	0x1
	.uleb128 0x57c
	.ascii "ERROR_DS_ILLEGAL_BASE_SCHEMA_MOD 8507L\0"
	.byte	0x1
	.uleb128 0x57d
	.ascii "ERROR_DS_NONSAFE_SCHEMA_CHANGE 8508L\0"
	.byte	0x1
	.uleb128 0x57e
	.ascii "ERROR_DS_SCHEMA_UPDATE_DISALLOWED 8509L\0"
	.byte	0x1
	.uleb128 0x57f
	.ascii "ERROR_DS_CANT_CREATE_UNDER_SCHEMA 8510L\0"
	.byte	0x1
	.uleb128 0x580
	.ascii "ERROR_DS_INSTALL_NO_SRC_SCH_VERSION 8511L\0"
	.byte	0x1
	.uleb128 0x581
	.ascii "ERROR_DS_INSTALL_NO_SCH_VERSION_IN_INIFILE 8512L\0"
	.byte	0x1
	.uleb128 0x582
	.ascii "ERROR_DS_INVALID_GROUP_TYPE 8513L\0"
	.byte	0x1
	.uleb128 0x583
	.ascii "ERROR_DS_NO_NEST_GLOBALGROUP_IN_MIXEDDOMAIN 8514L\0"
	.byte	0x1
	.uleb128 0x584
	.ascii "ERROR_DS_NO_NEST_LOCALGROUP_IN_MIXEDDOMAIN 8515L\0"
	.byte	0x1
	.uleb128 0x585
	.ascii "ERROR_DS_GLOBAL_CANT_HAVE_LOCAL_MEMBER 8516L\0"
	.byte	0x1
	.uleb128 0x586
	.ascii "ERROR_DS_GLOBAL_CANT_HAVE_UNIVERSAL_MEMBER 8517L\0"
	.byte	0x1
	.uleb128 0x587
	.ascii "ERROR_DS_UNIVERSAL_CANT_HAVE_LOCAL_MEMBER 8518L\0"
	.byte	0x1
	.uleb128 0x588
	.ascii "ERROR_DS_GLOBAL_CANT_HAVE_CROSSDOMAIN_MEMBER 8519L\0"
	.byte	0x1
	.uleb128 0x589
	.ascii "ERROR_DS_LOCAL_CANT_HAVE_CROSSDOMAIN_LOCAL_MEMBER 8520L\0"
	.byte	0x1
	.uleb128 0x58a
	.ascii "ERROR_DS_HAVE_PRIMARY_MEMBERS 8521L\0"
	.byte	0x1
	.uleb128 0x58b
	.ascii "ERROR_DS_STRING_SD_CONVERSION_FAILED 8522L\0"
	.byte	0x1
	.uleb128 0x58c
	.ascii "ERROR_DS_NAMING_MASTER_GC 8523L\0"
	.byte	0x1
	.uleb128 0x58d
	.ascii "ERROR_DS_DNS_LOOKUP_FAILURE 8524L\0"
	.byte	0x1
	.uleb128 0x58e
	.ascii "ERROR_DS_COULDNT_UPDATE_SPNS 8525L\0"
	.byte	0x1
	.uleb128 0x58f
	.ascii "ERROR_DS_CANT_RETRIEVE_SD 8526L\0"
	.byte	0x1
	.uleb128 0x590
	.ascii "ERROR_DS_KEY_NOT_UNIQUE 8527L\0"
	.byte	0x1
	.uleb128 0x591
	.ascii "ERROR_DS_WRONG_LINKED_ATT_SYNTAX 8528L\0"
	.byte	0x1
	.uleb128 0x592
	.ascii "ERROR_DS_SAM_NEED_BOOTKEY_PASSWORD 8529L\0"
	.byte	0x1
	.uleb128 0x593
	.ascii "ERROR_DS_SAM_NEED_BOOTKEY_FLOPPY 8530L\0"
	.byte	0x1
	.uleb128 0x594
	.ascii "ERROR_DS_CANT_START 8531L\0"
	.byte	0x1
	.uleb128 0x595
	.ascii "ERROR_DS_INIT_FAILURE 8532L\0"
	.byte	0x1
	.uleb128 0x596
	.ascii "ERROR_DS_NO_PKT_PRIVACY_ON_CONNECTION 8533L\0"
	.byte	0x1
	.uleb128 0x597
	.ascii "ERROR_DS_SOURCE_DOMAIN_IN_FOREST 8534L\0"
	.byte	0x1
	.uleb128 0x598
	.ascii "ERROR_DS_DESTINATION_DOMAIN_NOT_IN_FOREST 8535L\0"
	.byte	0x1
	.uleb128 0x599
	.ascii "ERROR_DS_DESTINATION_AUDITING_NOT_ENABLED 8536L\0"
	.byte	0x1
	.uleb128 0x59a
	.ascii "ERROR_DS_CANT_FIND_DC_FOR_SRC_DOMAIN 8537L\0"
	.byte	0x1
	.uleb128 0x59b
	.ascii "ERROR_DS_SRC_OBJ_NOT_GROUP_OR_USER 8538L\0"
	.byte	0x1
	.uleb128 0x59c
	.ascii "ERROR_DS_SRC_SID_EXISTS_IN_FOREST 8539L\0"
	.byte	0x1
	.uleb128 0x59d
	.ascii "ERROR_DS_SRC_AND_DST_OBJECT_CLASS_MISMATCH 8540L\0"
	.byte	0x1
	.uleb128 0x59e
	.ascii "ERROR_SAM_INIT_FAILURE 8541L\0"
	.byte	0x1
	.uleb128 0x59f
	.ascii "ERROR_DS_DRA_SCHEMA_INFO_SHIP 8542L\0"
	.byte	0x1
	.uleb128 0x5a0
	.ascii "ERROR_DS_DRA_SCHEMA_CONFLICT 8543L\0"
	.byte	0x1
	.uleb128 0x5a1
	.ascii "ERROR_DS_DRA_EARLIER_SCHEMA_CONFLICT 8544L\0"
	.byte	0x1
	.uleb128 0x5a2
	.ascii "ERROR_DS_DRA_OBJ_NC_MISMATCH 8545L\0"
	.byte	0x1
	.uleb128 0x5a3
	.ascii "ERROR_DS_NC_STILL_HAS_DSAS 8546L\0"
	.byte	0x1
	.uleb128 0x5a4
	.ascii "ERROR_DS_GC_REQUIRED 8547L\0"
	.byte	0x1
	.uleb128 0x5a5
	.ascii "ERROR_DS_LOCAL_MEMBER_OF_LOCAL_ONLY 8548L\0"
	.byte	0x1
	.uleb128 0x5a6
	.ascii "ERROR_DS_NO_FPO_IN_UNIVERSAL_GROUPS 8549L\0"
	.byte	0x1
	.uleb128 0x5a7
	.ascii "ERROR_DS_CANT_ADD_TO_GC 8550L\0"
	.byte	0x1
	.uleb128 0x5a8
	.ascii "ERROR_DS_NO_CHECKPOINT_WITH_PDC 8551L\0"
	.byte	0x1
	.uleb128 0x5a9
	.ascii "ERROR_DS_SOURCE_AUDITING_NOT_ENABLED 8552L\0"
	.byte	0x1
	.uleb128 0x5aa
	.ascii "ERROR_DS_CANT_CREATE_IN_NONDOMAIN_NC 8553L\0"
	.byte	0x1
	.uleb128 0x5ab
	.ascii "ERROR_DS_INVALID_NAME_FOR_SPN 8554L\0"
	.byte	0x1
	.uleb128 0x5ac
	.ascii "ERROR_DS_FILTER_USES_CONTRUCTED_ATTRS 8555L\0"
	.byte	0x1
	.uleb128 0x5ad
	.ascii "ERROR_DS_UNICODEPWD_NOT_IN_QUOTES 8556L\0"
	.byte	0x1
	.uleb128 0x5ae
	.ascii "ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED 8557L\0"
	.byte	0x1
	.uleb128 0x5af
	.ascii "ERROR_DS_MUST_BE_RUN_ON_DST_DC 8558L\0"
	.byte	0x1
	.uleb128 0x5b0
	.ascii "ERROR_DS_SRC_DC_MUST_BE_SP4_OR_GREATER 8559L\0"
	.byte	0x1
	.uleb128 0x5b1
	.ascii "ERROR_DS_CANT_TREE_DELETE_CRITICAL_OBJ 8560L\0"
	.byte	0x1
	.uleb128 0x5b2
	.ascii "ERROR_DS_INIT_FAILURE_CONSOLE 8561L\0"
	.byte	0x1
	.uleb128 0x5b3
	.ascii "ERROR_DS_SAM_INIT_FAILURE_CONSOLE 8562L\0"
	.byte	0x1
	.uleb128 0x5b4
	.ascii "ERROR_DS_FOREST_VERSION_TOO_HIGH 8563L\0"
	.byte	0x1
	.uleb128 0x5b5
	.ascii "ERROR_DS_DOMAIN_VERSION_TOO_HIGH 8564L\0"
	.byte	0x1
	.uleb128 0x5b6
	.ascii "ERROR_DS_FOREST_VERSION_TOO_LOW 8565L\0"
	.byte	0x1
	.uleb128 0x5b7
	.ascii "ERROR_DS_DOMAIN_VERSION_TOO_LOW 8566L\0"
	.byte	0x1
	.uleb128 0x5b8
	.ascii "ERROR_DS_INCOMPATIBLE_VERSION 8567L\0"
	.byte	0x1
	.uleb128 0x5b9
	.ascii "ERROR_DS_LOW_DSA_VERSION 8568L\0"
	.byte	0x1
	.uleb128 0x5ba
	.ascii "ERROR_DS_NO_BEHAVIOR_VERSION_IN_MIXEDDOMAIN 8569L\0"
	.byte	0x1
	.uleb128 0x5bb
	.ascii "ERROR_DS_NOT_SUPPORTED_SORT_ORDER 8570L\0"
	.byte	0x1
	.uleb128 0x5bc
	.ascii "ERROR_DS_NAME_NOT_UNIQUE 8571L\0"
	.byte	0x1
	.uleb128 0x5bd
	.ascii "ERROR_DS_MACHINE_ACCOUNT_CREATED_PRENT4 8572L\0"
	.byte	0x1
	.uleb128 0x5be
	.ascii "ERROR_DS_OUT_OF_VERSION_STORE 8573L\0"
	.byte	0x1
	.uleb128 0x5bf
	.ascii "ERROR_DS_INCOMPATIBLE_CONTROLS_USED 8574L\0"
	.byte	0x1
	.uleb128 0x5c0
	.ascii "ERROR_DS_NO_REF_DOMAIN 8575L\0"
	.byte	0x1
	.uleb128 0x5c1
	.ascii "ERROR_DS_RESERVED_LINK_ID 8576L\0"
	.byte	0x1
	.uleb128 0x5c2
	.ascii "ERROR_DS_LINK_ID_NOT_AVAILABLE 8577L\0"
	.byte	0x1
	.uleb128 0x5c3
	.ascii "ERROR_DS_AG_CANT_HAVE_UNIVERSAL_MEMBER 8578L\0"
	.byte	0x1
	.uleb128 0x5c4
	.ascii "ERROR_DS_MODIFYDN_DISALLOWED_BY_INSTANCE_TYPE 8579L\0"
	.byte	0x1
	.uleb128 0x5c5
	.ascii "ERROR_DS_NO_OBJECT_MOVE_IN_SCHEMA_NC 8580L\0"
	.byte	0x1
	.uleb128 0x5c6
	.ascii "ERROR_DS_MODIFYDN_DISALLOWED_BY_FLAG 8581L\0"
	.byte	0x1
	.uleb128 0x5c7
	.ascii "ERROR_DS_MODIFYDN_WRONG_GRANDPARENT 8582L\0"
	.byte	0x1
	.uleb128 0x5c8
	.ascii "ERROR_DS_NAME_ERROR_TRUST_REFERRAL 8583L\0"
	.byte	0x1
	.uleb128 0x5c9
	.ascii "ERROR_NOT_SUPPORTED_ON_STANDARD_SERVER 8584L\0"
	.byte	0x1
	.uleb128 0x5ca
	.ascii "ERROR_DS_CANT_ACCESS_REMOTE_PART_OF_AD 8585L\0"
	.byte	0x1
	.uleb128 0x5cb
	.ascii "ERROR_DS_CR_IMPOSSIBLE_TO_VALIDATE_V2 8586L\0"
	.byte	0x1
	.uleb128 0x5cc
	.ascii "ERROR_DS_THREAD_LIMIT_EXCEEDED 8587L\0"
	.byte	0x1
	.uleb128 0x5cd
	.ascii "ERROR_DS_NOT_CLOSEST 8588L\0"
	.byte	0x1
	.uleb128 0x5ce
	.ascii "ERROR_DS_CANT_DERIVE_SPN_WITHOUT_SERVER_REF 8589L\0"
	.byte	0x1
	.uleb128 0x5cf
	.ascii "ERROR_DS_SINGLE_USER_MODE_FAILED 8590L\0"
	.byte	0x1
	.uleb128 0x5d0
	.ascii "ERROR_DS_NTDSCRIPT_SYNTAX_ERROR 8591L\0"
	.byte	0x1
	.uleb128 0x5d1
	.ascii "ERROR_DS_NTDSCRIPT_PROCESS_ERROR 8592L\0"
	.byte	0x1
	.uleb128 0x5d2
	.ascii "ERROR_DS_DIFFERENT_REPL_EPOCHS 8593L\0"
	.byte	0x1
	.uleb128 0x5d3
	.ascii "ERROR_DS_DRS_EXTENSIONS_CHANGED 8594L\0"
	.byte	0x1
	.uleb128 0x5d4
	.ascii "ERROR_DS_REPLICA_SET_CHANGE_NOT_ALLOWED_ON_DISABLED_CR 8595L\0"
	.byte	0x1
	.uleb128 0x5d5
	.ascii "ERROR_DS_NO_MSDS_INTID 8596L\0"
	.byte	0x1
	.uleb128 0x5d6
	.ascii "ERROR_DS_DUP_MSDS_INTID 8597L\0"
	.byte	0x1
	.uleb128 0x5d7
	.ascii "ERROR_DS_EXISTS_IN_RDNATTID 8598L\0"
	.byte	0x1
	.uleb128 0x5d8
	.ascii "ERROR_DS_AUTHORIZATION_FAILED 8599L\0"
	.byte	0x1
	.uleb128 0x5d9
	.ascii "ERROR_DS_INVALID_SCRIPT 8600L\0"
	.byte	0x1
	.uleb128 0x5da
	.ascii "ERROR_DS_REMOTE_CROSSREF_OP_FAILED 8601L\0"
	.byte	0x1
	.uleb128 0x5db
	.ascii "ERROR_DS_CROSS_REF_BUSY 8602L\0"
	.byte	0x1
	.uleb128 0x5dc
	.ascii "ERROR_DS_CANT_DERIVE_SPN_FOR_DELETED_DOMAIN 8603L\0"
	.byte	0x1
	.uleb128 0x5dd
	.ascii "ERROR_DS_CANT_DEMOTE_WITH_WRITEABLE_NC 8604L\0"
	.byte	0x1
	.uleb128 0x5de
	.ascii "ERROR_DS_DUPLICATE_ID_FOUND 8605L\0"
	.byte	0x1
	.uleb128 0x5df
	.ascii "ERROR_DS_INSUFFICIENT_ATTR_TO_CREATE_OBJECT 8606L\0"
	.byte	0x1
	.uleb128 0x5e0
	.ascii "ERROR_DS_GROUP_CONVERSION_ERROR 8607L\0"
	.byte	0x1
	.uleb128 0x5e1
	.ascii "ERROR_DS_CANT_MOVE_APP_BASIC_GROUP 8608L\0"
	.byte	0x1
	.uleb128 0x5e2
	.ascii "ERROR_DS_CANT_MOVE_APP_QUERY_GROUP 8609L\0"
	.byte	0x1
	.uleb128 0x5e3
	.ascii "ERROR_DS_ROLE_NOT_VERIFIED 8610L\0"
	.byte	0x1
	.uleb128 0x5e4
	.ascii "ERROR_DS_WKO_CONTAINER_CANNOT_BE_SPECIAL 8611L\0"
	.byte	0x1
	.uleb128 0x5e5
	.ascii "ERROR_DS_DOMAIN_RENAME_IN_PROGRESS 8612L\0"
	.byte	0x1
	.uleb128 0x5e6
	.ascii "ERROR_DS_EXISTING_AD_CHILD_NC 8613L\0"
	.byte	0x1
	.uleb128 0x5e7
	.ascii "DNS_ERROR_RCODE_FORMAT_ERROR 9001L\0"
	.byte	0x1
	.uleb128 0x5e8
	.ascii "DNS_ERROR_RCODE_SERVER_FAILURE 9002L\0"
	.byte	0x1
	.uleb128 0x5e9
	.ascii "DNS_ERROR_RCODE_NAME_ERROR 9003L\0"
	.byte	0x1
	.uleb128 0x5ea
	.ascii "DNS_ERROR_RCODE_NOT_IMPLEMENTED 9004L\0"
	.byte	0x1
	.uleb128 0x5eb
	.ascii "DNS_ERROR_RCODE_REFUSED 9005L\0"
	.byte	0x1
	.uleb128 0x5ec
	.ascii "DNS_ERROR_RCODE_YXDOMAIN 9006L\0"
	.byte	0x1
	.uleb128 0x5ed
	.ascii "DNS_ERROR_RCODE_YXRRSET 9007L\0"
	.byte	0x1
	.uleb128 0x5ee
	.ascii "DNS_ERROR_RCODE_NXRRSET 9008L\0"
	.byte	0x1
	.uleb128 0x5ef
	.ascii "DNS_ERROR_RCODE_NOTAUTH 9009L\0"
	.byte	0x1
	.uleb128 0x5f0
	.ascii "DNS_ERROR_RCODE_NOTZONE 9010L\0"
	.byte	0x1
	.uleb128 0x5f1
	.ascii "DNS_ERROR_RCODE_BADSIG 9016L\0"
	.byte	0x1
	.uleb128 0x5f2
	.ascii "DNS_ERROR_RCODE_BADKEY 9017L\0"
	.byte	0x1
	.uleb128 0x5f3
	.ascii "DNS_ERROR_RCODE_BADTIME 9018L\0"
	.byte	0x1
	.uleb128 0x5f4
	.ascii "DNS_INFO_NO_RECORDS 9501L\0"
	.byte	0x1
	.uleb128 0x5f5
	.ascii "DNS_ERROR_BAD_PACKET 9502L\0"
	.byte	0x1
	.uleb128 0x5f6
	.ascii "DNS_ERROR_NO_PACKET 9503L\0"
	.byte	0x1
	.uleb128 0x5f7
	.ascii "DNS_ERROR_RCODE 9504L\0"
	.byte	0x1
	.uleb128 0x5f8
	.ascii "DNS_ERROR_UNSECURE_PACKET 9505L\0"
	.byte	0x1
	.uleb128 0x5f9
	.ascii "DNS_ERROR_INVALID_TYPE 9551L\0"
	.byte	0x1
	.uleb128 0x5fa
	.ascii "DNS_ERROR_INVALID_IP_ADDRESS 9552L\0"
	.byte	0x1
	.uleb128 0x5fb
	.ascii "DNS_ERROR_INVALID_PROPERTY 9553L\0"
	.byte	0x1
	.uleb128 0x5fc
	.ascii "DNS_ERROR_TRY_AGAIN_LATER 9554L\0"
	.byte	0x1
	.uleb128 0x5fd
	.ascii "DNS_ERROR_NOT_UNIQUE 9555L\0"
	.byte	0x1
	.uleb128 0x5fe
	.ascii "DNS_ERROR_NON_RFC_NAME 9556L\0"
	.byte	0x1
	.uleb128 0x5ff
	.ascii "DNS_STATUS_FQDN 9557L\0"
	.byte	0x1
	.uleb128 0x600
	.ascii "DNS_STATUS_DOTTED_NAME 9558L\0"
	.byte	0x1
	.uleb128 0x601
	.ascii "DNS_STATUS_SINGLE_PART_NAME 9559L\0"
	.byte	0x1
	.uleb128 0x602
	.ascii "DNS_ERROR_INVALID_NAME_CHAR 9560L\0"
	.byte	0x1
	.uleb128 0x603
	.ascii "DNS_ERROR_NUMERIC_NAME 9561L\0"
	.byte	0x1
	.uleb128 0x604
	.ascii "DNS_ERROR_NOT_ALLOWED_ON_ROOT_SERVER 9562L\0"
	.byte	0x1
	.uleb128 0x605
	.ascii "DNS_ERROR_NOT_ALLOWED_UNDER_DELEGATION 9563L\0"
	.byte	0x1
	.uleb128 0x606
	.ascii "DNS_ERROR_CANNOT_FIND_ROOT_HINTS 9564L\0"
	.byte	0x1
	.uleb128 0x607
	.ascii "DNS_ERROR_INCONSISTENT_ROOT_HINTS 9565L\0"
	.byte	0x1
	.uleb128 0x608
	.ascii "DNS_ERROR_ZONE_DOES_NOT_EXIST 9601L\0"
	.byte	0x1
	.uleb128 0x609
	.ascii "DNS_ERROR_NO_ZONE_INFO 9602L\0"
	.byte	0x1
	.uleb128 0x60a
	.ascii "DNS_ERROR_INVALID_ZONE_OPERATION 9603L\0"
	.byte	0x1
	.uleb128 0x60b
	.ascii "DNS_ERROR_ZONE_CONFIGURATION_ERROR 9604L\0"
	.byte	0x1
	.uleb128 0x60c
	.ascii "DNS_ERROR_ZONE_HAS_NO_SOA_RECORD 9605L\0"
	.byte	0x1
	.uleb128 0x60d
	.ascii "DNS_ERROR_ZONE_HAS_NO_NS_RECORDS 9606L\0"
	.byte	0x1
	.uleb128 0x60e
	.ascii "DNS_ERROR_ZONE_LOCKED 9607L\0"
	.byte	0x1
	.uleb128 0x60f
	.ascii "DNS_ERROR_ZONE_CREATION_FAILED 9608L\0"
	.byte	0x1
	.uleb128 0x610
	.ascii "DNS_ERROR_ZONE_ALREADY_EXISTS 9609L\0"
	.byte	0x1
	.uleb128 0x611
	.ascii "DNS_ERROR_AUTOZONE_ALREADY_EXISTS 9610L\0"
	.byte	0x1
	.uleb128 0x612
	.ascii "DNS_ERROR_INVALID_ZONE_TYPE 9611L\0"
	.byte	0x1
	.uleb128 0x613
	.ascii "DNS_ERROR_SECONDARY_REQUIRES_MASTER_IP 9612L\0"
	.byte	0x1
	.uleb128 0x614
	.ascii "DNS_ERROR_ZONE_NOT_SECONDARY 9613L\0"
	.byte	0x1
	.uleb128 0x615
	.ascii "DNS_ERROR_NEED_SECONDARY_ADDRESSES 9614L\0"
	.byte	0x1
	.uleb128 0x616
	.ascii "DNS_ERROR_WINS_INIT_FAILED 9615L\0"
	.byte	0x1
	.uleb128 0x617
	.ascii "DNS_ERROR_NEED_WINS_SERVERS 9616L\0"
	.byte	0x1
	.uleb128 0x618
	.ascii "DNS_ERROR_NBSTAT_INIT_FAILED 9617L\0"
	.byte	0x1
	.uleb128 0x619
	.ascii "DNS_ERROR_SOA_DELETE_INVALID 9618L\0"
	.byte	0x1
	.uleb128 0x61a
	.ascii "DNS_ERROR_FORWARDER_ALREADY_EXISTS 9619L\0"
	.byte	0x1
	.uleb128 0x61b
	.ascii "DNS_ERROR_ZONE_REQUIRES_MASTER_IP 9620L\0"
	.byte	0x1
	.uleb128 0x61c
	.ascii "DNS_ERROR_ZONE_IS_SHUTDOWN 9621L\0"
	.byte	0x1
	.uleb128 0x61d
	.ascii "DNS_ERROR_PRIMARY_REQUIRES_DATAFILE 9651L\0"
	.byte	0x1
	.uleb128 0x61e
	.ascii "DNS_ERROR_INVALID_DATAFILE_NAME 9652L\0"
	.byte	0x1
	.uleb128 0x61f
	.ascii "DNS_ERROR_DATAFILE_OPEN_FAILURE 9653L\0"
	.byte	0x1
	.uleb128 0x620
	.ascii "DNS_ERROR_FILE_WRITEBACK_FAILED 9654L\0"
	.byte	0x1
	.uleb128 0x621
	.ascii "DNS_ERROR_DATAFILE_PARSING 9655L\0"
	.byte	0x1
	.uleb128 0x622
	.ascii "DNS_ERROR_RECORD_DOES_NOT_EXIST 9701L\0"
	.byte	0x1
	.uleb128 0x623
	.ascii "DNS_ERROR_RECORD_FORMAT 9702L\0"
	.byte	0x1
	.uleb128 0x624
	.ascii "DNS_ERROR_NODE_CREATION_FAILED 9703L\0"
	.byte	0x1
	.uleb128 0x625
	.ascii "DNS_ERROR_UNKNOWN_RECORD_TYPE 9704L\0"
	.byte	0x1
	.uleb128 0x626
	.ascii "DNS_ERROR_RECORD_TIMED_OUT 9705L\0"
	.byte	0x1
	.uleb128 0x627
	.ascii "DNS_ERROR_NAME_NOT_IN_ZONE 9706L\0"
	.byte	0x1
	.uleb128 0x628
	.ascii "DNS_ERROR_CNAME_LOOP 9707L\0"
	.byte	0x1
	.uleb128 0x629
	.ascii "DNS_ERROR_NODE_IS_CNAME 9708L\0"
	.byte	0x1
	.uleb128 0x62a
	.ascii "DNS_ERROR_CNAME_COLLISION 9709L\0"
	.byte	0x1
	.uleb128 0x62b
	.ascii "DNS_ERROR_RECORD_ONLY_AT_ZONE_ROOT 9710L\0"
	.byte	0x1
	.uleb128 0x62c
	.ascii "DNS_ERROR_RECORD_ALREADY_EXISTS 9711L\0"
	.byte	0x1
	.uleb128 0x62d
	.ascii "DNS_ERROR_SECONDARY_DATA 9712L\0"
	.byte	0x1
	.uleb128 0x62e
	.ascii "DNS_ERROR_NO_CREATE_CACHE_DATA 9713L\0"
	.byte	0x1
	.uleb128 0x62f
	.ascii "DNS_ERROR_NAME_DOES_NOT_EXIST 9714L\0"
	.byte	0x1
	.uleb128 0x630
	.ascii "DNS_WARNING_PTR_CREATE_FAILED 9715L\0"
	.byte	0x1
	.uleb128 0x631
	.ascii "DNS_WARNING_DOMAIN_UNDELETED 9716L\0"
	.byte	0x1
	.uleb128 0x632
	.ascii "DNS_ERROR_DS_UNAVAILABLE 9717L\0"
	.byte	0x1
	.uleb128 0x633
	.ascii "DNS_ERROR_DS_ZONE_ALREADY_EXISTS 9718L\0"
	.byte	0x1
	.uleb128 0x634
	.ascii "DNS_ERROR_NO_BOOTFILE_IF_DS_ZONE 9719L\0"
	.byte	0x1
	.uleb128 0x635
	.ascii "DNS_INFO_AXFR_COMPLETE 9751L\0"
	.byte	0x1
	.uleb128 0x636
	.ascii "DNS_ERROR_AXFR 9752L\0"
	.byte	0x1
	.uleb128 0x637
	.ascii "DNS_INFO_ADDED_LOCAL_WINS 9753L\0"
	.byte	0x1
	.uleb128 0x638
	.ascii "DNS_STATUS_CONTINUE_NEEDED 9801L\0"
	.byte	0x1
	.uleb128 0x639
	.ascii "DNS_ERROR_NO_TCPIP 9851L\0"
	.byte	0x1
	.uleb128 0x63a
	.ascii "DNS_ERROR_NO_DNS_SERVERS 9852L\0"
	.byte	0x1
	.uleb128 0x63b
	.ascii "DNS_ERROR_DP_DOES_NOT_EXIST 9901L\0"
	.byte	0x1
	.uleb128 0x63c
	.ascii "DNS_ERROR_DP_ALREADY_EXISTS 9902L\0"
	.byte	0x1
	.uleb128 0x63d
	.ascii "DNS_ERROR_DP_NOT_ENLISTED 9903L\0"
	.byte	0x1
	.uleb128 0x63e
	.ascii "DNS_ERROR_DP_ALREADY_ENLISTED 9904L\0"
	.byte	0x1
	.uleb128 0x63f
	.ascii "DNS_ERROR_DP_NOT_AVAILABLE 9905L\0"
	.byte	0x2
	.uleb128 0x64b
	.ascii "__WINSOCK_V1_ERRORS__\0"
	.byte	0x1
	.uleb128 0x653
	.ascii "__WINSOCK_V1_ERRORS__ (defined _WINERROR_H || defined _WINSOCK_H)\0"
	.byte	0x1
	.uleb128 0x65b
	.ascii "__WSA_ERRNO(N) (WSABASEERR + (N))\0"
	.byte	0x1
	.uleb128 0x65c
	.ascii "WSABASEERR 10000L\0"
	.byte	0x1
	.uleb128 0x65e
	.ascii "WSAEINTR __WSA_ERRNO( 4 )\0"
	.byte	0x1
	.uleb128 0x65f
	.ascii "WSAEBADF __WSA_ERRNO( 9 )\0"
	.byte	0x1
	.uleb128 0x660
	.ascii "WSAEACCES __WSA_ERRNO( 13 )\0"
	.byte	0x1
	.uleb128 0x661
	.ascii "WSAEFAULT __WSA_ERRNO( 14 )\0"
	.byte	0x1
	.uleb128 0x662
	.ascii "WSAEINVAL __WSA_ERRNO( 22 )\0"
	.byte	0x1
	.uleb128 0x663
	.ascii "WSAEMFILE __WSA_ERRNO( 24 )\0"
	.byte	0x1
	.uleb128 0x664
	.ascii "WSAEWOULDBLOCK __WSA_ERRNO( 35 )\0"
	.byte	0x1
	.uleb128 0x665
	.ascii "WSAEINPROGRESS __WSA_ERRNO( 36 )\0"
	.byte	0x1
	.uleb128 0x666
	.ascii "WSAEALREADY __WSA_ERRNO( 37 )\0"
	.byte	0x1
	.uleb128 0x667
	.ascii "WSAENOTSOCK __WSA_ERRNO( 38 )\0"
	.byte	0x1
	.uleb128 0x668
	.ascii "WSAEDESTADDRREQ __WSA_ERRNO( 39 )\0"
	.byte	0x1
	.uleb128 0x669
	.ascii "WSAEMSGSIZE __WSA_ERRNO( 40 )\0"
	.byte	0x1
	.uleb128 0x66a
	.ascii "WSAEPROTOTYPE __WSA_ERRNO( 41 )\0"
	.byte	0x1
	.uleb128 0x66b
	.ascii "WSAENOPROTOOPT __WSA_ERRNO( 42 )\0"
	.byte	0x1
	.uleb128 0x66c
	.ascii "WSAEPROTONOSUPPORT __WSA_ERRNO( 43 )\0"
	.byte	0x1
	.uleb128 0x66d
	.ascii "WSAESOCKTNOSUPPORT __WSA_ERRNO( 44 )\0"
	.byte	0x1
	.uleb128 0x66e
	.ascii "WSAEOPNOTSUPP __WSA_ERRNO( 45 )\0"
	.byte	0x1
	.uleb128 0x66f
	.ascii "WSAEPFNOSUPPORT __WSA_ERRNO( 46 )\0"
	.byte	0x1
	.uleb128 0x670
	.ascii "WSAEAFNOSUPPORT __WSA_ERRNO( 47 )\0"
	.byte	0x1
	.uleb128 0x671
	.ascii "WSAEADDRINUSE __WSA_ERRNO( 48 )\0"
	.byte	0x1
	.uleb128 0x672
	.ascii "WSAEADDRNOTAVAIL __WSA_ERRNO( 49 )\0"
	.byte	0x1
	.uleb128 0x673
	.ascii "WSAENETDOWN __WSA_ERRNO( 50 )\0"
	.byte	0x1
	.uleb128 0x674
	.ascii "WSAENETUNREACH __WSA_ERRNO( 51 )\0"
	.byte	0x1
	.uleb128 0x675
	.ascii "WSAENETRESET __WSA_ERRNO( 52 )\0"
	.byte	0x1
	.uleb128 0x676
	.ascii "WSAECONNABORTED __WSA_ERRNO( 53 )\0"
	.byte	0x1
	.uleb128 0x677
	.ascii "WSAECONNRESET __WSA_ERRNO( 54 )\0"
	.byte	0x1
	.uleb128 0x678
	.ascii "WSAENOBUFS __WSA_ERRNO( 55 )\0"
	.byte	0x1
	.uleb128 0x679
	.ascii "WSAEISCONN __WSA_ERRNO( 56 )\0"
	.byte	0x1
	.uleb128 0x67a
	.ascii "WSAENOTCONN __WSA_ERRNO( 57 )\0"
	.byte	0x1
	.uleb128 0x67b
	.ascii "WSAESHUTDOWN __WSA_ERRNO( 58 )\0"
	.byte	0x1
	.uleb128 0x67c
	.ascii "WSAETOOMANYREFS __WSA_ERRNO( 59 )\0"
	.byte	0x1
	.uleb128 0x67d
	.ascii "WSAETIMEDOUT __WSA_ERRNO( 60 )\0"
	.byte	0x1
	.uleb128 0x67e
	.ascii "WSAECONNREFUSED __WSA_ERRNO( 61 )\0"
	.byte	0x1
	.uleb128 0x67f
	.ascii "WSAELOOP __WSA_ERRNO( 62 )\0"
	.byte	0x1
	.uleb128 0x680
	.ascii "WSAENAMETOOLONG __WSA_ERRNO( 63 )\0"
	.byte	0x1
	.uleb128 0x681
	.ascii "WSAEHOSTDOWN __WSA_ERRNO( 64 )\0"
	.byte	0x1
	.uleb128 0x682
	.ascii "WSAEHOSTUNREACH __WSA_ERRNO( 65 )\0"
	.byte	0x1
	.uleb128 0x683
	.ascii "WSAENOTEMPTY __WSA_ERRNO( 66 )\0"
	.byte	0x1
	.uleb128 0x684
	.ascii "WSAEPROCLIM __WSA_ERRNO( 67 )\0"
	.byte	0x1
	.uleb128 0x685
	.ascii "WSAEUSERS __WSA_ERRNO( 68 )\0"
	.byte	0x1
	.uleb128 0x686
	.ascii "WSAEDQUOT __WSA_ERRNO( 69 )\0"
	.byte	0x1
	.uleb128 0x687
	.ascii "WSAESTALE __WSA_ERRNO( 70 )\0"
	.byte	0x1
	.uleb128 0x688
	.ascii "WSAEREMOTE __WSA_ERRNO( 71 )\0"
	.byte	0x1
	.uleb128 0x689
	.ascii "WSASYSNOTREADY __WSA_ERRNO( 91 )\0"
	.byte	0x1
	.uleb128 0x68a
	.ascii "WSAVERNOTSUPPORTED __WSA_ERRNO( 92 )\0"
	.byte	0x1
	.uleb128 0x68b
	.ascii "WSANOTINITIALISED __WSA_ERRNO( 93 )\0"
	.byte	0x1
	.uleb128 0x68c
	.ascii "WSAEDISCON __WSA_ERRNO( 101 )\0"
	.byte	0x2
	.uleb128 0x68f
	.ascii "__WINSOCK_V2_ERRORS__\0"
	.byte	0x1
	.uleb128 0x698
	.ascii "__WINSOCK_V2_ERRORS__ (defined _WINERROR_H || defined _WINSOCK2_H)\0"
	.byte	0x1
	.uleb128 0x6a0
	.ascii "WSAENOMORE __WSA_ERRNO( 102 )\0"
	.byte	0x1
	.uleb128 0x6a1
	.ascii "WSAECANCELLED __WSA_ERRNO( 103 )\0"
	.byte	0x1
	.uleb128 0x6a2
	.ascii "WSAEINVALIDPROCTABLE __WSA_ERRNO( 104 )\0"
	.byte	0x1
	.uleb128 0x6a3
	.ascii "WSAEINVALIDPROVIDER __WSA_ERRNO( 105 )\0"
	.byte	0x1
	.uleb128 0x6a4
	.ascii "WSAEPROVIDERFAILEDINIT __WSA_ERRNO( 106 )\0"
	.byte	0x1
	.uleb128 0x6a5
	.ascii "WSASYSCALLFAILURE __WSA_ERRNO( 107 )\0"
	.byte	0x1
	.uleb128 0x6a6
	.ascii "WSASERVICE_NOT_FOUND __WSA_ERRNO( 108 )\0"
	.byte	0x1
	.uleb128 0x6a7
	.ascii "WSATYPE_NOT_FOUND __WSA_ERRNO( 109 )\0"
	.byte	0x1
	.uleb128 0x6a8
	.ascii "WSA_E_NO_MORE __WSA_ERRNO( 110 )\0"
	.byte	0x1
	.uleb128 0x6a9
	.ascii "WSA_E_CANCELLED __WSA_ERRNO( 111 )\0"
	.byte	0x1
	.uleb128 0x6aa
	.ascii "WSAEREFUSED __WSA_ERRNO( 112 )\0"
	.byte	0x1
	.uleb128 0x6b1
	.ascii "WSAHOST_NOT_FOUND __WSA_ERRNO( 1001 )\0"
	.byte	0x1
	.uleb128 0x6b2
	.ascii "WSATRY_AGAIN __WSA_ERRNO( 1002 )\0"
	.byte	0x1
	.uleb128 0x6b3
	.ascii "WSANO_RECOVERY __WSA_ERRNO( 1003 )\0"
	.byte	0x1
	.uleb128 0x6b4
	.ascii "WSANO_DATA __WSA_ERRNO( 1004 )\0"
	.byte	0x1
	.uleb128 0x6bc
	.ascii "WSA_QOS_RECEIVERS __WSA_ERRNO( 1005 )\0"
	.byte	0x1
	.uleb128 0x6bd
	.ascii "WSA_QOS_SENDERS __WSA_ERRNO( 1006 )\0"
	.byte	0x1
	.uleb128 0x6be
	.ascii "WSA_QOS_NO_SENDERS __WSA_ERRNO( 1007 )\0"
	.byte	0x1
	.uleb128 0x6bf
	.ascii "WSA_QOS_NO_RECEIVERS __WSA_ERRNO( 1008 )\0"
	.byte	0x1
	.uleb128 0x6c0
	.ascii "WSA_QOS_REQUEST_CONFIRMED __WSA_ERRNO( 1009 )\0"
	.byte	0x1
	.uleb128 0x6c1
	.ascii "WSA_QOS_ADMISSION_FAILURE __WSA_ERRNO( 1010 )\0"
	.byte	0x1
	.uleb128 0x6c2
	.ascii "WSA_QOS_POLICY_FAILURE __WSA_ERRNO( 1011 )\0"
	.byte	0x1
	.uleb128 0x6c3
	.ascii "WSA_QOS_BAD_STYLE __WSA_ERRNO( 1012 )\0"
	.byte	0x1
	.uleb128 0x6c4
	.ascii "WSA_QOS_BAD_OBJECT __WSA_ERRNO( 1013 )\0"
	.byte	0x1
	.uleb128 0x6c5
	.ascii "WSA_QOS_TRAFFIC_CTRL_ERROR __WSA_ERRNO( 1014 )\0"
	.byte	0x1
	.uleb128 0x6c6
	.ascii "WSA_QOS_GENERIC_ERROR __WSA_ERRNO( 1015 )\0"
	.byte	0x1
	.uleb128 0x6c7
	.ascii "WSA_QOS_ESERVICETYPE __WSA_ERRNO( 1016 )\0"
	.byte	0x1
	.uleb128 0x6c8
	.ascii "WSA_QOS_EFLOWSPEC __WSA_ERRNO( 1017 )\0"
	.byte	0x1
	.uleb128 0x6c9
	.ascii "WSA_QOS_EPROVSPECBUF __WSA_ERRNO( 1018 )\0"
	.byte	0x1
	.uleb128 0x6ca
	.ascii "WSA_QOS_EFILTERSTYLE __WSA_ERRNO( 1019 )\0"
	.byte	0x1
	.uleb128 0x6cb
	.ascii "WSA_QOS_EFILTERTYPE __WSA_ERRNO( 1020 )\0"
	.byte	0x1
	.uleb128 0x6cc
	.ascii "WSA_QOS_EFILTERCOUNT __WSA_ERRNO( 1021 )\0"
	.byte	0x1
	.uleb128 0x6cd
	.ascii "WSA_QOS_EOBJLENGTH __WSA_ERRNO( 1022 )\0"
	.byte	0x1
	.uleb128 0x6ce
	.ascii "WSA_QOS_EFLOWCOUNT __WSA_ERRNO( 1023 )\0"
	.byte	0x1
	.uleb128 0x6cf
	.ascii "WSA_QOS_EUNKOWNPSOBJ __WSA_ERRNO( 1024 )\0"
	.byte	0x1
	.uleb128 0x6d0
	.ascii "WSA_QOS_EPOLICYOBJ __WSA_ERRNO( 1025 )\0"
	.byte	0x1
	.uleb128 0x6d1
	.ascii "WSA_QOS_EFLOWDESC __WSA_ERRNO( 1026 )\0"
	.byte	0x1
	.uleb128 0x6d2
	.ascii "WSA_QOS_EPSFLOWSPEC __WSA_ERRNO( 1027 )\0"
	.byte	0x1
	.uleb128 0x6d3
	.ascii "WSA_QOS_EPSFILTERSPEC __WSA_ERRNO( 1028 )\0"
	.byte	0x1
	.uleb128 0x6d4
	.ascii "WSA_QOS_ESDMODEOBJ __WSA_ERRNO( 1029 )\0"
	.byte	0x1
	.uleb128 0x6d5
	.ascii "WSA_QOS_ESHAPERATEOBJ __WSA_ERRNO( 1030 )\0"
	.byte	0x1
	.uleb128 0x6d6
	.ascii "WSA_QOS_RESERVED_PETYPE __WSA_ERRNO( 1031 )\0"
	.byte	0x2
	.uleb128 0x6dd
	.ascii "__WINSOCK_V1_ERRORS__\0"
	.byte	0x2
	.uleb128 0x6de
	.ascii "__WINSOCK_V2_ERRORS__\0"
	.byte	0x1
	.uleb128 0x6e4
	.ascii "ERROR_IPSEC_QM_POLICY_EXISTS 13000L\0"
	.byte	0x1
	.uleb128 0x6e5
	.ascii "ERROR_IPSEC_QM_POLICY_NOT_FOUND 13001L\0"
	.byte	0x1
	.uleb128 0x6e6
	.ascii "ERROR_IPSEC_QM_POLICY_IN_USE 13002L\0"
	.byte	0x1
	.uleb128 0x6e7
	.ascii "ERROR_IPSEC_MM_POLICY_EXISTS 13003L\0"
	.byte	0x1
	.uleb128 0x6e8
	.ascii "ERROR_IPSEC_MM_POLICY_NOT_FOUND 13004L\0"
	.byte	0x1
	.uleb128 0x6e9
	.ascii "ERROR_IPSEC_MM_POLICY_IN_USE 13005L\0"
	.byte	0x1
	.uleb128 0x6ea
	.ascii "ERROR_IPSEC_MM_FILTER_EXISTS 13006L\0"
	.byte	0x1
	.uleb128 0x6eb
	.ascii "ERROR_IPSEC_MM_FILTER_NOT_FOUND 13007L\0"
	.byte	0x1
	.uleb128 0x6ec
	.ascii "ERROR_IPSEC_TRANSPORT_FILTER_EXISTS 13008L\0"
	.byte	0x1
	.uleb128 0x6ed
	.ascii "ERROR_IPSEC_TRANSPORT_FILTER_NOT_FOUND 13009L\0"
	.byte	0x1
	.uleb128 0x6ee
	.ascii "ERROR_IPSEC_MM_AUTH_EXISTS 13010L\0"
	.byte	0x1
	.uleb128 0x6ef
	.ascii "ERROR_IPSEC_MM_AUTH_NOT_FOUND 13011L\0"
	.byte	0x1
	.uleb128 0x6f0
	.ascii "ERROR_IPSEC_MM_AUTH_IN_USE 13012L\0"
	.byte	0x1
	.uleb128 0x6f1
	.ascii "ERROR_IPSEC_DEFAULT_MM_POLICY_NOT_FOUND 13013L\0"
	.byte	0x1
	.uleb128 0x6f2
	.ascii "ERROR_IPSEC_DEFAULT_MM_AUTH_NOT_FOUND 13014L\0"
	.byte	0x1
	.uleb128 0x6f3
	.ascii "ERROR_IPSEC_DEFAULT_QM_POLICY_NOT_FOUND 13015L\0"
	.byte	0x1
	.uleb128 0x6f4
	.ascii "ERROR_IPSEC_TUNNEL_FILTER_EXISTS 13016L\0"
	.byte	0x1
	.uleb128 0x6f5
	.ascii "ERROR_IPSEC_TUNNEL_FILTER_NOT_FOUND 13017L\0"
	.byte	0x1
	.uleb128 0x6f6
	.ascii "ERROR_IPSEC_MM_FILTER_PENDING_DELETION 13018L\0"
	.byte	0x1
	.uleb128 0x6f7
	.ascii "ERROR_IPSEC_TRANSPORT_FILTER_PENDING_DELETION 13019L\0"
	.byte	0x1
	.uleb128 0x6f8
	.ascii "ERROR_IPSEC_TUNNEL_FILTER_PENDING_DELETION 13020L\0"
	.byte	0x1
	.uleb128 0x6f9
	.ascii "ERROR_IPSEC_MM_POLICY_PENDING_DELETION 13021L\0"
	.byte	0x1
	.uleb128 0x6fa
	.ascii "ERROR_IPSEC_MM_AUTH_PENDING_DELETION 13022L\0"
	.byte	0x1
	.uleb128 0x6fb
	.ascii "ERROR_IPSEC_QM_POLICY_PENDING_DELETION 13023L\0"
	.byte	0x1
	.uleb128 0x6fc
	.ascii "WARNING_IPSEC_MM_POLICY_PRUNED 13024L\0"
	.byte	0x1
	.uleb128 0x6fd
	.ascii "WARNING_IPSEC_QM_POLICY_PRUNED 13025L\0"
	.byte	0x1
	.uleb128 0x6fe
	.ascii "ERROR_IPSEC_IKE_AUTH_FAIL 13801L\0"
	.byte	0x1
	.uleb128 0x6ff
	.ascii "ERROR_IPSEC_IKE_ATTRIB_FAIL 13802L\0"
	.byte	0x1
	.uleb128 0x700
	.ascii "ERROR_IPSEC_IKE_NEGOTIATION_PENDING 13803L\0"
	.byte	0x1
	.uleb128 0x701
	.ascii "ERROR_IPSEC_IKE_GENERAL_PROCESSING_ERROR 13804L\0"
	.byte	0x1
	.uleb128 0x702
	.ascii "ERROR_IPSEC_IKE_TIMED_OUT 13805L\0"
	.byte	0x1
	.uleb128 0x703
	.ascii "ERROR_IPSEC_IKE_NO_CERT 13806L\0"
	.byte	0x1
	.uleb128 0x704
	.ascii "ERROR_IPSEC_IKE_SA_DELETED 13807L\0"
	.byte	0x1
	.uleb128 0x705
	.ascii "ERROR_IPSEC_IKE_SA_REAPED 13808L\0"
	.byte	0x1
	.uleb128 0x706
	.ascii "ERROR_IPSEC_IKE_MM_ACQUIRE_DROP 13809L\0"
	.byte	0x1
	.uleb128 0x707
	.ascii "ERROR_IPSEC_IKE_QM_ACQUIRE_DROP 13810L\0"
	.byte	0x1
	.uleb128 0x708
	.ascii "ERROR_IPSEC_IKE_QUEUE_DROP_MM 13811L\0"
	.byte	0x1
	.uleb128 0x709
	.ascii "ERROR_IPSEC_IKE_QUEUE_DROP_NO_MM 13812L\0"
	.byte	0x1
	.uleb128 0x70a
	.ascii "ERROR_IPSEC_IKE_DROP_NO_RESPONSE 13813L\0"
	.byte	0x1
	.uleb128 0x70b
	.ascii "ERROR_IPSEC_IKE_MM_DELAY_DROP 13814L\0"
	.byte	0x1
	.uleb128 0x70c
	.ascii "ERROR_IPSEC_IKE_QM_DELAY_DROP 13815L\0"
	.byte	0x1
	.uleb128 0x70d
	.ascii "ERROR_IPSEC_IKE_ERROR 13816L\0"
	.byte	0x1
	.uleb128 0x70e
	.ascii "ERROR_IPSEC_IKE_CRL_FAILED 13817L\0"
	.byte	0x1
	.uleb128 0x70f
	.ascii "ERROR_IPSEC_IKE_INVALID_KEY_USAGE 13818L\0"
	.byte	0x1
	.uleb128 0x710
	.ascii "ERROR_IPSEC_IKE_INVALID_CERT_TYPE 13819L\0"
	.byte	0x1
	.uleb128 0x711
	.ascii "ERROR_IPSEC_IKE_NO_PRIVATE_KEY 13820L\0"
	.byte	0x1
	.uleb128 0x712
	.ascii "ERROR_IPSEC_IKE_DH_FAIL 13822L\0"
	.byte	0x1
	.uleb128 0x713
	.ascii "ERROR_IPSEC_IKE_INVALID_HEADER 13824L\0"
	.byte	0x1
	.uleb128 0x714
	.ascii "ERROR_IPSEC_IKE_NO_POLICY 13825L\0"
	.byte	0x1
	.uleb128 0x715
	.ascii "ERROR_IPSEC_IKE_INVALID_SIGNATURE 13826L\0"
	.byte	0x1
	.uleb128 0x716
	.ascii "ERROR_IPSEC_IKE_KERBEROS_ERROR 13827L\0"
	.byte	0x1
	.uleb128 0x717
	.ascii "ERROR_IPSEC_IKE_NO_PUBLIC_KEY 13828L\0"
	.byte	0x1
	.uleb128 0x718
	.ascii "ERROR_IPSEC_IKE_PROCESS_ERR 13829L\0"
	.byte	0x1
	.uleb128 0x719
	.ascii "ERROR_IPSEC_IKE_PROCESS_ERR_SA 13830L\0"
	.byte	0x1
	.uleb128 0x71a
	.ascii "ERROR_IPSEC_IKE_PROCESS_ERR_PROP 13831L\0"
	.byte	0x1
	.uleb128 0x71b
	.ascii "ERROR_IPSEC_IKE_PROCESS_ERR_TRANS 13832L\0"
	.byte	0x1
	.uleb128 0x71c
	.ascii "ERROR_IPSEC_IKE_PROCESS_ERR_KE 13833L\0"
	.byte	0x1
	.uleb128 0x71d
	.ascii "ERROR_IPSEC_IKE_PROCESS_ERR_ID 13834L\0"
	.byte	0x1
	.uleb128 0x71e
	.ascii "ERROR_IPSEC_IKE_PROCESS_ERR_CERT 13835L\0"
	.byte	0x1
	.uleb128 0x71f
	.ascii "ERROR_IPSEC_IKE_PROCESS_ERR_CERT_REQ 13836L\0"
	.byte	0x1
	.uleb128 0x720
	.ascii "ERROR_IPSEC_IKE_PROCESS_ERR_HASH 13837L\0"
	.byte	0x1
	.uleb128 0x721
	.ascii "ERROR_IPSEC_IKE_PROCESS_ERR_SIG 13838L\0"
	.byte	0x1
	.uleb128 0x722
	.ascii "ERROR_IPSEC_IKE_PROCESS_ERR_NONCE 13839L\0"
	.byte	0x1
	.uleb128 0x723
	.ascii "ERROR_IPSEC_IKE_PROCESS_ERR_NOTIFY 13840L\0"
	.byte	0x1
	.uleb128 0x724
	.ascii "ERROR_IPSEC_IKE_PROCESS_ERR_DELETE 13841L\0"
	.byte	0x1
	.uleb128 0x725
	.ascii "ERROR_IPSEC_IKE_PROCESS_ERR_VENDOR 13842L\0"
	.byte	0x1
	.uleb128 0x726
	.ascii "ERROR_IPSEC_IKE_INVALID_PAYLOAD 13843L\0"
	.byte	0x1
	.uleb128 0x727
	.ascii "ERROR_IPSEC_IKE_LOAD_SOFT_SA 13844L\0"
	.byte	0x1
	.uleb128 0x728
	.ascii "ERROR_IPSEC_IKE_SOFT_SA_TORN_DOWN 13845L\0"
	.byte	0x1
	.uleb128 0x729
	.ascii "ERROR_IPSEC_IKE_INVALID_COOKIE 13846L\0"
	.byte	0x1
	.uleb128 0x72a
	.ascii "ERROR_IPSEC_IKE_NO_PEER_CERT 13847L\0"
	.byte	0x1
	.uleb128 0x72b
	.ascii "ERROR_IPSEC_IKE_PEER_CRL_FAILED 13848L\0"
	.byte	0x1
	.uleb128 0x72c
	.ascii "ERROR_IPSEC_IKE_POLICY_CHANGE 13849L\0"
	.byte	0x1
	.uleb128 0x72d
	.ascii "ERROR_IPSEC_IKE_NO_MM_POLICY 13850L\0"
	.byte	0x1
	.uleb128 0x72e
	.ascii "ERROR_IPSEC_IKE_NOTCBPRIV 13851L\0"
	.byte	0x1
	.uleb128 0x72f
	.ascii "ERROR_IPSEC_IKE_SECLOADFAIL 13852L\0"
	.byte	0x1
	.uleb128 0x730
	.ascii "ERROR_IPSEC_IKE_FAILSSPINIT 13853L\0"
	.byte	0x1
	.uleb128 0x731
	.ascii "ERROR_IPSEC_IKE_FAILQUERYSSP 13854L\0"
	.byte	0x1
	.uleb128 0x732
	.ascii "ERROR_IPSEC_IKE_SRVACQFAIL 13855L\0"
	.byte	0x1
	.uleb128 0x733
	.ascii "ERROR_IPSEC_IKE_SRVQUERYCRED 13856L\0"
	.byte	0x1
	.uleb128 0x734
	.ascii "ERROR_IPSEC_IKE_GETSPIFAIL 13857L\0"
	.byte	0x1
	.uleb128 0x735
	.ascii "ERROR_IPSEC_IKE_INVALID_FILTER 13858L\0"
	.byte	0x1
	.uleb128 0x736
	.ascii "ERROR_IPSEC_IKE_OUT_OF_MEMORY 13859L\0"
	.byte	0x1
	.uleb128 0x737
	.ascii "ERROR_IPSEC_IKE_ADD_UPDATE_KEY_FAILED 13860L\0"
	.byte	0x1
	.uleb128 0x738
	.ascii "ERROR_IPSEC_IKE_INVALID_POLICY 13861L\0"
	.byte	0x1
	.uleb128 0x739
	.ascii "ERROR_IPSEC_IKE_UNKNOWN_DOI 13862L\0"
	.byte	0x1
	.uleb128 0x73a
	.ascii "ERROR_IPSEC_IKE_INVALID_SITUATION 13863L\0"
	.byte	0x1
	.uleb128 0x73b
	.ascii "ERROR_IPSEC_IKE_DH_FAILURE 13864L\0"
	.byte	0x1
	.uleb128 0x73c
	.ascii "ERROR_IPSEC_IKE_INVALID_GROUP 13865L\0"
	.byte	0x1
	.uleb128 0x73d
	.ascii "ERROR_IPSEC_IKE_ENCRYPT 13866L\0"
	.byte	0x1
	.uleb128 0x73e
	.ascii "ERROR_IPSEC_IKE_DECRYPT 13867L\0"
	.byte	0x1
	.uleb128 0x73f
	.ascii "ERROR_IPSEC_IKE_POLICY_MATCH 13868L\0"
	.byte	0x1
	.uleb128 0x740
	.ascii "ERROR_IPSEC_IKE_UNSUPPORTED_ID 13869L\0"
	.byte	0x1
	.uleb128 0x741
	.ascii "ERROR_IPSEC_IKE_INVALID_HASH 13870L\0"
	.byte	0x1
	.uleb128 0x742
	.ascii "ERROR_IPSEC_IKE_INVALID_HASH_ALG 13871L\0"
	.byte	0x1
	.uleb128 0x743
	.ascii "ERROR_IPSEC_IKE_INVALID_HASH_SIZE 13872L\0"
	.byte	0x1
	.uleb128 0x744
	.ascii "ERROR_IPSEC_IKE_INVALID_ENCRYPT_ALG 13873L\0"
	.byte	0x1
	.uleb128 0x745
	.ascii "ERROR_IPSEC_IKE_INVALID_AUTH_ALG 13874L\0"
	.byte	0x1
	.uleb128 0x746
	.ascii "ERROR_IPSEC_IKE_INVALID_SIG 13875L\0"
	.byte	0x1
	.uleb128 0x747
	.ascii "ERROR_IPSEC_IKE_LOAD_FAILED 13876L\0"
	.byte	0x1
	.uleb128 0x748
	.ascii "ERROR_IPSEC_IKE_RPC_DELETE 13877L\0"
	.byte	0x1
	.uleb128 0x749
	.ascii "ERROR_IPSEC_IKE_BENIGN_REINIT 13878L\0"
	.byte	0x1
	.uleb128 0x74a
	.ascii "ERROR_IPSEC_IKE_INVALID_RESPONDER_LIFETIME_NOTIFY 13879L\0"
	.byte	0x1
	.uleb128 0x74b
	.ascii "ERROR_IPSEC_IKE_INVALID_CERT_KEYLEN 13881L\0"
	.byte	0x1
	.uleb128 0x74c
	.ascii "ERROR_IPSEC_IKE_MM_LIMIT 13882L\0"
	.byte	0x1
	.uleb128 0x74d
	.ascii "ERROR_IPSEC_IKE_NEGOTIATION_DISABLED 13883L\0"
	.byte	0x1
	.uleb128 0x74e
	.ascii "ERROR_IPSEC_IKE_NEG_STATUS_END 13884L\0"
	.byte	0x1
	.uleb128 0x750
	.ascii "ERROR_SXS_SECTION_NOT_FOUND 14000L\0"
	.byte	0x1
	.uleb128 0x751
	.ascii "ERROR_SXS_CANT_GEN_ACTCTX 14001L\0"
	.byte	0x1
	.uleb128 0x752
	.ascii "ERROR_SXS_INVALID_ACTCTXDATA_FORMAT 14002L\0"
	.byte	0x1
	.uleb128 0x753
	.ascii "ERROR_SXS_ASSEMBLY_NOT_FOUND 14003L\0"
	.byte	0x1
	.uleb128 0x754
	.ascii "ERROR_SXS_MANIFEST_FORMAT_ERROR 14004L\0"
	.byte	0x1
	.uleb128 0x755
	.ascii "ERROR_SXS_MANIFEST_PARSE_ERROR 14005L\0"
	.byte	0x1
	.uleb128 0x756
	.ascii "ERROR_SXS_ACTIVATION_CONTEXT_DISABLED 14006L\0"
	.byte	0x1
	.uleb128 0x757
	.ascii "ERROR_SXS_KEY_NOT_FOUND 14007L\0"
	.byte	0x1
	.uleb128 0x758
	.ascii "ERROR_SXS_VERSION_CONFLICT 14008L\0"
	.byte	0x1
	.uleb128 0x759
	.ascii "ERROR_SXS_WRONG_SECTION_TYPE 14009L\0"
	.byte	0x1
	.uleb128 0x75a
	.ascii "ERROR_SXS_THREAD_QUERIES_DISABLED 14010L\0"
	.byte	0x1
	.uleb128 0x75b
	.ascii "ERROR_SXS_PROCESS_DEFAULT_ALREADY_SET 14011L\0"
	.byte	0x1
	.uleb128 0x75c
	.ascii "ERROR_SXS_UNKNOWN_ENCODING_GROUP 14012L\0"
	.byte	0x1
	.uleb128 0x75d
	.ascii "ERROR_SXS_UNKNOWN_ENCODING 14013L\0"
	.byte	0x1
	.uleb128 0x75e
	.ascii "ERROR_SXS_INVALID_XML_NAMESPACE_URI 14014L\0"
	.byte	0x1
	.uleb128 0x75f
	.ascii "ERROR_SXS_ROOT_MANIFEST_DEPENDENCY_NOT_INSTALLED 14015L\0"
	.byte	0x1
	.uleb128 0x760
	.ascii "ERROR_SXS_LEAF_MANIFEST_DEPENDENCY_NOT_INSTALLED 14016L\0"
	.byte	0x1
	.uleb128 0x761
	.ascii "ERROR_SXS_INVALID_ASSEMBLY_IDENTITY_ATTRIBUTE 14017L\0"
	.byte	0x1
	.uleb128 0x762
	.ascii "ERROR_SXS_MANIFEST_MISSING_REQUIRED_DEFAULT_NAMESPACE 14018L\0"
	.byte	0x1
	.uleb128 0x763
	.ascii "ERROR_SXS_MANIFEST_INVALID_REQUIRED_DEFAULT_NAMESPACE 14019L\0"
	.byte	0x1
	.uleb128 0x764
	.ascii "ERROR_SXS_PRIVATE_MANIFEST_CROSS_PATH_WITH_REPARSE_POINT 14020L\0"
	.byte	0x1
	.uleb128 0x765
	.ascii "ERROR_SXS_DUPLICATE_DLL_NAME 14021L\0"
	.byte	0x1
	.uleb128 0x766
	.ascii "ERROR_SXS_DUPLICATE_WINDOWCLASS_NAME 14022L\0"
	.byte	0x1
	.uleb128 0x767
	.ascii "ERROR_SXS_DUPLICATE_CLSID 14023L\0"
	.byte	0x1
	.uleb128 0x768
	.ascii "ERROR_SXS_DUPLICATE_IID 14024L\0"
	.byte	0x1
	.uleb128 0x769
	.ascii "ERROR_SXS_DUPLICATE_TLBID 14025L\0"
	.byte	0x1
	.uleb128 0x76a
	.ascii "ERROR_SXS_DUPLICATE_PROGID 14026L\0"
	.byte	0x1
	.uleb128 0x76b
	.ascii "ERROR_SXS_DUPLICATE_ASSEMBLY_NAME 14027L\0"
	.byte	0x1
	.uleb128 0x76c
	.ascii "ERROR_SXS_FILE_HASH_MISMATCH 14028L\0"
	.byte	0x1
	.uleb128 0x76d
	.ascii "ERROR_SXS_POLICY_PARSE_ERROR 14029L\0"
	.byte	0x1
	.uleb128 0x76e
	.ascii "ERROR_SXS_XML_E_MISSINGQUOTE 14030L\0"
	.byte	0x1
	.uleb128 0x76f
	.ascii "ERROR_SXS_XML_E_COMMENTSYNTAX 14031L\0"
	.byte	0x1
	.uleb128 0x770
	.ascii "ERROR_SXS_XML_E_BADSTARTNAMECHAR 14032L\0"
	.byte	0x1
	.uleb128 0x771
	.ascii "ERROR_SXS_XML_E_BADNAMECHAR 14033L\0"
	.byte	0x1
	.uleb128 0x772
	.ascii "ERROR_SXS_XML_E_BADCHARINSTRING 14034L\0"
	.byte	0x1
	.uleb128 0x773
	.ascii "ERROR_SXS_XML_E_XMLDECLSYNTAX 14035L\0"
	.byte	0x1
	.uleb128 0x774
	.ascii "ERROR_SXS_XML_E_BADCHARDATA 14036L\0"
	.byte	0x1
	.uleb128 0x775
	.ascii "ERROR_SXS_XML_E_MISSINGWHITESPACE 14037L\0"
	.byte	0x1
	.uleb128 0x776
	.ascii "ERROR_SXS_XML_E_EXPECTINGTAGEND 14038L\0"
	.byte	0x1
	.uleb128 0x777
	.ascii "ERROR_SXS_XML_E_MISSINGSEMICOLON 14039L\0"
	.byte	0x1
	.uleb128 0x778
	.ascii "ERROR_SXS_XML_E_UNBALANCEDPAREN 14040L\0"
	.byte	0x1
	.uleb128 0x779
	.ascii "ERROR_SXS_XML_E_INTERNALERROR 14041L\0"
	.byte	0x1
	.uleb128 0x77a
	.ascii "ERROR_SXS_XML_E_UNEXPECTED_WHITESPACE 14042L\0"
	.byte	0x1
	.uleb128 0x77b
	.ascii "ERROR_SXS_XML_E_INCOMPLETE_ENCODING 14043L\0"
	.byte	0x1
	.uleb128 0x77c
	.ascii "ERROR_SXS_XML_E_MISSING_PAREN 14044L\0"
	.byte	0x1
	.uleb128 0x77d
	.ascii "ERROR_SXS_XML_E_EXPECTINGCLOSEQUOTE 14045L\0"
	.byte	0x1
	.uleb128 0x77e
	.ascii "ERROR_SXS_XML_E_MULTIPLE_COLONS 14046L\0"
	.byte	0x1
	.uleb128 0x77f
	.ascii "ERROR_SXS_XML_E_INVALID_DECIMAL 14047L\0"
	.byte	0x1
	.uleb128 0x780
	.ascii "ERROR_SXS_XML_E_INVALID_HEXIDECIMAL 14048L\0"
	.byte	0x1
	.uleb128 0x781
	.ascii "ERROR_SXS_XML_E_INVALID_UNICODE 14049L\0"
	.byte	0x1
	.uleb128 0x782
	.ascii "ERROR_SXS_XML_E_WHITESPACEORQUESTIONMARK 14050L\0"
	.byte	0x1
	.uleb128 0x783
	.ascii "ERROR_SXS_XML_E_UNEXPECTEDENDTAG 14051L\0"
	.byte	0x1
	.uleb128 0x784
	.ascii "ERROR_SXS_XML_E_UNCLOSEDTAG 14052L\0"
	.byte	0x1
	.uleb128 0x785
	.ascii "ERROR_SXS_XML_E_DUPLICATEATTRIBUTE 14053L\0"
	.byte	0x1
	.uleb128 0x786
	.ascii "ERROR_SXS_XML_E_MULTIPLEROOTS 14054L\0"
	.byte	0x1
	.uleb128 0x787
	.ascii "ERROR_SXS_XML_E_INVALIDATROOTLEVEL 14055L\0"
	.byte	0x1
	.uleb128 0x788
	.ascii "ERROR_SXS_XML_E_BADXMLDECL 14056L\0"
	.byte	0x1
	.uleb128 0x789
	.ascii "ERROR_SXS_XML_E_MISSINGROOT 14057L\0"
	.byte	0x1
	.uleb128 0x78a
	.ascii "ERROR_SXS_XML_E_UNEXPECTEDEOF 14058L\0"
	.byte	0x1
	.uleb128 0x78b
	.ascii "ERROR_SXS_XML_E_BADPEREFINSUBSET 14059L\0"
	.byte	0x1
	.uleb128 0x78c
	.ascii "ERROR_SXS_XML_E_UNCLOSEDSTARTTAG 14060L\0"
	.byte	0x1
	.uleb128 0x78d
	.ascii "ERROR_SXS_XML_E_UNCLOSEDENDTAG 14061L\0"
	.byte	0x1
	.uleb128 0x78e
	.ascii "ERROR_SXS_XML_E_UNCLOSEDSTRING 14062L\0"
	.byte	0x1
	.uleb128 0x78f
	.ascii "ERROR_SXS_XML_E_UNCLOSEDCOMMENT 14063L\0"
	.byte	0x1
	.uleb128 0x790
	.ascii "ERROR_SXS_XML_E_UNCLOSEDDECL 14064L\0"
	.byte	0x1
	.uleb128 0x791
	.ascii "ERROR_SXS_XML_E_UNCLOSEDCDATA 14065L\0"
	.byte	0x1
	.uleb128 0x792
	.ascii "ERROR_SXS_XML_E_RESERVEDNAMESPACE 14066L\0"
	.byte	0x1
	.uleb128 0x793
	.ascii "ERROR_SXS_XML_E_INVALIDENCODING 14067L\0"
	.byte	0x1
	.uleb128 0x794
	.ascii "ERROR_SXS_XML_E_INVALIDSWITCH 14068L\0"
	.byte	0x1
	.uleb128 0x795
	.ascii "ERROR_SXS_XML_E_BADXMLCASE 14069L\0"
	.byte	0x1
	.uleb128 0x796
	.ascii "ERROR_SXS_XML_E_INVALID_STANDALONE 14070L\0"
	.byte	0x1
	.uleb128 0x797
	.ascii "ERROR_SXS_XML_E_UNEXPECTED_STANDALONE 14071L\0"
	.byte	0x1
	.uleb128 0x798
	.ascii "ERROR_SXS_XML_E_INVALID_VERSION 14072L\0"
	.byte	0x1
	.uleb128 0x799
	.ascii "ERROR_SXS_XML_E_MISSINGEQUALS 14073L\0"
	.byte	0x1
	.uleb128 0x79a
	.ascii "ERROR_SXS_PROTECTION_RECOVERY_FAILED 14074L\0"
	.byte	0x1
	.uleb128 0x79b
	.ascii "ERROR_SXS_PROTECTION_PUBLIC_KEY_TOO_SHORT 14075L\0"
	.byte	0x1
	.uleb128 0x79c
	.ascii "ERROR_SXS_PROTECTION_CATALOG_NOT_VALID 14076L\0"
	.byte	0x1
	.uleb128 0x79d
	.ascii "ERROR_SXS_UNTRANSLATABLE_HRESULT 14077L\0"
	.byte	0x1
	.uleb128 0x79e
	.ascii "ERROR_SXS_PROTECTION_CATALOG_FILE_MISSING 14078L\0"
	.byte	0x1
	.uleb128 0x79f
	.ascii "ERROR_SXS_MISSING_ASSEMBLY_IDENTITY_ATTRIBUTE 14079L\0"
	.byte	0x1
	.uleb128 0x7a0
	.ascii "ERROR_SXS_INVALID_ASSEMBLY_IDENTITY_ATTRIBUTE_NAME 14080L\0"
	.byte	0x1
	.uleb128 0x7a3
	.ascii "CRYPT_E_NOT_FOUND _HRESULT_TYPEDEF_(0x80092004L)\0"
	.byte	0x1
	.uleb128 0x7a4
	.ascii "CRYPT_E_EXISTS _HRESULT_TYPEDEF_(0x80092005L)\0"
	.byte	0x1
	.uleb128 0x7a5
	.ascii "CRYPT_E_NO_PROVIDER _HRESULT_TYPEDEF_(0x80092006L)\0"
	.byte	0x1
	.uleb128 0x7a6
	.ascii "CRYPT_E_SELF_SIGNED _HRESULT_TYPEDEF_(0x80092007L)\0"
	.byte	0x1
	.uleb128 0x7a7
	.ascii "CRYPT_E_DELETED_PREV _HRESULT_TYPEDEF_(0x80092008L)\0"
	.byte	0x1
	.uleb128 0x7a8
	.ascii "CRYPT_E_NO_MATCH _HRESULT_TYPEDEF_(0x80092009L)\0"
	.byte	0x1
	.uleb128 0x7a9
	.ascii "CRYPT_E_UNEXPECTED_MSG_TYPE _HRESULT_TYPEDEF_(0x8009200AL)\0"
	.byte	0x1
	.uleb128 0x7aa
	.ascii "CRYPT_E_NO_KEY_PROPERTY _HRESULT_TYPEDEF_(0x8009200BL)\0"
	.byte	0x1
	.uleb128 0x7ab
	.ascii "CRYPT_E_NO_DECRYPT_CERT _HRESULT_TYPEDEF_(0x8009200CL)\0"
	.byte	0x1
	.uleb128 0x7ac
	.ascii "CRYPT_E_BAD_MSG _HRESULT_TYPEDEF_(0x8009200DL)\0"
	.byte	0x1
	.uleb128 0x7ad
	.ascii "CRYPT_E_NO_SIGNER _HRESULT_TYPEDEF_(0x8009200EL)\0"
	.byte	0x1
	.uleb128 0x7ae
	.ascii "CRYPT_E_PENDING_CLOSE _HRESULT_TYPEDEF_(0x8009200FL)\0"
	.byte	0x1
	.uleb128 0x7af
	.ascii "CRYPT_E_NO_REVOCATION_DLL _HRESULT_TYPEDEF_(0x80092011L)\0"
	.byte	0x1
	.uleb128 0x7b0
	.ascii "CRYPT_E_NO_REVOCATION_CHECK _HRESULT_TYPEDEF_(0x80092012L)\0"
	.byte	0x1
	.uleb128 0x7b2
	.ascii "SEVERITY_SUCCESS 0\0"
	.byte	0x1
	.uleb128 0x7b3
	.ascii "SEVERITY_ERROR 1\0"
	.byte	0x1
	.uleb128 0x7b4
	.ascii "FACILITY_WINDOWS 8\0"
	.byte	0x1
	.uleb128 0x7b5
	.ascii "FACILITY_STORAGE 3\0"
	.byte	0x1
	.uleb128 0x7b6
	.ascii "FACILITY_RPC 1\0"
	.byte	0x1
	.uleb128 0x7b7
	.ascii "FACILITY_WIN32 7\0"
	.byte	0x1
	.uleb128 0x7b8
	.ascii "FACILITY_CONTROL 10\0"
	.byte	0x1
	.uleb128 0x7b9
	.ascii "FACILITY_NULL 0\0"
	.byte	0x1
	.uleb128 0x7ba
	.ascii "FACILITY_ITF 4\0"
	.byte	0x1
	.uleb128 0x7bb
	.ascii "FACILITY_DISPATCH 2\0"
	.byte	0x1
	.uleb128 0x7bd
	.ascii "SUCCEEDED(Status) ((HRESULT)(Status) >= 0)\0"
	.byte	0x1
	.uleb128 0x7be
	.ascii "FAILED(Status) ((HRESULT)(Status) < 0)\0"
	.byte	0x1
	.uleb128 0x7bf
	.ascii "IS_ERROR(Status) (((unsigned long)(Status) >> 31) == SEVERITY_ERROR)\0"
	.byte	0x1
	.uleb128 0x7c0
	.ascii "HRESULT_CODE(r) ((r) & 0xFFFF)\0"
	.byte	0x1
	.uleb128 0x7c1
	.ascii "SCODE_CODE(c) ((c) & 0xFFFF)\0"
	.byte	0x1
	.uleb128 0x7c2
	.ascii "HRESULT_FACILITY(r) (((r) >> 16) & 0x1FFF)\0"
	.byte	0x1
	.uleb128 0x7c3
	.ascii "SCODE_FACILITY(c) (((c) >> 16) & 0x1FFF)\0"
	.byte	0x1
	.uleb128 0x7c4
	.ascii "HRESULT_SEVERITY(r) (((r) >> 31) & 0x1)\0"
	.byte	0x1
	.uleb128 0x7c5
	.ascii "SCODE_SEVERITY(c) (((c) >> 31) & 0x1)\0"
	.byte	0x1
	.uleb128 0x7c7
	.ascii "MAKE_HRESULT(s,f,c) ((HRESULT) ( ((unsigned long)(s) << 31) | ((unsigned long)(f) << 16) | ((unsigned long)(c)) ))\0"
	.byte	0x1
	.uleb128 0x7cc
	.ascii "MAKE_SCODE(s,f,c) ((SCODE) ( ((unsigned long)(s) << 31) | ((unsigned long)(f) << 16) | ((unsigned long)(c)) ))\0"
	.byte	0x1
	.uleb128 0x7d2
	.ascii "FACILITY_NT_BIT 0x10000000\0"
	.byte	0x1
	.uleb128 0x7d4
	.ascii "HRESULT_FROM_WIN32(x) ((x) ? ((HRESULT)(((x) & 0x0000FFFF) | (FACILITY_WIN32 << 16) | 0x80000000)) : 0 )\0"
	.byte	0x1
	.uleb128 0x7d8
	.ascii "HRESULT_FROM_NT(x) ((HRESULT)((x) | FACILITY_NT_BIT))\0"
	.byte	0x1
	.uleb128 0x7da
	.ascii "GetScode(hr) ((SCODE)(hr))\0"
	.byte	0x1
	.uleb128 0x7db
	.ascii "ResultFromScode(sc) ((HRESULT)(sc))\0"
	.byte	0x1
	.uleb128 0x7dd
	.ascii "PropagateResult(hrPrevious,scBase) ((HRESULT) scBase)\0"
	.byte	0x1
	.uleb128 0x7df
	.ascii "NOERROR S_OK\0"
	.byte	0x1
	.uleb128 0x7e0
	.ascii "E_UNEXPECTED ((HRESULT)(0x8000FFFFL))\0"
	.byte	0x1
	.uleb128 0x7e1
	.ascii "E_NOTIMPL ((HRESULT)(0x80004001L))\0"
	.byte	0x1
	.uleb128 0x7e2
	.ascii "E_OUTOFMEMORY ((HRESULT)(0x8007000EL))\0"
	.byte	0x1
	.uleb128 0x7e3
	.ascii "E_INVALIDARG ((HRESULT)(0x80070057L))\0"
	.byte	0x1
	.uleb128 0x7e4
	.ascii "E_NOINTERFACE ((HRESULT)(0x80004002L))\0"
	.byte	0x1
	.uleb128 0x7e5
	.ascii "E_POINTER ((HRESULT)(0x80004003L))\0"
	.byte	0x1
	.uleb128 0x7e6
	.ascii "E_HANDLE ((HRESULT)(0x80070006L))\0"
	.byte	0x1
	.uleb128 0x7e7
	.ascii "E_ABORT ((HRESULT)(0x80004004L))\0"
	.byte	0x1
	.uleb128 0x7e8
	.ascii "E_FAIL ((HRESULT)(0x80004005L))\0"
	.byte	0x1
	.uleb128 0x7e9
	.ascii "E_ACCESSDENIED ((HRESULT)(0x80070005L))\0"
	.byte	0x1
	.uleb128 0x7ea
	.ascii "E_PENDING ((HRESULT)(0x8000000AL))\0"
	.byte	0x1
	.uleb128 0x7eb
	.ascii "CO_E_INIT_TLS ((HRESULT)(0x80004006L))\0"
	.byte	0x1
	.uleb128 0x7ec
	.ascii "CO_E_INIT_SHARED_ALLOCATOR ((HRESULT)(0x80004007L))\0"
	.byte	0x1
	.uleb128 0x7ed
	.ascii "CO_E_INIT_MEMORY_ALLOCATOR ((HRESULT)(0x80004008L))\0"
	.byte	0x1
	.uleb128 0x7ee
	.ascii "CO_E_INIT_CLASS_CACHE ((HRESULT)(0x80004009L))\0"
	.byte	0x1
	.uleb128 0x7ef
	.ascii "CO_E_INIT_RPC_CHANNEL ((HRESULT)(0x8000400AL))\0"
	.byte	0x1
	.uleb128 0x7f0
	.ascii "CO_E_INIT_TLS_SET_CHANNEL_CONTROL ((HRESULT)(0x8000400BL))\0"
	.byte	0x1
	.uleb128 0x7f1
	.ascii "CO_E_INIT_TLS_CHANNEL_CONTROL ((HRESULT)(0x8000400CL))\0"
	.byte	0x1
	.uleb128 0x7f2
	.ascii "CO_E_INIT_UNACCEPTED_USER_ALLOCATOR ((HRESULT)(0x8000400DL))\0"
	.byte	0x1
	.uleb128 0x7f3
	.ascii "CO_E_INIT_SCM_MUTEX_EXISTS ((HRESULT)(0x8000400EL))\0"
	.byte	0x1
	.uleb128 0x7f4
	.ascii "CO_E_INIT_SCM_FILE_MAPPING_EXISTS ((HRESULT)(0x8000400FL))\0"
	.byte	0x1
	.uleb128 0x7f5
	.ascii "CO_E_INIT_SCM_MAP_VIEW_OF_FILE ((HRESULT)(0x80004010L))\0"
	.byte	0x1
	.uleb128 0x7f6
	.ascii "CO_E_INIT_SCM_EXEC_FAILURE ((HRESULT)(0x80004011L))\0"
	.byte	0x1
	.uleb128 0x7f7
	.ascii "CO_E_INIT_ONLY_SINGLE_THREADED ((HRESULT)(0x80004012L))\0"
	.byte	0x1
	.uleb128 0x7f8
	.ascii "S_OK ((HRESULT)(0x00000000L))\0"
	.byte	0x1
	.uleb128 0x7f9
	.ascii "S_FALSE ((HRESULT)(0x00000001L))\0"
	.byte	0x1
	.uleb128 0x7fa
	.ascii "OLE_E_FIRST ((HRESULT)(0x80040000L))\0"
	.byte	0x1
	.uleb128 0x7fb
	.ascii "OLE_E_LAST ((HRESULT)(0x800400FFL))\0"
	.byte	0x1
	.uleb128 0x7fc
	.ascii "OLE_S_FIRST ((HRESULT)(0x00040000L))\0"
	.byte	0x1
	.uleb128 0x7fd
	.ascii "OLE_S_LAST ((HRESULT)(0x000400FFL))\0"
	.byte	0x1
	.uleb128 0x7fe
	.ascii "OLE_E_OLEVERB ((HRESULT)(0x80040000L))\0"
	.byte	0x1
	.uleb128 0x7ff
	.ascii "OLE_E_ADVF ((HRESULT)(0x80040001L))\0"
	.byte	0x1
	.uleb128 0x800
	.ascii "OLE_E_ENUM_NOMORE ((HRESULT)(0x80040002L))\0"
	.byte	0x1
	.uleb128 0x801
	.ascii "OLE_E_ADVISENOTSUPPORTED ((HRESULT)(0x80040003L))\0"
	.byte	0x1
	.uleb128 0x802
	.ascii "OLE_E_NOCONNECTION ((HRESULT)(0x80040004L))\0"
	.byte	0x1
	.uleb128 0x803
	.ascii "OLE_E_NOTRUNNING ((HRESULT)(0x80040005L))\0"
	.byte	0x1
	.uleb128 0x804
	.ascii "OLE_E_NOCACHE ((HRESULT)(0x80040006L))\0"
	.byte	0x1
	.uleb128 0x805
	.ascii "OLE_E_BLANK ((HRESULT)(0x80040007L))\0"
	.byte	0x1
	.uleb128 0x806
	.ascii "OLE_E_CLASSDIFF ((HRESULT)(0x80040008L))\0"
	.byte	0x1
	.uleb128 0x807
	.ascii "OLE_E_CANT_GETMONIKER ((HRESULT)(0x80040009L))\0"
	.byte	0x1
	.uleb128 0x808
	.ascii "OLE_E_CANT_BINDTOSOURCE ((HRESULT)(0x8004000AL))\0"
	.byte	0x1
	.uleb128 0x809
	.ascii "OLE_E_STATIC ((HRESULT)(0x8004000BL))\0"
	.byte	0x1
	.uleb128 0x80a
	.ascii "OLE_E_PROMPTSAVECANCELLED ((HRESULT)(0x8004000CL))\0"
	.byte	0x1
	.uleb128 0x80b
	.ascii "OLE_E_INVALIDRECT ((HRESULT)(0x8004000DL))\0"
	.byte	0x1
	.uleb128 0x80c
	.ascii "OLE_E_WRONGCOMPOBJ ((HRESULT)(0x8004000EL))\0"
	.byte	0x1
	.uleb128 0x80d
	.ascii "OLE_E_INVALIDHWND ((HRESULT)(0x8004000FL))\0"
	.byte	0x1
	.uleb128 0x80e
	.ascii "OLE_E_NOT_INPLACEACTIVE ((HRESULT)(0x80040010L))\0"
	.byte	0x1
	.uleb128 0x80f
	.ascii "OLE_E_CANTCONVERT ((HRESULT)(0x80040011L))\0"
	.byte	0x1
	.uleb128 0x810
	.ascii "OLE_E_NOSTORAGE ((HRESULT)(0x80040012L))\0"
	.byte	0x1
	.uleb128 0x811
	.ascii "DV_E_FORMATETC ((HRESULT)(0x80040064L))\0"
	.byte	0x1
	.uleb128 0x812
	.ascii "DV_E_DVTARGETDEVICE ((HRESULT)(0x80040065L))\0"
	.byte	0x1
	.uleb128 0x813
	.ascii "DV_E_STGMEDIUM ((HRESULT)(0x80040066L))\0"
	.byte	0x1
	.uleb128 0x814
	.ascii "DV_E_STATDATA ((HRESULT)(0x80040067L))\0"
	.byte	0x1
	.uleb128 0x815
	.ascii "DV_E_LINDEX ((HRESULT)(0x80040068L))\0"
	.byte	0x1
	.uleb128 0x816
	.ascii "DV_E_TYMED ((HRESULT)(0x80040069L))\0"
	.byte	0x1
	.uleb128 0x817
	.ascii "DV_E_CLIPFORMAT ((HRESULT)(0x8004006AL))\0"
	.byte	0x1
	.uleb128 0x818
	.ascii "DV_E_DVASPECT ((HRESULT)(0x8004006BL))\0"
	.byte	0x1
	.uleb128 0x819
	.ascii "DV_E_DVTARGETDEVICE_SIZE ((HRESULT)(0x8004006CL))\0"
	.byte	0x1
	.uleb128 0x81a
	.ascii "DV_E_NOIVIEWOBJECT ((HRESULT)(0x8004006DL))\0"
	.byte	0x1
	.uleb128 0x81b
	.ascii "DRAGDROP_E_FIRST ((HRESULT)(0x80040100L))\0"
	.byte	0x1
	.uleb128 0x81c
	.ascii "DRAGDROP_E_LAST ((HRESULT)(0x8004010FL))\0"
	.byte	0x1
	.uleb128 0x81d
	.ascii "DRAGDROP_S_FIRST ((HRESULT)(0x00040100L))\0"
	.byte	0x1
	.uleb128 0x81e
	.ascii "DRAGDROP_S_LAST ((HRESULT)(0x0004010FL))\0"
	.byte	0x1
	.uleb128 0x81f
	.ascii "DRAGDROP_E_NOTREGISTERED ((HRESULT)(0x80040100L))\0"
	.byte	0x1
	.uleb128 0x820
	.ascii "DRAGDROP_E_ALREADYREGISTERED ((HRESULT)(0x80040101L))\0"
	.byte	0x1
	.uleb128 0x821
	.ascii "DRAGDROP_E_INVALIDHWND ((HRESULT)(0x80040102L))\0"
	.byte	0x1
	.uleb128 0x822
	.ascii "CLASSFACTORY_E_FIRST ((HRESULT)(0x80040110L))\0"
	.byte	0x1
	.uleb128 0x823
	.ascii "CLASSFACTORY_E_LAST ((HRESULT)(0x8004011FL))\0"
	.byte	0x1
	.uleb128 0x824
	.ascii "CLASSFACTORY_S_FIRST ((HRESULT)(0x00040110L))\0"
	.byte	0x1
	.uleb128 0x825
	.ascii "CLASSFACTORY_S_LAST ((HRESULT)(0x0004011FL))\0"
	.byte	0x1
	.uleb128 0x826
	.ascii "CLASS_E_NOAGGREGATION ((HRESULT)(0x80040110L))\0"
	.byte	0x1
	.uleb128 0x827
	.ascii "CLASS_E_CLASSNOTAVAILABLE ((HRESULT)(0x80040111L))\0"
	.byte	0x1
	.uleb128 0x828
	.ascii "MARSHAL_E_FIRST ((HRESULT)(0x80040120L))\0"
	.byte	0x1
	.uleb128 0x829
	.ascii "MARSHAL_E_LAST ((HRESULT)(0x8004012FL))\0"
	.byte	0x1
	.uleb128 0x82a
	.ascii "MARSHAL_S_FIRST ((HRESULT)(0x00040120L))\0"
	.byte	0x1
	.uleb128 0x82b
	.ascii "MARSHAL_S_LAST ((HRESULT)(0x0004012FL))\0"
	.byte	0x1
	.uleb128 0x82c
	.ascii "DATA_E_FIRST ((HRESULT)(0x80040130L))\0"
	.byte	0x1
	.uleb128 0x82d
	.ascii "DATA_E_LAST ((HRESULT)(0x8004013FL))\0"
	.byte	0x1
	.uleb128 0x82e
	.ascii "DATA_S_FIRST ((HRESULT)(0x00040130L))\0"
	.byte	0x1
	.uleb128 0x82f
	.ascii "DATA_S_LAST ((HRESULT)(0x0004013FL))\0"
	.byte	0x1
	.uleb128 0x830
	.ascii "VIEW_E_FIRST ((HRESULT)(0x80040140L))\0"
	.byte	0x1
	.uleb128 0x831
	.ascii "VIEW_E_LAST ((HRESULT)(0x8004014FL))\0"
	.byte	0x1
	.uleb128 0x832
	.ascii "VIEW_S_FIRST ((HRESULT)(0x00040140L))\0"
	.byte	0x1
	.uleb128 0x833
	.ascii "VIEW_S_LAST ((HRESULT)(0x0004014FL))\0"
	.byte	0x1
	.uleb128 0x834
	.ascii "VIEW_E_DRAW ((HRESULT)(0x80040140L))\0"
	.byte	0x1
	.uleb128 0x835
	.ascii "REGDB_E_FIRST ((HRESULT)(0x80040150L))\0"
	.byte	0x1
	.uleb128 0x836
	.ascii "REGDB_E_LAST ((HRESULT)(0x8004015FL))\0"
	.byte	0x1
	.uleb128 0x837
	.ascii "REGDB_S_FIRST ((HRESULT)(0x00040150L))\0"
	.byte	0x1
	.uleb128 0x838
	.ascii "REGDB_S_LAST ((HRESULT)(0x0004015FL))\0"
	.byte	0x1
	.uleb128 0x839
	.ascii "REGDB_E_READREGDB ((HRESULT)(0x80040150L))\0"
	.byte	0x1
	.uleb128 0x83a
	.ascii "REGDB_E_WRITEREGDB ((HRESULT)(0x80040151L))\0"
	.byte	0x1
	.uleb128 0x83b
	.ascii "REGDB_E_KEYMISSING ((HRESULT)(0x80040152L))\0"
	.byte	0x1
	.uleb128 0x83c
	.ascii "REGDB_E_INVALIDVALUE ((HRESULT)(0x80040153L))\0"
	.byte	0x1
	.uleb128 0x83d
	.ascii "REGDB_E_CLASSNOTREG ((HRESULT)(0x80040154L))\0"
	.byte	0x1
	.uleb128 0x83e
	.ascii "REGDB_E_IIDNOTREG ((HRESULT)(0x80040155L))\0"
	.byte	0x1
	.uleb128 0x83f
	.ascii "CACHE_E_FIRST ((HRESULT)(0x80040170L))\0"
	.byte	0x1
	.uleb128 0x840
	.ascii "CACHE_E_LAST ((HRESULT)(0x8004017FL))\0"
	.byte	0x1
	.uleb128 0x841
	.ascii "CACHE_S_FIRST ((HRESULT)(0x00040170L))\0"
	.byte	0x1
	.uleb128 0x842
	.ascii "CACHE_S_LAST ((HRESULT)(0x0004017FL))\0"
	.byte	0x1
	.uleb128 0x843
	.ascii "CACHE_E_NOCACHE_UPDATED ((HRESULT)(0x80040170L))\0"
	.byte	0x1
	.uleb128 0x844
	.ascii "OLEOBJ_E_FIRST ((HRESULT)(0x80040180L))\0"
	.byte	0x1
	.uleb128 0x845
	.ascii "OLEOBJ_E_LAST ((HRESULT)(0x8004018FL))\0"
	.byte	0x1
	.uleb128 0x846
	.ascii "OLEOBJ_S_FIRST ((HRESULT)(0x00040180L))\0"
	.byte	0x1
	.uleb128 0x847
	.ascii "OLEOBJ_S_LAST ((HRESULT)(0x0004018FL))\0"
	.byte	0x1
	.uleb128 0x848
	.ascii "OLEOBJ_E_NOVERBS ((HRESULT)(0x80040180L))\0"
	.byte	0x1
	.uleb128 0x849
	.ascii "OLEOBJ_E_INVALIDVERB ((HRESULT)(0x80040181L))\0"
	.byte	0x1
	.uleb128 0x84a
	.ascii "CLIENTSITE_E_FIRST ((HRESULT)(0x80040190L))\0"
	.byte	0x1
	.uleb128 0x84b
	.ascii "CLIENTSITE_E_LAST ((HRESULT)(0x8004019FL))\0"
	.byte	0x1
	.uleb128 0x84c
	.ascii "CLIENTSITE_S_FIRST ((HRESULT)(0x00040190L))\0"
	.byte	0x1
	.uleb128 0x84d
	.ascii "CLIENTSITE_S_LAST ((HRESULT)(0x0004019FL))\0"
	.byte	0x1
	.uleb128 0x84e
	.ascii "INPLACE_E_NOTUNDOABLE ((HRESULT)(0x800401A0L))\0"
	.byte	0x1
	.uleb128 0x84f
	.ascii "INPLACE_E_NOTOOLSPACE ((HRESULT)(0x800401A1L))\0"
	.byte	0x1
	.uleb128 0x850
	.ascii "INPLACE_E_FIRST ((HRESULT)(0x800401A0L))\0"
	.byte	0x1
	.uleb128 0x851
	.ascii "INPLACE_E_LAST ((HRESULT)(0x800401AFL))\0"
	.byte	0x1
	.uleb128 0x852
	.ascii "INPLACE_S_FIRST ((HRESULT)(0x000401A0L))\0"
	.byte	0x1
	.uleb128 0x853
	.ascii "INPLACE_S_LAST ((HRESULT)(0x000401AFL))\0"
	.byte	0x1
	.uleb128 0x854
	.ascii "ENUM_E_FIRST ((HRESULT)(0x800401B0L))\0"
	.byte	0x1
	.uleb128 0x855
	.ascii "ENUM_E_LAST ((HRESULT)(0x800401BFL))\0"
	.byte	0x1
	.uleb128 0x856
	.ascii "ENUM_S_FIRST ((HRESULT)(0x000401B0L))\0"
	.byte	0x1
	.uleb128 0x857
	.ascii "ENUM_S_LAST ((HRESULT)(0x000401BFL))\0"
	.byte	0x1
	.uleb128 0x858
	.ascii "CONVERT10_E_FIRST ((HRESULT)(0x800401C0L))\0"
	.byte	0x1
	.uleb128 0x859
	.ascii "CONVERT10_E_LAST ((HRESULT)(0x800401CFL))\0"
	.byte	0x1
	.uleb128 0x85a
	.ascii "CONVERT10_S_FIRST ((HRESULT)(0x000401C0L))\0"
	.byte	0x1
	.uleb128 0x85b
	.ascii "CONVERT10_S_LAST ((HRESULT)(0x000401CFL))\0"
	.byte	0x1
	.uleb128 0x85c
	.ascii "CONVERT10_E_OLESTREAM_GET ((HRESULT)(0x800401C0L))\0"
	.byte	0x1
	.uleb128 0x85d
	.ascii "CONVERT10_E_OLESTREAM_PUT ((HRESULT)(0x800401C1L))\0"
	.byte	0x1
	.uleb128 0x85e
	.ascii "CONVERT10_E_OLESTREAM_FMT ((HRESULT)(0x800401C2L))\0"
	.byte	0x1
	.uleb128 0x85f
	.ascii "CONVERT10_E_OLESTREAM_BITMAP_TO_DIB ((HRESULT)(0x800401C3L))\0"
	.byte	0x1
	.uleb128 0x860
	.ascii "CONVERT10_E_STG_FMT ((HRESULT)(0x800401C4L))\0"
	.byte	0x1
	.uleb128 0x861
	.ascii "CONVERT10_E_STG_NO_STD_STREAM ((HRESULT)(0x800401C5L))\0"
	.byte	0x1
	.uleb128 0x862
	.ascii "CONVERT10_E_STG_DIB_TO_BITMAP ((HRESULT)(0x800401C6L))\0"
	.byte	0x1
	.uleb128 0x863
	.ascii "CLIPBRD_E_FIRST ((HRESULT)(0x800401D0L))\0"
	.byte	0x1
	.uleb128 0x864
	.ascii "CLIPBRD_E_LAST ((HRESULT)(0x800401DFL))\0"
	.byte	0x1
	.uleb128 0x865
	.ascii "CLIPBRD_S_FIRST ((HRESULT)(0x000401D0L))\0"
	.byte	0x1
	.uleb128 0x866
	.ascii "CLIPBRD_S_LAST ((HRESULT)(0x000401DFL))\0"
	.byte	0x1
	.uleb128 0x867
	.ascii "CLIPBRD_E_CANT_OPEN ((HRESULT)(0x800401D0L))\0"
	.byte	0x1
	.uleb128 0x868
	.ascii "CLIPBRD_E_CANT_EMPTY ((HRESULT)(0x800401D1L))\0"
	.byte	0x1
	.uleb128 0x869
	.ascii "CLIPBRD_E_CANT_SET ((HRESULT)(0x800401D2L))\0"
	.byte	0x1
	.uleb128 0x86a
	.ascii "CLIPBRD_E_BAD_DATA ((HRESULT)(0x800401D3L))\0"
	.byte	0x1
	.uleb128 0x86b
	.ascii "CLIPBRD_E_CANT_CLOSE ((HRESULT)(0x800401D4L))\0"
	.byte	0x1
	.uleb128 0x86c
	.ascii "MK_E_FIRST ((HRESULT)(0x800401E0L))\0"
	.byte	0x1
	.uleb128 0x86d
	.ascii "MK_E_LAST ((HRESULT)(0x800401EFL))\0"
	.byte	0x1
	.uleb128 0x86e
	.ascii "MK_S_FIRST ((HRESULT)(0x000401E0L))\0"
	.byte	0x1
	.uleb128 0x86f
	.ascii "MK_S_LAST ((HRESULT)(0x000401EFL))\0"
	.byte	0x1
	.uleb128 0x870
	.ascii "MK_E_CONNECTMANUALLY ((HRESULT)(0x800401E0L))\0"
	.byte	0x1
	.uleb128 0x871
	.ascii "MK_E_EXCEEDEDDEADLINE ((HRESULT)(0x800401E1L))\0"
	.byte	0x1
	.uleb128 0x872
	.ascii "MK_E_NEEDGENERIC ((HRESULT)(0x800401E2L))\0"
	.byte	0x1
	.uleb128 0x873
	.ascii "MK_E_UNAVAILABLE ((HRESULT)(0x800401E3L))\0"
	.byte	0x1
	.uleb128 0x874
	.ascii "MK_E_SYNTAX ((HRESULT)(0x800401E4L))\0"
	.byte	0x1
	.uleb128 0x875
	.ascii "MK_E_NOOBJECT ((HRESULT)(0x800401E5L))\0"
	.byte	0x1
	.uleb128 0x876
	.ascii "MK_E_INVALIDEXTENSION ((HRESULT)(0x800401E6L))\0"
	.byte	0x1
	.uleb128 0x877
	.ascii "MK_E_INTERMEDIATEINTERFACENOTSUPPORTED ((HRESULT)(0x800401E7L))\0"
	.byte	0x1
	.uleb128 0x878
	.ascii "MK_E_NOTBINDABLE ((HRESULT)(0x800401E8L))\0"
	.byte	0x1
	.uleb128 0x879
	.ascii "MK_E_NOTBOUND ((HRESULT)(0x800401E9L))\0"
	.byte	0x1
	.uleb128 0x87a
	.ascii "MK_E_CANTOPENFILE ((HRESULT)(0x800401EAL))\0"
	.byte	0x1
	.uleb128 0x87b
	.ascii "MK_E_MUSTBOTHERUSER ((HRESULT)(0x800401EBL))\0"
	.byte	0x1
	.uleb128 0x87c
	.ascii "MK_E_NOINVERSE ((HRESULT)(0x800401ECL))\0"
	.byte	0x1
	.uleb128 0x87d
	.ascii "MK_E_NOSTORAGE ((HRESULT)(0x800401EDL))\0"
	.byte	0x1
	.uleb128 0x87e
	.ascii "MK_E_NOPREFIX ((HRESULT)(0x800401EEL))\0"
	.byte	0x1
	.uleb128 0x87f
	.ascii "MK_E_ENUMERATION_FAILED ((HRESULT)(0x800401EFL))\0"
	.byte	0x1
	.uleb128 0x880
	.ascii "CO_E_FIRST ((HRESULT)(0x800401F0L))\0"
	.byte	0x1
	.uleb128 0x881
	.ascii "CO_E_LAST ((HRESULT)(0x800401FFL))\0"
	.byte	0x1
	.uleb128 0x882
	.ascii "CO_S_FIRST ((HRESULT)(0x000401F0L))\0"
	.byte	0x1
	.uleb128 0x883
	.ascii "CO_S_LAST ((HRESULT)(0x000401FFL))\0"
	.byte	0x1
	.uleb128 0x884
	.ascii "CO_E_NOTINITIALIZED ((HRESULT)(0x800401F0L))\0"
	.byte	0x1
	.uleb128 0x885
	.ascii "CO_E_ALREADYINITIALIZED ((HRESULT)(0x800401F1L))\0"
	.byte	0x1
	.uleb128 0x886
	.ascii "CO_E_CANTDETERMINECLASS ((HRESULT)(0x800401F2L))\0"
	.byte	0x1
	.uleb128 0x887
	.ascii "CO_E_CLASSSTRING ((HRESULT)(0x800401F3L))\0"
	.byte	0x1
	.uleb128 0x888
	.ascii "CO_E_IIDSTRING ((HRESULT)(0x800401F4L))\0"
	.byte	0x1
	.uleb128 0x889
	.ascii "CO_E_APPNOTFOUND ((HRESULT)(0x800401F5L))\0"
	.byte	0x1
	.uleb128 0x88a
	.ascii "CO_E_APPSINGLEUSE ((HRESULT)(0x800401F6L))\0"
	.byte	0x1
	.uleb128 0x88b
	.ascii "CO_E_ERRORINAPP ((HRESULT)(0x800401F7L))\0"
	.byte	0x1
	.uleb128 0x88c
	.ascii "CO_E_DLLNOTFOUND ((HRESULT)(0x800401F8L))\0"
	.byte	0x1
	.uleb128 0x88d
	.ascii "CO_E_ERRORINDLL ((HRESULT)(0x800401F9L))\0"
	.byte	0x1
	.uleb128 0x88e
	.ascii "CO_E_WRONGOSFORAPP ((HRESULT)(0x800401FAL))\0"
	.byte	0x1
	.uleb128 0x88f
	.ascii "CO_E_OBJNOTREG ((HRESULT)(0x800401FBL))\0"
	.byte	0x1
	.uleb128 0x890
	.ascii "CO_E_OBJISREG ((HRESULT)(0x800401FCL))\0"
	.byte	0x1
	.uleb128 0x891
	.ascii "CO_E_OBJNOTCONNECTED ((HRESULT)(0x800401FDL))\0"
	.byte	0x1
	.uleb128 0x892
	.ascii "CO_E_APPDIDNTREG ((HRESULT)(0x800401FEL))\0"
	.byte	0x1
	.uleb128 0x893
	.ascii "CO_E_RELEASED ((HRESULT)(0x800401FFL))\0"
	.byte	0x1
	.uleb128 0x894
	.ascii "OLE_S_USEREG ((HRESULT)(0x00040000L))\0"
	.byte	0x1
	.uleb128 0x895
	.ascii "OLE_S_STATIC ((HRESULT)(0x00040001L))\0"
	.byte	0x1
	.uleb128 0x896
	.ascii "OLE_S_MAC_CLIPFORMAT ((HRESULT)(0x00040002L))\0"
	.byte	0x1
	.uleb128 0x897
	.ascii "DRAGDROP_S_DROP ((HRESULT)(0x00040100L))\0"
	.byte	0x1
	.uleb128 0x898
	.ascii "DRAGDROP_S_CANCEL ((HRESULT)(0x00040101L))\0"
	.byte	0x1
	.uleb128 0x899
	.ascii "DRAGDROP_S_USEDEFAULTCURSORS ((HRESULT)(0x00040102L))\0"
	.byte	0x1
	.uleb128 0x89a
	.ascii "DATA_S_SAMEFORMATETC ((HRESULT)(0x00040130L))\0"
	.byte	0x1
	.uleb128 0x89b
	.ascii "VIEW_S_ALREADY_FROZEN ((HRESULT)(0x00040140L))\0"
	.byte	0x1
	.uleb128 0x89c
	.ascii "CACHE_S_FORMATETC_NOTSUPPORTED ((HRESULT)(0x00040170L))\0"
	.byte	0x1
	.uleb128 0x89d
	.ascii "CACHE_S_SAMECACHE ((HRESULT)(0x00040171L))\0"
	.byte	0x1
	.uleb128 0x89e
	.ascii "CACHE_S_SOMECACHES_NOTUPDATED ((HRESULT)(0x00040172L))\0"
	.byte	0x1
	.uleb128 0x89f
	.ascii "OLEOBJ_S_INVALIDVERB ((HRESULT)(0x00040180L))\0"
	.byte	0x1
	.uleb128 0x8a0
	.ascii "OLEOBJ_S_CANNOT_DOVERB_NOW ((HRESULT)(0x00040181L))\0"
	.byte	0x1
	.uleb128 0x8a1
	.ascii "OLEOBJ_S_INVALIDHWND ((HRESULT)(0x00040182L))\0"
	.byte	0x1
	.uleb128 0x8a2
	.ascii "INPLACE_S_TRUNCATED ((HRESULT)(0x000401A0L))\0"
	.byte	0x1
	.uleb128 0x8a3
	.ascii "CONVERT10_S_NO_PRESENTATION ((HRESULT)(0x000401C0L))\0"
	.byte	0x1
	.uleb128 0x8a4
	.ascii "MK_S_REDUCED_TO_SELF ((HRESULT)(0x000401E2L))\0"
	.byte	0x1
	.uleb128 0x8a5
	.ascii "MK_S_ME ((HRESULT)(0x000401E4L))\0"
	.byte	0x1
	.uleb128 0x8a6
	.ascii "MK_S_HIM ((HRESULT)(0x000401E5L))\0"
	.byte	0x1
	.uleb128 0x8a7
	.ascii "MK_S_US ((HRESULT)(0x000401E6L))\0"
	.byte	0x1
	.uleb128 0x8a8
	.ascii "MK_S_MONIKERALREADYREGISTERED ((HRESULT)(0x000401E7L))\0"
	.byte	0x1
	.uleb128 0x8a9
	.ascii "CO_E_CLASS_CREATE_FAILED ((HRESULT)(0x80080001L))\0"
	.byte	0x1
	.uleb128 0x8aa
	.ascii "CO_E_SCM_ERROR ((HRESULT)(0x80080002L))\0"
	.byte	0x1
	.uleb128 0x8ab
	.ascii "CO_E_SCM_RPC_FAILURE ((HRESULT)(0x80080003L))\0"
	.byte	0x1
	.uleb128 0x8ac
	.ascii "CO_E_BAD_PATH ((HRESULT)(0x80080004L))\0"
	.byte	0x1
	.uleb128 0x8ad
	.ascii "CO_E_SERVER_EXEC_FAILURE ((HRESULT)(0x80080005L))\0"
	.byte	0x1
	.uleb128 0x8ae
	.ascii "CO_E_OBJSRV_RPC_FAILURE ((HRESULT)(0x80080006L))\0"
	.byte	0x1
	.uleb128 0x8af
	.ascii "MK_E_NO_NORMALIZED ((HRESULT)(0x80080007L))\0"
	.byte	0x1
	.uleb128 0x8b0
	.ascii "CO_E_SERVER_STOPPING ((HRESULT)(0x80080008L))\0"
	.byte	0x1
	.uleb128 0x8b1
	.ascii "MEM_E_INVALID_ROOT ((HRESULT)(0x80080009L))\0"
	.byte	0x1
	.uleb128 0x8b2
	.ascii "MEM_E_INVALID_LINK ((HRESULT)(0x80080010L))\0"
	.byte	0x1
	.uleb128 0x8b3
	.ascii "MEM_E_INVALID_SIZE ((HRESULT)(0x80080011L))\0"
	.byte	0x1
	.uleb128 0x8b4
	.ascii "CO_S_NOTALLINTERFACES ((HRESULT)(0x00080012L))\0"
	.byte	0x1
	.uleb128 0x8b5
	.ascii "CO_S_MACHINENAMENOTFOUND ((HRESULT)(0x00080013L))\0"
	.byte	0x1
	.uleb128 0x8b6
	.ascii "DISP_E_UNKNOWNINTERFACE ((HRESULT)(0x80020001L))\0"
	.byte	0x1
	.uleb128 0x8b7
	.ascii "DISP_E_MEMBERNOTFOUND ((HRESULT)(0x80020003L))\0"
	.byte	0x1
	.uleb128 0x8b8
	.ascii "DISP_E_PARAMNOTFOUND ((HRESULT)(0x80020004L))\0"
	.byte	0x1
	.uleb128 0x8b9
	.ascii "DISP_E_TYPEMISMATCH ((HRESULT)(0x80020005L))\0"
	.byte	0x1
	.uleb128 0x8ba
	.ascii "DISP_E_UNKNOWNNAME ((HRESULT)(0x80020006L))\0"
	.byte	0x1
	.uleb128 0x8bb
	.ascii "DISP_E_NONAMEDARGS ((HRESULT)(0x80020007L))\0"
	.byte	0x1
	.uleb128 0x8bc
	.ascii "DISP_E_BADVARTYPE ((HRESULT)(0x80020008L))\0"
	.byte	0x1
	.uleb128 0x8bd
	.ascii "DISP_E_EXCEPTION ((HRESULT)(0x80020009L))\0"
	.byte	0x1
	.uleb128 0x8be
	.ascii "DISP_E_OVERFLOW ((HRESULT)(0x8002000AL))\0"
	.byte	0x1
	.uleb128 0x8bf
	.ascii "DISP_E_BADINDEX ((HRESULT)(0x8002000BL))\0"
	.byte	0x1
	.uleb128 0x8c0
	.ascii "DISP_E_UNKNOWNLCID ((HRESULT)(0x8002000CL))\0"
	.byte	0x1
	.uleb128 0x8c1
	.ascii "DISP_E_ARRAYISLOCKED ((HRESULT)(0x8002000DL))\0"
	.byte	0x1
	.uleb128 0x8c2
	.ascii "DISP_E_BADPARAMCOUNT ((HRESULT)(0x8002000EL))\0"
	.byte	0x1
	.uleb128 0x8c3
	.ascii "DISP_E_PARAMNOTOPTIONAL ((HRESULT)(0x8002000FL))\0"
	.byte	0x1
	.uleb128 0x8c4
	.ascii "DISP_E_BADCALLEE ((HRESULT)(0x80020010L))\0"
	.byte	0x1
	.uleb128 0x8c5
	.ascii "DISP_E_NOTACOLLECTION ((HRESULT)(0x80020011L))\0"
	.byte	0x1
	.uleb128 0x8c6
	.ascii "DISP_E_DIVBYZERO ((HRESULT)(0x80020012L))\0"
	.byte	0x1
	.uleb128 0x8c7
	.ascii "TYPE_E_BUFFERTOOSMALL ((HRESULT)(0x80028016L))\0"
	.byte	0x1
	.uleb128 0x8c8
	.ascii "TYPE_E_INVDATAREAD ((HRESULT)(0x80028018L))\0"
	.byte	0x1
	.uleb128 0x8c9
	.ascii "TYPE_E_UNSUPFORMAT ((HRESULT)(0x80028019L))\0"
	.byte	0x1
	.uleb128 0x8ca
	.ascii "TYPE_E_REGISTRYACCESS ((HRESULT)(0x8002801CL))\0"
	.byte	0x1
	.uleb128 0x8cb
	.ascii "TYPE_E_LIBNOTREGISTERED ((HRESULT)(0x8002801DL))\0"
	.byte	0x1
	.uleb128 0x8cc
	.ascii "TYPE_E_UNDEFINEDTYPE ((HRESULT)(0x80028027L))\0"
	.byte	0x1
	.uleb128 0x8cd
	.ascii "TYPE_E_QUALIFIEDNAMEDISALLOWED ((HRESULT)(0x80028028L))\0"
	.byte	0x1
	.uleb128 0x8ce
	.ascii "TYPE_E_INVALIDSTATE ((HRESULT)(0x80028029L))\0"
	.byte	0x1
	.uleb128 0x8cf
	.ascii "TYPE_E_WRONGTYPEKIND ((HRESULT)(0x8002802AL))\0"
	.byte	0x1
	.uleb128 0x8d0
	.ascii "TYPE_E_ELEMENTNOTFOUND ((HRESULT)(0x8002802BL))\0"
	.byte	0x1
	.uleb128 0x8d1
	.ascii "TYPE_E_AMBIGUOUSNAME ((HRESULT)(0x8002802CL))\0"
	.byte	0x1
	.uleb128 0x8d2
	.ascii "TYPE_E_NAMECONFLICT ((HRESULT)(0x8002802DL))\0"
	.byte	0x1
	.uleb128 0x8d3
	.ascii "TYPE_E_UNKNOWNLCID ((HRESULT)(0x8002802EL))\0"
	.byte	0x1
	.uleb128 0x8d4
	.ascii "TYPE_E_DLLFUNCTIONNOTFOUND ((HRESULT)(0x8002802FL))\0"
	.byte	0x1
	.uleb128 0x8d5
	.ascii "TYPE_E_BADMODULEKIND ((HRESULT)(0x800288BDL))\0"
	.byte	0x1
	.uleb128 0x8d6
	.ascii "TYPE_E_SIZETOOBIG ((HRESULT)(0x800288C5L))\0"
	.byte	0x1
	.uleb128 0x8d7
	.ascii "TYPE_E_DUPLICATEID ((HRESULT)(0x800288C6L))\0"
	.byte	0x1
	.uleb128 0x8d8
	.ascii "TYPE_E_INVALIDID ((HRESULT)(0x800288CFL))\0"
	.byte	0x1
	.uleb128 0x8d9
	.ascii "TYPE_E_TYPEMISMATCH ((HRESULT)(0x80028CA0L))\0"
	.byte	0x1
	.uleb128 0x8da
	.ascii "TYPE_E_OUTOFBOUNDS ((HRESULT)(0x80028CA1L))\0"
	.byte	0x1
	.uleb128 0x8db
	.ascii "TYPE_E_IOERROR ((HRESULT)(0x80028CA2L))\0"
	.byte	0x1
	.uleb128 0x8dc
	.ascii "TYPE_E_CANTCREATETMPFILE ((HRESULT)(0x80028CA3L))\0"
	.byte	0x1
	.uleb128 0x8dd
	.ascii "TYPE_E_CANTLOADLIBRARY ((HRESULT)(0x80029C4AL))\0"
	.byte	0x1
	.uleb128 0x8de
	.ascii "TYPE_E_INCONSISTENTPROPFUNCS ((HRESULT)(0x80029C83L))\0"
	.byte	0x1
	.uleb128 0x8df
	.ascii "TYPE_E_CIRCULARTYPE ((HRESULT)(0x80029C84L))\0"
	.byte	0x1
	.uleb128 0x8e0
	.ascii "STG_E_INVALIDFUNCTION ((HRESULT)(0x80030001L))\0"
	.byte	0x1
	.uleb128 0x8e1
	.ascii "STG_E_FILENOTFOUND ((HRESULT)(0x80030002L))\0"
	.byte	0x1
	.uleb128 0x8e2
	.ascii "STG_E_PATHNOTFOUND ((HRESULT)(0x80030003L))\0"
	.byte	0x1
	.uleb128 0x8e3
	.ascii "STG_E_TOOMANYOPENFILES ((HRESULT)(0x80030004L))\0"
	.byte	0x1
	.uleb128 0x8e4
	.ascii "STG_E_ACCESSDENIED ((HRESULT)(0x80030005L))\0"
	.byte	0x1
	.uleb128 0x8e5
	.ascii "STG_E_INVALIDHANDLE ((HRESULT)(0x80030006L))\0"
	.byte	0x1
	.uleb128 0x8e6
	.ascii "STG_E_INSUFFICIENTMEMORY ((HRESULT)(0x80030008L))\0"
	.byte	0x1
	.uleb128 0x8e7
	.ascii "STG_E_INVALIDPOINTER ((HRESULT)(0x80030009L))\0"
	.byte	0x1
	.uleb128 0x8e8
	.ascii "STG_E_NOMOREFILES ((HRESULT)(0x80030012L))\0"
	.byte	0x1
	.uleb128 0x8e9
	.ascii "STG_E_DISKISWRITEPROTECTED ((HRESULT)(0x80030013L))\0"
	.byte	0x1
	.uleb128 0x8ea
	.ascii "STG_E_SEEKERROR ((HRESULT)(0x80030019L))\0"
	.byte	0x1
	.uleb128 0x8eb
	.ascii "STG_E_WRITEFAULT ((HRESULT)(0x8003001DL))\0"
	.byte	0x1
	.uleb128 0x8ec
	.ascii "STG_E_READFAULT ((HRESULT)(0x8003001EL))\0"
	.byte	0x1
	.uleb128 0x8ed
	.ascii "STG_E_SHAREVIOLATION ((HRESULT)(0x80030020L))\0"
	.byte	0x1
	.uleb128 0x8ee
	.ascii "STG_E_LOCKVIOLATION ((HRESULT)(0x80030021L))\0"
	.byte	0x1
	.uleb128 0x8ef
	.ascii "STG_E_FILEALREADYEXISTS ((HRESULT)(0x80030050L))\0"
	.byte	0x1
	.uleb128 0x8f0
	.ascii "STG_E_INVALIDPARAMETER ((HRESULT)(0x80030057L))\0"
	.byte	0x1
	.uleb128 0x8f1
	.ascii "STG_E_MEDIUMFULL ((HRESULT)(0x80030070L))\0"
	.byte	0x1
	.uleb128 0x8f2
	.ascii "STG_E_PROPSETMISMATCHED ((HRESULT)(0x800300F0L))\0"
	.byte	0x1
	.uleb128 0x8f3
	.ascii "STG_E_ABNORMALAPIEXIT ((HRESULT)(0x800300FAL))\0"
	.byte	0x1
	.uleb128 0x8f4
	.ascii "STG_E_INVALIDHEADER ((HRESULT)(0x800300FBL))\0"
	.byte	0x1
	.uleb128 0x8f5
	.ascii "STG_E_INVALIDNAME ((HRESULT)(0x800300FCL))\0"
	.byte	0x1
	.uleb128 0x8f6
	.ascii "STG_E_UNKNOWN ((HRESULT)(0x800300FDL))\0"
	.byte	0x1
	.uleb128 0x8f7
	.ascii "STG_E_UNIMPLEMENTEDFUNCTION ((HRESULT)(0x800300FEL))\0"
	.byte	0x1
	.uleb128 0x8f8
	.ascii "STG_E_INVALIDFLAG ((HRESULT)(0x800300FFL))\0"
	.byte	0x1
	.uleb128 0x8f9
	.ascii "STG_E_INUSE ((HRESULT)(0x80030100L))\0"
	.byte	0x1
	.uleb128 0x8fa
	.ascii "STG_E_NOTCURRENT ((HRESULT)(0x80030101L))\0"
	.byte	0x1
	.uleb128 0x8fb
	.ascii "STG_E_REVERTED ((HRESULT)(0x80030102L))\0"
	.byte	0x1
	.uleb128 0x8fc
	.ascii "STG_E_CANTSAVE ((HRESULT)(0x80030103L))\0"
	.byte	0x1
	.uleb128 0x8fd
	.ascii "STG_E_OLDFORMAT ((HRESULT)(0x80030104L))\0"
	.byte	0x1
	.uleb128 0x8fe
	.ascii "STG_E_OLDDLL ((HRESULT)(0x80030105L))\0"
	.byte	0x1
	.uleb128 0x8ff
	.ascii "STG_E_SHAREREQUIRED ((HRESULT)(0x80030106L))\0"
	.byte	0x1
	.uleb128 0x900
	.ascii "STG_E_NOTFILEBASEDSTORAGE ((HRESULT)(0x80030107L))\0"
	.byte	0x1
	.uleb128 0x901
	.ascii "STG_E_EXTANTMARSHALLINGS ((HRESULT)(0x80030108L))\0"
	.byte	0x1
	.uleb128 0x902
	.ascii "STG_E_DOCFILECORRUPT ((HRESULT)(0x80030109L))\0"
	.byte	0x1
	.uleb128 0x903
	.ascii "STG_E_BADBASEADDRESS ((HRESULT)(0x80030110L))\0"
	.byte	0x1
	.uleb128 0x904
	.ascii "STG_E_DOCFILETOOLARGE ((HRESULT)(0x80030111L))\0"
	.byte	0x1
	.uleb128 0x905
	.ascii "STG_E_NOTSIMPLEFORMAT ((HRESULT)(0x80030112L))\0"
	.byte	0x1
	.uleb128 0x906
	.ascii "STG_E_INCOMPLETE ((HRESULT)(0x80030201L))\0"
	.byte	0x1
	.uleb128 0x907
	.ascii "STG_E_TERMINATED ((HRESULT)(0x80030202L))\0"
	.byte	0x1
	.uleb128 0x908
	.ascii "STG_S_CONVERTED ((HRESULT)(0x00030200L))\0"
	.byte	0x1
	.uleb128 0x909
	.ascii "STG_S_BLOCK ((HRESULT)(0x00030201L))\0"
	.byte	0x1
	.uleb128 0x90a
	.ascii "STG_S_RETRYNOW ((HRESULT)(0x00030202L))\0"
	.byte	0x1
	.uleb128 0x90b
	.ascii "STG_S_MONITORING ((HRESULT)(0x00030203L))\0"
	.byte	0x1
	.uleb128 0x90c
	.ascii "STG_S_MULTIPLEOPENS ((HRESULT)(0x00030204L))\0"
	.byte	0x1
	.uleb128 0x90d
	.ascii "STG_S_CONSOLIDATIONFAILED ((HRESULT)(0x00030205L))\0"
	.byte	0x1
	.uleb128 0x90e
	.ascii "STG_S_CANNOTCONSOLIDATE ((HRESULT)(0x00030206L))\0"
	.byte	0x1
	.uleb128 0x90f
	.ascii "RPC_E_CALL_REJECTED ((HRESULT)(0x80010001L))\0"
	.byte	0x1
	.uleb128 0x910
	.ascii "RPC_E_CALL_CANCELED ((HRESULT)(0x80010002L))\0"
	.byte	0x1
	.uleb128 0x911
	.ascii "RPC_E_CANTPOST_INSENDCALL ((HRESULT)(0x80010003L))\0"
	.byte	0x1
	.uleb128 0x912
	.ascii "RPC_E_CANTCALLOUT_INASYNCCALL ((HRESULT)(0x80010004L))\0"
	.byte	0x1
	.uleb128 0x913
	.ascii "RPC_E_CANTCALLOUT_INEXTERNALCALL ((HRESULT)(0x80010005L))\0"
	.byte	0x1
	.uleb128 0x914
	.ascii "RPC_E_CONNECTION_TERMINATED ((HRESULT)(0x80010006L))\0"
	.byte	0x1
	.uleb128 0x915
	.ascii "RPC_E_SERVER_DIED ((HRESULT)(0x80010007L))\0"
	.byte	0x1
	.uleb128 0x916
	.ascii "RPC_E_CLIENT_DIED ((HRESULT)(0x80010008L))\0"
	.byte	0x1
	.uleb128 0x917
	.ascii "RPC_E_INVALID_DATAPACKET ((HRESULT)(0x80010009L))\0"
	.byte	0x1
	.uleb128 0x918
	.ascii "RPC_E_CANTTRANSMIT_CALL ((HRESULT)(0x8001000AL))\0"
	.byte	0x1
	.uleb128 0x919
	.ascii "RPC_E_CLIENT_CANTMARSHAL_DATA ((HRESULT)(0x8001000BL))\0"
	.byte	0x1
	.uleb128 0x91a
	.ascii "RPC_E_CLIENT_CANTUNMARSHAL_DATA ((HRESULT)(0x8001000CL))\0"
	.byte	0x1
	.uleb128 0x91b
	.ascii "RPC_E_SERVER_CANTMARSHAL_DATA ((HRESULT)(0x8001000DL))\0"
	.byte	0x1
	.uleb128 0x91c
	.ascii "RPC_E_SERVER_CANTUNMARSHAL_DATA ((HRESULT)(0x8001000EL))\0"
	.byte	0x1
	.uleb128 0x91d
	.ascii "RPC_E_INVALID_DATA ((HRESULT)(0x8001000FL))\0"
	.byte	0x1
	.uleb128 0x91e
	.ascii "RPC_E_INVALID_PARAMETER ((HRESULT)(0x80010010L))\0"
	.byte	0x1
	.uleb128 0x91f
	.ascii "RPC_E_CANTCALLOUT_AGAIN ((HRESULT)(0x80010011L))\0"
	.byte	0x1
	.uleb128 0x920
	.ascii "RPC_E_SERVER_DIED_DNE ((HRESULT)(0x80010012L))\0"
	.byte	0x1
	.uleb128 0x921
	.ascii "RPC_E_SYS_CALL_FAILED ((HRESULT)(0x80010100L))\0"
	.byte	0x1
	.uleb128 0x922
	.ascii "RPC_E_OUT_OF_RESOURCES ((HRESULT)(0x80010101L))\0"
	.byte	0x1
	.uleb128 0x923
	.ascii "RPC_E_ATTEMPTED_MULTITHREAD ((HRESULT)(0x80010102L))\0"
	.byte	0x1
	.uleb128 0x924
	.ascii "RPC_E_NOT_REGISTERED ((HRESULT)(0x80010103L))\0"
	.byte	0x1
	.uleb128 0x925
	.ascii "RPC_E_FAULT ((HRESULT)(0x80010104L))\0"
	.byte	0x1
	.uleb128 0x926
	.ascii "RPC_E_SERVERFAULT ((HRESULT)(0x80010105L))\0"
	.byte	0x1
	.uleb128 0x927
	.ascii "RPC_E_CHANGED_MODE ((HRESULT)(0x80010106L))\0"
	.byte	0x1
	.uleb128 0x928
	.ascii "RPC_E_INVALIDMETHOD ((HRESULT)(0x80010107L))\0"
	.byte	0x1
	.uleb128 0x929
	.ascii "RPC_E_DISCONNECTED ((HRESULT)(0x80010108L))\0"
	.byte	0x1
	.uleb128 0x92a
	.ascii "RPC_E_RETRY ((HRESULT)(0x80010109L))\0"
	.byte	0x1
	.uleb128 0x92b
	.ascii "RPC_E_SERVERCALL_RETRYLATER ((HRESULT)(0x8001010AL))\0"
	.byte	0x1
	.uleb128 0x92c
	.ascii "RPC_E_SERVERCALL_REJECTED ((HRESULT)(0x8001010BL))\0"
	.byte	0x1
	.uleb128 0x92d
	.ascii "RPC_E_INVALID_CALLDATA ((HRESULT)(0x8001010CL))\0"
	.byte	0x1
	.uleb128 0x92e
	.ascii "RPC_E_CANTCALLOUT_ININPUTSYNCCALL ((HRESULT)(0x8001010DL))\0"
	.byte	0x1
	.uleb128 0x92f
	.ascii "RPC_E_WRONG_THREAD ((HRESULT)(0x8001010EL))\0"
	.byte	0x1
	.uleb128 0x930
	.ascii "RPC_E_THREAD_NOT_INIT ((HRESULT)(0x8001010FL))\0"
	.byte	0x1
	.uleb128 0x931
	.ascii "RPC_E_VERSION_MISMATCH ((HRESULT)(0x80010110L))\0"
	.byte	0x1
	.uleb128 0x932
	.ascii "RPC_E_INVALID_HEADER ((HRESULT)(0x80010111L))\0"
	.byte	0x1
	.uleb128 0x933
	.ascii "RPC_E_INVALID_EXTENSION ((HRESULT)(0x80010112L))\0"
	.byte	0x1
	.uleb128 0x934
	.ascii "RPC_E_INVALID_IPID ((HRESULT)(0x80010113L))\0"
	.byte	0x1
	.uleb128 0x935
	.ascii "RPC_E_INVALID_OBJECT ((HRESULT)(0x80010114L))\0"
	.byte	0x1
	.uleb128 0x936
	.ascii "RPC_E_CALL_COMPLETE ((HRESULT)(0x80010117L))\0"
	.byte	0x1
	.uleb128 0x937
	.ascii "RPC_E_UNSECURE_CALL ((HRESULT)(0x80010118L))\0"
	.byte	0x1
	.uleb128 0x938
	.ascii "RPC_E_TOO_LATE ((HRESULT)(0x80010119L))\0"
	.byte	0x1
	.uleb128 0x939
	.ascii "RPC_E_NO_GOOD_SECURITY_PACKAGES ((HRESULT)(0x8001011AL))\0"
	.byte	0x1
	.uleb128 0x93a
	.ascii "RPC_E_ACCESS_DENIED ((HRESULT)(0x8001011BL))\0"
	.byte	0x1
	.uleb128 0x93b
	.ascii "RPC_E_REMOTE_DISABLED ((HRESULT)(0x8001011CL))\0"
	.byte	0x1
	.uleb128 0x93c
	.ascii "RPC_E_INVALID_OBJREF ((HRESULT)(0x8001011DL))\0"
	.byte	0x1
	.uleb128 0x93d
	.ascii "RPC_E_NO_CONTEXT ((HRESULT)(0x8001011EL))\0"
	.byte	0x1
	.uleb128 0x93e
	.ascii "RPC_E_TIMEOUT ((HRESULT)(0x8001011FL))\0"
	.byte	0x1
	.uleb128 0x93f
	.ascii "RPC_E_NO_SYNC ((HRESULT)(0x80010120L))\0"
	.byte	0x1
	.uleb128 0x940
	.ascii "RPC_E_FULLSIC_REQUIRED ((HRESULT)(0x80010121L))\0"
	.byte	0x1
	.uleb128 0x941
	.ascii "RPC_E_INVALID_STD_NAME ((HRESULT)(0x80010122L))\0"
	.byte	0x1
	.uleb128 0x942
	.ascii "RPC_E_UNEXPECTED ((HRESULT)(0x8001FFFFL))\0"
	.byte	0x1
	.uleb128 0x944
	.ascii "NTE_BAD_UID ((HRESULT)(0x80090001L))\0"
	.byte	0x1
	.uleb128 0x945
	.ascii "NTE_BAD_HASH ((HRESULT)(0x80090002L))\0"
	.byte	0x1
	.uleb128 0x946
	.ascii "NTE_BAD_KEY ((HRESULT)(0x80090003L))\0"
	.byte	0x1
	.uleb128 0x947
	.ascii "NTE_BAD_LEN ((HRESULT)(0x80090004L))\0"
	.byte	0x1
	.uleb128 0x948
	.ascii "NTE_BAD_DATA ((HRESULT)(0x80090005L))\0"
	.byte	0x1
	.uleb128 0x949
	.ascii "NTE_BAD_SIGNATURE ((HRESULT)(0x80090006L))\0"
	.byte	0x1
	.uleb128 0x94a
	.ascii "NTE_BAD_VER ((HRESULT)(0x80090007L))\0"
	.byte	0x1
	.uleb128 0x94b
	.ascii "NTE_BAD_ALGID ((HRESULT)(0x80090008L))\0"
	.byte	0x1
	.uleb128 0x94c
	.ascii "NTE_BAD_FLAGS ((HRESULT)(0x80090009L))\0"
	.byte	0x1
	.uleb128 0x94d
	.ascii "NTE_BAD_TYPE ((HRESULT)(0x8009000AL))\0"
	.byte	0x1
	.uleb128 0x94e
	.ascii "NTE_BAD_KEY_STATE ((HRESULT)(0x8009000BL))\0"
	.byte	0x1
	.uleb128 0x94f
	.ascii "NTE_BAD_HASH_STATE ((HRESULT)(0x8009000CL))\0"
	.byte	0x1
	.uleb128 0x950
	.ascii "NTE_NO_KEY ((HRESULT)(0x8009000DL))\0"
	.byte	0x1
	.uleb128 0x951
	.ascii "NTE_NO_MEMORY ((HRESULT)(0x8009000EL))\0"
	.byte	0x1
	.uleb128 0x952
	.ascii "NTE_EXISTS ((HRESULT)(0x8009000FL))\0"
	.byte	0x1
	.uleb128 0x953
	.ascii "NTE_PERM ((HRESULT)(0x80090010L))\0"
	.byte	0x1
	.uleb128 0x954
	.ascii "NTE_NOT_FOUND ((HRESULT)(0x80090011L))\0"
	.byte	0x1
	.uleb128 0x955
	.ascii "NTE_DOUBLE_ENCRYPT ((HRESULT)(0x80090012L))\0"
	.byte	0x1
	.uleb128 0x956
	.ascii "NTE_BAD_PROVIDER ((HRESULT)(0x80090013L))\0"
	.byte	0x1
	.uleb128 0x957
	.ascii "NTE_BAD_PROV_TYPE ((HRESULT)(0x80090014L))\0"
	.byte	0x1
	.uleb128 0x958
	.ascii "NTE_BAD_PUBLIC_KEY ((HRESULT)(0x80090015L))\0"
	.byte	0x1
	.uleb128 0x959
	.ascii "NTE_BAD_KEYSET ((HRESULT)(0x80090016L))\0"
	.byte	0x1
	.uleb128 0x95a
	.ascii "NTE_PROV_TYPE_NOT_DEF ((HRESULT)(0x80090017L))\0"
	.byte	0x1
	.uleb128 0x95b
	.ascii "NTE_PROV_TYPE_ENTRY_BAD ((HRESULT)(0x80090018L))\0"
	.byte	0x1
	.uleb128 0x95c
	.ascii "NTE_KEYSET_NOT_DEF ((HRESULT)(0x80090019L))\0"
	.byte	0x1
	.uleb128 0x95d
	.ascii "NTE_KEYSET_ENTRY_BAD ((HRESULT)(0x8009001AL))\0"
	.byte	0x1
	.uleb128 0x95e
	.ascii "NTE_PROV_TYPE_NO_MATCH ((HRESULT)(0x8009001BL))\0"
	.byte	0x1
	.uleb128 0x95f
	.ascii "NTE_SIGNATURE_FILE_BAD ((HRESULT)(0x8009001CL))\0"
	.byte	0x1
	.uleb128 0x960
	.ascii "NTE_PROVIDER_DLL_FAIL ((HRESULT)(0x8009001DL))\0"
	.byte	0x1
	.uleb128 0x961
	.ascii "NTE_PROV_DLL_NOT_FOUND ((HRESULT)(0x8009001EL))\0"
	.byte	0x1
	.uleb128 0x962
	.ascii "NTE_BAD_KEYSET_PARAM ((HRESULT)(0x8009001FL))\0"
	.byte	0x1
	.uleb128 0x963
	.ascii "NTE_FAIL ((HRESULT)(0x80090020L))\0"
	.byte	0x1
	.uleb128 0x964
	.ascii "NTE_SYS_ERR ((HRESULT)(0x80090021L))\0"
	.byte	0x1
	.uleb128 0x965
	.ascii "NTE_SILENT_CONTEXT ((HRESULT)(0x80090022L))\0"
	.byte	0x1
	.uleb128 0x966
	.ascii "NTE_TOKEN_KEYSET_STORAGE_FULL ((HRESULT)(0x80090023L))\0"
	.byte	0x1
	.uleb128 0x967
	.ascii "NTE_TEMPORARY_PROFILE ((HRESULT)(0x80090024L))\0"
	.byte	0x1
	.uleb128 0x968
	.ascii "NTE_FIXEDPARAMETER ((HRESULT)(0x80090025L))\0"
	.byte	0x4
	.file 27 "c:/mingw/include/string.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x1b
	.byte	0x1
	.uleb128 0x23
	.ascii "_STRING_H \0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "__need_NULL \0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "__need_size_t \0"
	.byte	0x1
	.uleb128 0x33
	.ascii "__need_wchar_t \0"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x15
	.byte	0x2
	.uleb128 0xee
	.ascii "__need_size_t\0"
	.byte	0x2
	.uleb128 0x15b
	.ascii "__need_wchar_t\0"
	.byte	0x2
	.uleb128 0x191
	.ascii "NULL\0"
	.byte	0x1
	.uleb128 0x196
	.ascii "NULL ((void *)0)\0"
	.byte	0x2
	.uleb128 0x19c
	.ascii "__need_NULL\0"
	.byte	0x4
	.file 28 "c:/mingw/include/strings.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x1c
	.byte	0x1
	.uleb128 0x2d
	.ascii "_STRINGS_H \0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "__need_size_t \0"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x15
	.byte	0x2
	.uleb128 0xee
	.ascii "__need_size_t\0"
	.byte	0x2
	.uleb128 0x19c
	.ascii "__need_NULL\0"
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0x43
	.ascii "__STRING_H_SOURCED__ \0"
	.file 29 "c:/mingw/include/wchar.h"
	.byte	0x3
	.uleb128 0xaa
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x1bc
	.ascii "_wcscmpi _wcsicmp\0"
	.byte	0x4
	.byte	0x2
	.uleb128 0xe7
	.ascii "__STRING_H_SOURCED__\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x37
	.ascii "UNALIGNED \0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "DECLSPEC_ALIGN(x) __attribute__((__aligned__(x)))\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "DECLSPEC_SELECTANY __attribute__((__selectany__))\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "FORCEINLINE __inline__ __attribute__((__always_inline__))\0"
	.byte	0x1
	.uleb128 0x55
	.ascii "C_ASSERT(expr) typedef char __C_ASSERT__[(expr)?1:-1]\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "VOID void\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "__ptr64 \0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "_TCHAR_DEFINED \0"
	.byte	0x1
	.uleb128 0x96
	.ascii "__TEXT(q) q\0"
	.byte	0x1
	.uleb128 0x9e
	.ascii "TEXT(q) __TEXT(q)\0"
	.byte	0x1
	.uleb128 0xa3
	.ascii "DECLARE_HANDLE(n) typedef struct n ##__{int i;}*n\0"
	.byte	0x1
	.uleb128 0xad
	.ascii "_HAVE_INT64 \0"
	.byte	0x1
	.uleb128 0xae
	.ascii "_INTEGRAL_MAX_BITS 64\0"
	.byte	0x2
	.uleb128 0xaf
	.ascii "__int64\0"
	.byte	0x1
	.uleb128 0xb0
	.ascii "__int64 long long\0"
	.byte	0x1
	.uleb128 0xbf
	.ascii "Int32x32To64(a,b) ((LONGLONG)(a)*(LONGLONG)(b))\0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "UInt32x32To64(a,b) ((DWORDLONG)(a)*(DWORDLONG)(b))\0"
	.byte	0x1
	.uleb128 0xc1
	.ascii "Int64ShllMod32(a,b) ((DWORDLONG)(a)<<(b))\0"
	.byte	0x1
	.uleb128 0xc2
	.ascii "Int64ShraMod32(a,b) ((LONGLONG)(a)>>(b))\0"
	.byte	0x1
	.uleb128 0xc3
	.ascii "Int64ShrlMod32(a,b) ((DWORDLONG)(a)>>(b))\0"
	.byte	0x1
	.uleb128 0xc5
	.ascii "ANSI_NULL '\\0'\0"
	.byte	0x1
	.uleb128 0xc6
	.ascii "UNICODE_NULL L'\\0'\0"
	.byte	0x1
	.uleb128 0xd1
	.ascii "NTAPI __stdcall\0"
	.file 30 "c:/mingw/include/basetsd.h"
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x1e
	.byte	0x1
	.uleb128 0x2
	.ascii "_BASETSD_H \0"
	.byte	0x1
	.uleb128 0x11
	.ascii "__int3264 __int32\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "ADDRESS_TAG_BIT 0x80000000UL\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "HandleToUlong(h) ((ULONG)(ULONG_PTR)(h) )\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "HandleToLong(h) ((LONG)(LONG_PTR) (h) )\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "LongToHandle(h) ((HANDLE)(LONG_PTR) (h))\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "PtrToUlong(p) ((ULONG)(ULONG_PTR) (p) )\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "PtrToLong(p) ((LONG)(LONG_PTR) (p) )\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "PtrToUint(p) ((UINT)(UINT_PTR) (p) )\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "PtrToInt(p) ((INT)(INT_PTR) (p) )\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "PtrToUshort(p) ((unsigned short)(ULONG_PTR)(p) )\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "PtrToShort(p) ((short)(LONG_PTR)(p) )\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "IntToPtr(i) ((VOID*)(INT_PTR)((int)i))\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "UIntToPtr(ui) ((VOID*)(UINT_PTR)((unsigned int)ui))\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "LongToPtr(l) ((VOID*)(LONG_PTR)((long)l))\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "ULongToPtr(ul) ((VOID*)(ULONG_PTR)((unsigned long)ul))\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "UlongToPtr(ul) ULongToPtr(ul)\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "UintToPtr(ui) UIntToPtr(ui)\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "MAXUINT_PTR (~((UINT_PTR)0))\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "MAXINT_PTR ((INT_PTR)(MAXUINT_PTR >> 1))\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "MININT_PTR (~MAXINT_PTR)\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "MAXULONG_PTR (~((ULONG_PTR)0))\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "MAXLONG_PTR ((LONG_PTR)(MAXULONG_PTR >> 1))\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "MINLONG_PTR (~MAXLONG_PTR)\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "MAXUHALF_PTR ((UHALF_PTR)~0)\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "MAXHALF_PTR ((HALF_PTR)(MAXUHALF_PTR >> 1))\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "MINHALF_PTR (~MAXHALF_PTR)\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0xd3
	.ascii "ACE_OBJECT_TYPE_PRESENT 0x00000001\0"
	.byte	0x1
	.uleb128 0xd4
	.ascii "ACE_INHERITED_OBJECT_TYPE_PRESENT 0x00000002\0"
	.byte	0x1
	.uleb128 0xd5
	.ascii "APPLICATION_ERROR_MASK 0x20000000\0"
	.byte	0x1
	.uleb128 0xd6
	.ascii "ERROR_SEVERITY_SUCCESS 0x00000000\0"
	.byte	0x1
	.uleb128 0xd7
	.ascii "ERROR_SEVERITY_INFORMATIONAL 0x40000000\0"
	.byte	0x1
	.uleb128 0xd8
	.ascii "ERROR_SEVERITY_WARNING 0x80000000\0"
	.byte	0x1
	.uleb128 0xd9
	.ascii "ERROR_SEVERITY_ERROR 0xC0000000\0"
	.byte	0x1
	.uleb128 0xdb
	.ascii "COMPRESSION_FORMAT_NONE (0x0000)\0"
	.byte	0x1
	.uleb128 0xdc
	.ascii "COMPRESSION_FORMAT_DEFAULT (0x0001)\0"
	.byte	0x1
	.uleb128 0xdd
	.ascii "COMPRESSION_FORMAT_LZNT1 (0x0002)\0"
	.byte	0x1
	.uleb128 0xde
	.ascii "COMPRESSION_ENGINE_STANDARD (0x0000)\0"
	.byte	0x1
	.uleb128 0xdf
	.ascii "COMPRESSION_ENGINE_MAXIMUM (0x0100)\0"
	.byte	0x1
	.uleb128 0xe0
	.ascii "COMPRESSION_ENGINE_HIBER (0x0200)\0"
	.byte	0x1
	.uleb128 0xe1
	.ascii "ACCESS_ALLOWED_ACE_TYPE (0x0)\0"
	.byte	0x1
	.uleb128 0xe2
	.ascii "ACCESS_DENIED_ACE_TYPE (0x1)\0"
	.byte	0x1
	.uleb128 0xe3
	.ascii "SYSTEM_AUDIT_ACE_TYPE (0x2)\0"
	.byte	0x1
	.uleb128 0xe4
	.ascii "SYSTEM_ALARM_ACE_TYPE (0x3)\0"
	.byte	0x1
	.uleb128 0xe6
	.ascii "ANYSIZE_ARRAY 1\0"
	.byte	0x1
	.uleb128 0xe7
	.ascii "OBJECT_INHERIT_ACE 1\0"
	.byte	0x1
	.uleb128 0xe8
	.ascii "CONTAINER_INHERIT_ACE 2\0"
	.byte	0x1
	.uleb128 0xe9
	.ascii "NO_PROPAGATE_INHERIT_ACE 4\0"
	.byte	0x1
	.uleb128 0xea
	.ascii "INHERIT_ONLY_ACE 8\0"
	.byte	0x1
	.uleb128 0xeb
	.ascii "INHERITED_ACE 16\0"
	.byte	0x1
	.uleb128 0xed
	.ascii "VALID_INHERIT_FLAGS OBJECT_INHERIT_ACE | CONTAINER_INHERIT_ACE | NO_PROPAGATE_INHERIT_ACE | INHERIT_ONLY_ACE | INHERITED_ACE\0"
	.byte	0x1
	.uleb128 0xf1
	.ascii "SUCCESSFUL_ACCESS_ACE_FLAG 64\0"
	.byte	0x1
	.uleb128 0xf2
	.ascii "FAILED_ACCESS_ACE_FLAG 128\0"
	.byte	0x1
	.uleb128 0xf3
	.ascii "DELETE 0x00010000L\0"
	.byte	0x1
	.uleb128 0xf4
	.ascii "READ_CONTROL 0x20000L\0"
	.byte	0x1
	.uleb128 0xf5
	.ascii "WRITE_DAC 0x40000L\0"
	.byte	0x1
	.uleb128 0xf6
	.ascii "WRITE_OWNER 0x80000L\0"
	.byte	0x1
	.uleb128 0xf7
	.ascii "SYNCHRONIZE 0x100000L\0"
	.byte	0x1
	.uleb128 0xf8
	.ascii "STANDARD_RIGHTS_REQUIRED 0xF0000\0"
	.byte	0x1
	.uleb128 0xf9
	.ascii "STANDARD_RIGHTS_READ 0x20000\0"
	.byte	0x1
	.uleb128 0xfa
	.ascii "STANDARD_RIGHTS_WRITE 0x20000\0"
	.byte	0x1
	.uleb128 0xfb
	.ascii "STANDARD_RIGHTS_EXECUTE 0x20000\0"
	.byte	0x1
	.uleb128 0xfc
	.ascii "STANDARD_RIGHTS_ALL 0x1F0000\0"
	.byte	0x1
	.uleb128 0xfd
	.ascii "SPECIFIC_RIGHTS_ALL 0xFFFF\0"
	.byte	0x1
	.uleb128 0xfe
	.ascii "ACCESS_SYSTEM_SECURITY 0x1000000\0"
	.byte	0x1
	.uleb128 0x100
	.ascii "MAXIMUM_ALLOWED 0x2000000\0"
	.byte	0x1
	.uleb128 0x101
	.ascii "GENERIC_READ 0x80000000\0"
	.byte	0x1
	.uleb128 0x102
	.ascii "GENERIC_WRITE 0x40000000\0"
	.byte	0x1
	.uleb128 0x103
	.ascii "GENERIC_EXECUTE 0x20000000\0"
	.byte	0x1
	.uleb128 0x104
	.ascii "GENERIC_ALL 0x10000000\0"
	.byte	0x1
	.uleb128 0x106
	.ascii "INVALID_FILE_ATTRIBUTES ((DWORD)-1)\0"
	.byte	0x1
	.uleb128 0x109
	.ascii "FILE_LIST_DIRECTORY 0x00000001\0"
	.byte	0x1
	.uleb128 0x10a
	.ascii "FILE_READ_DATA 0x00000001\0"
	.byte	0x1
	.uleb128 0x10b
	.ascii "FILE_ADD_FILE 0x00000002\0"
	.byte	0x1
	.uleb128 0x10c
	.ascii "FILE_WRITE_DATA 0x00000002\0"
	.byte	0x1
	.uleb128 0x10d
	.ascii "FILE_ADD_SUBDIRECTORY 0x00000004\0"
	.byte	0x1
	.uleb128 0x10e
	.ascii "FILE_APPEND_DATA 0x00000004\0"
	.byte	0x1
	.uleb128 0x10f
	.ascii "FILE_CREATE_PIPE_INSTANCE 0x00000004\0"
	.byte	0x1
	.uleb128 0x110
	.ascii "FILE_READ_EA 0x00000008\0"
	.byte	0x1
	.uleb128 0x111
	.ascii "FILE_READ_PROPERTIES 0x00000008\0"
	.byte	0x1
	.uleb128 0x112
	.ascii "FILE_WRITE_EA 0x00000010\0"
	.byte	0x1
	.uleb128 0x113
	.ascii "FILE_WRITE_PROPERTIES 0x00000010\0"
	.byte	0x1
	.uleb128 0x114
	.ascii "FILE_EXECUTE 0x00000020\0"
	.byte	0x1
	.uleb128 0x115
	.ascii "FILE_TRAVERSE 0x00000020\0"
	.byte	0x1
	.uleb128 0x116
	.ascii "FILE_DELETE_CHILD 0x00000040\0"
	.byte	0x1
	.uleb128 0x117
	.ascii "FILE_READ_ATTRIBUTES 0x00000080\0"
	.byte	0x1
	.uleb128 0x118
	.ascii "FILE_WRITE_ATTRIBUTES 0x00000100\0"
	.byte	0x1
	.uleb128 0x11a
	.ascii "FILE_SHARE_READ 0x00000001\0"
	.byte	0x1
	.uleb128 0x11b
	.ascii "FILE_SHARE_WRITE 0x00000002\0"
	.byte	0x1
	.uleb128 0x11c
	.ascii "FILE_SHARE_DELETE 0x00000004\0"
	.byte	0x1
	.uleb128 0x11d
	.ascii "FILE_SHARE_VALID_FLAGS 0x00000007\0"
	.byte	0x1
	.uleb128 0x11f
	.ascii "FILE_ATTRIBUTE_READONLY 0x00000001\0"
	.byte	0x1
	.uleb128 0x120
	.ascii "FILE_ATTRIBUTE_HIDDEN 0x00000002\0"
	.byte	0x1
	.uleb128 0x121
	.ascii "FILE_ATTRIBUTE_SYSTEM 0x00000004\0"
	.byte	0x1
	.uleb128 0x122
	.ascii "FILE_ATTRIBUTE_DIRECTORY 0x00000010\0"
	.byte	0x1
	.uleb128 0x123
	.ascii "FILE_ATTRIBUTE_ARCHIVE 0x00000020\0"
	.byte	0x1
	.uleb128 0x124
	.ascii "FILE_ATTRIBUTE_DEVICE 0x00000040\0"
	.byte	0x1
	.uleb128 0x125
	.ascii "FILE_ATTRIBUTE_NORMAL 0x00000080\0"
	.byte	0x1
	.uleb128 0x126
	.ascii "FILE_ATTRIBUTE_TEMPORARY 0x00000100\0"
	.byte	0x1
	.uleb128 0x127
	.ascii "FILE_ATTRIBUTE_SPARSE_FILE 0x00000200\0"
	.byte	0x1
	.uleb128 0x128
	.ascii "FILE_ATTRIBUTE_REPARSE_POINT 0x00000400\0"
	.byte	0x1
	.uleb128 0x129
	.ascii "FILE_ATTRIBUTE_COMPRESSED 0x00000800\0"
	.byte	0x1
	.uleb128 0x12a
	.ascii "FILE_ATTRIBUTE_OFFLINE 0x00001000\0"
	.byte	0x1
	.uleb128 0x12b
	.ascii "FILE_ATTRIBUTE_NOT_CONTENT_INDEXED 0x00002000\0"
	.byte	0x1
	.uleb128 0x12c
	.ascii "FILE_ATTRIBUTE_ENCRYPTED 0x00004000\0"
	.byte	0x1
	.uleb128 0x12d
	.ascii "FILE_ATTRIBUTE_VIRTUAL 0x00010000\0"
	.byte	0x1
	.uleb128 0x12e
	.ascii "FILE_ATTRIBUTE_VALID_FLAGS 0x00017fb7\0"
	.byte	0x1
	.uleb128 0x12f
	.ascii "FILE_ATTRIBUTE_VALID_SET_FLAGS 0x000031a7\0"
	.byte	0x1
	.uleb128 0x131
	.ascii "FILE_COPY_STRUCTURED_STORAGE 0x00000041\0"
	.byte	0x1
	.uleb128 0x132
	.ascii "FILE_STRUCTURED_STORAGE 0x00000441\0"
	.byte	0x1
	.uleb128 0x134
	.ascii "FILE_VALID_OPTION_FLAGS 0x00ffffff\0"
	.byte	0x1
	.uleb128 0x135
	.ascii "FILE_VALID_PIPE_OPTION_FLAGS 0x00000032\0"
	.byte	0x1
	.uleb128 0x136
	.ascii "FILE_VALID_MAILSLOT_OPTION_FLAGS 0x00000032\0"
	.byte	0x1
	.uleb128 0x137
	.ascii "FILE_VALID_SET_FLAGS 0x00000036\0"
	.byte	0x1
	.uleb128 0x139
	.ascii "FILE_SUPERSEDE 0x00000000\0"
	.byte	0x1
	.uleb128 0x13a
	.ascii "FILE_OPEN 0x00000001\0"
	.byte	0x1
	.uleb128 0x13b
	.ascii "FILE_CREATE 0x00000002\0"
	.byte	0x1
	.uleb128 0x13c
	.ascii "FILE_OPEN_IF 0x00000003\0"
	.byte	0x1
	.uleb128 0x13d
	.ascii "FILE_OVERWRITE 0x00000004\0"
	.byte	0x1
	.uleb128 0x13e
	.ascii "FILE_OVERWRITE_IF 0x00000005\0"
	.byte	0x1
	.uleb128 0x13f
	.ascii "FILE_MAXIMUM_DISPOSITION 0x00000005\0"
	.byte	0x1
	.uleb128 0x141
	.ascii "FILE_DIRECTORY_FILE 0x00000001\0"
	.byte	0x1
	.uleb128 0x142
	.ascii "FILE_WRITE_THROUGH 0x00000002\0"
	.byte	0x1
	.uleb128 0x143
	.ascii "FILE_SEQUENTIAL_ONLY 0x00000004\0"
	.byte	0x1
	.uleb128 0x144
	.ascii "FILE_NO_INTERMEDIATE_BUFFERING 0x00000008\0"
	.byte	0x1
	.uleb128 0x145
	.ascii "FILE_SYNCHRONOUS_IO_ALERT 0x00000010\0"
	.byte	0x1
	.uleb128 0x146
	.ascii "FILE_SYNCHRONOUS_IO_NONALERT 0x00000020\0"
	.byte	0x1
	.uleb128 0x147
	.ascii "FILE_NON_DIRECTORY_FILE 0x00000040\0"
	.byte	0x1
	.uleb128 0x148
	.ascii "FILE_CREATE_TREE_CONNECTION 0x00000080\0"
	.byte	0x1
	.uleb128 0x149
	.ascii "FILE_COMPLETE_IF_OPLOCKED 0x00000100\0"
	.byte	0x1
	.uleb128 0x14a
	.ascii "FILE_NO_EA_KNOWLEDGE 0x00000200\0"
	.byte	0x1
	.uleb128 0x14b
	.ascii "FILE_OPEN_FOR_RECOVERY 0x00000400\0"
	.byte	0x1
	.uleb128 0x14c
	.ascii "FILE_RANDOM_ACCESS 0x00000800\0"
	.byte	0x1
	.uleb128 0x14d
	.ascii "FILE_DELETE_ON_CLOSE 0x00001000\0"
	.byte	0x1
	.uleb128 0x14e
	.ascii "FILE_OPEN_BY_FILE_ID 0x00002000\0"
	.byte	0x1
	.uleb128 0x14f
	.ascii "FILE_OPEN_FOR_BACKUP_INTENT 0x00004000\0"
	.byte	0x1
	.uleb128 0x150
	.ascii "FILE_NO_COMPRESSION 0x00008000\0"
	.byte	0x1
	.uleb128 0x151
	.ascii "FILE_RESERVE_OPFILTER 0x00100000\0"
	.byte	0x1
	.uleb128 0x152
	.ascii "FILE_OPEN_REPARSE_POINT 0x00200000\0"
	.byte	0x1
	.uleb128 0x153
	.ascii "FILE_OPEN_NO_RECALL 0x00400000\0"
	.byte	0x1
	.uleb128 0x154
	.ascii "FILE_OPEN_FOR_FREE_SPACE_QUERY 0x00800000\0"
	.byte	0x1
	.uleb128 0x156
	.ascii "FILE_ALL_ACCESS ( STANDARD_RIGHTS_REQUIRED | SYNCHRONIZE | 0x1FF )\0"
	.byte	0x1
	.uleb128 0x158
	.ascii "FILE_GENERIC_EXECUTE ( STANDARD_RIGHTS_EXECUTE | FILE_READ_ATTRIBUTES | FILE_EXECUTE | SYNCHRONIZE )\0"
	.byte	0x1
	.uleb128 0x15b
	.ascii "FILE_GENERIC_READ ( STANDARD_RIGHTS_READ | FILE_READ_DATA | FILE_READ_ATTRIBUTES | FILE_READ_EA | SYNCHRONIZE )\0"
	.byte	0x1
	.uleb128 0x15f
	.ascii "FILE_GENERIC_WRITE ( STANDARD_RIGHTS_WRITE | FILE_WRITE_DATA | FILE_WRITE_ATTRIBUTES | FILE_WRITE_EA | FILE_APPEND_DATA | SYNCHRONIZE )\0"
	.byte	0x1
	.uleb128 0x165
	.ascii "FILE_NOTIFY_CHANGE_FILE_NAME 0x00000001\0"
	.byte	0x1
	.uleb128 0x166
	.ascii "FILE_NOTIFY_CHANGE_DIR_NAME 0x00000002\0"
	.byte	0x1
	.uleb128 0x167
	.ascii "FILE_NOTIFY_CHANGE_NAME 0x00000003\0"
	.byte	0x1
	.uleb128 0x168
	.ascii "FILE_NOTIFY_CHANGE_ATTRIBUTES 0x00000004\0"
	.byte	0x1
	.uleb128 0x169
	.ascii "FILE_NOTIFY_CHANGE_SIZE 0x00000008\0"
	.byte	0x1
	.uleb128 0x16a
	.ascii "FILE_NOTIFY_CHANGE_LAST_WRITE 0x00000010\0"
	.byte	0x1
	.uleb128 0x16b
	.ascii "FILE_NOTIFY_CHANGE_LAST_ACCESS 0x00000020\0"
	.byte	0x1
	.uleb128 0x16c
	.ascii "FILE_NOTIFY_CHANGE_CREATION 0x00000040\0"
	.byte	0x1
	.uleb128 0x16d
	.ascii "FILE_NOTIFY_CHANGE_EA 0x00000080\0"
	.byte	0x1
	.uleb128 0x16e
	.ascii "FILE_NOTIFY_CHANGE_SECURITY 0x00000100\0"
	.byte	0x1
	.uleb128 0x16f
	.ascii "FILE_NOTIFY_CHANGE_STREAM_NAME 0x00000200\0"
	.byte	0x1
	.uleb128 0x170
	.ascii "FILE_NOTIFY_CHANGE_STREAM_SIZE 0x00000400\0"
	.byte	0x1
	.uleb128 0x171
	.ascii "FILE_NOTIFY_CHANGE_STREAM_WRITE 0x00000800\0"
	.byte	0x1
	.uleb128 0x172
	.ascii "FILE_NOTIFY_VALID_MASK 0x00000fff\0"
	.byte	0x1
	.uleb128 0x174
	.ascii "FILE_CASE_SENSITIVE_SEARCH 0x00000001\0"
	.byte	0x1
	.uleb128 0x175
	.ascii "FILE_CASE_PRESERVED_NAMES 0x00000002\0"
	.byte	0x1
	.uleb128 0x176
	.ascii "FILE_UNICODE_ON_DISK 0x00000004\0"
	.byte	0x1
	.uleb128 0x177
	.ascii "FILE_PERSISTENT_ACLS 0x00000008\0"
	.byte	0x1
	.uleb128 0x178
	.ascii "FILE_FILE_COMPRESSION 0x00000010\0"
	.byte	0x1
	.uleb128 0x179
	.ascii "FILE_VOLUME_QUOTAS 0x00000020\0"
	.byte	0x1
	.uleb128 0x17a
	.ascii "FILE_SUPPORTS_SPARSE_FILES 0x00000040\0"
	.byte	0x1
	.uleb128 0x17b
	.ascii "FILE_SUPPORTS_REPARSE_POINTS 0x00000080\0"
	.byte	0x1
	.uleb128 0x17c
	.ascii "FILE_SUPPORTS_REMOTE_STORAGE 0x00000100\0"
	.byte	0x1
	.uleb128 0x17d
	.ascii "FS_LFN_APIS 0x00004000\0"
	.byte	0x1
	.uleb128 0x17e
	.ascii "FILE_VOLUME_IS_COMPRESSED 0x00008000\0"
	.byte	0x1
	.uleb128 0x17f
	.ascii "FILE_SUPPORTS_OBJECT_IDS 0x00010000\0"
	.byte	0x1
	.uleb128 0x180
	.ascii "FILE_SUPPORTS_ENCRYPTION 0x00020000\0"
	.byte	0x1
	.uleb128 0x181
	.ascii "FILE_NAMED_STREAMS 0x00040000\0"
	.byte	0x1
	.uleb128 0x182
	.ascii "FILE_READ_ONLY_VOLUME 0x00080000\0"
	.byte	0x1
	.uleb128 0x183
	.ascii "FILE_SEQUENTIAL_WRITE_ONCE 0x00100000\0"
	.byte	0x1
	.uleb128 0x184
	.ascii "FILE_SUPPORTS_TRANSACTIONS 0x00200000\0"
	.byte	0x1
	.uleb128 0x188
	.ascii "FILE_SUPPORTS_HARD_LINKS 0x00400000\0"
	.byte	0x1
	.uleb128 0x189
	.ascii "FILE_SUPPORTS_EXTENDED_ATTRIBUTES 0x00800000\0"
	.byte	0x1
	.uleb128 0x18a
	.ascii "FILE_SUPPORTS_OPEN_BY_FILE_ID 0x01000000\0"
	.byte	0x1
	.uleb128 0x18b
	.ascii "FILE_SUPPORTS_USN_JOURNAL 0x02000000\0"
	.byte	0x1
	.uleb128 0x18e
	.ascii "IO_COMPLETION_QUERY_STATE 0x0001\0"
	.byte	0x1
	.uleb128 0x18f
	.ascii "IO_COMPLETION_MODIFY_STATE 0x0002\0"
	.byte	0x1
	.uleb128 0x190
	.ascii "IO_COMPLETION_ALL_ACCESS (STANDARD_RIGHTS_REQUIRED|SYNCHRONIZE|0x3)\0"
	.byte	0x1
	.uleb128 0x194
	.ascii "DUPLICATE_CLOSE_SOURCE 0x00000001\0"
	.byte	0x1
	.uleb128 0x195
	.ascii "DUPLICATE_SAME_ACCESS 0x00000002\0"
	.byte	0x1
	.uleb128 0x196
	.ascii "DUPLICATE_SAME_ATTRIBUTES 0x00000004\0"
	.byte	0x1
	.uleb128 0x199
	.ascii "MAILSLOT_NO_MESSAGE ((DWORD)-1)\0"
	.byte	0x1
	.uleb128 0x19a
	.ascii "MAILSLOT_WAIT_FOREVER ((DWORD)-1)\0"
	.byte	0x1
	.uleb128 0x19b
	.ascii "PROCESS_TERMINATE 1\0"
	.byte	0x1
	.uleb128 0x19c
	.ascii "PROCESS_CREATE_THREAD 2\0"
	.byte	0x1
	.uleb128 0x19d
	.ascii "PROCESS_SET_SESSIONID 4\0"
	.byte	0x1
	.uleb128 0x19e
	.ascii "PROCESS_VM_OPERATION 8\0"
	.byte	0x1
	.uleb128 0x19f
	.ascii "PROCESS_VM_READ 16\0"
	.byte	0x1
	.uleb128 0x1a0
	.ascii "PROCESS_VM_WRITE 32\0"
	.byte	0x1
	.uleb128 0x1a1
	.ascii "PROCESS_DUP_HANDLE 64\0"
	.byte	0x1
	.uleb128 0x1a2
	.ascii "PROCESS_CREATE_PROCESS 128\0"
	.byte	0x1
	.uleb128 0x1a3
	.ascii "PROCESS_SET_QUOTA 256\0"
	.byte	0x1
	.uleb128 0x1a4
	.ascii "PROCESS_SUSPEND_RESUME 0x0800\0"
	.byte	0x1
	.uleb128 0x1a5
	.ascii "PROCESS_SET_INFORMATION 512\0"
	.byte	0x1
	.uleb128 0x1a6
	.ascii "PROCESS_QUERY_INFORMATION 1024\0"
	.byte	0x1
	.uleb128 0x1a7
	.ascii "PROCESS_QUERY_LIMITED_INFORMATION 0x1000\0"
	.byte	0x1
	.uleb128 0x1a9
	.ascii "PROCESS_ALL_ACCESS (STANDARD_RIGHTS_REQUIRED|SYNCHRONIZE|0xFFF)\0"
	.byte	0x1
	.uleb128 0x1aa
	.ascii "THREAD_TERMINATE 1\0"
	.byte	0x1
	.uleb128 0x1ab
	.ascii "THREAD_SUSPEND_RESUME 2\0"
	.byte	0x1
	.uleb128 0x1ac
	.ascii "THREAD_GET_CONTEXT 8\0"
	.byte	0x1
	.uleb128 0x1ad
	.ascii "THREAD_SET_CONTEXT 16\0"
	.byte	0x1
	.uleb128 0x1ae
	.ascii "THREAD_SET_INFORMATION 32\0"
	.byte	0x1
	.uleb128 0x1af
	.ascii "THREAD_QUERY_INFORMATION 64\0"
	.byte	0x1
	.uleb128 0x1b0
	.ascii "THREAD_SET_THREAD_TOKEN 128\0"
	.byte	0x1
	.uleb128 0x1b1
	.ascii "THREAD_IMPERSONATE 256\0"
	.byte	0x1
	.uleb128 0x1b2
	.ascii "THREAD_DIRECT_IMPERSONATION 0x200\0"
	.byte	0x1
	.uleb128 0x1b3
	.ascii "THREAD_ALL_ACCESS (STANDARD_RIGHTS_REQUIRED|SYNCHRONIZE|0x3FF)\0"
	.byte	0x1
	.uleb128 0x1b4
	.ascii "THREAD_BASE_PRIORITY_LOWRT 15\0"
	.byte	0x1
	.uleb128 0x1b5
	.ascii "THREAD_BASE_PRIORITY_MAX 2\0"
	.byte	0x1
	.uleb128 0x1b6
	.ascii "THREAD_BASE_PRIORITY_MIN (-2)\0"
	.byte	0x1
	.uleb128 0x1b7
	.ascii "THREAD_BASE_PRIORITY_IDLE (-15)\0"
	.byte	0x1
	.uleb128 0x1b8
	.ascii "EXCEPTION_NONCONTINUABLE 1\0"
	.byte	0x1
	.uleb128 0x1b9
	.ascii "EXCEPTION_MAXIMUM_PARAMETERS 15\0"
	.byte	0x1
	.uleb128 0x1ba
	.ascii "MUTANT_QUERY_STATE 0x0001\0"
	.byte	0x1
	.uleb128 0x1bb
	.ascii "MUTANT_ALL_ACCESS (STANDARD_RIGHTS_REQUIRED|SYNCHRONIZE|MUTANT_QUERY_STATE)\0"
	.byte	0x1
	.uleb128 0x1bc
	.ascii "TIMER_QUERY_STATE 0x0001\0"
	.byte	0x1
	.uleb128 0x1bd
	.ascii "TIMER_MODIFY_STATE 0x0002\0"
	.byte	0x1
	.uleb128 0x1be
	.ascii "TIMER_ALL_ACCESS (STANDARD_RIGHTS_REQUIRED|SYNCHRONIZE|TIMER_QUERY_STATE|TIMER_MODIFY_STATE)\0"
	.byte	0x1
	.uleb128 0x1c4
	.ascii "SECURITY_NULL_SID_AUTHORITY {0,0,0,0,0,0}\0"
	.byte	0x1
	.uleb128 0x1c5
	.ascii "SECURITY_WORLD_SID_AUTHORITY {0,0,0,0,0,1}\0"
	.byte	0x1
	.uleb128 0x1c6
	.ascii "SECURITY_LOCAL_SID_AUTHORITY {0,0,0,0,0,2}\0"
	.byte	0x1
	.uleb128 0x1c7
	.ascii "SECURITY_CREATOR_SID_AUTHORITY {0,0,0,0,0,3}\0"
	.byte	0x1
	.uleb128 0x1c8
	.ascii "SECURITY_NON_UNIQUE_AUTHORITY {0,0,0,0,0,4}\0"
	.byte	0x1
	.uleb128 0x1c9
	.ascii "SECURITY_NT_AUTHORITY {0,0,0,0,0,5}\0"
	.byte	0x1
	.uleb128 0x1ca
	.ascii "SECURITY_MANDATORY_LABEL_AUTHORITY {0,0,0,0,0,16}\0"
	.byte	0x1
	.uleb128 0x1cb
	.ascii "SECURITY_NULL_RID 0\0"
	.byte	0x1
	.uleb128 0x1cc
	.ascii "SECURITY_WORLD_RID (0x00000000L)\0"
	.byte	0x1
	.uleb128 0x1cd
	.ascii "SECURITY_LOCAL_RID 0\0"
	.byte	0x1
	.uleb128 0x1ce
	.ascii "SECURITY_CREATOR_OWNER_RID 0\0"
	.byte	0x1
	.uleb128 0x1cf
	.ascii "SECURITY_CREATOR_GROUP_RID 1\0"
	.byte	0x1
	.uleb128 0x1d0
	.ascii "SECURITY_DIALUP_RID 1\0"
	.byte	0x1
	.uleb128 0x1d1
	.ascii "SECURITY_NETWORK_RID 2\0"
	.byte	0x1
	.uleb128 0x1d2
	.ascii "SECURITY_BATCH_RID 3\0"
	.byte	0x1
	.uleb128 0x1d3
	.ascii "SECURITY_INTERACTIVE_RID 4\0"
	.byte	0x1
	.uleb128 0x1d4
	.ascii "SECURITY_LOGON_IDS_RID 5\0"
	.byte	0x1
	.uleb128 0x1d5
	.ascii "SECURITY_SERVICE_RID 6\0"
	.byte	0x1
	.uleb128 0x1d6
	.ascii "SECURITY_LOCAL_SYSTEM_RID 18\0"
	.byte	0x1
	.uleb128 0x1d7
	.ascii "SECURITY_BUILTIN_DOMAIN_RID 32\0"
	.byte	0x1
	.uleb128 0x1d8
	.ascii "SECURITY_PRINCIPAL_SELF_RID 10\0"
	.byte	0x1
	.uleb128 0x1d9
	.ascii "SECURITY_CREATOR_OWNER_SERVER_RID 0x2\0"
	.byte	0x1
	.uleb128 0x1da
	.ascii "SECURITY_CREATOR_GROUP_SERVER_RID 0x3\0"
	.byte	0x1
	.uleb128 0x1db
	.ascii "SECURITY_LOGON_IDS_RID_COUNT 0x3\0"
	.byte	0x1
	.uleb128 0x1dc
	.ascii "SECURITY_ANONYMOUS_LOGON_RID 0x7\0"
	.byte	0x1
	.uleb128 0x1dd
	.ascii "SECURITY_PROXY_RID 0x8\0"
	.byte	0x1
	.uleb128 0x1de
	.ascii "SECURITY_ENTERPRISE_CONTROLLERS_RID 0x9\0"
	.byte	0x1
	.uleb128 0x1df
	.ascii "SECURITY_SERVER_LOGON_RID SECURITY_ENTERPRISE_CONTROLLERS_RID\0"
	.byte	0x1
	.uleb128 0x1e0
	.ascii "SECURITY_AUTHENTICATED_USER_RID 0xB\0"
	.byte	0x1
	.uleb128 0x1e1
	.ascii "SECURITY_RESTRICTED_CODE_RID 0xC\0"
	.byte	0x1
	.uleb128 0x1e2
	.ascii "SECURITY_NT_NON_UNIQUE_RID 0x15\0"
	.byte	0x1
	.uleb128 0x1e3
	.ascii "SID_REVISION 1\0"
	.byte	0x1
	.uleb128 0x1e7
	.ascii "DOMAIN_USER_RID_ADMIN 0x1F4L\0"
	.byte	0x1
	.uleb128 0x1e8
	.ascii "DOMAIN_USER_RID_GUEST 0x1F5L\0"
	.byte	0x1
	.uleb128 0x1e9
	.ascii "DOMAIN_GROUP_RID_ADMINS 0x200L\0"
	.byte	0x1
	.uleb128 0x1ea
	.ascii "DOMAIN_GROUP_RID_USERS 0x201L\0"
	.byte	0x1
	.uleb128 0x1eb
	.ascii "DOMAIN_ALIAS_RID_ADMINS 0x220L\0"
	.byte	0x1
	.uleb128 0x1ec
	.ascii "DOMAIN_ALIAS_RID_USERS 0x221L\0"
	.byte	0x1
	.uleb128 0x1ed
	.ascii "DOMAIN_ALIAS_RID_GUESTS 0x222L\0"
	.byte	0x1
	.uleb128 0x1ee
	.ascii "DOMAIN_ALIAS_RID_POWER_USERS 0x223L\0"
	.byte	0x1
	.uleb128 0x1ef
	.ascii "DOMAIN_ALIAS_RID_ACCOUNT_OPS 0x224L\0"
	.byte	0x1
	.uleb128 0x1f0
	.ascii "DOMAIN_ALIAS_RID_SYSTEM_OPS 0x225L\0"
	.byte	0x1
	.uleb128 0x1f1
	.ascii "DOMAIN_ALIAS_RID_PRINT_OPS 0x226L\0"
	.byte	0x1
	.uleb128 0x1f2
	.ascii "DOMAIN_ALIAS_RID_BACKUP_OPS 0x227L\0"
	.byte	0x1
	.uleb128 0x1f3
	.ascii "DOMAIN_ALIAS_RID_REPLICATOR 0x228L\0"
	.byte	0x1
	.uleb128 0x1f4
	.ascii "DOMAIN_ALIAS_RID_REMOTE_DESKTOP_USERS 0x22BL\0"
	.byte	0x1
	.uleb128 0x1f5
	.ascii "SECURITY_MANDATORY_UNTRUSTED_RID 0\0"
	.byte	0x1
	.uleb128 0x1f6
	.ascii "SECURITY_MANDATORY_LOW_RID 0x1000\0"
	.byte	0x1
	.uleb128 0x1f7
	.ascii "SECURITY_MANDATORY_MEDIUM_RID 0x2000\0"
	.byte	0x1
	.uleb128 0x1f8
	.ascii "SECURITY_MANDATORY_HIGH_RID 0x3000\0"
	.byte	0x1
	.uleb128 0x1f9
	.ascii "SECURITY_MANDATORY_SYSTEM_RID 0x4000\0"
	.byte	0x1
	.uleb128 0x1fa
	.ascii "SECURITY_MANDATORY_PROTECTED_PROCESS_RID 0x5000\0"
	.byte	0x1
	.uleb128 0x1fc
	.ascii "SECURITY_MANDATORY_MAXIMUM_USER_RID SECURITY_MANDATORY_SYSTEM_RID\0"
	.byte	0x1
	.uleb128 0x1fd
	.ascii "SE_CREATE_TOKEN_NAME TEXT(\"SeCreateTokenPrivilege\")\0"
	.byte	0x1
	.uleb128 0x1fe
	.ascii "SE_ASSIGNPRIMARYTOKEN_NAME TEXT(\"SeAssignPrimaryTokenPrivilege\")\0"
	.byte	0x1
	.uleb128 0x1ff
	.ascii "SE_LOCK_MEMORY_NAME TEXT(\"SeLockMemoryPrivilege\")\0"
	.byte	0x1
	.uleb128 0x200
	.ascii "SE_INCREASE_QUOTA_NAME TEXT(\"SeIncreaseQuotaPrivilege\")\0"
	.byte	0x1
	.uleb128 0x201
	.ascii "SE_UNSOLICITED_INPUT_NAME TEXT(\"SeUnsolicitedInputPrivilege\")\0"
	.byte	0x1
	.uleb128 0x202
	.ascii "SE_MACHINE_ACCOUNT_NAME TEXT(\"SeMachineAccountPrivilege\")\0"
	.byte	0x1
	.uleb128 0x203
	.ascii "SE_TCB_NAME TEXT(\"SeTcbPrivilege\")\0"
	.byte	0x1
	.uleb128 0x204
	.ascii "SE_SECURITY_NAME TEXT(\"SeSecurityPrivilege\")\0"
	.byte	0x1
	.uleb128 0x205
	.ascii "SE_TAKE_OWNERSHIP_NAME TEXT(\"SeTakeOwnershipPrivilege\")\0"
	.byte	0x1
	.uleb128 0x206
	.ascii "SE_LOAD_DRIVER_NAME TEXT(\"SeLoadDriverPrivilege\")\0"
	.byte	0x1
	.uleb128 0x207
	.ascii "SE_SYSTEM_PROFILE_NAME TEXT(\"SeSystemProfilePrivilege\")\0"
	.byte	0x1
	.uleb128 0x208
	.ascii "SE_SYSTEMTIME_NAME TEXT(\"SeSystemtimePrivilege\")\0"
	.byte	0x1
	.uleb128 0x209
	.ascii "SE_PROF_SINGLE_PROCESS_NAME TEXT(\"SeProfileSingleProcessPrivilege\")\0"
	.byte	0x1
	.uleb128 0x20a
	.ascii "SE_INC_BASE_PRIORITY_NAME TEXT(\"SeIncreaseBasePriorityPrivilege\")\0"
	.byte	0x1
	.uleb128 0x20b
	.ascii "SE_CREATE_PAGEFILE_NAME TEXT(\"SeCreatePagefilePrivilege\")\0"
	.byte	0x1
	.uleb128 0x20c
	.ascii "SE_CREATE_PERMANENT_NAME TEXT(\"SeCreatePermanentPrivilege\")\0"
	.byte	0x1
	.uleb128 0x20d
	.ascii "SE_BACKUP_NAME TEXT(\"SeBackupPrivilege\")\0"
	.byte	0x1
	.uleb128 0x20e
	.ascii "SE_RESTORE_NAME TEXT(\"SeRestorePrivilege\")\0"
	.byte	0x1
	.uleb128 0x20f
	.ascii "SE_SHUTDOWN_NAME TEXT(\"SeShutdownPrivilege\")\0"
	.byte	0x1
	.uleb128 0x210
	.ascii "SE_DEBUG_NAME TEXT(\"SeDebugPrivilege\")\0"
	.byte	0x1
	.uleb128 0x211
	.ascii "SE_AUDIT_NAME TEXT(\"SeAuditPrivilege\")\0"
	.byte	0x1
	.uleb128 0x212
	.ascii "SE_SYSTEM_ENVIRONMENT_NAME TEXT(\"SeSystemEnvironmentPrivilege\")\0"
	.byte	0x1
	.uleb128 0x213
	.ascii "SE_CHANGE_NOTIFY_NAME TEXT(\"SeChangeNotifyPrivilege\")\0"
	.byte	0x1
	.uleb128 0x214
	.ascii "SE_REMOTE_SHUTDOWN_NAME TEXT(\"SeRemoteShutdownPrivilege\")\0"
	.byte	0x1
	.uleb128 0x215
	.ascii "SE_CREATE_GLOBAL_NAME TEXT(\"SeCreateGlobalPrivilege\")\0"
	.byte	0x1
	.uleb128 0x216
	.ascii "SE_UNDOCK_NAME TEXT(\"SeUndockPrivilege\")\0"
	.byte	0x1
	.uleb128 0x217
	.ascii "SE_MANAGE_VOLUME_NAME TEXT(\"SeManageVolumePrivilege\")\0"
	.byte	0x1
	.uleb128 0x218
	.ascii "SE_IMPERSONATE_NAME TEXT(\"SeImpersonatePrivilege\")\0"
	.byte	0x1
	.uleb128 0x219
	.ascii "SE_ENABLE_DELEGATION_NAME TEXT(\"SeEnableDelegationPrivilege\")\0"
	.byte	0x1
	.uleb128 0x21a
	.ascii "SE_SYNC_AGENT_NAME TEXT(\"SeSyncAgentPrivilege\")\0"
	.byte	0x1
	.uleb128 0x21b
	.ascii "SE_TRUSTED_CREDMAN_ACCESS_NAME TEXT(\"SeTrustedCredManAccessPrivilege\")\0"
	.byte	0x1
	.uleb128 0x21c
	.ascii "SE_RELABEL_NAME TEXT(\"SeRelabelPrivilege\")\0"
	.byte	0x1
	.uleb128 0x21d
	.ascii "SE_INCREASE_WORKING_SET_NAME TEXT(\"SeIncreaseWorkingSetPrivilege\")\0"
	.byte	0x1
	.uleb128 0x21e
	.ascii "SE_TIME_ZONE_NAME TEXT(\"SeTimeZonePrivilege\")\0"
	.byte	0x1
	.uleb128 0x21f
	.ascii "SE_CREATE_SYMBOLIC_LINK_NAME TEXT(\"SeCreateSymbolicLinkPrivilege\")\0"
	.byte	0x1
	.uleb128 0x220
	.ascii "SE_GROUP_MANDATORY 1\0"
	.byte	0x1
	.uleb128 0x221
	.ascii "SE_GROUP_ENABLED_BY_DEFAULT 2\0"
	.byte	0x1
	.uleb128 0x222
	.ascii "SE_GROUP_ENABLED 4\0"
	.byte	0x1
	.uleb128 0x223
	.ascii "SE_GROUP_OWNER 8\0"
	.byte	0x1
	.uleb128 0x224
	.ascii "SE_GROUP_USE_FOR_DENY_ONLY 16\0"
	.byte	0x1
	.uleb128 0x225
	.ascii "SE_GROUP_INTEGRITY 32\0"
	.byte	0x1
	.uleb128 0x226
	.ascii "SE_GROUP_INTEGRITY_ENABLED 64\0"
	.byte	0x1
	.uleb128 0x227
	.ascii "SE_GROUP_LOGON_ID 3221225472U\0"
	.byte	0x1
	.uleb128 0x228
	.ascii "SE_GROUP_RESOURCE 536870912\0"
	.byte	0x1
	.uleb128 0x229
	.ascii "LANG_NEUTRAL 0x00\0"
	.byte	0x1
	.uleb128 0x22a
	.ascii "LANG_ARABIC 0x01\0"
	.byte	0x1
	.uleb128 0x22b
	.ascii "LANG_BULGARIAN 0x02\0"
	.byte	0x1
	.uleb128 0x22c
	.ascii "LANG_CATALAN 0x03\0"
	.byte	0x1
	.uleb128 0x22d
	.ascii "LANG_CHINESE 0x04\0"
	.byte	0x1
	.uleb128 0x22e
	.ascii "LANG_CZECH 0x05\0"
	.byte	0x1
	.uleb128 0x22f
	.ascii "LANG_DANISH 0x06\0"
	.byte	0x1
	.uleb128 0x230
	.ascii "LANG_GERMAN 0x07\0"
	.byte	0x1
	.uleb128 0x231
	.ascii "LANG_GREEK 0x08\0"
	.byte	0x1
	.uleb128 0x232
	.ascii "LANG_ENGLISH 0x09\0"
	.byte	0x1
	.uleb128 0x233
	.ascii "LANG_SPANISH 0x0a\0"
	.byte	0x1
	.uleb128 0x234
	.ascii "LANG_FINNISH 0x0b\0"
	.byte	0x1
	.uleb128 0x235
	.ascii "LANG_FRENCH 0x0c\0"
	.byte	0x1
	.uleb128 0x236
	.ascii "LANG_HEBREW 0x0d\0"
	.byte	0x1
	.uleb128 0x237
	.ascii "LANG_HUNGARIAN 0x0e\0"
	.byte	0x1
	.uleb128 0x238
	.ascii "LANG_ICELANDIC 0x0f\0"
	.byte	0x1
	.uleb128 0x239
	.ascii "LANG_ITALIAN 0x10\0"
	.byte	0x1
	.uleb128 0x23a
	.ascii "LANG_JAPANESE 0x11\0"
	.byte	0x1
	.uleb128 0x23b
	.ascii "LANG_KOREAN 0x12\0"
	.byte	0x1
	.uleb128 0x23c
	.ascii "LANG_DUTCH 0x13\0"
	.byte	0x1
	.uleb128 0x23d
	.ascii "LANG_NORWEGIAN 0x14\0"
	.byte	0x1
	.uleb128 0x23e
	.ascii "LANG_POLISH 0x15\0"
	.byte	0x1
	.uleb128 0x23f
	.ascii "LANG_PORTUGUESE 0x16\0"
	.byte	0x1
	.uleb128 0x240
	.ascii "LANG_ROMANIAN 0x18\0"
	.byte	0x1
	.uleb128 0x241
	.ascii "LANG_RUSSIAN 0x19\0"
	.byte	0x1
	.uleb128 0x242
	.ascii "LANG_CROATIAN 0x1a\0"
	.byte	0x1
	.uleb128 0x243
	.ascii "LANG_SERBIAN 0x1a\0"
	.byte	0x1
	.uleb128 0x244
	.ascii "LANG_SERBIAN_NEUTRAL 0x7c1a\0"
	.byte	0x1
	.uleb128 0x245
	.ascii "LANG_BOSNIAN 0x1a\0"
	.byte	0x1
	.uleb128 0x246
	.ascii "LANG_BOSNIAN_NEUTRAL 0x781a\0"
	.byte	0x1
	.uleb128 0x247
	.ascii "LANG_SLOVAK 0x1b\0"
	.byte	0x1
	.uleb128 0x248
	.ascii "LANG_ALBANIAN 0x1c\0"
	.byte	0x1
	.uleb128 0x249
	.ascii "LANG_SWEDISH 0x1d\0"
	.byte	0x1
	.uleb128 0x24a
	.ascii "LANG_THAI 0x1e\0"
	.byte	0x1
	.uleb128 0x24b
	.ascii "LANG_TURKISH 0x1f\0"
	.byte	0x1
	.uleb128 0x24c
	.ascii "LANG_URDU 0x20\0"
	.byte	0x1
	.uleb128 0x24d
	.ascii "LANG_INDONESIAN 0x21\0"
	.byte	0x1
	.uleb128 0x24e
	.ascii "LANG_UKRAINIAN 0x22\0"
	.byte	0x1
	.uleb128 0x24f
	.ascii "LANG_BELARUSIAN 0x23\0"
	.byte	0x1
	.uleb128 0x250
	.ascii "LANG_SLOVENIAN 0x24\0"
	.byte	0x1
	.uleb128 0x251
	.ascii "LANG_ESTONIAN 0x25\0"
	.byte	0x1
	.uleb128 0x252
	.ascii "LANG_LATVIAN 0x26\0"
	.byte	0x1
	.uleb128 0x253
	.ascii "LANG_LITHUANIAN 0x27\0"
	.byte	0x1
	.uleb128 0x254
	.ascii "LANG_PERSIAN 0x29\0"
	.byte	0x1
	.uleb128 0x255
	.ascii "LANG_FARSI LANG_PERSIAN\0"
	.byte	0x1
	.uleb128 0x256
	.ascii "LANG_VIETNAMESE 0x2a\0"
	.byte	0x1
	.uleb128 0x257
	.ascii "LANG_ARMENIAN 0x2b\0"
	.byte	0x1
	.uleb128 0x258
	.ascii "LANG_AZERI 0x2c\0"
	.byte	0x1
	.uleb128 0x259
	.ascii "LANG_BASQUE 0x2d\0"
	.byte	0x1
	.uleb128 0x25a
	.ascii "LANG_LOWER_SORBIAN 0x2e\0"
	.byte	0x1
	.uleb128 0x25b
	.ascii "LANG_UPPER_SORBIAN 0x2e\0"
	.byte	0x1
	.uleb128 0x25c
	.ascii "LANG_MACEDONIAN 0x2f\0"
	.byte	0x1
	.uleb128 0x25d
	.ascii "LANG_TSWANA 0x32\0"
	.byte	0x1
	.uleb128 0x25e
	.ascii "LANG_XHOSA 0x34\0"
	.byte	0x1
	.uleb128 0x25f
	.ascii "LANG_ZULU 0x35\0"
	.byte	0x1
	.uleb128 0x260
	.ascii "LANG_AFRIKAANS 0x36\0"
	.byte	0x1
	.uleb128 0x261
	.ascii "LANG_GEORGIAN 0x37\0"
	.byte	0x1
	.uleb128 0x262
	.ascii "LANG_FAEROESE 0x38\0"
	.byte	0x1
	.uleb128 0x263
	.ascii "LANG_HINDI 0x39\0"
	.byte	0x1
	.uleb128 0x264
	.ascii "LANG_MALTESE 0x3a\0"
	.byte	0x1
	.uleb128 0x265
	.ascii "LANG_SAMI 0x3b\0"
	.byte	0x1
	.uleb128 0x266
	.ascii "LANG_IRISH 0x3c\0"
	.byte	0x1
	.uleb128 0x267
	.ascii "LANG_MALAY 0x3e\0"
	.byte	0x1
	.uleb128 0x268
	.ascii "LANG_KAZAK 0x3f\0"
	.byte	0x1
	.uleb128 0x269
	.ascii "LANG_KYRGYZ 0x40\0"
	.byte	0x1
	.uleb128 0x26a
	.ascii "LANG_SWAHILI 0x41\0"
	.byte	0x1
	.uleb128 0x26b
	.ascii "LANG_UZBEK 0x43\0"
	.byte	0x1
	.uleb128 0x26c
	.ascii "LANG_TATAR 0x44\0"
	.byte	0x1
	.uleb128 0x26d
	.ascii "LANG_BENGALI 0x45\0"
	.byte	0x1
	.uleb128 0x26e
	.ascii "LANG_PUNJABI 0x46\0"
	.byte	0x1
	.uleb128 0x26f
	.ascii "LANG_GUJARATI 0x47\0"
	.byte	0x1
	.uleb128 0x270
	.ascii "LANG_ORIYA 0x48\0"
	.byte	0x1
	.uleb128 0x271
	.ascii "LANG_TAMIL 0x49\0"
	.byte	0x1
	.uleb128 0x272
	.ascii "LANG_TELUGU 0x4a\0"
	.byte	0x1
	.uleb128 0x273
	.ascii "LANG_KANNADA 0x4b\0"
	.byte	0x1
	.uleb128 0x274
	.ascii "LANG_MALAYALAM 0x4c\0"
	.byte	0x1
	.uleb128 0x275
	.ascii "LANG_ASSAMESE 0x4d\0"
	.byte	0x1
	.uleb128 0x276
	.ascii "LANG_MARATHI 0x4e\0"
	.byte	0x1
	.uleb128 0x277
	.ascii "LANG_SANSKRIT 0x4f\0"
	.byte	0x1
	.uleb128 0x278
	.ascii "LANG_MONGOLIAN 0x50\0"
	.byte	0x1
	.uleb128 0x279
	.ascii "LANG_TIBETAN 0x51\0"
	.byte	0x1
	.uleb128 0x27a
	.ascii "LANG_WELSH 0x52\0"
	.byte	0x1
	.uleb128 0x27b
	.ascii "LANG_KHMER 0x53\0"
	.byte	0x1
	.uleb128 0x27c
	.ascii "LANG_LAO 0x54\0"
	.byte	0x1
	.uleb128 0x27d
	.ascii "LANG_GALICIAN 0x56\0"
	.byte	0x1
	.uleb128 0x27e
	.ascii "LANG_KONKANI 0x57\0"
	.byte	0x1
	.uleb128 0x27f
	.ascii "LANG_MANIPURI 0x58\0"
	.byte	0x1
	.uleb128 0x280
	.ascii "LANG_SINDHI 0x59\0"
	.byte	0x1
	.uleb128 0x281
	.ascii "LANG_SYRIAC 0x5a\0"
	.byte	0x1
	.uleb128 0x282
	.ascii "LANG_SINHALESE 0x5b\0"
	.byte	0x1
	.uleb128 0x283
	.ascii "LANG_INUKTITUT 0x5d\0"
	.byte	0x1
	.uleb128 0x284
	.ascii "LANG_AMHARIC 0x5e\0"
	.byte	0x1
	.uleb128 0x285
	.ascii "LANG_TAMAZIGHT 0x5f\0"
	.byte	0x1
	.uleb128 0x286
	.ascii "LANG_KASHMIRI 0x60\0"
	.byte	0x1
	.uleb128 0x287
	.ascii "LANG_NEPALI 0x61\0"
	.byte	0x1
	.uleb128 0x288
	.ascii "LANG_FRISIAN 0x62\0"
	.byte	0x1
	.uleb128 0x289
	.ascii "LANG_PASHTO 0x63\0"
	.byte	0x1
	.uleb128 0x28a
	.ascii "LANG_FILIPINO 0x64\0"
	.byte	0x1
	.uleb128 0x28b
	.ascii "LANG_DIVEHI 0x65\0"
	.byte	0x1
	.uleb128 0x28c
	.ascii "LANG_HAUSA 0x68\0"
	.byte	0x1
	.uleb128 0x28d
	.ascii "LANG_YORUBA 0x6a\0"
	.byte	0x1
	.uleb128 0x28e
	.ascii "LANG_QUECHUA 0x6b\0"
	.byte	0x1
	.uleb128 0x28f
	.ascii "LANG_SOTHO 0x6c\0"
	.byte	0x1
	.uleb128 0x290
	.ascii "LANG_BASHKIR 0x6d\0"
	.byte	0x1
	.uleb128 0x291
	.ascii "LANG_LUXEMBOURGISH 0x6e\0"
	.byte	0x1
	.uleb128 0x292
	.ascii "LANG_GREENLANDIC 0x6f\0"
	.byte	0x1
	.uleb128 0x293
	.ascii "LANG_IGBO 0x70\0"
	.byte	0x1
	.uleb128 0x294
	.ascii "LANG_TIGRIGNA 0x73\0"
	.byte	0x1
	.uleb128 0x295
	.ascii "LANG_YI 0x78\0"
	.byte	0x1
	.uleb128 0x296
	.ascii "LANG_MAPUDUNGUN 0x7a\0"
	.byte	0x1
	.uleb128 0x297
	.ascii "LANG_MOHAWK 0x7c\0"
	.byte	0x1
	.uleb128 0x298
	.ascii "LANG_BRETON 0x7e\0"
	.byte	0x1
	.uleb128 0x299
	.ascii "LANG_INVARIANT 0x7f\0"
	.byte	0x1
	.uleb128 0x29a
	.ascii "LANG_UIGHUR 0x80\0"
	.byte	0x1
	.uleb128 0x29b
	.ascii "LANG_MAORI 0x81\0"
	.byte	0x1
	.uleb128 0x29c
	.ascii "LANG_OCCITAN 0x82\0"
	.byte	0x1
	.uleb128 0x29d
	.ascii "LANG_CORSICAN 0x83\0"
	.byte	0x1
	.uleb128 0x29e
	.ascii "LANG_ALSATIAN 0x84\0"
	.byte	0x1
	.uleb128 0x29f
	.ascii "LANG_YAKUT 0x85\0"
	.byte	0x1
	.uleb128 0x2a0
	.ascii "LANG_KICHE 0x86\0"
	.byte	0x1
	.uleb128 0x2a1
	.ascii "LANG_KINYARWANDA 0x87\0"
	.byte	0x1
	.uleb128 0x2a2
	.ascii "LANG_WOLOF 0x88\0"
	.byte	0x1
	.uleb128 0x2a3
	.ascii "LANG_DARI 0x8c\0"
	.byte	0x1
	.uleb128 0x2a4
	.ascii "LANG_MALAGASY 0x8d\0"
	.byte	0x1
	.uleb128 0x2a5
	.ascii "SUBLANG_NEUTRAL 0x00\0"
	.byte	0x1
	.uleb128 0x2a6
	.ascii "SUBLANG_DEFAULT 0x01\0"
	.byte	0x1
	.uleb128 0x2a7
	.ascii "SUBLANG_SYS_DEFAULT 0x02\0"
	.byte	0x1
	.uleb128 0x2a8
	.ascii "SUBLANG_CUSTOM_DEFAULT 0x03\0"
	.byte	0x1
	.uleb128 0x2a9
	.ascii "SUBLANG_CUSTOM_UNSPECIFIED 0x04\0"
	.byte	0x1
	.uleb128 0x2aa
	.ascii "SUBLANG_UI_CUSTOM_DEFAULT 0x05\0"
	.byte	0x1
	.uleb128 0x2ab
	.ascii "SUBLANG_AFRIKAANS_SOUTH_AFRICA 0x01\0"
	.byte	0x1
	.uleb128 0x2ac
	.ascii "SUBLANG_ALBANIAN_ALBANIA 0x01\0"
	.byte	0x1
	.uleb128 0x2ad
	.ascii "SUBLANG_ALSATIAN_FRANCE 0x01\0"
	.byte	0x1
	.uleb128 0x2ae
	.ascii "SUBLANG_AMHARIC_ETHIOPIA 0x01\0"
	.byte	0x1
	.uleb128 0x2af
	.ascii "SUBLANG_ARABIC_SAUDI_ARABIA 0x01\0"
	.byte	0x1
	.uleb128 0x2b0
	.ascii "SUBLANG_ARABIC_IRAQ 0x02\0"
	.byte	0x1
	.uleb128 0x2b1
	.ascii "SUBLANG_ARABIC_EGYPT 0x03\0"
	.byte	0x1
	.uleb128 0x2b2
	.ascii "SUBLANG_ARABIC_LIBYA 0x04\0"
	.byte	0x1
	.uleb128 0x2b3
	.ascii "SUBLANG_ARABIC_ALGERIA 0x05\0"
	.byte	0x1
	.uleb128 0x2b4
	.ascii "SUBLANG_ARABIC_MOROCCO 0x06\0"
	.byte	0x1
	.uleb128 0x2b5
	.ascii "SUBLANG_ARABIC_TUNISIA 0x07\0"
	.byte	0x1
	.uleb128 0x2b6
	.ascii "SUBLANG_ARABIC_OMAN 0x08\0"
	.byte	0x1
	.uleb128 0x2b7
	.ascii "SUBLANG_ARABIC_YEMEN 0x09\0"
	.byte	0x1
	.uleb128 0x2b8
	.ascii "SUBLANG_ARABIC_SYRIA 0x0a\0"
	.byte	0x1
	.uleb128 0x2b9
	.ascii "SUBLANG_ARABIC_JORDAN 0x0b\0"
	.byte	0x1
	.uleb128 0x2ba
	.ascii "SUBLANG_ARABIC_LEBANON 0x0c\0"
	.byte	0x1
	.uleb128 0x2bb
	.ascii "SUBLANG_ARABIC_KUWAIT 0x0d\0"
	.byte	0x1
	.uleb128 0x2bc
	.ascii "SUBLANG_ARABIC_UAE 0x0e\0"
	.byte	0x1
	.uleb128 0x2bd
	.ascii "SUBLANG_ARABIC_BAHRAIN 0x0f\0"
	.byte	0x1
	.uleb128 0x2be
	.ascii "SUBLANG_ARABIC_QATAR 0x10\0"
	.byte	0x1
	.uleb128 0x2bf
	.ascii "SUBLANG_ARMENIAN_ARMENIA 0x01\0"
	.byte	0x1
	.uleb128 0x2c0
	.ascii "SUBLANG_ASSAMESE_INDIA 0x01\0"
	.byte	0x1
	.uleb128 0x2c1
	.ascii "SUBLANG_AZERI_LATIN 0x01\0"
	.byte	0x1
	.uleb128 0x2c2
	.ascii "SUBLANG_AZERI_CYRILLIC 0x02\0"
	.byte	0x1
	.uleb128 0x2c3
	.ascii "SUBLANG_BASHKIR_RUSSIA 0x01\0"
	.byte	0x1
	.uleb128 0x2c4
	.ascii "SUBLANG_BASQUE_BASQUE 0x01\0"
	.byte	0x1
	.uleb128 0x2c5
	.ascii "SUBLANG_BELARUSIAN_BELARUS 0x01\0"
	.byte	0x1
	.uleb128 0x2c6
	.ascii "SUBLANG_BENGALI_INDIA 0x01\0"
	.byte	0x1
	.uleb128 0x2c7
	.ascii "SUBLANG_BENGALI_BANGLADESH 0x02\0"
	.byte	0x1
	.uleb128 0x2c8
	.ascii "SUBLANG_BOSNIAN_BOSNIA_HERZEGOVINA_LATIN 0x05\0"
	.byte	0x1
	.uleb128 0x2c9
	.ascii "SUBLANG_BOSNIAN_BOSNIA_HERZEGOVINA_CYRILLIC 0x08\0"
	.byte	0x1
	.uleb128 0x2ca
	.ascii "SUBLANG_BRETON_FRANCE 0x01\0"
	.byte	0x1
	.uleb128 0x2cb
	.ascii "SUBLANG_BULGARIAN_BULGARIA 0x01\0"
	.byte	0x1
	.uleb128 0x2cc
	.ascii "SUBLANG_CATALAN_CATALAN 0x01\0"
	.byte	0x1
	.uleb128 0x2cd
	.ascii "SUBLANG_CHINESE_TRADITIONAL 0x01\0"
	.byte	0x1
	.uleb128 0x2ce
	.ascii "SUBLANG_CHINESE_SIMPLIFIED 0x02\0"
	.byte	0x1
	.uleb128 0x2cf
	.ascii "SUBLANG_CHINESE_HONGKONG 0x03\0"
	.byte	0x1
	.uleb128 0x2d0
	.ascii "SUBLANG_CHINESE_SINGAPORE 0x04\0"
	.byte	0x1
	.uleb128 0x2d1
	.ascii "SUBLANG_CHINESE_MACAU 0x05\0"
	.byte	0x1
	.uleb128 0x2d2
	.ascii "SUBLANG_CORSICAN_FRANCE 0x01\0"
	.byte	0x1
	.uleb128 0x2d3
	.ascii "SUBLANG_CZECH_CZECH_REPUBLIC 0x01\0"
	.byte	0x1
	.uleb128 0x2d4
	.ascii "SUBLANG_CROATIAN_CROATIA 0x01\0"
	.byte	0x1
	.uleb128 0x2d5
	.ascii "SUBLANG_CROATIAN_BOSNIA_HERZEGOVINA_LATIN 0x04\0"
	.byte	0x1
	.uleb128 0x2d6
	.ascii "SUBLANG_DANISH_DENMARK 0x01\0"
	.byte	0x1
	.uleb128 0x2d7
	.ascii "SUBLANG_DIVEHI_MALDIVES 0x01\0"
	.byte	0x1
	.uleb128 0x2d8
	.ascii "SUBLANG_DUTCH 0x01\0"
	.byte	0x1
	.uleb128 0x2d9
	.ascii "SUBLANG_DUTCH_BELGIAN 0x02\0"
	.byte	0x1
	.uleb128 0x2da
	.ascii "SUBLANG_ENGLISH_US 0x01\0"
	.byte	0x1
	.uleb128 0x2db
	.ascii "SUBLANG_ENGLISH_UK 0x02\0"
	.byte	0x1
	.uleb128 0x2dc
	.ascii "SUBLANG_ENGLISH_AUS 0x03\0"
	.byte	0x1
	.uleb128 0x2dd
	.ascii "SUBLANG_ENGLISH_CAN 0x04\0"
	.byte	0x1
	.uleb128 0x2de
	.ascii "SUBLANG_ENGLISH_NZ 0x05\0"
	.byte	0x1
	.uleb128 0x2e2
	.ascii "SUBLANG_ENGLISH_EIRE 0x06\0"
	.byte	0x1
	.uleb128 0x2e3
	.ascii "SUBLANG_ENGLISH_SOUTH_AFRICA 0x07\0"
	.byte	0x1
	.uleb128 0x2e4
	.ascii "SUBLANG_ENGLISH_JAMAICA 0x08\0"
	.byte	0x1
	.uleb128 0x2e5
	.ascii "SUBLANG_ENGLISH_CARIBBEAN 0x09\0"
	.byte	0x1
	.uleb128 0x2e6
	.ascii "SUBLANG_ENGLISH_BELIZE 0x0a\0"
	.byte	0x1
	.uleb128 0x2e7
	.ascii "SUBLANG_ENGLISH_TRINIDAD 0x0b\0"
	.byte	0x1
	.uleb128 0x2e8
	.ascii "SUBLANG_ENGLISH_ZIMBABWE 0x0c\0"
	.byte	0x1
	.uleb128 0x2e9
	.ascii "SUBLANG_ENGLISH_PHILIPPINES 0x0d\0"
	.byte	0x1
	.uleb128 0x2ea
	.ascii "SUBLANG_ENGLISH_INDIA 0x10\0"
	.byte	0x1
	.uleb128 0x2eb
	.ascii "SUBLANG_ENGLISH_MALAYSIA 0x11\0"
	.byte	0x1
	.uleb128 0x2ec
	.ascii "SUBLANG_ENGLISH_SINGAPORE 0x12\0"
	.byte	0x1
	.uleb128 0x2ed
	.ascii "SUBLANG_ESTONIAN_ESTONIA 0x01\0"
	.byte	0x1
	.uleb128 0x2ee
	.ascii "SUBLANG_FAEROESE_FAROE_ISLANDS 0x01\0"
	.byte	0x1
	.uleb128 0x2ef
	.ascii "SUBLANG_FILIPINO_PHILIPPINES 0x01\0"
	.byte	0x1
	.uleb128 0x2f0
	.ascii "SUBLANG_FINNISH_FINLAND 0x01\0"
	.byte	0x1
	.uleb128 0x2f1
	.ascii "SUBLANG_FRENCH 0x01\0"
	.byte	0x1
	.uleb128 0x2f2
	.ascii "SUBLANG_FRENCH_BELGIAN 0x02\0"
	.byte	0x1
	.uleb128 0x2f3
	.ascii "SUBLANG_FRENCH_CANADIAN 0x03\0"
	.byte	0x1
	.uleb128 0x2f4
	.ascii "SUBLANG_FRENCH_SWISS 0x04\0"
	.byte	0x1
	.uleb128 0x2f5
	.ascii "SUBLANG_FRENCH_LUXEMBOURG 0x05\0"
	.byte	0x1
	.uleb128 0x2f6
	.ascii "SUBLANG_FRENCH_MONACO 0x06\0"
	.byte	0x1
	.uleb128 0x2f7
	.ascii "SUBLANG_FRISIAN_NETHERLANDS 0x01\0"
	.byte	0x1
	.uleb128 0x2f8
	.ascii "SUBLANG_GALICIAN_GALICIAN 0x01\0"
	.byte	0x1
	.uleb128 0x2f9
	.ascii "SUBLANG_GEORGIAN_GEORGIA 0x01\0"
	.byte	0x1
	.uleb128 0x2fa
	.ascii "SUBLANG_GERMAN 0x01\0"
	.byte	0x1
	.uleb128 0x2fb
	.ascii "SUBLANG_GERMAN_SWISS 0x02\0"
	.byte	0x1
	.uleb128 0x2fc
	.ascii "SUBLANG_GERMAN_AUSTRIAN 0x03\0"
	.byte	0x1
	.uleb128 0x2fd
	.ascii "SUBLANG_GERMAN_LUXEMBOURG 0x04\0"
	.byte	0x1
	.uleb128 0x2fe
	.ascii "SUBLANG_GERMAN_LIECHTENSTEIN 0x05\0"
	.byte	0x1
	.uleb128 0x2ff
	.ascii "SUBLANG_GREEK_GREECE 0x01\0"
	.byte	0x1
	.uleb128 0x300
	.ascii "SUBLANG_GREENLANDIC_GREENLAND 0x01\0"
	.byte	0x1
	.uleb128 0x301
	.ascii "SUBLANG_GUJARATI_INDIA 0x01\0"
	.byte	0x1
	.uleb128 0x302
	.ascii "SUBLANG_HAUSA_NIGERIA_LATIN 0x01\0"
	.byte	0x1
	.uleb128 0x303
	.ascii "SUBLANG_HAUSA_NIGERIA SUBLANG_HAUSA_NIGERIA_LATIN\0"
	.byte	0x1
	.uleb128 0x304
	.ascii "SUBLANG_HEBREW_ISRAEL 0x01\0"
	.byte	0x1
	.uleb128 0x305
	.ascii "SUBLANG_HINDI_INDIA 0x01\0"
	.byte	0x1
	.uleb128 0x306
	.ascii "SUBLANG_HUNGARIAN_HUNGARY 0x01\0"
	.byte	0x1
	.uleb128 0x307
	.ascii "SUBLANG_ICELANDIC_ICELAND 0x01\0"
	.byte	0x1
	.uleb128 0x308
	.ascii "SUBLANG_IGBO_NIGERIA 0x01\0"
	.byte	0x1
	.uleb128 0x309
	.ascii "SUBLANG_INDONESIAN_INDONESIA 0x01\0"
	.byte	0x1
	.uleb128 0x30a
	.ascii "SUBLANG_INUKTITUT_CANADA 0x01\0"
	.byte	0x1
	.uleb128 0x30b
	.ascii "SUBLANG_INUKTITUT_CANADA_LATIN 0x02\0"
	.byte	0x1
	.uleb128 0x30c
	.ascii "SUBLANG_IRISH_IRELAND 0x02\0"
	.byte	0x1
	.uleb128 0x30d
	.ascii "SUBLANG_ITALIAN 0x01\0"
	.byte	0x1
	.uleb128 0x30e
	.ascii "SUBLANG_ITALIAN_SWISS 0x02\0"
	.byte	0x1
	.uleb128 0x30f
	.ascii "SUBLANG_JAPANESE_JAPAN 0x01\0"
	.byte	0x1
	.uleb128 0x310
	.ascii "SUBLANG_KASHMIRI_INDIA 0x02\0"
	.byte	0x1
	.uleb128 0x311
	.ascii "SUBLANG_KASHMIRI_SASIA 0x02\0"
	.byte	0x1
	.uleb128 0x312
	.ascii "SUBLANG_KAZAK_KAZAKHSTAN 0x01\0"
	.byte	0x1
	.uleb128 0x313
	.ascii "SUBLANG_KHMER_CAMBODIA 0x01\0"
	.byte	0x1
	.uleb128 0x314
	.ascii "SUBLANG_KICHE_GUATEMALA 0x01\0"
	.byte	0x1
	.uleb128 0x315
	.ascii "SUBLANG_KINYARWANDA_RWANDA 0x01\0"
	.byte	0x1
	.uleb128 0x316
	.ascii "SUBLANG_KONKANI_INDIA 0x01\0"
	.byte	0x1
	.uleb128 0x317
	.ascii "SUBLANG_KOREAN 0x01\0"
	.byte	0x1
	.uleb128 0x318
	.ascii "SUBLANG_KYRGYZ_KYRGYZSTAN 0x01\0"
	.byte	0x1
	.uleb128 0x319
	.ascii "SUBLANG_LAO_LAO 0x01\0"
	.byte	0x1
	.uleb128 0x31a
	.ascii "SUBLANG_LAO_LAO_PDR SUBLANG_LAO_LAO\0"
	.byte	0x1
	.uleb128 0x31b
	.ascii "SUBLANG_LATVIAN_LATVIA 0x01\0"
	.byte	0x1
	.uleb128 0x31f
	.ascii "SUBLANG_LITHUANIAN 0x01\0"
	.byte	0x1
	.uleb128 0x320
	.ascii "SUBLANG_LOWER_SORBIAN_GERMANY 0x02\0"
	.byte	0x1
	.uleb128 0x321
	.ascii "SUBLANG_LUXEMBOURGISH_LUXEMBOURG 0x01\0"
	.byte	0x1
	.uleb128 0x322
	.ascii "SUBLANG_MACEDONIAN_MACEDONIA 0x01\0"
	.byte	0x1
	.uleb128 0x323
	.ascii "SUBLANG_MALAY_MALAYSIA 0x01\0"
	.byte	0x1
	.uleb128 0x324
	.ascii "SUBLANG_MALAY_BRUNEI_DARUSSALAM 0x02\0"
	.byte	0x1
	.uleb128 0x325
	.ascii "SUBLANG_MALAYALAM_INDIA 0x01\0"
	.byte	0x1
	.uleb128 0x326
	.ascii "SUBLANG_MALTESE_MALTA 0x01\0"
	.byte	0x1
	.uleb128 0x327
	.ascii "SUBLANG_MAORI_NEW_ZEALAND 0x01\0"
	.byte	0x1
	.uleb128 0x328
	.ascii "SUBLANG_MAPUDUNGUN_CHILE 0x01\0"
	.byte	0x1
	.uleb128 0x329
	.ascii "SUBLANG_MARATHI_INDIA 0x01\0"
	.byte	0x1
	.uleb128 0x32a
	.ascii "SUBLANG_MOHAWK_MOHAWK 0x01\0"
	.byte	0x1
	.uleb128 0x32b
	.ascii "SUBLANG_MONGOLIAN_CYRILLIC_MONGOLIA 0x01\0"
	.byte	0x1
	.uleb128 0x32c
	.ascii "SUBLANG_MONGOLIAN_PRC 0x02\0"
	.byte	0x1
	.uleb128 0x32d
	.ascii "SUBLANG_NEPALI_NEPAL 0x01\0"
	.byte	0x1
	.uleb128 0x32e
	.ascii "SUBLANG_NEPALI_INDIA 0x02\0"
	.byte	0x1
	.uleb128 0x32f
	.ascii "SUBLANG_NORWEGIAN_BOKMAL 0x01\0"
	.byte	0x1
	.uleb128 0x330
	.ascii "SUBLANG_NORWEGIAN_NYNORSK 0x02\0"
	.byte	0x1
	.uleb128 0x331
	.ascii "SUBLANG_OCCITAN_FRANCE 0x01\0"
	.byte	0x1
	.uleb128 0x332
	.ascii "SUBLANG_ORIYA_INDIA 0x01\0"
	.byte	0x1
	.uleb128 0x333
	.ascii "SUBLANG_PASHTO_AFGHANISTAN 0x01\0"
	.byte	0x1
	.uleb128 0x334
	.ascii "SUBLANG_PERSIAN_IRAN 0x01\0"
	.byte	0x1
	.uleb128 0x335
	.ascii "SUBLANG_POLISH_POLAND 0x01\0"
	.byte	0x1
	.uleb128 0x336
	.ascii "SUBLANG_PORTUGUESE_BRAZILIAN 0x01\0"
	.byte	0x1
	.uleb128 0x33a
	.ascii "SUBLANG_PORTUGUESE 0x02\0"
	.byte	0x1
	.uleb128 0x33b
	.ascii "SUBLANG_PUNJABI_INDIA 0x01\0"
	.byte	0x1
	.uleb128 0x33d
	.ascii "SUBLANG_QUECHUA_BOLIVIA 0x01\0"
	.byte	0x1
	.uleb128 0x33e
	.ascii "SUBLANG_QUECHUA_ECUADOR 0x02\0"
	.byte	0x1
	.uleb128 0x33f
	.ascii "SUBLANG_QUECHUA_PERU 0x03\0"
	.byte	0x1
	.uleb128 0x340
	.ascii "SUBLANG_ROMANIAN_ROMANIA 0x01\0"
	.byte	0x1
	.uleb128 0x342
	.ascii "SUBLANG_ROMANSH_SWITZERLAND 0x01\0"
	.byte	0x1
	.uleb128 0x343
	.ascii "SUBLANG_RUSSIAN_RUSSIA 0x01\0"
	.byte	0x1
	.uleb128 0x344
	.ascii "SUBLANG_SAMI_NORTHERN_NORWAY 0x01\0"
	.byte	0x1
	.uleb128 0x345
	.ascii "SUBLANG_SAMI_NORTHERN_SWEDEN 0x02\0"
	.byte	0x1
	.uleb128 0x346
	.ascii "SUBLANG_SAMI_NORTHERN_FINLAND 0x03\0"
	.byte	0x1
	.uleb128 0x347
	.ascii "SUBLANG_SAMI_LULE_NORWAY 0x04\0"
	.byte	0x1
	.uleb128 0x348
	.ascii "SUBLANG_SAMI_LULE_SWEDEN 0x05\0"
	.byte	0x1
	.uleb128 0x349
	.ascii "SUBLANG_SAMI_SOUTHERN_NORWAY 0x06\0"
	.byte	0x1
	.uleb128 0x34a
	.ascii "SUBLANG_SAMI_SOUTHERN_SWEDEN 0x07\0"
	.byte	0x1
	.uleb128 0x34b
	.ascii "SUBLANG_SAMI_SKOLT_FINLAND 0x08\0"
	.byte	0x1
	.uleb128 0x34c
	.ascii "SUBLANG_SAMI_INARI_FINLAND 0x09\0"
	.byte	0x1
	.uleb128 0x34d
	.ascii "SUBLANG_SANSKRIT_INDIA 0x01\0"
	.byte	0x1
	.uleb128 0x34e
	.ascii "SUBLANG_SERBIAN_LATIN 0x02\0"
	.byte	0x1
	.uleb128 0x34f
	.ascii "SUBLANG_SERBIAN_CYRILLIC 0x03\0"
	.byte	0x1
	.uleb128 0x350
	.ascii "SUBLANG_SERBIAN_BOSNIA_HERZEGOVINA_LATIN 0x06\0"
	.byte	0x1
	.uleb128 0x351
	.ascii "SUBLANG_SERBIAN_BOSNIA_HERZEGOVINA_CYRILLIC 0x07\0"
	.byte	0x1
	.uleb128 0x352
	.ascii "SUBLANG_SINDHI_AFGHANISTAN 0x02\0"
	.byte	0x1
	.uleb128 0x353
	.ascii "SUBLANG_SINHALESE_SRI_LANKA 0x01\0"
	.byte	0x1
	.uleb128 0x354
	.ascii "SUBLANG_SOTHO_NORTHERN_SOUTH_AFRICA 0x01\0"
	.byte	0x1
	.uleb128 0x355
	.ascii "SUBLANG_SLOVAK_SLOVAKIA 0x01\0"
	.byte	0x1
	.uleb128 0x356
	.ascii "SUBLANG_SLOVENIAN_SLOVENIA 0x01\0"
	.byte	0x1
	.uleb128 0x357
	.ascii "SUBLANG_SPANISH 0x01\0"
	.byte	0x1
	.uleb128 0x358
	.ascii "SUBLANG_SPANISH_MEXICAN 0x02\0"
	.byte	0x1
	.uleb128 0x359
	.ascii "SUBLANG_SPANISH_MODERN 0x03\0"
	.byte	0x1
	.uleb128 0x35a
	.ascii "SUBLANG_SPANISH_GUATEMALA 0x04\0"
	.byte	0x1
	.uleb128 0x35b
	.ascii "SUBLANG_SPANISH_COSTA_RICA 0x05\0"
	.byte	0x1
	.uleb128 0x35c
	.ascii "SUBLANG_SPANISH_PANAMA 0x06\0"
	.byte	0x1
	.uleb128 0x35d
	.ascii "SUBLANG_SPANISH_DOMINICAN_REPUBLIC 0x07\0"
	.byte	0x1
	.uleb128 0x35e
	.ascii "SUBLANG_SPANISH_VENEZUELA 0x08\0"
	.byte	0x1
	.uleb128 0x35f
	.ascii "SUBLANG_SPANISH_COLOMBIA 0x09\0"
	.byte	0x1
	.uleb128 0x360
	.ascii "SUBLANG_SPANISH_PERU 0x0a\0"
	.byte	0x1
	.uleb128 0x361
	.ascii "SUBLANG_SPANISH_ARGENTINA 0x0b\0"
	.byte	0x1
	.uleb128 0x362
	.ascii "SUBLANG_SPANISH_ECUADOR 0x0c\0"
	.byte	0x1
	.uleb128 0x363
	.ascii "SUBLANG_SPANISH_CHILE 0x0d\0"
	.byte	0x1
	.uleb128 0x364
	.ascii "SUBLANG_SPANISH_URUGUAY 0x0e\0"
	.byte	0x1
	.uleb128 0x365
	.ascii "SUBLANG_SPANISH_PARAGUAY 0x0f\0"
	.byte	0x1
	.uleb128 0x366
	.ascii "SUBLANG_SPANISH_BOLIVIA 0x10\0"
	.byte	0x1
	.uleb128 0x367
	.ascii "SUBLANG_SPANISH_EL_SALVADOR 0x11\0"
	.byte	0x1
	.uleb128 0x368
	.ascii "SUBLANG_SPANISH_HONDURAS 0x12\0"
	.byte	0x1
	.uleb128 0x369
	.ascii "SUBLANG_SPANISH_NICARAGUA 0x13\0"
	.byte	0x1
	.uleb128 0x36a
	.ascii "SUBLANG_SPANISH_PUERTO_RICO 0x14\0"
	.byte	0x1
	.uleb128 0x36b
	.ascii "SUBLANG_SPANISH_US 0x15\0"
	.byte	0x1
	.uleb128 0x36f
	.ascii "SUBLANG_SWEDISH 0x01\0"
	.byte	0x1
	.uleb128 0x370
	.ascii "SUBLANG_SWEDISH_FINLAND 0x02\0"
	.byte	0x1
	.uleb128 0x371
	.ascii "SUBLANG_SYRIAC 0x01\0"
	.byte	0x1
	.uleb128 0x372
	.ascii "SUBLANG_SYRIAC_SYRIA SUBLANG_SYRIAC\0"
	.byte	0x1
	.uleb128 0x373
	.ascii "SUBLANG_TAJIK_TAJIKISTAN 0x01\0"
	.byte	0x1
	.uleb128 0x374
	.ascii "SUBLANG_TAMAZIGHT_ALGERIA_LATIN 0x02\0"
	.byte	0x1
	.uleb128 0x375
	.ascii "SUBLANG_TAMIL_INDIA 0x01\0"
	.byte	0x1
	.uleb128 0x376
	.ascii "SUBLANG_TATAR_RUSSIA 0x01\0"
	.byte	0x1
	.uleb128 0x377
	.ascii "SUBLANG_TELUGU_INDIA 0x01\0"
	.byte	0x1
	.uleb128 0x378
	.ascii "SUBLANG_THAI_THAILAND 0x01\0"
	.byte	0x1
	.uleb128 0x379
	.ascii "SUBLANG_TIBETAN_PRC 0x01\0"
	.byte	0x1
	.uleb128 0x37a
	.ascii "SUBLANG_TIBETAN_BHUTAN 0x02\0"
	.byte	0x1
	.uleb128 0x37b
	.ascii "SUBLANG_TIGRIGNA_ERITREA 0x02\0"
	.byte	0x1
	.uleb128 0x37c
	.ascii "SUBLANG_TSWANA_SOUTH_AFRICA 0x01\0"
	.byte	0x1
	.uleb128 0x37d
	.ascii "SUBLANG_TURKISH_TURKEY 0x01\0"
	.byte	0x1
	.uleb128 0x37e
	.ascii "SUBLANG_TURKMEN_TURKMENISTAN 0x01\0"
	.byte	0x1
	.uleb128 0x37f
	.ascii "SUBLANG_UIGHUR_PRC 0x01\0"
	.byte	0x1
	.uleb128 0x380
	.ascii "SUBLANG_UKRAINIAN_UKRAINE 0x01\0"
	.byte	0x1
	.uleb128 0x381
	.ascii "SUBLANG_UPPER_SORBIAN_GERMANY 0x01\0"
	.byte	0x1
	.uleb128 0x382
	.ascii "SUBLANG_URDU_PAKISTAN 0x01\0"
	.byte	0x1
	.uleb128 0x383
	.ascii "SUBLANG_URDU_INDIA 0x02\0"
	.byte	0x1
	.uleb128 0x384
	.ascii "SUBLANG_UZBEK_LATIN 0x01\0"
	.byte	0x1
	.uleb128 0x385
	.ascii "SUBLANG_UZBEK_CYRILLIC 0x02\0"
	.byte	0x1
	.uleb128 0x386
	.ascii "SUBLANG_VIETNAMESE_VIETNAM 0x01\0"
	.byte	0x1
	.uleb128 0x387
	.ascii "SUBLANG_WELSH_UNITED_KINGDOM 0x01\0"
	.byte	0x1
	.uleb128 0x388
	.ascii "SUBLANG_WOLOF_SENEGAL 0x01\0"
	.byte	0x1
	.uleb128 0x389
	.ascii "SUBLANG_YORUBA_NIGERIA 0x01\0"
	.byte	0x1
	.uleb128 0x38a
	.ascii "SUBLANG_XHOSA_SOUTH_AFRICA 0x01\0"
	.byte	0x1
	.uleb128 0x38b
	.ascii "SUBLANG_YAKUT_RUSSIA 0x01\0"
	.byte	0x1
	.uleb128 0x38c
	.ascii "SUBLANG_YI_PRC 0x01\0"
	.byte	0x1
	.uleb128 0x38d
	.ascii "SUBLANG_ZULU_SOUTH_AFRICA 0x01\0"
	.byte	0x1
	.uleb128 0x38e
	.ascii "NLS_VALID_LOCALE_MASK 1048575\0"
	.byte	0x1
	.uleb128 0x38f
	.ascii "SORT_DEFAULT 0\0"
	.byte	0x1
	.uleb128 0x390
	.ascii "SORT_JAPANESE_XJIS 0\0"
	.byte	0x1
	.uleb128 0x391
	.ascii "SORT_JAPANESE_UNICODE 1\0"
	.byte	0x1
	.uleb128 0x392
	.ascii "SORT_CHINESE_BIG5 0\0"
	.byte	0x1
	.uleb128 0x393
	.ascii "SORT_CHINESE_PRCP 0\0"
	.byte	0x1
	.uleb128 0x394
	.ascii "SORT_CHINESE_UNICODE 1\0"
	.byte	0x1
	.uleb128 0x395
	.ascii "SORT_CHINESE_PRC 2\0"
	.byte	0x1
	.uleb128 0x396
	.ascii "SORT_CHINESE_BOPOMOFO 3\0"
	.byte	0x1
	.uleb128 0x397
	.ascii "SORT_KOREAN_KSC 0\0"
	.byte	0x1
	.uleb128 0x398
	.ascii "SORT_KOREAN_UNICODE 1\0"
	.byte	0x1
	.uleb128 0x399
	.ascii "SORT_GERMAN_PHONE_BOOK 1\0"
	.byte	0x1
	.uleb128 0x39a
	.ascii "SORT_HUNGARIAN_DEFAULT 0\0"
	.byte	0x1
	.uleb128 0x39b
	.ascii "SORT_HUNGARIAN_TECHNICAL 1\0"
	.byte	0x1
	.uleb128 0x39c
	.ascii "SORT_GEORGIAN_TRADITIONAL 0\0"
	.byte	0x1
	.uleb128 0x39d
	.ascii "SORT_GEORGIAN_MODERN 1\0"
	.byte	0x1
	.uleb128 0x39e
	.ascii "MAKELANGID(p,s) ((((WORD)(s))<<10)|(WORD)(p))\0"
	.byte	0x1
	.uleb128 0x39f
	.ascii "MAKELCID(l,s) ((DWORD)((((DWORD)((WORD)(s)))<<16)|((DWORD)((WORD)(l)))))\0"
	.byte	0x1
	.uleb128 0x3a0
	.ascii "PRIMARYLANGID(l) ((WORD)(l)&0x3ff)\0"
	.byte	0x1
	.uleb128 0x3a1
	.ascii "SORTIDFROMLCID(l) ((WORD)((((DWORD)(l))&NLS_VALID_LOCALE_MASK)>>16))\0"
	.byte	0x1
	.uleb128 0x3a2
	.ascii "SORTVERSIONFROMLCID(l) ((WORD)((((DWORD)(l))>>20)&0xf))\0"
	.byte	0x1
	.uleb128 0x3a3
	.ascii "SUBLANGID(l) ((WORD)(l)>>10)\0"
	.byte	0x1
	.uleb128 0x3a4
	.ascii "LANGIDFROMLCID(l) ((WORD)(l))\0"
	.byte	0x1
	.uleb128 0x3a5
	.ascii "LANG_SYSTEM_DEFAULT MAKELANGID(LANG_NEUTRAL,SUBLANG_SYS_DEFAULT)\0"
	.byte	0x1
	.uleb128 0x3a6
	.ascii "LANG_USER_DEFAULT MAKELANGID(LANG_NEUTRAL,SUBLANG_DEFAULT)\0"
	.byte	0x1
	.uleb128 0x3a7
	.ascii "LOCALE_NEUTRAL MAKELCID(MAKELANGID(LANG_NEUTRAL,SUBLANG_NEUTRAL),SORT_DEFAULT)\0"
	.byte	0x1
	.uleb128 0x3a8
	.ascii "ACL_REVISION 2\0"
	.byte	0x1
	.uleb128 0x3a9
	.ascii "ACL_REVISION_DS 4\0"
	.byte	0x1
	.uleb128 0x3aa
	.ascii "ACL_REVISION1 1\0"
	.byte	0x1
	.uleb128 0x3ab
	.ascii "ACL_REVISION2 2\0"
	.byte	0x1
	.uleb128 0x3ac
	.ascii "ACL_REVISION3 3\0"
	.byte	0x1
	.uleb128 0x3ad
	.ascii "ACL_REVISION4 4\0"
	.byte	0x1
	.uleb128 0x3ae
	.ascii "MIN_ACL_REVISION 2\0"
	.byte	0x1
	.uleb128 0x3af
	.ascii "MAX_ACL_REVISION 4\0"
	.byte	0x1
	.uleb128 0x3b0
	.ascii "MINCHAR 0x80\0"
	.byte	0x1
	.uleb128 0x3b1
	.ascii "MAXCHAR 0x7f\0"
	.byte	0x1
	.uleb128 0x3b2
	.ascii "MINSHORT 0x8000\0"
	.byte	0x1
	.uleb128 0x3b3
	.ascii "MAXSHORT 0x7fff\0"
	.byte	0x1
	.uleb128 0x3b4
	.ascii "MINLONG 0x80000000\0"
	.byte	0x1
	.uleb128 0x3b5
	.ascii "MAXLONG 0x7fffffff\0"
	.byte	0x1
	.uleb128 0x3b6
	.ascii "MAXBYTE 0xff\0"
	.byte	0x1
	.uleb128 0x3b7
	.ascii "MAXWORD 0xffff\0"
	.byte	0x1
	.uleb128 0x3b8
	.ascii "MAXDWORD 0xffffffff\0"
	.byte	0x1
	.uleb128 0x3b9
	.ascii "PROCESSOR_INTEL_386 386\0"
	.byte	0x1
	.uleb128 0x3ba
	.ascii "PROCESSOR_INTEL_486 486\0"
	.byte	0x1
	.uleb128 0x3bb
	.ascii "PROCESSOR_INTEL_PENTIUM 586\0"
	.byte	0x1
	.uleb128 0x3bc
	.ascii "PROCESSOR_MIPS_R4000 4000\0"
	.byte	0x1
	.uleb128 0x3bd
	.ascii "PROCESSOR_ALPHA_21064 21064\0"
	.byte	0x1
	.uleb128 0x3be
	.ascii "PROCESSOR_INTEL_IA64 2200\0"
	.byte	0x1
	.uleb128 0x3bf
	.ascii "PROCESSOR_ARCHITECTURE_INTEL 0\0"
	.byte	0x1
	.uleb128 0x3c0
	.ascii "PROCESSOR_ARCHITECTURE_MIPS 1\0"
	.byte	0x1
	.uleb128 0x3c1
	.ascii "PROCESSOR_ARCHITECTURE_ALPHA 2\0"
	.byte	0x1
	.uleb128 0x3c2
	.ascii "PROCESSOR_ARCHITECTURE_PPC 3\0"
	.byte	0x1
	.uleb128 0x3c3
	.ascii "PROCESSOR_ARCHITECTURE_SHX 4\0"
	.byte	0x1
	.uleb128 0x3c4
	.ascii "PROCESSOR_ARCHITECTURE_ARM 5\0"
	.byte	0x1
	.uleb128 0x3c5
	.ascii "PROCESSOR_ARCHITECTURE_IA64 6\0"
	.byte	0x1
	.uleb128 0x3c6
	.ascii "PROCESSOR_ARCHITECTURE_ALPHA64 7\0"
	.byte	0x1
	.uleb128 0x3c7
	.ascii "PROCESSOR_ARCHITECTURE_MSIL 8\0"
	.byte	0x1
	.uleb128 0x3c8
	.ascii "PROCESSOR_ARCHITECTURE_AMD64 9\0"
	.byte	0x1
	.uleb128 0x3c9
	.ascii "PROCESSOR_ARCHITECTURE_IA32_ON_WIN64 10\0"
	.byte	0x1
	.uleb128 0x3ca
	.ascii "PROCESSOR_ARCHITECTURE_UNKNOWN 0xFFFF\0"
	.byte	0x1
	.uleb128 0x3cb
	.ascii "PF_FLOATING_POINT_PRECISION_ERRATA 0\0"
	.byte	0x1
	.uleb128 0x3cc
	.ascii "PF_FLOATING_POINT_EMULATED 1\0"
	.byte	0x1
	.uleb128 0x3cd
	.ascii "PF_COMPARE_EXCHANGE_DOUBLE 2\0"
	.byte	0x1
	.uleb128 0x3ce
	.ascii "PF_MMX_INSTRUCTIONS_AVAILABLE 3\0"
	.byte	0x1
	.uleb128 0x3cf
	.ascii "PF_PPC_MOVEMEM_64BIT_OK 4\0"
	.byte	0x1
	.uleb128 0x3d0
	.ascii "PF_ALPHA_BYTE_INSTRUCTIONS 5\0"
	.byte	0x1
	.uleb128 0x3d1
	.ascii "PF_XMMI_INSTRUCTIONS_AVAILABLE 6\0"
	.byte	0x1
	.uleb128 0x3d2
	.ascii "PF_3DNOW_INSTRUCTIONS_AVAILABLE 7\0"
	.byte	0x1
	.uleb128 0x3d3
	.ascii "PF_RDTSC_INSTRUCTION_AVAILABLE 8\0"
	.byte	0x1
	.uleb128 0x3d4
	.ascii "PF_PAE_ENABLED 9\0"
	.byte	0x1
	.uleb128 0x3d5
	.ascii "PF_XMMI64_INSTRUCTIONS_AVAILABLE 10\0"
	.byte	0x1
	.uleb128 0x3d7
	.ascii "FILE_ACTION_ADDED 0x00000001\0"
	.byte	0x1
	.uleb128 0x3d8
	.ascii "FILE_ACTION_REMOVED 0x00000002\0"
	.byte	0x1
	.uleb128 0x3d9
	.ascii "FILE_ACTION_MODIFIED 0x00000003\0"
	.byte	0x1
	.uleb128 0x3da
	.ascii "FILE_ACTION_RENAMED_OLD_NAME 0x00000004\0"
	.byte	0x1
	.uleb128 0x3db
	.ascii "FILE_ACTION_RENAMED_NEW_NAME 0x00000005\0"
	.byte	0x1
	.uleb128 0x3dc
	.ascii "FILE_ACTION_ADDED_STREAM 0x00000006\0"
	.byte	0x1
	.uleb128 0x3dd
	.ascii "FILE_ACTION_REMOVED_STREAM 0x00000007\0"
	.byte	0x1
	.uleb128 0x3de
	.ascii "FILE_ACTION_MODIFIED_STREAM 0x00000008\0"
	.byte	0x1
	.uleb128 0x3df
	.ascii "FILE_ACTION_REMOVED_BY_DELETE 0x00000009\0"
	.byte	0x1
	.uleb128 0x3e0
	.ascii "FILE_ACTION_ID_NOT_TUNNELLED 0x0000000A\0"
	.byte	0x1
	.uleb128 0x3e1
	.ascii "FILE_ACTION_TUNNELLED_ID_COLLISION 0x0000000B\0"
	.byte	0x1
	.uleb128 0x3e3
	.ascii "HEAP_NO_SERIALIZE 1\0"
	.byte	0x1
	.uleb128 0x3e4
	.ascii "HEAP_GROWABLE 2\0"
	.byte	0x1
	.uleb128 0x3e5
	.ascii "HEAP_GENERATE_EXCEPTIONS 4\0"
	.byte	0x1
	.uleb128 0x3e6
	.ascii "HEAP_ZERO_MEMORY 8\0"
	.byte	0x1
	.uleb128 0x3e7
	.ascii "HEAP_REALLOC_IN_PLACE_ONLY 16\0"
	.byte	0x1
	.uleb128 0x3e8
	.ascii "HEAP_TAIL_CHECKING_ENABLED 32\0"
	.byte	0x1
	.uleb128 0x3e9
	.ascii "HEAP_FREE_CHECKING_ENABLED 64\0"
	.byte	0x1
	.uleb128 0x3ea
	.ascii "HEAP_DISABLE_COALESCE_ON_FREE 128\0"
	.byte	0x1
	.uleb128 0x3eb
	.ascii "HEAP_CREATE_ALIGN_16 0x0000\0"
	.byte	0x1
	.uleb128 0x3ec
	.ascii "HEAP_CREATE_ENABLE_TRACING 0x20000\0"
	.byte	0x1
	.uleb128 0x3ed
	.ascii "HEAP_MAXIMUM_TAG 0xFFF\0"
	.byte	0x1
	.uleb128 0x3ee
	.ascii "HEAP_PSEUDO_TAG_FLAG 0x8000\0"
	.byte	0x1
	.uleb128 0x3ef
	.ascii "HEAP_TAG_SHIFT 16\0"
	.byte	0x1
	.uleb128 0x3f0
	.ascii "HEAP_MAKE_TAG_FLAGS(b,o) ((DWORD)((b)+(o)<<16))\0"
	.byte	0x1
	.uleb128 0x3f1
	.ascii "KEY_QUERY_VALUE 1\0"
	.byte	0x1
	.uleb128 0x3f2
	.ascii "KEY_SET_VALUE 2\0"
	.byte	0x1
	.uleb128 0x3f3
	.ascii "KEY_CREATE_SUB_KEY 4\0"
	.byte	0x1
	.uleb128 0x3f4
	.ascii "KEY_ENUMERATE_SUB_KEYS 8\0"
	.byte	0x1
	.uleb128 0x3f5
	.ascii "KEY_NOTIFY 16\0"
	.byte	0x1
	.uleb128 0x3f6
	.ascii "KEY_CREATE_LINK 32\0"
	.byte	0x1
	.uleb128 0x3f7
	.ascii "KEY_WRITE 0x20006\0"
	.byte	0x1
	.uleb128 0x3f8
	.ascii "KEY_EXECUTE 0x20019\0"
	.byte	0x1
	.uleb128 0x3f9
	.ascii "KEY_READ 0x20019\0"
	.byte	0x1
	.uleb128 0x3fe
	.ascii "KEY_ALL_ACCESS 0xf003f\0"
	.byte	0x1
	.uleb128 0x3ff
	.ascii "REG_WHOLE_HIVE_VOLATILE 1\0"
	.byte	0x1
	.uleb128 0x400
	.ascii "REG_REFRESH_HIVE 2\0"
	.byte	0x1
	.uleb128 0x401
	.ascii "REG_NO_LAZY_FLUSH 4\0"
	.byte	0x1
	.uleb128 0x402
	.ascii "REG_OPTION_RESERVED 0\0"
	.byte	0x1
	.uleb128 0x403
	.ascii "REG_OPTION_NON_VOLATILE 0\0"
	.byte	0x1
	.uleb128 0x404
	.ascii "REG_OPTION_VOLATILE 1\0"
	.byte	0x1
	.uleb128 0x405
	.ascii "REG_OPTION_CREATE_LINK 2\0"
	.byte	0x1
	.uleb128 0x406
	.ascii "REG_OPTION_BACKUP_RESTORE 4\0"
	.byte	0x1
	.uleb128 0x407
	.ascii "REG_OPTION_OPEN_LINK 8\0"
	.byte	0x1
	.uleb128 0x408
	.ascii "REG_LEGAL_OPTION 15\0"
	.byte	0x1
	.uleb128 0x409
	.ascii "OWNER_SECURITY_INFORMATION 0x00000001\0"
	.byte	0x1
	.uleb128 0x40a
	.ascii "GROUP_SECURITY_INFORMATION 0x00000002\0"
	.byte	0x1
	.uleb128 0x40b
	.ascii "DACL_SECURITY_INFORMATION 0x00000004\0"
	.byte	0x1
	.uleb128 0x40c
	.ascii "SACL_SECURITY_INFORMATION 0x00000008\0"
	.byte	0x1
	.uleb128 0x40d
	.ascii "LABEL_SECURITY_INFORMATION 0x00000010\0"
	.byte	0x1
	.uleb128 0x40e
	.ascii "UNPROTECTED_SACL_SECURITY_INFORMATION 0x10000000\0"
	.byte	0x1
	.uleb128 0x40f
	.ascii "UNPROTECTED_DACL_SECURITY_INFORMATION 0x20000000\0"
	.byte	0x1
	.uleb128 0x410
	.ascii "PROTECTED_SACL_SECURITY_INFORMATION 0x40000000\0"
	.byte	0x1
	.uleb128 0x411
	.ascii "PROTECTED_DACL_SECURITY_INFORMATION 0x80000000\0"
	.byte	0x1
	.uleb128 0x412
	.ascii "MAXIMUM_PROCESSORS 32\0"
	.byte	0x1
	.uleb128 0x413
	.ascii "PAGE_NOACCESS 0x0001\0"
	.byte	0x1
	.uleb128 0x414
	.ascii "PAGE_READONLY 0x0002\0"
	.byte	0x1
	.uleb128 0x415
	.ascii "PAGE_READWRITE 0x0004\0"
	.byte	0x1
	.uleb128 0x416
	.ascii "PAGE_WRITECOPY 0x0008\0"
	.byte	0x1
	.uleb128 0x417
	.ascii "PAGE_EXECUTE 0x0010\0"
	.byte	0x1
	.uleb128 0x418
	.ascii "PAGE_EXECUTE_READ 0x0020\0"
	.byte	0x1
	.uleb128 0x419
	.ascii "PAGE_EXECUTE_READWRITE 0x0040\0"
	.byte	0x1
	.uleb128 0x41a
	.ascii "PAGE_EXECUTE_WRITECOPY 0x0080\0"
	.byte	0x1
	.uleb128 0x41b
	.ascii "PAGE_GUARD 0x0100\0"
	.byte	0x1
	.uleb128 0x41c
	.ascii "PAGE_NOCACHE 0x0200\0"
	.byte	0x1
	.uleb128 0x41d
	.ascii "PAGE_WRITECOMBINE 0x0400\0"
	.byte	0x1
	.uleb128 0x41e
	.ascii "MEM_COMMIT 0x1000\0"
	.byte	0x1
	.uleb128 0x41f
	.ascii "MEM_RESERVE 0x2000\0"
	.byte	0x1
	.uleb128 0x420
	.ascii "MEM_DECOMMIT 0x4000\0"
	.byte	0x1
	.uleb128 0x421
	.ascii "MEM_RELEASE 0x8000\0"
	.byte	0x1
	.uleb128 0x422
	.ascii "MEM_FREE 0x10000\0"
	.byte	0x1
	.uleb128 0x423
	.ascii "MEM_PRIVATE 0x20000\0"
	.byte	0x1
	.uleb128 0x424
	.ascii "MEM_MAPPED 0x40000\0"
	.byte	0x1
	.uleb128 0x425
	.ascii "MEM_RESET 0x80000\0"
	.byte	0x1
	.uleb128 0x426
	.ascii "MEM_TOP_DOWN 0x100000\0"
	.byte	0x1
	.uleb128 0x427
	.ascii "MEM_WRITE_WATCH 0x200000\0"
	.byte	0x1
	.uleb128 0x428
	.ascii "MEM_PHYSICAL 0x400000\0"
	.byte	0x1
	.uleb128 0x429
	.ascii "MEM_4MB_PAGES 0x80000000\0"
	.byte	0x1
	.uleb128 0x42b
	.ascii "MEM_IMAGE SEC_IMAGE\0"
	.byte	0x1
	.uleb128 0x42c
	.ascii "SEC_BASED 0x00200000\0"
	.byte	0x1
	.uleb128 0x42d
	.ascii "SEC_NO_CHANGE 0x00400000\0"
	.byte	0x1
	.uleb128 0x42e
	.ascii "SEC_FILE 0x00800000\0"
	.byte	0x1
	.uleb128 0x42f
	.ascii "SEC_IMAGE 0x01000000\0"
	.byte	0x1
	.uleb128 0x430
	.ascii "SEC_VLM 0x02000000\0"
	.byte	0x1
	.uleb128 0x431
	.ascii "SEC_RESERVE 0x04000000\0"
	.byte	0x1
	.uleb128 0x432
	.ascii "SEC_COMMIT 0x08000000\0"
	.byte	0x1
	.uleb128 0x433
	.ascii "SEC_NOCACHE 0x10000000\0"
	.byte	0x1
	.uleb128 0x435
	.ascii "SECTION_EXTEND_SIZE 16\0"
	.byte	0x1
	.uleb128 0x436
	.ascii "SECTION_MAP_READ 4\0"
	.byte	0x1
	.uleb128 0x437
	.ascii "SECTION_MAP_WRITE 2\0"
	.byte	0x1
	.uleb128 0x438
	.ascii "SECTION_QUERY 1\0"
	.byte	0x1
	.uleb128 0x439
	.ascii "SECTION_MAP_EXECUTE 8\0"
	.byte	0x1
	.uleb128 0x43a
	.ascii "SECTION_ALL_ACCESS 0xf001f\0"
	.byte	0x1
	.uleb128 0x43b
	.ascii "MESSAGE_RESOURCE_UNICODE 1\0"
	.byte	0x1
	.uleb128 0x43c
	.ascii "RTL_CRITSECT_TYPE 0\0"
	.byte	0x1
	.uleb128 0x43d
	.ascii "RTL_RESOURCE_TYPE 1\0"
	.byte	0x1
	.uleb128 0x43f
	.ascii "FIELD_OFFSET(t,f) ((LONG)&(((t*)0)->f))\0"
	.byte	0x1
	.uleb128 0x441
	.ascii "CONTAINING_RECORD(address,type,field) ((type*)((PCHAR)(address) - (PCHAR)(&((type *)0)->field)))\0"
	.byte	0x1
	.uleb128 0x445
	.ascii "IMAGE_SIZEOF_FILE_HEADER 20\0"
	.byte	0x1
	.uleb128 0x446
	.ascii "IMAGE_FILE_RELOCS_STRIPPED 1\0"
	.byte	0x1
	.uleb128 0x447
	.ascii "IMAGE_FILE_EXECUTABLE_IMAGE 2\0"
	.byte	0x1
	.uleb128 0x448
	.ascii "IMAGE_FILE_LINE_NUMS_STRIPPED 4\0"
	.byte	0x1
	.uleb128 0x449
	.ascii "IMAGE_FILE_LOCAL_SYMS_STRIPPED 8\0"
	.byte	0x1
	.uleb128 0x44a
	.ascii "IMAGE_FILE_AGGRESIVE_WS_TRIM 16\0"
	.byte	0x1
	.uleb128 0x44b
	.ascii "IMAGE_FILE_LARGE_ADDRESS_AWARE 32\0"
	.byte	0x1
	.uleb128 0x44c
	.ascii "IMAGE_FILE_BYTES_REVERSED_LO 128\0"
	.byte	0x1
	.uleb128 0x44d
	.ascii "IMAGE_FILE_32BIT_MACHINE 256\0"
	.byte	0x1
	.uleb128 0x44e
	.ascii "IMAGE_FILE_DEBUG_STRIPPED 512\0"
	.byte	0x1
	.uleb128 0x44f
	.ascii "IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP 1024\0"
	.byte	0x1
	.uleb128 0x450
	.ascii "IMAGE_FILE_NET_RUN_FROM_SWAP 2048\0"
	.byte	0x1
	.uleb128 0x451
	.ascii "IMAGE_FILE_SYSTEM 4096\0"
	.byte	0x1
	.uleb128 0x452
	.ascii "IMAGE_FILE_DLL 8192\0"
	.byte	0x1
	.uleb128 0x453
	.ascii "IMAGE_FILE_UP_SYSTEM_ONLY 16384\0"
	.byte	0x1
	.uleb128 0x454
	.ascii "IMAGE_FILE_BYTES_REVERSED_HI 32768\0"
	.byte	0x1
	.uleb128 0x456
	.ascii "IMAGE_FILE_MACHINE_UNKNOWN 0x0000\0"
	.byte	0x1
	.uleb128 0x457
	.ascii "IMAGE_FILE_MACHINE_AM33 0x01d3\0"
	.byte	0x1
	.uleb128 0x458
	.ascii "IMAGE_FILE_MACHINE_AMD64 0x8664\0"
	.byte	0x1
	.uleb128 0x459
	.ascii "IMAGE_FILE_MACHINE_ARM 0x01c0\0"
	.byte	0x1
	.uleb128 0x45a
	.ascii "IMAGE_FILE_MACHINE_EBC 0x0ebc\0"
	.byte	0x1
	.uleb128 0x45b
	.ascii "IMAGE_FILE_MACHINE_I386 0x014c\0"
	.byte	0x1
	.uleb128 0x45c
	.ascii "IMAGE_FILE_MACHINE_IA64 0x0200\0"
	.byte	0x1
	.uleb128 0x45d
	.ascii "IMAGE_FILE_MACHINE_M32R 0x9041\0"
	.byte	0x1
	.uleb128 0x45e
	.ascii "IMAGE_FILE_MACHINE_MIPS16 0x0266\0"
	.byte	0x1
	.uleb128 0x45f
	.ascii "IMAGE_FILE_MACHINE_MIPSFPU 0x0366\0"
	.byte	0x1
	.uleb128 0x460
	.ascii "IMAGE_FILE_MACHINE_MIPSFPU16 0x0466\0"
	.byte	0x1
	.uleb128 0x461
	.ascii "IMAGE_FILE_MACHINE_POWERPC 0x01f0\0"
	.byte	0x1
	.uleb128 0x462
	.ascii "IMAGE_FILE_MACHINE_POWERPCFP 0x01f1\0"
	.byte	0x1
	.uleb128 0x463
	.ascii "IMAGE_FILE_MACHINE_R4000 0x0166\0"
	.byte	0x1
	.uleb128 0x464
	.ascii "IMAGE_FILE_MACHINE_SH3 0x01a2\0"
	.byte	0x1
	.uleb128 0x465
	.ascii "IMAGE_FILE_MACHINE_SH3DSP 0x01a3\0"
	.byte	0x1
	.uleb128 0x466
	.ascii "IMAGE_FILE_MACHINE_SH4 0x01a6\0"
	.byte	0x1
	.uleb128 0x467
	.ascii "IMAGE_FILE_MACHINE_SH5 0x01a8\0"
	.byte	0x1
	.uleb128 0x468
	.ascii "IMAGE_FILE_MACHINE_THUMB 0x01c2\0"
	.byte	0x1
	.uleb128 0x469
	.ascii "IMAGE_FILE_MACHINE_WCEMIPSV2 0x0169\0"
	.byte	0x1
	.uleb128 0x46b
	.ascii "IMAGE_DOS_SIGNATURE 0x5A4D\0"
	.byte	0x1
	.uleb128 0x46c
	.ascii "IMAGE_OS2_SIGNATURE 0x454E\0"
	.byte	0x1
	.uleb128 0x46d
	.ascii "IMAGE_OS2_SIGNATURE_LE 0x454C\0"
	.byte	0x1
	.uleb128 0x46e
	.ascii "IMAGE_VXD_SIGNATURE 0x454C\0"
	.byte	0x1
	.uleb128 0x46f
	.ascii "IMAGE_NT_SIGNATURE 0x00004550\0"
	.byte	0x1
	.uleb128 0x470
	.ascii "IMAGE_NT_OPTIONAL_HDR32_MAGIC 0x10b\0"
	.byte	0x1
	.uleb128 0x471
	.ascii "IMAGE_NT_OPTIONAL_HDR64_MAGIC 0x20b\0"
	.byte	0x1
	.uleb128 0x475
	.ascii "IMAGE_NT_OPTIONAL_HDR_MAGIC IMAGE_NT_OPTIONAL_HDR32_MAGIC\0"
	.byte	0x1
	.uleb128 0x477
	.ascii "IMAGE_ROM_OPTIONAL_HDR_MAGIC 0x107\0"
	.byte	0x1
	.uleb128 0x478
	.ascii "IMAGE_SEPARATE_DEBUG_SIGNATURE 0x4944\0"
	.byte	0x1
	.uleb128 0x479
	.ascii "IMAGE_NUMBEROF_DIRECTORY_ENTRIES 16\0"
	.byte	0x1
	.uleb128 0x47a
	.ascii "IMAGE_SIZEOF_ROM_OPTIONAL_HEADER 56\0"
	.byte	0x1
	.uleb128 0x47b
	.ascii "IMAGE_SIZEOF_STD_OPTIONAL_HEADER 28\0"
	.byte	0x1
	.uleb128 0x47c
	.ascii "IMAGE_SIZEOF_NT_OPTIONAL_HEADER 224\0"
	.byte	0x1
	.uleb128 0x47d
	.ascii "IMAGE_SIZEOF_SHORT_NAME 8\0"
	.byte	0x1
	.uleb128 0x47e
	.ascii "IMAGE_SIZEOF_SECTION_HEADER 40\0"
	.byte	0x1
	.uleb128 0x47f
	.ascii "IMAGE_SIZEOF_SYMBOL 18\0"
	.byte	0x1
	.uleb128 0x480
	.ascii "IMAGE_SIZEOF_AUX_SYMBOL 18\0"
	.byte	0x1
	.uleb128 0x481
	.ascii "IMAGE_SIZEOF_RELOCATION 10\0"
	.byte	0x1
	.uleb128 0x482
	.ascii "IMAGE_SIZEOF_BASE_RELOCATION 8\0"
	.byte	0x1
	.uleb128 0x483
	.ascii "IMAGE_SIZEOF_LINENUMBER 6\0"
	.byte	0x1
	.uleb128 0x484
	.ascii "IMAGE_SIZEOF_ARCHIVE_MEMBER_HDR 60\0"
	.byte	0x1
	.uleb128 0x485
	.ascii "SIZEOF_RFPO_DATA 16\0"
	.byte	0x1
	.uleb128 0x487
	.ascii "IMAGE_SUBSYSTEM_UNKNOWN 0\0"
	.byte	0x1
	.uleb128 0x488
	.ascii "IMAGE_SUBSYSTEM_NATIVE 1\0"
	.byte	0x1
	.uleb128 0x489
	.ascii "IMAGE_SUBSYSTEM_WINDOWS_GUI 2\0"
	.byte	0x1
	.uleb128 0x48a
	.ascii "IMAGE_SUBSYSTEM_WINDOWS_CUI 3\0"
	.byte	0x1
	.uleb128 0x48b
	.ascii "IMAGE_SUBSYSTEM_OS2_CUI 5\0"
	.byte	0x1
	.uleb128 0x48c
	.ascii "IMAGE_SUBSYSTEM_POSIX_CUI 7\0"
	.byte	0x1
	.uleb128 0x48d
	.ascii "IMAGE_SUBSYSTEM_NATIVE_WINDOWS 8\0"
	.byte	0x1
	.uleb128 0x48e
	.ascii "IMAGE_SUBSYSTEM_WINDOWS_CE_GUI 9\0"
	.byte	0x1
	.uleb128 0x48f
	.ascii "IMAGE_SUBSYSTEM_EFI_APPLICATION 10\0"
	.byte	0x1
	.uleb128 0x490
	.ascii "IMAGE_SUBSYSTEM_EFI_BOOT_SERVICE_DRIVER 11\0"
	.byte	0x1
	.uleb128 0x491
	.ascii "IMAGE_SUBSYSTEM_EFI_RUNTIME_DRIVER 12\0"
	.byte	0x1
	.uleb128 0x492
	.ascii "IMAGE_SUBSYSTEM_EFI_ROM 13\0"
	.byte	0x1
	.uleb128 0x493
	.ascii "IMAGE_SUBSYSTEM_XBOX 14\0"
	.byte	0x1
	.uleb128 0x495
	.ascii "IMAGE_DLLCHARACTERISTICS_DYNAMIC_BASE 0x0040\0"
	.byte	0x1
	.uleb128 0x496
	.ascii "IMAGE_DLLCHARACTERISTICS_FORCE_INTEGRITY 0x0080\0"
	.byte	0x1
	.uleb128 0x497
	.ascii "IMAGE_DLLCHARACTERISTICS_NX_COMPAT 0x0100\0"
	.byte	0x1
	.uleb128 0x498
	.ascii "IMAGE_DLLCHARACTERISTICS_NO_ISOLATION 0x0200\0"
	.byte	0x1
	.uleb128 0x499
	.ascii "IMAGE_DLLCHARACTERISTICS_NO_SEH 0x0400\0"
	.byte	0x1
	.uleb128 0x49a
	.ascii "IMAGE_DLLCHARACTERISTICS_NO_BIND 0x0800\0"
	.byte	0x1
	.uleb128 0x49b
	.ascii "IMAGE_DLLCHARACTERISTICS_WDM_DRIVER 0x2000\0"
	.byte	0x1
	.uleb128 0x49c
	.ascii "IMAGE_DLLCHARACTERISTICS_TERMINAL_SERVER_AWARE 0x8000\0"
	.byte	0x1
	.uleb128 0x49f
	.ascii "IMAGE_DLL_CHARACTERISTICS_DYNAMIC_BASE IMAGE_DLLCHARACTERISTICS_DYNAMIC_BASE\0"
	.byte	0x1
	.uleb128 0x4a0
	.ascii "IMAGE_DLL_CHARACTERISTICS_FORCE_INTEGRITY IMAGE_DLLCHARACTERISTICS_FORCE_INTEGRITY\0"
	.byte	0x1
	.uleb128 0x4a1
	.ascii "IMAGE_DLL_CHARACTERISTICS_NX_COMPAT IMAGE_DLLCHARACTERISTICS_NX_COMPAT\0"
	.byte	0x1
	.uleb128 0x4a3
	.ascii "IMAGE_FIRST_SECTION(h) ((PIMAGE_SECTION_HEADER) ((DWORD)h+FIELD_OFFSET(IMAGE_NT_HEADERS,OptionalHeader)+((PIMAGE_NT_HEADERS)(h))->FileHeader.SizeOfOptionalHeader))\0"
	.byte	0x1
	.uleb128 0x4a4
	.ascii "IMAGE_DIRECTORY_ENTRY_EXPORT 0\0"
	.byte	0x1
	.uleb128 0x4a5
	.ascii "IMAGE_DIRECTORY_ENTRY_IMPORT 1\0"
	.byte	0x1
	.uleb128 0x4a6
	.ascii "IMAGE_DIRECTORY_ENTRY_RESOURCE 2\0"
	.byte	0x1
	.uleb128 0x4a7
	.ascii "IMAGE_DIRECTORY_ENTRY_EXCEPTION 3\0"
	.byte	0x1
	.uleb128 0x4a8
	.ascii "IMAGE_DIRECTORY_ENTRY_SECURITY 4\0"
	.byte	0x1
	.uleb128 0x4a9
	.ascii "IMAGE_DIRECTORY_ENTRY_BASERELOC 5\0"
	.byte	0x1
	.uleb128 0x4aa
	.ascii "IMAGE_DIRECTORY_ENTRY_DEBUG 6\0"
	.byte	0x1
	.uleb128 0x4ab
	.ascii "IMAGE_DIRECTORY_ENTRY_COPYRIGHT 7\0"
	.byte	0x1
	.uleb128 0x4ac
	.ascii "IMAGE_DIRECTORY_ENTRY_ARCHITECTURE 7\0"
	.byte	0x1
	.uleb128 0x4ad
	.ascii "IMAGE_DIRECTORY_ENTRY_GLOBALPTR 8\0"
	.byte	0x1
	.uleb128 0x4ae
	.ascii "IMAGE_DIRECTORY_ENTRY_TLS 9\0"
	.byte	0x1
	.uleb128 0x4af
	.ascii "IMAGE_DIRECTORY_ENTRY_LOAD_CONFIG 10\0"
	.byte	0x1
	.uleb128 0x4b0
	.ascii "IMAGE_DIRECTORY_ENTRY_BOUND_IMPORT 11\0"
	.byte	0x1
	.uleb128 0x4b1
	.ascii "IMAGE_DIRECTORY_ENTRY_IAT 12\0"
	.byte	0x1
	.uleb128 0x4b2
	.ascii "IMAGE_DIRECTORY_ENTRY_DELAY_IMPORT 13\0"
	.byte	0x1
	.uleb128 0x4b3
	.ascii "IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR 14\0"
	.byte	0x1
	.uleb128 0x4b4
	.ascii "IMAGE_SCN_TYPE_REG 0\0"
	.byte	0x1
	.uleb128 0x4b5
	.ascii "IMAGE_SCN_TYPE_DSECT 1\0"
	.byte	0x1
	.uleb128 0x4b6
	.ascii "IMAGE_SCN_TYPE_NOLOAD 2\0"
	.byte	0x1
	.uleb128 0x4b7
	.ascii "IMAGE_SCN_TYPE_GROUP 4\0"
	.byte	0x1
	.uleb128 0x4b8
	.ascii "IMAGE_SCN_TYPE_NO_PAD 8\0"
	.byte	0x1
	.uleb128 0x4b9
	.ascii "IMAGE_SCN_TYPE_COPY 16\0"
	.byte	0x1
	.uleb128 0x4ba
	.ascii "IMAGE_SCN_CNT_CODE 32\0"
	.byte	0x1
	.uleb128 0x4bb
	.ascii "IMAGE_SCN_CNT_INITIALIZED_DATA 64\0"
	.byte	0x1
	.uleb128 0x4bc
	.ascii "IMAGE_SCN_CNT_UNINITIALIZED_DATA 128\0"
	.byte	0x1
	.uleb128 0x4bd
	.ascii "IMAGE_SCN_LNK_OTHER 256\0"
	.byte	0x1
	.uleb128 0x4be
	.ascii "IMAGE_SCN_LNK_INFO 512\0"
	.byte	0x1
	.uleb128 0x4bf
	.ascii "IMAGE_SCN_TYPE_OVER 1024\0"
	.byte	0x1
	.uleb128 0x4c0
	.ascii "IMAGE_SCN_LNK_REMOVE 2048\0"
	.byte	0x1
	.uleb128 0x4c1
	.ascii "IMAGE_SCN_LNK_COMDAT 4096\0"
	.byte	0x1
	.uleb128 0x4c2
	.ascii "IMAGE_SCN_GPREL 0x8000\0"
	.byte	0x1
	.uleb128 0x4c3
	.ascii "IMAGE_SCN_MEM_FARDATA 0x8000\0"
	.byte	0x1
	.uleb128 0x4c4
	.ascii "IMAGE_SCN_MEM_PURGEABLE 0x20000\0"
	.byte	0x1
	.uleb128 0x4c5
	.ascii "IMAGE_SCN_MEM_16BIT 0x20000\0"
	.byte	0x1
	.uleb128 0x4c6
	.ascii "IMAGE_SCN_MEM_LOCKED 0x40000\0"
	.byte	0x1
	.uleb128 0x4c7
	.ascii "IMAGE_SCN_MEM_PRELOAD 0x80000\0"
	.byte	0x1
	.uleb128 0x4c8
	.ascii "IMAGE_SCN_ALIGN_1BYTES 0x100000\0"
	.byte	0x1
	.uleb128 0x4c9
	.ascii "IMAGE_SCN_ALIGN_2BYTES 0x200000\0"
	.byte	0x1
	.uleb128 0x4ca
	.ascii "IMAGE_SCN_ALIGN_4BYTES 0x300000\0"
	.byte	0x1
	.uleb128 0x4cb
	.ascii "IMAGE_SCN_ALIGN_8BYTES 0x400000\0"
	.byte	0x1
	.uleb128 0x4cc
	.ascii "IMAGE_SCN_ALIGN_16BYTES 0x500000\0"
	.byte	0x1
	.uleb128 0x4cd
	.ascii "IMAGE_SCN_ALIGN_32BYTES 0x600000\0"
	.byte	0x1
	.uleb128 0x4ce
	.ascii "IMAGE_SCN_ALIGN_64BYTES 0x700000\0"
	.byte	0x1
	.uleb128 0x4cf
	.ascii "IMAGE_SCN_ALIGN_128BYTES 0x800000\0"
	.byte	0x1
	.uleb128 0x4d0
	.ascii "IMAGE_SCN_ALIGN_256BYTES 0x900000\0"
	.byte	0x1
	.uleb128 0x4d1
	.ascii "IMAGE_SCN_ALIGN_512BYTES 0xa00000\0"
	.byte	0x1
	.uleb128 0x4d2
	.ascii "IMAGE_SCN_ALIGN_1024BYTES 0xb00000\0"
	.byte	0x1
	.uleb128 0x4d3
	.ascii "IMAGE_SCN_ALIGN_2048BYTES 0xc00000\0"
	.byte	0x1
	.uleb128 0x4d4
	.ascii "IMAGE_SCN_ALIGN_4096BYTES 0xd00000\0"
	.byte	0x1
	.uleb128 0x4d5
	.ascii "IMAGE_SCN_ALIGN_8192BYTES 0xe00000\0"
	.byte	0x1
	.uleb128 0x4d6
	.ascii "IMAGE_SCN_LNK_NRELOC_OVFL 0x1000000\0"
	.byte	0x1
	.uleb128 0x4d7
	.ascii "IMAGE_SCN_MEM_DISCARDABLE 0x2000000\0"
	.byte	0x1
	.uleb128 0x4d8
	.ascii "IMAGE_SCN_MEM_NOT_CACHED 0x4000000\0"
	.byte	0x1
	.uleb128 0x4d9
	.ascii "IMAGE_SCN_MEM_NOT_PAGED 0x8000000\0"
	.byte	0x1
	.uleb128 0x4da
	.ascii "IMAGE_SCN_MEM_SHARED 0x10000000\0"
	.byte	0x1
	.uleb128 0x4db
	.ascii "IMAGE_SCN_MEM_EXECUTE 0x20000000\0"
	.byte	0x1
	.uleb128 0x4dc
	.ascii "IMAGE_SCN_MEM_READ 0x40000000\0"
	.byte	0x1
	.uleb128 0x4dd
	.ascii "IMAGE_SCN_MEM_WRITE 0x80000000\0"
	.byte	0x1
	.uleb128 0x4de
	.ascii "IMAGE_SYM_UNDEFINED 0\0"
	.byte	0x1
	.uleb128 0x4df
	.ascii "IMAGE_SYM_ABSOLUTE (-1)\0"
	.byte	0x1
	.uleb128 0x4e0
	.ascii "IMAGE_SYM_DEBUG (-2)\0"
	.byte	0x1
	.uleb128 0x4e1
	.ascii "IMAGE_SYM_TYPE_NULL 0\0"
	.byte	0x1
	.uleb128 0x4e2
	.ascii "IMAGE_SYM_TYPE_VOID 1\0"
	.byte	0x1
	.uleb128 0x4e3
	.ascii "IMAGE_SYM_TYPE_CHAR 2\0"
	.byte	0x1
	.uleb128 0x4e4
	.ascii "IMAGE_SYM_TYPE_SHORT 3\0"
	.byte	0x1
	.uleb128 0x4e5
	.ascii "IMAGE_SYM_TYPE_INT 4\0"
	.byte	0x1
	.uleb128 0x4e6
	.ascii "IMAGE_SYM_TYPE_LONG 5\0"
	.byte	0x1
	.uleb128 0x4e7
	.ascii "IMAGE_SYM_TYPE_FLOAT 6\0"
	.byte	0x1
	.uleb128 0x4e8
	.ascii "IMAGE_SYM_TYPE_DOUBLE 7\0"
	.byte	0x1
	.uleb128 0x4e9
	.ascii "IMAGE_SYM_TYPE_STRUCT 8\0"
	.byte	0x1
	.uleb128 0x4ea
	.ascii "IMAGE_SYM_TYPE_UNION 9\0"
	.byte	0x1
	.uleb128 0x4eb
	.ascii "IMAGE_SYM_TYPE_ENUM 10\0"
	.byte	0x1
	.uleb128 0x4ec
	.ascii "IMAGE_SYM_TYPE_MOE 11\0"
	.byte	0x1
	.uleb128 0x4ed
	.ascii "IMAGE_SYM_TYPE_BYTE 12\0"
	.byte	0x1
	.uleb128 0x4ee
	.ascii "IMAGE_SYM_TYPE_WORD 13\0"
	.byte	0x1
	.uleb128 0x4ef
	.ascii "IMAGE_SYM_TYPE_UINT 14\0"
	.byte	0x1
	.uleb128 0x4f0
	.ascii "IMAGE_SYM_TYPE_DWORD 15\0"
	.byte	0x1
	.uleb128 0x4f1
	.ascii "IMAGE_SYM_TYPE_PCODE 32768\0"
	.byte	0x1
	.uleb128 0x4f2
	.ascii "IMAGE_SYM_DTYPE_NULL 0\0"
	.byte	0x1
	.uleb128 0x4f3
	.ascii "IMAGE_SYM_DTYPE_POINTER 1\0"
	.byte	0x1
	.uleb128 0x4f4
	.ascii "IMAGE_SYM_DTYPE_FUNCTION 2\0"
	.byte	0x1
	.uleb128 0x4f5
	.ascii "IMAGE_SYM_DTYPE_ARRAY 3\0"
	.byte	0x1
	.uleb128 0x4f6
	.ascii "IMAGE_SYM_CLASS_END_OF_FUNCTION (-1)\0"
	.byte	0x1
	.uleb128 0x4f7
	.ascii "IMAGE_SYM_CLASS_NULL 0\0"
	.byte	0x1
	.uleb128 0x4f8
	.ascii "IMAGE_SYM_CLASS_AUTOMATIC 1\0"
	.byte	0x1
	.uleb128 0x4f9
	.ascii "IMAGE_SYM_CLASS_EXTERNAL 2\0"
	.byte	0x1
	.uleb128 0x4fa
	.ascii "IMAGE_SYM_CLASS_STATIC 3\0"
	.byte	0x1
	.uleb128 0x4fb
	.ascii "IMAGE_SYM_CLASS_REGISTER 4\0"
	.byte	0x1
	.uleb128 0x4fc
	.ascii "IMAGE_SYM_CLASS_EXTERNAL_DEF 5\0"
	.byte	0x1
	.uleb128 0x4fd
	.ascii "IMAGE_SYM_CLASS_LABEL 6\0"
	.byte	0x1
	.uleb128 0x4fe
	.ascii "IMAGE_SYM_CLASS_UNDEFINED_LABEL 7\0"
	.byte	0x1
	.uleb128 0x4ff
	.ascii "IMAGE_SYM_CLASS_MEMBER_OF_STRUCT 8\0"
	.byte	0x1
	.uleb128 0x500
	.ascii "IMAGE_SYM_CLASS_ARGUMENT 9\0"
	.byte	0x1
	.uleb128 0x501
	.ascii "IMAGE_SYM_CLASS_STRUCT_TAG 10\0"
	.byte	0x1
	.uleb128 0x502
	.ascii "IMAGE_SYM_CLASS_MEMBER_OF_UNION 11\0"
	.byte	0x1
	.uleb128 0x503
	.ascii "IMAGE_SYM_CLASS_UNION_TAG 12\0"
	.byte	0x1
	.uleb128 0x504
	.ascii "IMAGE_SYM_CLASS_TYPE_DEFINITION 13\0"
	.byte	0x1
	.uleb128 0x505
	.ascii "IMAGE_SYM_CLASS_UNDEFINED_STATIC 14\0"
	.byte	0x1
	.uleb128 0x506
	.ascii "IMAGE_SYM_CLASS_ENUM_TAG 15\0"
	.byte	0x1
	.uleb128 0x507
	.ascii "IMAGE_SYM_CLASS_MEMBER_OF_ENUM 16\0"
	.byte	0x1
	.uleb128 0x508
	.ascii "IMAGE_SYM_CLASS_REGISTER_PARAM 17\0"
	.byte	0x1
	.uleb128 0x509
	.ascii "IMAGE_SYM_CLASS_BIT_FIELD 18\0"
	.byte	0x1
	.uleb128 0x50a
	.ascii "IMAGE_SYM_CLASS_FAR_EXTERNAL 68\0"
	.byte	0x1
	.uleb128 0x50b
	.ascii "IMAGE_SYM_CLASS_BLOCK 100\0"
	.byte	0x1
	.uleb128 0x50c
	.ascii "IMAGE_SYM_CLASS_FUNCTION 101\0"
	.byte	0x1
	.uleb128 0x50d
	.ascii "IMAGE_SYM_CLASS_END_OF_STRUCT 102\0"
	.byte	0x1
	.uleb128 0x50e
	.ascii "IMAGE_SYM_CLASS_FILE 103\0"
	.byte	0x1
	.uleb128 0x50f
	.ascii "IMAGE_SYM_CLASS_SECTION 104\0"
	.byte	0x1
	.uleb128 0x510
	.ascii "IMAGE_SYM_CLASS_WEAK_EXTERNAL 105\0"
	.byte	0x1
	.uleb128 0x511
	.ascii "IMAGE_SYM_CLASS_CLR_TOKEN 107\0"
	.byte	0x1
	.uleb128 0x513
	.ascii "IMAGE_COMDAT_SELECT_NODUPLICATES 1\0"
	.byte	0x1
	.uleb128 0x514
	.ascii "IMAGE_COMDAT_SELECT_ANY 2\0"
	.byte	0x1
	.uleb128 0x515
	.ascii "IMAGE_COMDAT_SELECT_SAME_SIZE 3\0"
	.byte	0x1
	.uleb128 0x516
	.ascii "IMAGE_COMDAT_SELECT_EXACT_MATCH 4\0"
	.byte	0x1
	.uleb128 0x517
	.ascii "IMAGE_COMDAT_SELECT_ASSOCIATIVE 5\0"
	.byte	0x1
	.uleb128 0x518
	.ascii "IMAGE_COMDAT_SELECT_LARGEST 6\0"
	.byte	0x1
	.uleb128 0x519
	.ascii "IMAGE_COMDAT_SELECT_NEWEST 7\0"
	.byte	0x1
	.uleb128 0x51b
	.ascii "IMAGE_WEAK_EXTERN_SEARCH_NOLIBRARY 1\0"
	.byte	0x1
	.uleb128 0x51c
	.ascii "IMAGE_WEAK_EXTERN_SEARCH_LIBRARY 2\0"
	.byte	0x1
	.uleb128 0x51d
	.ascii "IMAGE_WEAK_EXTERN_SEARCH_ALIAS 3\0"
	.byte	0x1
	.uleb128 0x51f
	.ascii "IMAGE_REL_I386_ABSOLUTE 0x0000\0"
	.byte	0x1
	.uleb128 0x520
	.ascii "IMAGE_REL_I386_DIR16 0x0001\0"
	.byte	0x1
	.uleb128 0x521
	.ascii "IMAGE_REL_I386_REL16 0x0002\0"
	.byte	0x1
	.uleb128 0x522
	.ascii "IMAGE_REL_I386_DIR32 0x0006\0"
	.byte	0x1
	.uleb128 0x523
	.ascii "IMAGE_REL_I386_DIR32NB 0x0007\0"
	.byte	0x1
	.uleb128 0x524
	.ascii "IMAGE_REL_I386_SEG12 0x0009\0"
	.byte	0x1
	.uleb128 0x525
	.ascii "IMAGE_REL_I386_SECTION 0x000A\0"
	.byte	0x1
	.uleb128 0x526
	.ascii "IMAGE_REL_I386_SECREL 0x000B\0"
	.byte	0x1
	.uleb128 0x527
	.ascii "IMAGE_REL_I386_TOKEN 0x000C\0"
	.byte	0x1
	.uleb128 0x528
	.ascii "IMAGE_REL_I386_SECREL7 0x000D\0"
	.byte	0x1
	.uleb128 0x529
	.ascii "IMAGE_REL_I386_REL32 0x0014\0"
	.byte	0x1
	.uleb128 0x52b
	.ascii "IMAGE_REL_AMD64_ABSOLUTE 0x0000\0"
	.byte	0x1
	.uleb128 0x52c
	.ascii "IMAGE_REL_AMD64_ADDR64 0x0001\0"
	.byte	0x1
	.uleb128 0x52d
	.ascii "IMAGE_REL_AMD64_ADDR32 0x0002\0"
	.byte	0x1
	.uleb128 0x52e
	.ascii "IMAGE_REL_AMD64_ADDR32NB 0x0003\0"
	.byte	0x1
	.uleb128 0x52f
	.ascii "IMAGE_REL_AMD64_REL32 0x0004\0"
	.byte	0x1
	.uleb128 0x530
	.ascii "IMAGE_REL_AMD64_REL32_1 0x0005\0"
	.byte	0x1
	.uleb128 0x531
	.ascii "IMAGE_REL_AMD64_REL32_2 0x0006\0"
	.byte	0x1
	.uleb128 0x532
	.ascii "IMAGE_REL_AMD64_REL32_3 0x0007\0"
	.byte	0x1
	.uleb128 0x533
	.ascii "IMAGE_REL_AMD64_REL32_4 0x0008\0"
	.byte	0x1
	.uleb128 0x534
	.ascii "IMAGE_REL_AMD64_REL32_5 0x0009\0"
	.byte	0x1
	.uleb128 0x535
	.ascii "IMAGE_REL_AMD64_SECTION 0x000A\0"
	.byte	0x1
	.uleb128 0x536
	.ascii "IMAGE_REL_AMD64_SECREL 0x000B\0"
	.byte	0x1
	.uleb128 0x537
	.ascii "IMAGE_REL_AMD64_SECREL7 0x000C\0"
	.byte	0x1
	.uleb128 0x538
	.ascii "IMAGE_REL_AMD64_TOKEN 0x000D\0"
	.byte	0x1
	.uleb128 0x539
	.ascii "IMAGE_REL_AMD64_SREL32 0x000E\0"
	.byte	0x1
	.uleb128 0x53a
	.ascii "IMAGE_REL_AMD64_PAIR 0x000F\0"
	.byte	0x1
	.uleb128 0x53b
	.ascii "IMAGE_REL_AMD64_SSPAN32 0x0010\0"
	.byte	0x1
	.uleb128 0x53d
	.ascii "IMAGE_REL_IA64_ABSOLUTE 0x0000\0"
	.byte	0x1
	.uleb128 0x53e
	.ascii "IMAGE_REL_IA64_IMM14 0x0001\0"
	.byte	0x1
	.uleb128 0x53f
	.ascii "IMAGE_REL_IA64_IMM22 0x0002\0"
	.byte	0x1
	.uleb128 0x540
	.ascii "IMAGE_REL_IA64_IMM64 0x0003\0"
	.byte	0x1
	.uleb128 0x541
	.ascii "IMAGE_REL_IA64_DIR32 0x0004\0"
	.byte	0x1
	.uleb128 0x542
	.ascii "IMAGE_REL_IA64_DIR64 0x0005\0"
	.byte	0x1
	.uleb128 0x543
	.ascii "IMAGE_REL_IA64_PCREL21B 0x0006\0"
	.byte	0x1
	.uleb128 0x544
	.ascii "IMAGE_REL_IA64_PCREL21M 0x0007\0"
	.byte	0x1
	.uleb128 0x545
	.ascii "IMAGE_REL_IA64_PCREL21F 0x0008\0"
	.byte	0x1
	.uleb128 0x546
	.ascii "IMAGE_REL_IA64_GPREL22 0x0009\0"
	.byte	0x1
	.uleb128 0x547
	.ascii "IMAGE_REL_IA64_LTOFF22 0x000A\0"
	.byte	0x1
	.uleb128 0x548
	.ascii "IMAGE_REL_IA64_SECTION 0x000B\0"
	.byte	0x1
	.uleb128 0x549
	.ascii "IMAGE_REL_IA64_SECREL22 0x000C\0"
	.byte	0x1
	.uleb128 0x54a
	.ascii "IMAGE_REL_IA64_SECREL64I 0x000D\0"
	.byte	0x1
	.uleb128 0x54b
	.ascii "IMAGE_REL_IA64_SECREL32 0x000E\0"
	.byte	0x1
	.uleb128 0x54c
	.ascii "IMAGE_REL_IA64_DIR32NB 0x0010\0"
	.byte	0x1
	.uleb128 0x54d
	.ascii "IMAGE_REL_IA64_SREL14 0x0011\0"
	.byte	0x1
	.uleb128 0x54e
	.ascii "IMAGE_REL_IA64_SREL22 0x0012\0"
	.byte	0x1
	.uleb128 0x54f
	.ascii "IMAGE_REL_IA64_SREL32 0x0013\0"
	.byte	0x1
	.uleb128 0x550
	.ascii "IMAGE_REL_IA64_UREL32 0x0014\0"
	.byte	0x1
	.uleb128 0x551
	.ascii "IMAGE_REL_IA64_PCREL60X 0x0015\0"
	.byte	0x1
	.uleb128 0x552
	.ascii "IMAGE_REL_IA64_PCREL60B 0x0016\0"
	.byte	0x1
	.uleb128 0x553
	.ascii "IMAGE_REL_IA64_PCREL60F 0x0017\0"
	.byte	0x1
	.uleb128 0x554
	.ascii "IMAGE_REL_IA64_PCREL60I 0x0018\0"
	.byte	0x1
	.uleb128 0x555
	.ascii "IMAGE_REL_IA64_PCREL60M 0x0019\0"
	.byte	0x1
	.uleb128 0x556
	.ascii "IMAGE_REL_IA64_IMMGPREL64 0x001a\0"
	.byte	0x1
	.uleb128 0x557
	.ascii "IMAGE_REL_IA64_TOKEN 0x001b\0"
	.byte	0x1
	.uleb128 0x558
	.ascii "IMAGE_REL_IA64_GPREL32 0x001c\0"
	.byte	0x1
	.uleb128 0x559
	.ascii "IMAGE_REL_IA64_ADDEND 0x001F\0"
	.byte	0x1
	.uleb128 0x55b
	.ascii "IMAGE_REL_SH3_ABSOLUTE 0x0000\0"
	.byte	0x1
	.uleb128 0x55c
	.ascii "IMAGE_REL_SH3_DIRECT16 0x0001\0"
	.byte	0x1
	.uleb128 0x55d
	.ascii "IMAGE_REL_SH3_DIRECT32 0x0002\0"
	.byte	0x1
	.uleb128 0x55e
	.ascii "IMAGE_REL_SH3_DIRECT8 0x0003\0"
	.byte	0x1
	.uleb128 0x55f
	.ascii "IMAGE_REL_SH3_DIRECT8_WORD 0x0004\0"
	.byte	0x1
	.uleb128 0x560
	.ascii "IMAGE_REL_SH3_DIRECT8_LONG 0x0005\0"
	.byte	0x1
	.uleb128 0x561
	.ascii "IMAGE_REL_SH3_DIRECT4 0x0006\0"
	.byte	0x1
	.uleb128 0x562
	.ascii "IMAGE_REL_SH3_DIRECT4_WORD 0x0007\0"
	.byte	0x1
	.uleb128 0x563
	.ascii "IMAGE_REL_SH3_DIRECT4_LONG 0x0008\0"
	.byte	0x1
	.uleb128 0x564
	.ascii "IMAGE_REL_SH3_PCREL8_WORD 0x0009\0"
	.byte	0x1
	.uleb128 0x565
	.ascii "IMAGE_REL_SH3_PCREL8_LONG 0x000A\0"
	.byte	0x1
	.uleb128 0x566
	.ascii "IMAGE_REL_SH3_PCREL12_WORD 0x000B\0"
	.byte	0x1
	.uleb128 0x567
	.ascii "IMAGE_REL_SH3_STARTOF_SECTION 0x000C\0"
	.byte	0x1
	.uleb128 0x568
	.ascii "IMAGE_REL_SH3_SIZEOF_SECTION 0x000D\0"
	.byte	0x1
	.uleb128 0x569
	.ascii "IMAGE_REL_SH3_SECTION 0x000E\0"
	.byte	0x1
	.uleb128 0x56a
	.ascii "IMAGE_REL_SH3_SECREL 0x000F\0"
	.byte	0x1
	.uleb128 0x56b
	.ascii "IMAGE_REL_SH3_DIRECT32_NB 0x0010\0"
	.byte	0x1
	.uleb128 0x56c
	.ascii "IMAGE_REL_SH3_GPREL4_LONG 0x0011\0"
	.byte	0x1
	.uleb128 0x56d
	.ascii "IMAGE_REL_SH3_TOKEN 0x0012\0"
	.byte	0x1
	.uleb128 0x56e
	.ascii "IMAGE_REL_SHM_PCRELPT 0x0013\0"
	.byte	0x1
	.uleb128 0x56f
	.ascii "IMAGE_REL_SHM_REFLO 0x0014\0"
	.byte	0x1
	.uleb128 0x570
	.ascii "IMAGE_REL_SHM_REFHALF 0x0015\0"
	.byte	0x1
	.uleb128 0x571
	.ascii "IMAGE_REL_SHM_RELLO 0x0016\0"
	.byte	0x1
	.uleb128 0x572
	.ascii "IMAGE_REL_SHM_RELHALF 0x0017\0"
	.byte	0x1
	.uleb128 0x573
	.ascii "IMAGE_REL_SHM_PAIR 0x0018\0"
	.byte	0x1
	.uleb128 0x574
	.ascii "IMAGE_REL_SHM_NOMODE 0x8000\0"
	.byte	0x1
	.uleb128 0x576
	.ascii "IMAGE_REL_M32R_ABSOLUTE 0x0000\0"
	.byte	0x1
	.uleb128 0x577
	.ascii "IMAGE_REL_M32R_ADDR32 0x0001\0"
	.byte	0x1
	.uleb128 0x578
	.ascii "IMAGE_REL_M32R_ADDR32NB 0x0002\0"
	.byte	0x1
	.uleb128 0x579
	.ascii "IMAGE_REL_M32R_ADDR24 0x0003\0"
	.byte	0x1
	.uleb128 0x57a
	.ascii "IMAGE_REL_M32R_GPREL16 0x0004\0"
	.byte	0x1
	.uleb128 0x57b
	.ascii "IMAGE_REL_M32R_PCREL24 0x0005\0"
	.byte	0x1
	.uleb128 0x57c
	.ascii "IMAGE_REL_M32R_PCREL16 0x0006\0"
	.byte	0x1
	.uleb128 0x57d
	.ascii "IMAGE_REL_M32R_PCREL8 0x0007\0"
	.byte	0x1
	.uleb128 0x57e
	.ascii "IMAGE_REL_M32R_REFHALF 0x0008\0"
	.byte	0x1
	.uleb128 0x57f
	.ascii "IMAGE_REL_M32R_REFHI 0x0009\0"
	.byte	0x1
	.uleb128 0x580
	.ascii "IMAGE_REL_M32R_REFLO 0x000A\0"
	.byte	0x1
	.uleb128 0x581
	.ascii "IMAGE_REL_M32R_PAIR 0x000B\0"
	.byte	0x1
	.uleb128 0x582
	.ascii "IMAGE_REL_M32R_SECTION 0x000C\0"
	.byte	0x1
	.uleb128 0x583
	.ascii "IMAGE_REL_M32R_SECREL 0x000D\0"
	.byte	0x1
	.uleb128 0x584
	.ascii "IMAGE_REL_M32R_TOKEN 0x000E\0"
	.byte	0x1
	.uleb128 0x586
	.ascii "IMAGE_REL_MIPS_ABSOLUTE 0x0000\0"
	.byte	0x1
	.uleb128 0x587
	.ascii "IMAGE_REL_MIPS_REFHALF 0x0001\0"
	.byte	0x1
	.uleb128 0x588
	.ascii "IMAGE_REL_MIPS_REFWORD 0x0002\0"
	.byte	0x1
	.uleb128 0x589
	.ascii "IMAGE_REL_MIPS_JMPADDR 0x0003\0"
	.byte	0x1
	.uleb128 0x58a
	.ascii "IMAGE_REL_MIPS_REFHI 0x0004\0"
	.byte	0x1
	.uleb128 0x58b
	.ascii "IMAGE_REL_MIPS_REFLO 0x0005\0"
	.byte	0x1
	.uleb128 0x58c
	.ascii "IMAGE_REL_MIPS_GPREL 0x0006\0"
	.byte	0x1
	.uleb128 0x58d
	.ascii "IMAGE_REL_MIPS_LITERAL 0x0007\0"
	.byte	0x1
	.uleb128 0x58e
	.ascii "IMAGE_REL_MIPS_SECTION 0x000A\0"
	.byte	0x1
	.uleb128 0x58f
	.ascii "IMAGE_REL_MIPS_SECREL 0x000B\0"
	.byte	0x1
	.uleb128 0x590
	.ascii "IMAGE_REL_MIPS_SECRELLO 0x000C\0"
	.byte	0x1
	.uleb128 0x591
	.ascii "IMAGE_REL_MIPS_SECRELHI 0x000D\0"
	.byte	0x1
	.uleb128 0x592
	.ascii "IMAGE_REL_MIPS_JMPADDR16 0x0010\0"
	.byte	0x1
	.uleb128 0x593
	.ascii "IMAGE_REL_MIPS_REFWORDNB 0x0022\0"
	.byte	0x1
	.uleb128 0x594
	.ascii "IMAGE_REL_MIPS_PAIR 0x0025\0"
	.byte	0x1
	.uleb128 0x596
	.ascii "IMAGE_REL_ALPHA_ABSOLUTE 0\0"
	.byte	0x1
	.uleb128 0x597
	.ascii "IMAGE_REL_ALPHA_REFLONG 1\0"
	.byte	0x1
	.uleb128 0x598
	.ascii "IMAGE_REL_ALPHA_REFQUAD 2\0"
	.byte	0x1
	.uleb128 0x599
	.ascii "IMAGE_REL_ALPHA_GPREL32 3\0"
	.byte	0x1
	.uleb128 0x59a
	.ascii "IMAGE_REL_ALPHA_LITERAL 4\0"
	.byte	0x1
	.uleb128 0x59b
	.ascii "IMAGE_REL_ALPHA_LITUSE 5\0"
	.byte	0x1
	.uleb128 0x59c
	.ascii "IMAGE_REL_ALPHA_GPDISP 6\0"
	.byte	0x1
	.uleb128 0x59d
	.ascii "IMAGE_REL_ALPHA_BRADDR 7\0"
	.byte	0x1
	.uleb128 0x59e
	.ascii "IMAGE_REL_ALPHA_HINT 8\0"
	.byte	0x1
	.uleb128 0x59f
	.ascii "IMAGE_REL_ALPHA_INLINE_REFLONG 9\0"
	.byte	0x1
	.uleb128 0x5a0
	.ascii "IMAGE_REL_ALPHA_REFHI 10\0"
	.byte	0x1
	.uleb128 0x5a1
	.ascii "IMAGE_REL_ALPHA_REFLO 11\0"
	.byte	0x1
	.uleb128 0x5a2
	.ascii "IMAGE_REL_ALPHA_PAIR 12\0"
	.byte	0x1
	.uleb128 0x5a3
	.ascii "IMAGE_REL_ALPHA_MATCH 13\0"
	.byte	0x1
	.uleb128 0x5a4
	.ascii "IMAGE_REL_ALPHA_SECTION 14\0"
	.byte	0x1
	.uleb128 0x5a5
	.ascii "IMAGE_REL_ALPHA_SECREL 15\0"
	.byte	0x1
	.uleb128 0x5a6
	.ascii "IMAGE_REL_ALPHA_REFLONGNB 16\0"
	.byte	0x1
	.uleb128 0x5a7
	.ascii "IMAGE_REL_ALPHA_SECRELLO 17\0"
	.byte	0x1
	.uleb128 0x5a8
	.ascii "IMAGE_REL_ALPHA_SECRELHI 18\0"
	.byte	0x1
	.uleb128 0x5a9
	.ascii "IMAGE_REL_PPC_ABSOLUTE 0\0"
	.byte	0x1
	.uleb128 0x5aa
	.ascii "IMAGE_REL_PPC_ADDR64 1\0"
	.byte	0x1
	.uleb128 0x5ab
	.ascii "IMAGE_REL_PPC_ADDR32 2\0"
	.byte	0x1
	.uleb128 0x5ac
	.ascii "IMAGE_REL_PPC_ADDR24 3\0"
	.byte	0x1
	.uleb128 0x5ad
	.ascii "IMAGE_REL_PPC_ADDR16 4\0"
	.byte	0x1
	.uleb128 0x5ae
	.ascii "IMAGE_REL_PPC_ADDR14 5\0"
	.byte	0x1
	.uleb128 0x5af
	.ascii "IMAGE_REL_PPC_REL24 6\0"
	.byte	0x1
	.uleb128 0x5b0
	.ascii "IMAGE_REL_PPC_REL14 7\0"
	.byte	0x1
	.uleb128 0x5b1
	.ascii "IMAGE_REL_PPC_TOCREL16 8\0"
	.byte	0x1
	.uleb128 0x5b2
	.ascii "IMAGE_REL_PPC_TOCREL14 9\0"
	.byte	0x1
	.uleb128 0x5b3
	.ascii "IMAGE_REL_PPC_ADDR32NB 10\0"
	.byte	0x1
	.uleb128 0x5b4
	.ascii "IMAGE_REL_PPC_SECREL 11\0"
	.byte	0x1
	.uleb128 0x5b5
	.ascii "IMAGE_REL_PPC_SECTION 12\0"
	.byte	0x1
	.uleb128 0x5b6
	.ascii "IMAGE_REL_PPC_IFGLUE 13\0"
	.byte	0x1
	.uleb128 0x5b7
	.ascii "IMAGE_REL_PPC_IMGLUE 14\0"
	.byte	0x1
	.uleb128 0x5b8
	.ascii "IMAGE_REL_PPC_SECREL16 15\0"
	.byte	0x1
	.uleb128 0x5b9
	.ascii "IMAGE_REL_PPC_REFHI 16\0"
	.byte	0x1
	.uleb128 0x5ba
	.ascii "IMAGE_REL_PPC_REFLO 17\0"
	.byte	0x1
	.uleb128 0x5bb
	.ascii "IMAGE_REL_PPC_PAIR 18\0"
	.byte	0x1
	.uleb128 0x5bc
	.ascii "IMAGE_REL_PPC_TYPEMASK 255\0"
	.byte	0x1
	.uleb128 0x5bd
	.ascii "IMAGE_REL_PPC_NEG 256\0"
	.byte	0x1
	.uleb128 0x5be
	.ascii "IMAGE_REL_PPC_BRTAKEN 512\0"
	.byte	0x1
	.uleb128 0x5bf
	.ascii "IMAGE_REL_PPC_BRNTAKEN 1024\0"
	.byte	0x1
	.uleb128 0x5c0
	.ascii "IMAGE_REL_PPC_TOCDEFN 2048\0"
	.byte	0x1
	.uleb128 0x5c1
	.ascii "IMAGE_REL_BASED_ABSOLUTE 0\0"
	.byte	0x1
	.uleb128 0x5c2
	.ascii "IMAGE_REL_BASED_HIGH 1\0"
	.byte	0x1
	.uleb128 0x5c3
	.ascii "IMAGE_REL_BASED_LOW 2\0"
	.byte	0x1
	.uleb128 0x5c4
	.ascii "IMAGE_REL_BASED_HIGHLOW 3\0"
	.byte	0x1
	.uleb128 0x5c5
	.ascii "IMAGE_REL_BASED_HIGHADJ 4\0"
	.byte	0x1
	.uleb128 0x5c6
	.ascii "IMAGE_REL_BASED_MIPS_JMPADDR 5\0"
	.byte	0x1
	.uleb128 0x5c7
	.ascii "IMAGE_ARCHIVE_START_SIZE 8\0"
	.byte	0x1
	.uleb128 0x5c8
	.ascii "IMAGE_ARCHIVE_START \"!<arch>\\n\"\0"
	.byte	0x1
	.uleb128 0x5c9
	.ascii "IMAGE_ARCHIVE_END \"`\\n\"\0"
	.byte	0x1
	.uleb128 0x5ca
	.ascii "IMAGE_ARCHIVE_PAD \"\\n\"\0"
	.byte	0x1
	.uleb128 0x5cb
	.ascii "IMAGE_ARCHIVE_LINKER_MEMBER \"/               \"\0"
	.byte	0x1
	.uleb128 0x5cc
	.ascii "IMAGE_ARCHIVE_LONGNAMES_MEMBER \"//              \"\0"
	.byte	0x1
	.uleb128 0x5cd
	.ascii "IMAGE_ORDINAL_FLAG32 0x80000000\0"
	.byte	0x1
	.uleb128 0x5ce
	.ascii "IMAGE_SNAP_BY_ORDINAL32(o) ((o&IMAGE_ORDINAL_FLAG32)!=0)\0"
	.byte	0x1
	.uleb128 0x5cf
	.ascii "IMAGE_ORDINAL32(o) (o&0xffff)\0"
	.byte	0x1
	.uleb128 0x5d0
	.ascii "IMAGE_ORDINAL_FLAG64 0x8000000000000000ULL\0"
	.byte	0x1
	.uleb128 0x5d1
	.ascii "IMAGE_SNAP_BY_ORDINAL64(o) ((o&IMAGE_ORDINAL_FLAG64)!=0)\0"
	.byte	0x1
	.uleb128 0x5d2
	.ascii "IMAGE_ORDINAL64(o) (o&0xffff)\0"
	.byte	0x1
	.uleb128 0x5d8
	.ascii "IMAGE_ORDINAL_FLAG IMAGE_ORDINAL_FLAG32\0"
	.byte	0x1
	.uleb128 0x5d9
	.ascii "IMAGE_SNAP_BY_ORDINAL(o) IMAGE_SNAP_BY_ORDINAL32(o)\0"
	.byte	0x1
	.uleb128 0x5da
	.ascii "IMAGE_ORDINAL(o) IMAGE_ORDINAL32(o)\0"
	.byte	0x1
	.uleb128 0x5dc
	.ascii "IMAGE_RESOURCE_NAME_IS_STRING 0x80000000\0"
	.byte	0x1
	.uleb128 0x5dd
	.ascii "IMAGE_RESOURCE_DATA_IS_DIRECTORY 0x80000000\0"
	.byte	0x1
	.uleb128 0x5de
	.ascii "IMAGE_DEBUG_TYPE_UNKNOWN 0\0"
	.byte	0x1
	.uleb128 0x5df
	.ascii "IMAGE_DEBUG_TYPE_COFF 1\0"
	.byte	0x1
	.uleb128 0x5e0
	.ascii "IMAGE_DEBUG_TYPE_CODEVIEW 2\0"
	.byte	0x1
	.uleb128 0x5e1
	.ascii "IMAGE_DEBUG_TYPE_FPO 3\0"
	.byte	0x1
	.uleb128 0x5e2
	.ascii "IMAGE_DEBUG_TYPE_MISC 4\0"
	.byte	0x1
	.uleb128 0x5e3
	.ascii "IMAGE_DEBUG_TYPE_EXCEPTION 5\0"
	.byte	0x1
	.uleb128 0x5e4
	.ascii "IMAGE_DEBUG_TYPE_FIXUP 6\0"
	.byte	0x1
	.uleb128 0x5e5
	.ascii "IMAGE_DEBUG_TYPE_OMAP_TO_SRC 7\0"
	.byte	0x1
	.uleb128 0x5e6
	.ascii "IMAGE_DEBUG_TYPE_OMAP_FROM_SRC 8\0"
	.byte	0x1
	.uleb128 0x5e7
	.ascii "IMAGE_DEBUG_TYPE_BORLAND 9\0"
	.byte	0x1
	.uleb128 0x5e8
	.ascii "FRAME_FPO 0\0"
	.byte	0x1
	.uleb128 0x5e9
	.ascii "FRAME_TRAP 1\0"
	.byte	0x1
	.uleb128 0x5ea
	.ascii "FRAME_TSS 2\0"
	.byte	0x1
	.uleb128 0x5eb
	.ascii "FRAME_NONFPO 3\0"
	.byte	0x1
	.uleb128 0x5ec
	.ascii "IMAGE_DEBUG_MISC_EXENAME 1\0"
	.byte	0x1
	.uleb128 0x5ed
	.ascii "N_BTMASK 0x000F\0"
	.byte	0x1
	.uleb128 0x5ee
	.ascii "N_TMASK 0x0030\0"
	.byte	0x1
	.uleb128 0x5ef
	.ascii "N_TMASK1 0x00C0\0"
	.byte	0x1
	.uleb128 0x5f0
	.ascii "N_TMASK2 0x00F0\0"
	.byte	0x1
	.uleb128 0x5f1
	.ascii "N_BTSHFT 4\0"
	.byte	0x1
	.uleb128 0x5f2
	.ascii "N_TSHIFT 2\0"
	.byte	0x1
	.uleb128 0x5f3
	.ascii "IS_TEXT_UNICODE_ASCII16 1\0"
	.byte	0x1
	.uleb128 0x5f4
	.ascii "IS_TEXT_UNICODE_REVERSE_ASCII16 16\0"
	.byte	0x1
	.uleb128 0x5f5
	.ascii "IS_TEXT_UNICODE_STATISTICS 2\0"
	.byte	0x1
	.uleb128 0x5f6
	.ascii "IS_TEXT_UNICODE_REVERSE_STATISTICS 32\0"
	.byte	0x1
	.uleb128 0x5f7
	.ascii "IS_TEXT_UNICODE_CONTROLS 4\0"
	.byte	0x1
	.uleb128 0x5f8
	.ascii "IS_TEXT_UNICODE_REVERSE_CONTROLS 64\0"
	.byte	0x1
	.uleb128 0x5f9
	.ascii "IS_TEXT_UNICODE_SIGNATURE 8\0"
	.byte	0x1
	.uleb128 0x5fa
	.ascii "IS_TEXT_UNICODE_REVERSE_SIGNATURE 128\0"
	.byte	0x1
	.uleb128 0x5fb
	.ascii "IS_TEXT_UNICODE_ILLEGAL_CHARS 256\0"
	.byte	0x1
	.uleb128 0x5fc
	.ascii "IS_TEXT_UNICODE_ODD_LENGTH 512\0"
	.byte	0x1
	.uleb128 0x5fd
	.ascii "IS_TEXT_UNICODE_NULL_BYTES 4096\0"
	.byte	0x1
	.uleb128 0x5fe
	.ascii "IS_TEXT_UNICODE_UNICODE_MASK 15\0"
	.byte	0x1
	.uleb128 0x5ff
	.ascii "IS_TEXT_UNICODE_REVERSE_MASK 240\0"
	.byte	0x1
	.uleb128 0x600
	.ascii "IS_TEXT_UNICODE_NOT_UNICODE_MASK 3840\0"
	.byte	0x1
	.uleb128 0x601
	.ascii "IS_TEXT_UNICODE_NOT_ASCII_MASK 61440\0"
	.byte	0x1
	.uleb128 0x602
	.ascii "SERVICE_KERNEL_DRIVER 1\0"
	.byte	0x1
	.uleb128 0x603
	.ascii "SERVICE_FILE_SYSTEM_DRIVER 2\0"
	.byte	0x1
	.uleb128 0x604
	.ascii "SERVICE_ADAPTER 4\0"
	.byte	0x1
	.uleb128 0x605
	.ascii "SERVICE_RECOGNIZER_DRIVER 8\0"
	.byte	0x1
	.uleb128 0x606
	.ascii "SERVICE_DRIVER (SERVICE_KERNEL_DRIVER|SERVICE_FILE_SYSTEM_DRIVER|SERVICE_RECOGNIZER_DRIVER)\0"
	.byte	0x1
	.uleb128 0x607
	.ascii "SERVICE_WIN32_OWN_PROCESS 16\0"
	.byte	0x1
	.uleb128 0x608
	.ascii "SERVICE_WIN32_SHARE_PROCESS 32\0"
	.byte	0x1
	.uleb128 0x609
	.ascii "SERVICE_WIN32 (SERVICE_WIN32_OWN_PROCESS|SERVICE_WIN32_SHARE_PROCESS)\0"
	.byte	0x1
	.uleb128 0x60a
	.ascii "SERVICE_INTERACTIVE_PROCESS 256\0"
	.byte	0x1
	.uleb128 0x60b
	.ascii "SERVICE_TYPE_ALL (SERVICE_WIN32|SERVICE_ADAPTER|SERVICE_DRIVER|SERVICE_INTERACTIVE_PROCESS)\0"
	.byte	0x1
	.uleb128 0x60c
	.ascii "SERVICE_BOOT_START 0\0"
	.byte	0x1
	.uleb128 0x60d
	.ascii "SERVICE_SYSTEM_START 1\0"
	.byte	0x1
	.uleb128 0x60e
	.ascii "SERVICE_AUTO_START 2\0"
	.byte	0x1
	.uleb128 0x60f
	.ascii "SERVICE_DEMAND_START 3\0"
	.byte	0x1
	.uleb128 0x610
	.ascii "SERVICE_DISABLED 4\0"
	.byte	0x1
	.uleb128 0x611
	.ascii "SERVICE_ERROR_IGNORE 0\0"
	.byte	0x1
	.uleb128 0x612
	.ascii "SERVICE_ERROR_NORMAL 1\0"
	.byte	0x1
	.uleb128 0x613
	.ascii "SERVICE_ERROR_SEVERE 2\0"
	.byte	0x1
	.uleb128 0x614
	.ascii "SERVICE_ERROR_CRITICAL 3\0"
	.byte	0x1
	.uleb128 0x615
	.ascii "SE_OWNER_DEFAULTED 1\0"
	.byte	0x1
	.uleb128 0x616
	.ascii "SE_GROUP_DEFAULTED 2\0"
	.byte	0x1
	.uleb128 0x617
	.ascii "SE_DACL_PRESENT 4\0"
	.byte	0x1
	.uleb128 0x618
	.ascii "SE_DACL_DEFAULTED 8\0"
	.byte	0x1
	.uleb128 0x619
	.ascii "SE_SACL_PRESENT 16\0"
	.byte	0x1
	.uleb128 0x61a
	.ascii "SE_SACL_DEFAULTED 32\0"
	.byte	0x1
	.uleb128 0x61b
	.ascii "SE_DACL_AUTO_INHERIT_REQ 256\0"
	.byte	0x1
	.uleb128 0x61c
	.ascii "SE_SACL_AUTO_INHERIT_REQ 512\0"
	.byte	0x1
	.uleb128 0x61d
	.ascii "SE_DACL_AUTO_INHERITED 1024\0"
	.byte	0x1
	.uleb128 0x61e
	.ascii "SE_SACL_AUTO_INHERITED 2048\0"
	.byte	0x1
	.uleb128 0x61f
	.ascii "SE_DACL_PROTECTED 4096\0"
	.byte	0x1
	.uleb128 0x620
	.ascii "SE_SACL_PROTECTED 8192\0"
	.byte	0x1
	.uleb128 0x621
	.ascii "SE_SELF_RELATIVE 0x8000\0"
	.byte	0x1
	.uleb128 0x622
	.ascii "SECURITY_DESCRIPTOR_MIN_LENGTH 20\0"
	.byte	0x1
	.uleb128 0x623
	.ascii "SECURITY_DESCRIPTOR_REVISION 1\0"
	.byte	0x1
	.uleb128 0x624
	.ascii "SECURITY_DESCRIPTOR_REVISION1 1\0"
	.byte	0x1
	.uleb128 0x625
	.ascii "SE_PRIVILEGE_ENABLED_BY_DEFAULT 1\0"
	.byte	0x1
	.uleb128 0x626
	.ascii "SE_PRIVILEGE_ENABLED 2\0"
	.byte	0x1
	.uleb128 0x627
	.ascii "SE_PRIVILEGE_USED_FOR_ACCESS 0x80000000\0"
	.byte	0x1
	.uleb128 0x628
	.ascii "PRIVILEGE_SET_ALL_NECESSARY 1\0"
	.byte	0x1
	.uleb128 0x629
	.ascii "SECURITY_MAX_IMPERSONATION_LEVEL SecurityDelegation\0"
	.byte	0x1
	.uleb128 0x62a
	.ascii "DEFAULT_IMPERSONATION_LEVEL SecurityImpersonation\0"
	.byte	0x1
	.uleb128 0x62b
	.ascii "SECURITY_DYNAMIC_TRACKING TRUE\0"
	.byte	0x1
	.uleb128 0x62c
	.ascii "SECURITY_STATIC_TRACKING FALSE\0"
	.byte	0x1
	.uleb128 0x62e
	.ascii "TOKEN_ASSIGN_PRIMARY (0x0001)\0"
	.byte	0x1
	.uleb128 0x62f
	.ascii "TOKEN_DUPLICATE (0x0002)\0"
	.byte	0x1
	.uleb128 0x630
	.ascii "TOKEN_IMPERSONATE (0x0004)\0"
	.byte	0x1
	.uleb128 0x631
	.ascii "TOKEN_QUERY (0x0008)\0"
	.byte	0x1
	.uleb128 0x632
	.ascii "TOKEN_QUERY_SOURCE (0x0010)\0"
	.byte	0x1
	.uleb128 0x633
	.ascii "TOKEN_ADJUST_PRIVILEGES (0x0020)\0"
	.byte	0x1
	.uleb128 0x634
	.ascii "TOKEN_ADJUST_GROUPS (0x0040)\0"
	.byte	0x1
	.uleb128 0x635
	.ascii "TOKEN_ADJUST_DEFAULT (0x0080)\0"
	.byte	0x1
	.uleb128 0x637
	.ascii "TOKEN_ALL_ACCESS ( STANDARD_RIGHTS_REQUIRED | TOKEN_ASSIGN_PRIMARY | TOKEN_DUPLICATE | TOKEN_IMPERSONATE | TOKEN_QUERY | TOKEN_QUERY_SOURCE | TOKEN_ADJUST_PRIVILEGES | TOKEN_ADJUST_GROUPS | TOKEN_ADJUST_DEFAULT )\0"
	.byte	0x1
	.uleb128 0x63c
	.ascii "TOKEN_READ ( STANDARD_RIGHTS_READ | TOKEN_QUERY )\0"
	.byte	0x1
	.uleb128 0x63d
	.ascii "TOKEN_WRITE ( STANDARD_RIGHTS_WRITE | TOKEN_ADJUST_PRIVILEGES | TOKEN_ADJUST_GROUPS | TOKEN_ADJUST_DEFAULT )\0"
	.byte	0x1
	.uleb128 0x641
	.ascii "TOKEN_EXECUTE ( STANDARD_RIGHTS_EXECUTE )\0"
	.byte	0x1
	.uleb128 0x643
	.ascii "TOKEN_SOURCE_LENGTH 8\0"
	.byte	0x1
	.uleb128 0x64b
	.ascii "DLL_PROCESS_DETACH 0\0"
	.byte	0x1
	.uleb128 0x64c
	.ascii "DLL_PROCESS_ATTACH 1\0"
	.byte	0x1
	.uleb128 0x64d
	.ascii "DLL_THREAD_ATTACH 2\0"
	.byte	0x1
	.uleb128 0x64e
	.ascii "DLL_THREAD_DETACH 3\0"
	.byte	0x1
	.uleb128 0x64f
	.ascii "DBG_CONTINUE 0x10002\0"
	.byte	0x1
	.uleb128 0x650
	.ascii "DBG_TERMINATE_THREAD 0x40010003\0"
	.byte	0x1
	.uleb128 0x651
	.ascii "DBG_TERMINATE_PROCESS 0x40010004\0"
	.byte	0x1
	.uleb128 0x652
	.ascii "DBG_CONTROL_C 0x40010005\0"
	.byte	0x1
	.uleb128 0x653
	.ascii "DBG_CONTROL_BREAK 0x40010008\0"
	.byte	0x1
	.uleb128 0x654
	.ascii "DBG_EXCEPTION_NOT_HANDLED 0x80010001\0"
	.byte	0x1
	.uleb128 0x655
	.ascii "TAPE_ABSOLUTE_POSITION 0\0"
	.byte	0x1
	.uleb128 0x656
	.ascii "TAPE_LOGICAL_POSITION 1\0"
	.byte	0x1
	.uleb128 0x657
	.ascii "TAPE_PSEUDO_LOGICAL_POSITION 2\0"
	.byte	0x1
	.uleb128 0x658
	.ascii "TAPE_REWIND 0\0"
	.byte	0x1
	.uleb128 0x659
	.ascii "TAPE_ABSOLUTE_BLOCK 1\0"
	.byte	0x1
	.uleb128 0x65a
	.ascii "TAPE_LOGICAL_BLOCK 2\0"
	.byte	0x1
	.uleb128 0x65b
	.ascii "TAPE_PSEUDO_LOGICAL_BLOCK 3\0"
	.byte	0x1
	.uleb128 0x65c
	.ascii "TAPE_SPACE_END_OF_DATA 4\0"
	.byte	0x1
	.uleb128 0x65d
	.ascii "TAPE_SPACE_RELATIVE_BLOCKS 5\0"
	.byte	0x1
	.uleb128 0x65e
	.ascii "TAPE_SPACE_FILEMARKS 6\0"
	.byte	0x1
	.uleb128 0x65f
	.ascii "TAPE_SPACE_SEQUENTIAL_FMKS 7\0"
	.byte	0x1
	.uleb128 0x660
	.ascii "TAPE_SPACE_SETMARKS 8\0"
	.byte	0x1
	.uleb128 0x661
	.ascii "TAPE_SPACE_SEQUENTIAL_SMKS 9\0"
	.byte	0x1
	.uleb128 0x662
	.ascii "TAPE_DRIVE_FIXED 1\0"
	.byte	0x1
	.uleb128 0x663
	.ascii "TAPE_DRIVE_SELECT 2\0"
	.byte	0x1
	.uleb128 0x664
	.ascii "TAPE_DRIVE_INITIATOR 4\0"
	.byte	0x1
	.uleb128 0x665
	.ascii "TAPE_DRIVE_ERASE_SHORT 16\0"
	.byte	0x1
	.uleb128 0x666
	.ascii "TAPE_DRIVE_ERASE_LONG 32\0"
	.byte	0x1
	.uleb128 0x667
	.ascii "TAPE_DRIVE_ERASE_BOP_ONLY 64\0"
	.byte	0x1
	.uleb128 0x668
	.ascii "TAPE_DRIVE_ERASE_IMMEDIATE 128\0"
	.byte	0x1
	.uleb128 0x669
	.ascii "TAPE_DRIVE_TAPE_CAPACITY 256\0"
	.byte	0x1
	.uleb128 0x66a
	.ascii "TAPE_DRIVE_TAPE_REMAINING 512\0"
	.byte	0x1
	.uleb128 0x66b
	.ascii "TAPE_DRIVE_FIXED_BLOCK 1024\0"
	.byte	0x1
	.uleb128 0x66c
	.ascii "TAPE_DRIVE_VARIABLE_BLOCK 2048\0"
	.byte	0x1
	.uleb128 0x66d
	.ascii "TAPE_DRIVE_WRITE_PROTECT 4096\0"
	.byte	0x1
	.uleb128 0x66e
	.ascii "TAPE_DRIVE_EOT_WZ_SIZE 8192\0"
	.byte	0x1
	.uleb128 0x66f
	.ascii "TAPE_DRIVE_ECC 0x10000\0"
	.byte	0x1
	.uleb128 0x670
	.ascii "TAPE_DRIVE_COMPRESSION 0x20000\0"
	.byte	0x1
	.uleb128 0x671
	.ascii "TAPE_DRIVE_PADDING 0x40000\0"
	.byte	0x1
	.uleb128 0x672
	.ascii "TAPE_DRIVE_REPORT_SMKS 0x80000\0"
	.byte	0x1
	.uleb128 0x673
	.ascii "TAPE_DRIVE_GET_ABSOLUTE_BLK 0x100000\0"
	.byte	0x1
	.uleb128 0x674
	.ascii "TAPE_DRIVE_GET_LOGICAL_BLK 0x200000\0"
	.byte	0x1
	.uleb128 0x675
	.ascii "TAPE_DRIVE_SET_EOT_WZ_SIZE 0x400000\0"
	.byte	0x1
	.uleb128 0x676
	.ascii "TAPE_DRIVE_EJECT_MEDIA 0x1000000\0"
	.byte	0x1
	.uleb128 0x677
	.ascii "TAPE_DRIVE_CLEAN_REQUESTS 0x2000000\0"
	.byte	0x1
	.uleb128 0x678
	.ascii "TAPE_DRIVE_SET_CMP_BOP_ONLY 0x4000000\0"
	.byte	0x1
	.uleb128 0x679
	.ascii "TAPE_DRIVE_RESERVED_BIT 0x80000000\0"
	.byte	0x1
	.uleb128 0x67a
	.ascii "TAPE_DRIVE_LOAD_UNLOAD 0x80000001\0"
	.byte	0x1
	.uleb128 0x67b
	.ascii "TAPE_DRIVE_TENSION 0x80000002\0"
	.byte	0x1
	.uleb128 0x67c
	.ascii "TAPE_DRIVE_LOCK_UNLOCK 0x80000004\0"
	.byte	0x1
	.uleb128 0x67d
	.ascii "TAPE_DRIVE_REWIND_IMMEDIATE 0x80000008\0"
	.byte	0x1
	.uleb128 0x67e
	.ascii "TAPE_DRIVE_SET_BLOCK_SIZE 0x80000010\0"
	.byte	0x1
	.uleb128 0x67f
	.ascii "TAPE_DRIVE_LOAD_UNLD_IMMED 0x80000020\0"
	.byte	0x1
	.uleb128 0x680
	.ascii "TAPE_DRIVE_TENSION_IMMED 0x80000040\0"
	.byte	0x1
	.uleb128 0x681
	.ascii "TAPE_DRIVE_LOCK_UNLK_IMMED 0x80000080\0"
	.byte	0x1
	.uleb128 0x682
	.ascii "TAPE_DRIVE_SET_ECC 0x80000100\0"
	.byte	0x1
	.uleb128 0x683
	.ascii "TAPE_DRIVE_SET_COMPRESSION 0x80000200\0"
	.byte	0x1
	.uleb128 0x684
	.ascii "TAPE_DRIVE_SET_PADDING 0x80000400\0"
	.byte	0x1
	.uleb128 0x685
	.ascii "TAPE_DRIVE_SET_REPORT_SMKS 0x80000800\0"
	.byte	0x1
	.uleb128 0x686
	.ascii "TAPE_DRIVE_ABSOLUTE_BLK 0x80001000\0"
	.byte	0x1
	.uleb128 0x687
	.ascii "TAPE_DRIVE_ABS_BLK_IMMED 0x80002000\0"
	.byte	0x1
	.uleb128 0x688
	.ascii "TAPE_DRIVE_LOGICAL_BLK 0x80004000\0"
	.byte	0x1
	.uleb128 0x689
	.ascii "TAPE_DRIVE_LOG_BLK_IMMED 0x80008000\0"
	.byte	0x1
	.uleb128 0x68a
	.ascii "TAPE_DRIVE_END_OF_DATA 0x80010000\0"
	.byte	0x1
	.uleb128 0x68b
	.ascii "TAPE_DRIVE_RELATIVE_BLKS 0x80020000\0"
	.byte	0x1
	.uleb128 0x68c
	.ascii "TAPE_DRIVE_FILEMARKS 0x80040000\0"
	.byte	0x1
	.uleb128 0x68d
	.ascii "TAPE_DRIVE_SEQUENTIAL_FMKS 0x80080000\0"
	.byte	0x1
	.uleb128 0x68e
	.ascii "TAPE_DRIVE_SETMARKS 0x80100000\0"
	.byte	0x1
	.uleb128 0x68f
	.ascii "TAPE_DRIVE_SEQUENTIAL_SMKS 0x80200000\0"
	.byte	0x1
	.uleb128 0x690
	.ascii "TAPE_DRIVE_REVERSE_POSITION 0x80400000\0"
	.byte	0x1
	.uleb128 0x691
	.ascii "TAPE_DRIVE_SPACE_IMMEDIATE 0x80800000\0"
	.byte	0x1
	.uleb128 0x692
	.ascii "TAPE_DRIVE_WRITE_SETMARKS 0x81000000\0"
	.byte	0x1
	.uleb128 0x693
	.ascii "TAPE_DRIVE_WRITE_FILEMARKS 0x82000000\0"
	.byte	0x1
	.uleb128 0x694
	.ascii "TAPE_DRIVE_WRITE_SHORT_FMKS 0x84000000\0"
	.byte	0x1
	.uleb128 0x695
	.ascii "TAPE_DRIVE_WRITE_LONG_FMKS 0x88000000\0"
	.byte	0x1
	.uleb128 0x696
	.ascii "TAPE_DRIVE_WRITE_MARK_IMMED 0x90000000\0"
	.byte	0x1
	.uleb128 0x697
	.ascii "TAPE_DRIVE_FORMAT 0xA0000000\0"
	.byte	0x1
	.uleb128 0x698
	.ascii "TAPE_DRIVE_FORMAT_IMMEDIATE 0xC0000000\0"
	.byte	0x1
	.uleb128 0x699
	.ascii "TAPE_DRIVE_HIGH_FEATURES 0x80000000\0"
	.byte	0x1
	.uleb128 0x69a
	.ascii "TAPE_FIXED_PARTITIONS 0\0"
	.byte	0x1
	.uleb128 0x69b
	.ascii "TAPE_INITIATOR_PARTITIONS 2\0"
	.byte	0x1
	.uleb128 0x69c
	.ascii "TAPE_SELECT_PARTITIONS 1\0"
	.byte	0x1
	.uleb128 0x69d
	.ascii "TAPE_FILEMARKS 1\0"
	.byte	0x1
	.uleb128 0x69e
	.ascii "TAPE_LONG_FILEMARKS 3\0"
	.byte	0x1
	.uleb128 0x69f
	.ascii "TAPE_SETMARKS 0\0"
	.byte	0x1
	.uleb128 0x6a0
	.ascii "TAPE_SHORT_FILEMARKS 2\0"
	.byte	0x1
	.uleb128 0x6a1
	.ascii "TAPE_ERASE_LONG 1\0"
	.byte	0x1
	.uleb128 0x6a2
	.ascii "TAPE_ERASE_SHORT 0\0"
	.byte	0x1
	.uleb128 0x6a3
	.ascii "TAPE_LOAD 0\0"
	.byte	0x1
	.uleb128 0x6a4
	.ascii "TAPE_UNLOAD 1\0"
	.byte	0x1
	.uleb128 0x6a5
	.ascii "TAPE_TENSION 2\0"
	.byte	0x1
	.uleb128 0x6a6
	.ascii "TAPE_LOCK 3\0"
	.byte	0x1
	.uleb128 0x6a7
	.ascii "TAPE_UNLOCK 4\0"
	.byte	0x1
	.uleb128 0x6a8
	.ascii "TAPE_FORMAT 5\0"
	.byte	0x1
	.uleb128 0x6aa
	.ascii "VER_MINORVERSION 0x0000001\0"
	.byte	0x1
	.uleb128 0x6ab
	.ascii "VER_MAJORVERSION 0x0000002\0"
	.byte	0x1
	.uleb128 0x6ac
	.ascii "VER_BUILDNUMBER 0x0000004\0"
	.byte	0x1
	.uleb128 0x6ad
	.ascii "VER_PLATFORMID 0x0000008\0"
	.byte	0x1
	.uleb128 0x6ae
	.ascii "VER_SERVICEPACKMINOR 0x0000010\0"
	.byte	0x1
	.uleb128 0x6af
	.ascii "VER_SERVICEPACKMAJOR 0x0000020\0"
	.byte	0x1
	.uleb128 0x6b0
	.ascii "VER_SUITENAME 0x0000040\0"
	.byte	0x1
	.uleb128 0x6b1
	.ascii "VER_PRODUCT_TYPE 0x0000080\0"
	.byte	0x1
	.uleb128 0x6b2
	.ascii "VER_EQUAL 1\0"
	.byte	0x1
	.uleb128 0x6b3
	.ascii "VER_GREATER 2\0"
	.byte	0x1
	.uleb128 0x6b4
	.ascii "VER_GREATER_EQUAL 3\0"
	.byte	0x1
	.uleb128 0x6b5
	.ascii "VER_LESS 4\0"
	.byte	0x1
	.uleb128 0x6b6
	.ascii "VER_LESS_EQUAL 5\0"
	.byte	0x1
	.uleb128 0x6b7
	.ascii "VER_AND 6\0"
	.byte	0x1
	.uleb128 0x6b8
	.ascii "VER_OR 7\0"
	.byte	0x1
	.uleb128 0x6ba
	.ascii "VER_PLATFORM_WIN32s 0\0"
	.byte	0x1
	.uleb128 0x6bb
	.ascii "VER_PLATFORM_WIN32_WINDOWS 1\0"
	.byte	0x1
	.uleb128 0x6bc
	.ascii "VER_PLATFORM_WIN32_NT 2\0"
	.byte	0x1
	.uleb128 0x6bd
	.ascii "VER_NT_WORKSTATION 1\0"
	.byte	0x1
	.uleb128 0x6be
	.ascii "VER_NT_DOMAIN_CONTROLLER 2\0"
	.byte	0x1
	.uleb128 0x6bf
	.ascii "VER_NT_SERVER 3\0"
	.byte	0x1
	.uleb128 0x6c0
	.ascii "VER_SUITE_SMALLBUSINESS 1\0"
	.byte	0x1
	.uleb128 0x6c1
	.ascii "VER_SUITE_ENTERPRISE 2\0"
	.byte	0x1
	.uleb128 0x6c2
	.ascii "VER_SUITE_BACKOFFICE 4\0"
	.byte	0x1
	.uleb128 0x6c3
	.ascii "VER_SUITE_TERMINAL 16\0"
	.byte	0x1
	.uleb128 0x6c4
	.ascii "VER_SUITE_SMALLBUSINESS_RESTRICTED 32\0"
	.byte	0x1
	.uleb128 0x6c5
	.ascii "VER_SUITE_EMBEDDEDNT 64\0"
	.byte	0x1
	.uleb128 0x6c6
	.ascii "VER_SUITE_DATACENTER 128\0"
	.byte	0x1
	.uleb128 0x6c7
	.ascii "VER_SUITE_SINGLEUSERTS 256\0"
	.byte	0x1
	.uleb128 0x6c8
	.ascii "VER_SUITE_PERSONAL 512\0"
	.byte	0x1
	.uleb128 0x6c9
	.ascii "VER_SUITE_BLADE 1024\0"
	.byte	0x1
	.uleb128 0x6ca
	.ascii "VER_SUITE_STORAGE_SERVER 8192\0"
	.byte	0x1
	.uleb128 0x6cb
	.ascii "VER_SUITE_COMPUTE_SERVER 16384\0"
	.byte	0x1
	.uleb128 0x6cc
	.ascii "WT_EXECUTEDEFAULT 0x00000000\0"
	.byte	0x1
	.uleb128 0x6cd
	.ascii "WT_EXECUTEINIOTHREAD 0x00000001\0"
	.byte	0x1
	.uleb128 0x6ce
	.ascii "WT_EXECUTEINWAITTHREAD 0x00000004\0"
	.byte	0x1
	.uleb128 0x6cf
	.ascii "WT_EXECUTEONLYONCE 0x00000008\0"
	.byte	0x1
	.uleb128 0x6d0
	.ascii "WT_EXECUTELONGFUNCTION 0x00000010\0"
	.byte	0x1
	.uleb128 0x6d1
	.ascii "WT_EXECUTEINTIMERTHREAD 0x00000020\0"
	.byte	0x1
	.uleb128 0x6d2
	.ascii "WT_EXECUTEINPERSISTENTTHREAD 0x00000080\0"
	.byte	0x1
	.uleb128 0x6d3
	.ascii "WT_TRANSFER_IMPERSONATION 0x00000100\0"
	.byte	0x1
	.uleb128 0x6df
	.ascii "BTYPE(x) ((x)&N_BTMASK)\0"
	.byte	0x1
	.uleb128 0x6e0
	.ascii "ISPTR(x) (((x)&N_TMASK)==(IMAGE_SYM_DTYPE_POINTER<<N_BTSHFT))\0"
	.byte	0x1
	.uleb128 0x6e1
	.ascii "ISFCN(x) (((x)&N_TMASK)==(IMAGE_SYM_DTYPE_FUNCTION<<N_BTSHFT))\0"
	.byte	0x1
	.uleb128 0x6e2
	.ascii "ISARY(x) (((x)&N_TMASK)==(IMAGE_SYM_DTYPE_ARRAY<<N_BTSHFT))\0"
	.byte	0x1
	.uleb128 0x6e3
	.ascii "ISTAG(x) ((x)==IMAGE_SYM_CLASS_STRUCT_TAG||(x)==IMAGE_SYM_CLASS_UNION_TAG||(x)==IMAGE_SYM_CLASS_ENUM_TAG)\0"
	.byte	0x1
	.uleb128 0x6e4
	.ascii "INCREF(x) ((((x)&~N_BTMASK)<<N_TSHIFT)|(IMAGE_SYM_DTYPE_POINTER<<N_BTSHFT)|((x)&N_BTMASK))\0"
	.byte	0x1
	.uleb128 0x6e5
	.ascii "DECREF(x) ((((x)>>N_TSHIFT)&~N_BTMASK)|((x)&N_BTMASK))\0"
	.byte	0x1
	.uleb128 0x6e7
	.ascii "TLS_MINIMUM_AVAILABLE 64\0"
	.byte	0x1
	.uleb128 0x6e8
	.ascii "REPARSE_DATA_BUFFER_HEADER_SIZE FIELD_OFFSET(REPARSE_DATA_BUFFER, GenericReparseBuffer)\0"
	.byte	0x1
	.uleb128 0x6e9
	.ascii "REPARSE_GUID_DATA_BUFFER_HEADER_SIZE FIELD_OFFSET(REPARSE_GUID_DATA_BUFFER, GenericReparseBuffer)\0"
	.byte	0x1
	.uleb128 0x6ea
	.ascii "MAXIMUM_REPARSE_DATA_BUFFER_SIZE 16384\0"
	.byte	0x1
	.uleb128 0x6eb
	.ascii "IO_REPARSE_TAG_RESERVED_ZERO 0\0"
	.byte	0x1
	.uleb128 0x6ec
	.ascii "IO_REPARSE_TAG_RESERVED_ONE 1\0"
	.byte	0x1
	.uleb128 0x6ed
	.ascii "IO_REPARSE_TAG_RESERVED_RANGE IO_REPARSE_TAG_RESERVED_ONE\0"
	.byte	0x1
	.uleb128 0x6ee
	.ascii "IsReparseTagMicrosoft(x) ((x)&0x80000000)\0"
	.byte	0x1
	.uleb128 0x6ef
	.ascii "IsReparseTagHighLatency(x) ((x)&0x40000000)\0"
	.byte	0x1
	.uleb128 0x6f0
	.ascii "IsReparseTagNameSurrogate(x) ((x)&0x20000000)\0"
	.byte	0x1
	.uleb128 0x6f1
	.ascii "IO_REPARSE_TAG_VALID_VALUES 0xE000FFFF\0"
	.byte	0x1
	.uleb128 0x6f2
	.ascii "IsReparseTagValid(x) (!((x)&~IO_REPARSE_TAG_VALID_VALUES)&&((x)>IO_REPARSE_TAG_RESERVED_RANGE))\0"
	.byte	0x1
	.uleb128 0x6f3
	.ascii "IO_REPARSE_TAG_SYMBOLIC_LINK IO_REPARSE_TAG_RESERVED_ZERO\0"
	.byte	0x1
	.uleb128 0x6f4
	.ascii "IO_REPARSE_TAG_MOUNT_POINT 0xA0000003\0"
	.byte	0x1
	.uleb128 0x6f5
	.ascii "IO_REPARSE_TAG_SYMLINK 0xA000000C\0"
	.byte	0x1
	.uleb128 0x6f7
	.ascii "WT_SET_MAX_THREADPOOL_THREADS(Flags,Limit) ((Flags)|=(Limit)<<16)\0"
	.byte	0x1
	.uleb128 0x703
	.ascii "GUID_DEFINED \0"
	.byte	0x1
	.uleb128 0x70a
	.ascii "SYSTEM_LUID { 0x3e7, 0x0 }\0"
	.byte	0x1
	.uleb128 0x76b
	.ascii "SIZE_OF_80387_REGISTERS 80\0"
	.byte	0x1
	.uleb128 0x76c
	.ascii "CONTEXT_i386 0x10000\0"
	.byte	0x1
	.uleb128 0x76d
	.ascii "CONTEXT_i486 0x10000\0"
	.byte	0x1
	.uleb128 0x76e
	.ascii "CONTEXT_CONTROL (CONTEXT_i386|0x00000001L)\0"
	.byte	0x1
	.uleb128 0x76f
	.ascii "CONTEXT_INTEGER (CONTEXT_i386|0x00000002L)\0"
	.byte	0x1
	.uleb128 0x770
	.ascii "CONTEXT_SEGMENTS (CONTEXT_i386|0x00000004L)\0"
	.byte	0x1
	.uleb128 0x771
	.ascii "CONTEXT_FLOATING_POINT (CONTEXT_i386|0x00000008L)\0"
	.byte	0x1
	.uleb128 0x772
	.ascii "CONTEXT_DEBUG_REGISTERS (CONTEXT_i386|0x00000010L)\0"
	.byte	0x1
	.uleb128 0x773
	.ascii "CONTEXT_EXTENDED_REGISTERS (CONTEXT_i386|0x00000020L)\0"
	.byte	0x1
	.uleb128 0x775
	.ascii "CONTEXT_FULL (CONTEXT_CONTROL|CONTEXT_INTEGER|CONTEXT_SEGMENTS)\0"
	.byte	0x1
	.uleb128 0x777
	.ascii "MAXIMUM_SUPPORTED_EXTENSION 512\0"
	.byte	0x1
	.uleb128 0xb11
	.ascii "_SLIST_HEADER_ \0"
	.byte	0x1
	.uleb128 0xb12
	.ascii "SLIST_ENTRY SINGLE_LIST_ENTRY\0"
	.byte	0x1
	.uleb128 0xb13
	.ascii "_SLIST_ENTRY _SINGLE_LIST_ENTRY\0"
	.byte	0x1
	.uleb128 0xb14
	.ascii "PSLIST_ENTRY PSINGLE_LIST_ENTRY\0"
	.byte	0x1
	.uleb128 0xe34
	.ascii "JOB_OBJECT_LIMIT_WORKINGSET 0x0001\0"
	.byte	0x1
	.uleb128 0xe35
	.ascii "JOB_OBJECT_LIMIT_PROCESS_TIME 0x0002\0"
	.byte	0x1
	.uleb128 0xe36
	.ascii "JOB_OBJECT_LIMIT_JOB_TIME 0x0004\0"
	.byte	0x1
	.uleb128 0xe37
	.ascii "JOB_OBJECT_LIMIT_ACTIVE_PROCESS 0x0008\0"
	.byte	0x1
	.uleb128 0xe38
	.ascii "JOB_OBJECT_LIMIT_AFFINITY 0x0010\0"
	.byte	0x1
	.uleb128 0xe39
	.ascii "JOB_OBJECT_LIMIT_PRIORITY_CLASS 0x0020\0"
	.byte	0x1
	.uleb128 0xe3a
	.ascii "JOB_OBJECT_LIMIT_PRESERVE_JOB_TIME 0x0040\0"
	.byte	0x1
	.uleb128 0xe3b
	.ascii "JOB_OBJECT_LIMIT_SCHEDULING_CLASS 0x0080\0"
	.byte	0x1
	.uleb128 0xe3c
	.ascii "JOB_OBJECT_LIMIT_PROCESS_MEMORY 0x0100\0"
	.byte	0x1
	.uleb128 0xe3d
	.ascii "JOB_OBJECT_LIMIT_JOB_MEMORY 0x0200\0"
	.byte	0x1
	.uleb128 0xe3e
	.ascii "JOB_OBJECT_LIMIT_DIE_ON_UNHANDLED_EXCEPTION 0x0400\0"
	.byte	0x1
	.uleb128 0xe3f
	.ascii "JOB_OBJECT_LIMIT_BREAKAWAY_OK 0x0800\0"
	.byte	0x1
	.uleb128 0xe40
	.ascii "JOB_OBJECT_LIMIT_SILENT_BREAKAWAY_OK 0x1000\0"
	.byte	0x1
	.uleb128 0xe41
	.ascii "JOB_OBJECT_LIMIT_KILL_ON_JOB_CLOSE 0x2000\0"
	.byte	0x1
	.uleb128 0xe44
	.ascii "JOB_OBJECT_BREAKAWAY_OK JOB_OBJECT_LIMIT_BREAKAWAY_OK\0"
	.byte	0x1
	.uleb128 0xe45
	.ascii "JOB_OBJECT_SILENT_BREAKAWAY JOB_OBJECT_LIMIT_SILENT_BREAKAWAY_OK\0"
	.byte	0x1
	.uleb128 0xe48
	.ascii "JOB_OBJECT_UILIMIT_HANDLES 0x0001\0"
	.byte	0x1
	.uleb128 0xe49
	.ascii "JOB_OBJECT_UILIMIT_READCLIPBOARD 0x0002\0"
	.byte	0x1
	.uleb128 0xe4a
	.ascii "JOB_OBJECT_UILIMIT_WRITECLIPBOARD 0x0004\0"
	.byte	0x1
	.uleb128 0xe4b
	.ascii "JOB_OBJECT_UILIMIT_SYSTEMPARAMETERS 0x0008\0"
	.byte	0x1
	.uleb128 0xe4c
	.ascii "JOB_OBJECT_UILIMIT_DISPLAYSETTINGS 0x0010\0"
	.byte	0x1
	.uleb128 0xe4d
	.ascii "JOB_OBJECT_UILIMIT_GLOBALATOMS 0x0020\0"
	.byte	0x1
	.uleb128 0xe4e
	.ascii "JOB_OBJECT_UILIMIT_DESKTOP 0x0040\0"
	.byte	0x1
	.uleb128 0xe4f
	.ascii "JOB_OBJECT_UILIMIT_EXITWINDOWS 0x0080\0"
	.byte	0x1
	.uleb128 0xe52
	.ascii "JOB_OBJECT_SECURITY_NO_ADMIN 0x0001\0"
	.byte	0x1
	.uleb128 0xe53
	.ascii "JOB_OBJECT_SECURITY_RESTRICTED_TOKEN 0x0002\0"
	.byte	0x1
	.uleb128 0xe54
	.ascii "JOB_OBJECT_SECURITY_ONLY_TOKEN 0x0004\0"
	.byte	0x1
	.uleb128 0xe55
	.ascii "JOB_OBJECT_SECURITY_FILTER_TOKENS 0x0008\0"
	.byte	0x1
	.uleb128 0xe58
	.ascii "JOB_OBJECT_TERMINATE_AT_END_OF_JOB 0\0"
	.byte	0x1
	.uleb128 0xe59
	.ascii "JOB_OBJECT_POST_AT_END_OF_JOB 1\0"
	.byte	0x1
	.uleb128 0xe5b
	.ascii "JOB_OBJECT_MSG_END_OF_JOB_TIME 1\0"
	.byte	0x1
	.uleb128 0xe5c
	.ascii "JOB_OBJECT_MSG_END_OF_PROCESS_TIME 2\0"
	.byte	0x1
	.uleb128 0xe5d
	.ascii "JOB_OBJECT_MSG_ACTIVE_PROCESS_LIMIT 3\0"
	.byte	0x1
	.uleb128 0xe5e
	.ascii "JOB_OBJECT_MSG_ACTIVE_PROCESS_ZERO 4\0"
	.byte	0x1
	.uleb128 0xe5f
	.ascii "JOB_OBJECT_MSG_NEW_PROCESS 6\0"
	.byte	0x1
	.uleb128 0xe60
	.ascii "JOB_OBJECT_MSG_EXIT_PROCESS 7\0"
	.byte	0x1
	.uleb128 0xe61
	.ascii "JOB_OBJECT_MSG_ABNORMAL_EXIT_PROCESS 8\0"
	.byte	0x1
	.uleb128 0xe62
	.ascii "JOB_OBJECT_MSG_PROCESS_MEMORY_LIMIT 9\0"
	.byte	0x1
	.uleb128 0xe63
	.ascii "JOB_OBJECT_MSG_JOB_MEMORY_LIMIT 10\0"
	.file 31 "c:/mingw/include/pshpack4.h"
	.byte	0x3
	.uleb128 0xeba
	.uleb128 0x1f
	.byte	0x4
	.byte	0x1
	.uleb128 0xebc
	.ascii "ES_SYSTEM_REQUIRED 0x00000001\0"
	.byte	0x1
	.uleb128 0xebd
	.ascii "ES_DISPLAY_REQUIRED 0x00000002\0"
	.byte	0x1
	.uleb128 0xebe
	.ascii "ES_USER_PRESENT 0x00000004\0"
	.byte	0x1
	.uleb128 0xebf
	.ascii "ES_CONTINUOUS 0x80000000\0"
	.byte	0x1
	.uleb128 0xed2
	.ascii "POWER_SYSTEM_MAXIMUM PowerSystemMaximum\0"
	.byte	0x1
	.uleb128 0xf01
	.ascii "POWER_ACTION_QUERY_ALLOWED 0x00000001\0"
	.byte	0x1
	.uleb128 0xf02
	.ascii "POWER_ACTION_UI_ALLOWED 0x00000002\0"
	.byte	0x1
	.uleb128 0xf03
	.ascii "POWER_ACTION_OVERRIDE_APPS 0x00000004\0"
	.byte	0x1
	.uleb128 0xf04
	.ascii "POWER_ACTION_LIGHTEST_FIRST 0x10000000\0"
	.byte	0x1
	.uleb128 0xf05
	.ascii "POWER_ACTION_LOCK_CONSOLE 0x20000000\0"
	.byte	0x1
	.uleb128 0xf06
	.ascii "POWER_ACTION_DISABLE_WAKES 0x40000000\0"
	.byte	0x1
	.uleb128 0xf07
	.ascii "POWER_ACTION_CRITICAL 0x80000000\0"
	.byte	0x1
	.uleb128 0xf0a
	.ascii "POWER_LEVEL_USER_NOTIFY_TEXT 0x00000001\0"
	.byte	0x1
	.uleb128 0xf0b
	.ascii "POWER_LEVEL_USER_NOTIFY_SOUND 0x00000002\0"
	.byte	0x1
	.uleb128 0xf0c
	.ascii "POWER_LEVEL_USER_NOTIFY_EXEC 0x00000004\0"
	.byte	0x1
	.uleb128 0xf0d
	.ascii "POWER_USER_NOTIFY_BUTTON 0x00000008\0"
	.byte	0x1
	.uleb128 0xf0e
	.ascii "POWER_USER_NOTIFY_SHUTDOWN 0x00000010\0"
	.byte	0x1
	.uleb128 0xf0f
	.ascii "POWER_FORCE_TRIGGER_RESET 0x80000000\0"
	.byte	0x1
	.uleb128 0xf11
	.ascii "DISCHARGE_POLICY_CRITICAL 0\0"
	.byte	0x1
	.uleb128 0xf12
	.ascii "DISCHARGE_POLICY_LOW 1\0"
	.byte	0x1
	.uleb128 0xf13
	.ascii "NUM_DISCHARGE_POLICIES 4\0"
	.byte	0x1
	.uleb128 0xf15
	.ascii "PO_THROTTLE_NONE 0\0"
	.byte	0x1
	.uleb128 0xf16
	.ascii "PO_THROTTLE_CONSTANT 1\0"
	.byte	0x1
	.uleb128 0xf17
	.ascii "PO_THROTTLE_DEGRADE 2\0"
	.byte	0x1
	.uleb128 0xf18
	.ascii "PO_THROTTLE_ADAPTIVE 3\0"
	.byte	0x1
	.uleb128 0xf19
	.ascii "PO_THROTTLE_MAXIMUM 4\0"
	.file 32 "c:/mingw/include/poppack.h"
	.byte	0x3
	.uleb128 0xffa
	.uleb128 0x20
	.byte	0x4
	.byte	0x1
	.uleb128 0x100b
	.ascii "VER_SET_CONDITION(ConditionMask,TypeBitMask,ComparisonType) ((ConditionMask) = VerSetConditionMask((ConditionMask), (TypeBitMask), (ComparisonType)))\0"
	.byte	0x1
	.uleb128 0x101c
	.ascii "__tib_fiber_data__ \"fs:0x10\"\0"
	.byte	0x1
	.uleb128 0x101d
	.ascii "__tib_self_refptr__ \"fs:0x18\"\0"
	.byte	0x1
	.uleb128 0x10a5
	.ascii "__mingw_fence_type__ __ATOMIC_SEQ_CST\0"
	.byte	0x1
	.uleb128 0x10a6
	.ascii "__mingw_thread_fence __atomic_thread_fence\0"
	.byte	0x2
	.uleb128 0x10ea
	.ascii "__mingw_fence_type__\0"
	.byte	0x2
	.uleb128 0x10eb
	.ascii "__mingw_thread_fence\0"
	.byte	0x2
	.uleb128 0x10ec
	.ascii "__mingw_fence_insn__\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x114
	.ascii "_HRESULT_DEFINED \0"
	.byte	0x1
	.uleb128 0x12c
	.ascii "HMONITOR_DECLARED 1\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x2
	.ascii "_WINCON_H \0"
	.byte	0x1
	.uleb128 0xb
	.ascii "FOREGROUND_BLUE 1\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "FOREGROUND_GREEN 2\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "FOREGROUND_RED 4\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "FOREGROUND_INTENSITY 8\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "BACKGROUND_BLUE 16\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "BACKGROUND_GREEN 32\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "BACKGROUND_RED 64\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "BACKGROUND_INTENSITY 128\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "CTRL_C_EVENT 0\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "CTRL_BREAK_EVENT 1\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "CTRL_CLOSE_EVENT 2\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "CTRL_LOGOFF_EVENT 5\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "CTRL_SHUTDOWN_EVENT 6\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "ENABLE_LINE_INPUT 2\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "ENABLE_ECHO_INPUT 4\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "ENABLE_PROCESSED_INPUT 1\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "ENABLE_WINDOW_INPUT 8\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "ENABLE_MOUSE_INPUT 16\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "ENABLE_INSERT_MODE 32\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "ENABLE_QUICK_EDIT_MODE 64\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "ENABLE_EXTENDED_FLAGS 128\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "ENABLE_AUTO_POSITION 256\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "ENABLE_PROCESSED_OUTPUT 1\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "ENABLE_WRAP_AT_EOL_OUTPUT 2\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "KEY_EVENT 1\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "MOUSE_EVENT 2\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "WINDOW_BUFFER_SIZE_EVENT 4\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "MENU_EVENT 8\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "FOCUS_EVENT 16\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "CAPSLOCK_ON 128\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "ENHANCED_KEY 256\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "RIGHT_ALT_PRESSED 1\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "LEFT_ALT_PRESSED 2\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "RIGHT_CTRL_PRESSED 4\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "LEFT_CTRL_PRESSED 8\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "SHIFT_PRESSED 16\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "NUMLOCK_ON 32\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "SCROLLLOCK_ON 64\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "FROM_LEFT_1ST_BUTTON_PRESSED 1\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "RIGHTMOST_BUTTON_PRESSED 2\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "FROM_LEFT_2ND_BUTTON_PRESSED 4\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "FROM_LEFT_3RD_BUTTON_PRESSED 8\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "FROM_LEFT_4TH_BUTTON_PRESSED 16\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "MOUSE_MOVED 1\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "DOUBLE_CLICK 2\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "MOUSE_WHEELED 4\0"
	.byte	0x1
	.uleb128 0xd6
	.ascii "FillConsoleOutputCharacter FillConsoleOutputCharacterA\0"
	.byte	0x1
	.uleb128 0xd7
	.ascii "GetConsoleTitle GetConsoleTitleA\0"
	.byte	0x1
	.uleb128 0xd8
	.ascii "PeekConsoleInput PeekConsoleInputA\0"
	.byte	0x1
	.uleb128 0xd9
	.ascii "ReadConsole ReadConsoleA\0"
	.byte	0x1
	.uleb128 0xda
	.ascii "ReadConsoleInput ReadConsoleInputA\0"
	.byte	0x1
	.uleb128 0xdb
	.ascii "ReadConsoleOutput ReadConsoleOutputA\0"
	.byte	0x1
	.uleb128 0xdc
	.ascii "ReadConsoleOutputCharacter ReadConsoleOutputCharacterA\0"
	.byte	0x1
	.uleb128 0xdd
	.ascii "ScrollConsoleScreenBuffer ScrollConsoleScreenBufferA\0"
	.byte	0x1
	.uleb128 0xde
	.ascii "SetConsoleTitle SetConsoleTitleA\0"
	.byte	0x1
	.uleb128 0xdf
	.ascii "WriteConsole WriteConsoleA\0"
	.byte	0x1
	.uleb128 0xe0
	.ascii "WriteConsoleInput WriteConsoleInputA\0"
	.byte	0x1
	.uleb128 0xe1
	.ascii "WriteConsoleOutput WriteConsoleOutputA\0"
	.byte	0x1
	.uleb128 0xe2
	.ascii "WriteConsoleOutputCharacter WriteConsoleOutputCharacterA\0"
	.byte	0x4
	.file 33 "c:/mingw/include/winbase.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x21
	.byte	0x1
	.uleb128 0x22
	.ascii "_WINBASE_H \0"
	.byte	0x1
	.uleb128 0x25
	.ascii "__GNUC_EXTENSION __extension__\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "WINBASEAPI \0"
	.byte	0x1
	.uleb128 0x36
	.ascii "WINADVAPI \0"
	.byte	0x1
	.uleb128 0x42
	.ascii "SP_SERIALCOMM 1\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "PST_UNSPECIFIED 0\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "PST_RS232 1\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "PST_PARALLELPORT 2\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "PST_RS422 3\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "PST_RS423 4\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "PST_RS449 5\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "PST_MODEM 6\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "PST_FAX 0x21\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "PST_SCANNER 0x22\0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "PST_NETWORK_BRIDGE 0x100\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "PST_LAT 0x101\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "PST_TCPIP_TELNET 0x102\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "PST_X25 0x103\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "BAUD_075 1\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "BAUD_110 2\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "BAUD_134_5 4\0"
	.byte	0x1
	.uleb128 0x55
	.ascii "BAUD_150 8\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "BAUD_300 16\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "BAUD_600 32\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "BAUD_1200 64\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "BAUD_1800 128\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "BAUD_2400 256\0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "BAUD_4800 512\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "BAUD_7200 1024\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "BAUD_9600 2048\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "BAUD_14400 4096\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "BAUD_19200 8192\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "BAUD_38400 16384\0"
	.byte	0x1
	.uleb128 0x61
	.ascii "BAUD_56K 32768\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "BAUD_128K 65536\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "BAUD_115200 131072\0"
	.byte	0x1
	.uleb128 0x64
	.ascii "BAUD_57600 262144\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "BAUD_USER 0x10000000\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "PCF_DTRDSR 1\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "PCF_RTSCTS 2\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "PCF_RLSD 4\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "PCF_PARITY_CHECK 8\0"
	.byte	0x1
	.uleb128 0x6b
	.ascii "PCF_XONXOFF 16\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "PCF_SETXCHAR 32\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "PCF_TOTALTIMEOUTS 64\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "PCF_INTTIMEOUTS 128\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "PCF_SPECIALCHARS 256\0"
	.byte	0x1
	.uleb128 0x70
	.ascii "PCF_16BITMODE 512\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "SP_PARITY 1\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "SP_BAUD 2\0"
	.byte	0x1
	.uleb128 0x74
	.ascii "SP_DATABITS 4\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "SP_STOPBITS 8\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "SP_HANDSHAKING 16\0"
	.byte	0x1
	.uleb128 0x77
	.ascii "SP_PARITY_CHECK 32\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "SP_RLSD 64\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "DATABITS_5 1\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "DATABITS_6 2\0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "DATABITS_7 4\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "DATABITS_8 8\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "DATABITS_16 16\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "DATABITS_16X 32\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "STOPBITS_10 1\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "STOPBITS_15 2\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "STOPBITS_20 4\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "PARITY_NONE 256\0"
	.byte	0x1
	.uleb128 0x86
	.ascii "PARITY_ODD 512\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "PARITY_EVEN 1024\0"
	.byte	0x1
	.uleb128 0x88
	.ascii "PARITY_MARK 2048\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "PARITY_SPACE 4096\0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "EXCEPTION_DEBUG_EVENT 1\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "CREATE_THREAD_DEBUG_EVENT 2\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "CREATE_PROCESS_DEBUG_EVENT 3\0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "EXIT_THREAD_DEBUG_EVENT 4\0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "EXIT_PROCESS_DEBUG_EVENT 5\0"
	.byte	0x1
	.uleb128 0x90
	.ascii "LOAD_DLL_DEBUG_EVENT 6\0"
	.byte	0x1
	.uleb128 0x91
	.ascii "UNLOAD_DLL_DEBUG_EVENT 7\0"
	.byte	0x1
	.uleb128 0x92
	.ascii "OUTPUT_DEBUG_STRING_EVENT 8\0"
	.byte	0x1
	.uleb128 0x93
	.ascii "RIP_EVENT 9\0"
	.byte	0x1
	.uleb128 0x95
	.ascii "HFILE_ERROR ((HFILE)(-1))\0"
	.byte	0x1
	.uleb128 0x97
	.ascii "FILE_BEGIN 0\0"
	.byte	0x1
	.uleb128 0x98
	.ascii "FILE_CURRENT 1\0"
	.byte	0x1
	.uleb128 0x99
	.ascii "FILE_END 2\0"
	.byte	0x1
	.uleb128 0x9b
	.ascii "INVALID_SET_FILE_POINTER ((DWORD)(-1))\0"
	.byte	0x1
	.uleb128 0x9d
	.ascii "OF_READ 0\0"
	.byte	0x1
	.uleb128 0x9e
	.ascii "OF_READWRITE 2\0"
	.byte	0x1
	.uleb128 0x9f
	.ascii "OF_WRITE 1\0"
	.byte	0x1
	.uleb128 0xa0
	.ascii "OF_SHARE_COMPAT 0\0"
	.byte	0x1
	.uleb128 0xa1
	.ascii "OF_SHARE_DENY_NONE 64\0"
	.byte	0x1
	.uleb128 0xa2
	.ascii "OF_SHARE_DENY_READ 48\0"
	.byte	0x1
	.uleb128 0xa3
	.ascii "OF_SHARE_DENY_WRITE 32\0"
	.byte	0x1
	.uleb128 0xa4
	.ascii "OF_SHARE_EXCLUSIVE 16\0"
	.byte	0x1
	.uleb128 0xa5
	.ascii "OF_CANCEL 2048\0"
	.byte	0x1
	.uleb128 0xa6
	.ascii "OF_CREATE 4096\0"
	.byte	0x1
	.uleb128 0xa7
	.ascii "OF_DELETE 512\0"
	.byte	0x1
	.uleb128 0xa8
	.ascii "OF_EXIST 16384\0"
	.byte	0x1
	.uleb128 0xa9
	.ascii "OF_PARSE 256\0"
	.byte	0x1
	.uleb128 0xaa
	.ascii "OF_PROMPT 8192\0"
	.byte	0x1
	.uleb128 0xab
	.ascii "OF_REOPEN 32768\0"
	.byte	0x1
	.uleb128 0xac
	.ascii "OF_VERIFY 1024\0"
	.byte	0x1
	.uleb128 0xae
	.ascii "NMPWAIT_NOWAIT 1\0"
	.byte	0x1
	.uleb128 0xaf
	.ascii "NMPWAIT_WAIT_FOREVER ((DWORD)(-1))\0"
	.byte	0x1
	.uleb128 0xb0
	.ascii "NMPWAIT_USE_DEFAULT_WAIT 0\0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "CE_BREAK 16\0"
	.byte	0x1
	.uleb128 0xb3
	.ascii "CE_DNS 2048\0"
	.byte	0x1
	.uleb128 0xb4
	.ascii "CE_FRAME 8\0"
	.byte	0x1
	.uleb128 0xb5
	.ascii "CE_IOE 1024\0"
	.byte	0x1
	.uleb128 0xb6
	.ascii "CE_MODE 32768\0"
	.byte	0x1
	.uleb128 0xb7
	.ascii "CE_OOP 4096\0"
	.byte	0x1
	.uleb128 0xb8
	.ascii "CE_OVERRUN 2\0"
	.byte	0x1
	.uleb128 0xb9
	.ascii "CE_PTO 512\0"
	.byte	0x1
	.uleb128 0xba
	.ascii "CE_RXOVER 1\0"
	.byte	0x1
	.uleb128 0xbb
	.ascii "CE_RXPARITY 4\0"
	.byte	0x1
	.uleb128 0xbc
	.ascii "CE_TXFULL 256\0"
	.byte	0x1
	.uleb128 0xbe
	.ascii "PROGRESS_CONTINUE 0\0"
	.byte	0x1
	.uleb128 0xbf
	.ascii "PROGRESS_CANCEL 1\0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "PROGRESS_STOP 2\0"
	.byte	0x1
	.uleb128 0xc1
	.ascii "PROGRESS_QUIET 3\0"
	.byte	0x1
	.uleb128 0xc3
	.ascii "CALLBACK_CHUNK_FINISHED 0\0"
	.byte	0x1
	.uleb128 0xc4
	.ascii "CALLBACK_STREAM_SWITCH 1\0"
	.byte	0x1
	.uleb128 0xc6
	.ascii "COPY_FILE_FAIL_IF_EXISTS 0x0001\0"
	.byte	0x1
	.uleb128 0xc7
	.ascii "COPY_FILE_RESTARTABLE 0x0002\0"
	.byte	0x1
	.uleb128 0xc8
	.ascii "COPY_FILE_OPEN_SOURCE_FOR_WRITE 0x0004\0"
	.byte	0x1
	.uleb128 0xca
	.ascii "OFS_MAXPATHNAME 128\0"
	.byte	0x1
	.uleb128 0xcc
	.ascii "FILE_MAP_ALL_ACCESS 0xF001F\0"
	.byte	0x1
	.uleb128 0xcd
	.ascii "FILE_MAP_READ 4\0"
	.byte	0x1
	.uleb128 0xce
	.ascii "FILE_MAP_WRITE 2\0"
	.byte	0x1
	.uleb128 0xcf
	.ascii "FILE_MAP_COPY 1\0"
	.byte	0x1
	.uleb128 0xd1
	.ascii "MUTEX_ALL_ACCESS 0x1F0001\0"
	.byte	0x1
	.uleb128 0xd2
	.ascii "MUTEX_MODIFY_STATE 1\0"
	.byte	0x1
	.uleb128 0xd4
	.ascii "SEMAPHORE_ALL_ACCESS 0x1F0003\0"
	.byte	0x1
	.uleb128 0xd5
	.ascii "SEMAPHORE_MODIFY_STATE 2\0"
	.byte	0x1
	.uleb128 0xd7
	.ascii "EVENT_ALL_ACCESS 0x1F0003\0"
	.byte	0x1
	.uleb128 0xd8
	.ascii "EVENT_MODIFY_STATE 2\0"
	.byte	0x1
	.uleb128 0xda
	.ascii "PIPE_ACCESS_DUPLEX 3\0"
	.byte	0x1
	.uleb128 0xdb
	.ascii "PIPE_ACCESS_INBOUND 1\0"
	.byte	0x1
	.uleb128 0xdc
	.ascii "PIPE_ACCESS_OUTBOUND 2\0"
	.byte	0x1
	.uleb128 0xdd
	.ascii "PIPE_TYPE_BYTE 0\0"
	.byte	0x1
	.uleb128 0xde
	.ascii "PIPE_TYPE_MESSAGE 4\0"
	.byte	0x1
	.uleb128 0xdf
	.ascii "PIPE_READMODE_BYTE 0\0"
	.byte	0x1
	.uleb128 0xe0
	.ascii "PIPE_READMODE_MESSAGE 2\0"
	.byte	0x1
	.uleb128 0xe1
	.ascii "PIPE_WAIT 0\0"
	.byte	0x1
	.uleb128 0xe2
	.ascii "PIPE_NOWAIT 1\0"
	.byte	0x1
	.uleb128 0xe3
	.ascii "PIPE_CLIENT_END 0\0"
	.byte	0x1
	.uleb128 0xe4
	.ascii "PIPE_SERVER_END 1\0"
	.byte	0x1
	.uleb128 0xe5
	.ascii "PIPE_UNLIMITED_INSTANCES 255\0"
	.byte	0x1
	.uleb128 0xe7
	.ascii "DEBUG_PROCESS 0x00000001\0"
	.byte	0x1
	.uleb128 0xe8
	.ascii "DEBUG_ONLY_THIS_PROCESS 0x00000002\0"
	.byte	0x1
	.uleb128 0xe9
	.ascii "CREATE_SUSPENDED 0x00000004\0"
	.byte	0x1
	.uleb128 0xea
	.ascii "DETACHED_PROCESS 0x00000008\0"
	.byte	0x1
	.uleb128 0xeb
	.ascii "CREATE_NEW_CONSOLE 0x00000010\0"
	.byte	0x1
	.uleb128 0xec
	.ascii "NORMAL_PRIORITY_CLASS 0x00000020\0"
	.byte	0x1
	.uleb128 0xed
	.ascii "IDLE_PRIORITY_CLASS 0x00000040\0"
	.byte	0x1
	.uleb128 0xee
	.ascii "HIGH_PRIORITY_CLASS 0x00000080\0"
	.byte	0x1
	.uleb128 0xef
	.ascii "REALTIME_PRIORITY_CLASS 0x00000100\0"
	.byte	0x1
	.uleb128 0xf0
	.ascii "CREATE_NEW_PROCESS_GROUP 0x00000200\0"
	.byte	0x1
	.uleb128 0xf1
	.ascii "CREATE_UNICODE_ENVIRONMENT 0x00000400\0"
	.byte	0x1
	.uleb128 0xf2
	.ascii "CREATE_SEPARATE_WOW_VDM 0x00000800\0"
	.byte	0x1
	.uleb128 0xf3
	.ascii "CREATE_SHARED_WOW_VDM 0x00001000\0"
	.byte	0x1
	.uleb128 0xf4
	.ascii "CREATE_FORCEDOS 0x00002000\0"
	.byte	0x1
	.uleb128 0xf5
	.ascii "BELOW_NORMAL_PRIORITY_CLASS 0x00004000\0"
	.byte	0x1
	.uleb128 0xf6
	.ascii "ABOVE_NORMAL_PRIORITY_CLASS 0x00008000\0"
	.byte	0x1
	.uleb128 0xf7
	.ascii "STACK_SIZE_PARAM_IS_A_RESERVATION 0x00010000\0"
	.byte	0x1
	.uleb128 0xf8
	.ascii "CREATE_BREAKAWAY_FROM_JOB 0x01000000\0"
	.byte	0x1
	.uleb128 0xf9
	.ascii "CREATE_WITH_USERPROFILE 0x02000000\0"
	.byte	0x1
	.uleb128 0xfa
	.ascii "CREATE_DEFAULT_ERROR_MODE 0x04000000\0"
	.byte	0x1
	.uleb128 0xfb
	.ascii "CREATE_NO_WINDOW 0x08000000\0"
	.byte	0x1
	.uleb128 0xfd
	.ascii "PROFILE_USER 0x10000000\0"
	.byte	0x1
	.uleb128 0xfe
	.ascii "PROFILE_KERNEL 0x20000000\0"
	.byte	0x1
	.uleb128 0xff
	.ascii "PROFILE_SERVER 0x40000000\0"
	.byte	0x1
	.uleb128 0x101
	.ascii "CONSOLE_TEXTMODE_BUFFER 1\0"
	.byte	0x1
	.uleb128 0x103
	.ascii "CREATE_NEW 1\0"
	.byte	0x1
	.uleb128 0x104
	.ascii "CREATE_ALWAYS 2\0"
	.byte	0x1
	.uleb128 0x105
	.ascii "OPEN_EXISTING 3\0"
	.byte	0x1
	.uleb128 0x106
	.ascii "OPEN_ALWAYS 4\0"
	.byte	0x1
	.uleb128 0x107
	.ascii "TRUNCATE_EXISTING 5\0"
	.byte	0x1
	.uleb128 0x109
	.ascii "FILE_FLAG_WRITE_THROUGH 0x80000000\0"
	.byte	0x1
	.uleb128 0x10a
	.ascii "FILE_FLAG_OVERLAPPED 1073741824\0"
	.byte	0x1
	.uleb128 0x10b
	.ascii "FILE_FLAG_NO_BUFFERING 536870912\0"
	.byte	0x1
	.uleb128 0x10c
	.ascii "FILE_FLAG_RANDOM_ACCESS 268435456\0"
	.byte	0x1
	.uleb128 0x10d
	.ascii "FILE_FLAG_SEQUENTIAL_SCAN 134217728\0"
	.byte	0x1
	.uleb128 0x10e
	.ascii "FILE_FLAG_DELETE_ON_CLOSE 67108864\0"
	.byte	0x1
	.uleb128 0x10f
	.ascii "FILE_FLAG_BACKUP_SEMANTICS 33554432\0"
	.byte	0x1
	.uleb128 0x110
	.ascii "FILE_FLAG_POSIX_SEMANTICS 16777216\0"
	.byte	0x1
	.uleb128 0x111
	.ascii "FILE_FLAG_OPEN_REPARSE_POINT 2097152\0"
	.byte	0x1
	.uleb128 0x112
	.ascii "FILE_FLAG_OPEN_NO_RECALL 1048576\0"
	.byte	0x1
	.uleb128 0x114
	.ascii "SYMBOLIC_LINK_FLAG_DIRECTORY 0x1\0"
	.byte	0x1
	.uleb128 0x116
	.ascii "CLRDTR 6\0"
	.byte	0x1
	.uleb128 0x117
	.ascii "CLRRTS 4\0"
	.byte	0x1
	.uleb128 0x118
	.ascii "SETDTR 5\0"
	.byte	0x1
	.uleb128 0x119
	.ascii "SETRTS 3\0"
	.byte	0x1
	.uleb128 0x11a
	.ascii "SETXOFF 1\0"
	.byte	0x1
	.uleb128 0x11b
	.ascii "SETXON 2\0"
	.byte	0x1
	.uleb128 0x11c
	.ascii "SETBREAK 8\0"
	.byte	0x1
	.uleb128 0x11d
	.ascii "CLRBREAK 9\0"
	.byte	0x1
	.uleb128 0x11f
	.ascii "STILL_ACTIVE 0x103\0"
	.byte	0x1
	.uleb128 0x121
	.ascii "FIND_FIRST_EX_CASE_SENSITIVE 1\0"
	.byte	0x1
	.uleb128 0x123
	.ascii "SCS_32BIT_BINARY 0\0"
	.byte	0x1
	.uleb128 0x124
	.ascii "SCS_64BIT_BINARY 6\0"
	.byte	0x1
	.uleb128 0x125
	.ascii "SCS_DOS_BINARY 1\0"
	.byte	0x1
	.uleb128 0x126
	.ascii "SCS_OS216_BINARY 5\0"
	.byte	0x1
	.uleb128 0x127
	.ascii "SCS_PIF_BINARY 3\0"
	.byte	0x1
	.uleb128 0x128
	.ascii "SCS_POSIX_BINARY 4\0"
	.byte	0x1
	.uleb128 0x129
	.ascii "SCS_WOW_BINARY 2\0"
	.byte	0x1
	.uleb128 0x12b
	.ascii "MAX_COMPUTERNAME_LENGTH 15\0"
	.byte	0x1
	.uleb128 0x12d
	.ascii "HW_PROFILE_GUIDLEN 39\0"
	.byte	0x1
	.uleb128 0x12e
	.ascii "MAX_PROFILE_LEN 80\0"
	.byte	0x1
	.uleb128 0x130
	.ascii "DOCKINFO_UNDOCKED 1\0"
	.byte	0x1
	.uleb128 0x131
	.ascii "DOCKINFO_DOCKED 2\0"
	.byte	0x1
	.uleb128 0x132
	.ascii "DOCKINFO_USER_SUPPLIED 4\0"
	.byte	0x1
	.uleb128 0x133
	.ascii "DOCKINFO_USER_UNDOCKED (DOCKINFO_USER_SUPPLIED|DOCKINFO_UNDOCKED)\0"
	.byte	0x1
	.uleb128 0x134
	.ascii "DOCKINFO_USER_DOCKED (DOCKINFO_USER_SUPPLIED|DOCKINFO_DOCKED)\0"
	.byte	0x1
	.uleb128 0x136
	.ascii "DRIVE_REMOVABLE 2\0"
	.byte	0x1
	.uleb128 0x137
	.ascii "DRIVE_FIXED 3\0"
	.byte	0x1
	.uleb128 0x138
	.ascii "DRIVE_REMOTE 4\0"
	.byte	0x1
	.uleb128 0x139
	.ascii "DRIVE_CDROM 5\0"
	.byte	0x1
	.uleb128 0x13a
	.ascii "DRIVE_RAMDISK 6\0"
	.byte	0x1
	.uleb128 0x13b
	.ascii "DRIVE_UNKNOWN 0\0"
	.byte	0x1
	.uleb128 0x13c
	.ascii "DRIVE_NO_ROOT_DIR 1\0"
	.byte	0x1
	.uleb128 0x13e
	.ascii "FILE_TYPE_UNKNOWN 0\0"
	.byte	0x1
	.uleb128 0x13f
	.ascii "FILE_TYPE_DISK 1\0"
	.byte	0x1
	.uleb128 0x140
	.ascii "FILE_TYPE_CHAR 2\0"
	.byte	0x1
	.uleb128 0x141
	.ascii "FILE_TYPE_PIPE 3\0"
	.byte	0x1
	.uleb128 0x142
	.ascii "FILE_TYPE_REMOTE 0x8000\0"
	.byte	0x1
	.uleb128 0x143
	.ascii "FILE_ENCRYPTABLE 0\0"
	.byte	0x1
	.uleb128 0x144
	.ascii "FILE_IS_ENCRYPTED 1\0"
	.byte	0x1
	.uleb128 0x145
	.ascii "FILE_READ_ONLY 8\0"
	.byte	0x1
	.uleb128 0x146
	.ascii "FILE_ROOT_DIR 3\0"
	.byte	0x1
	.uleb128 0x147
	.ascii "FILE_SYSTEM_ATTR 2\0"
	.byte	0x1
	.uleb128 0x148
	.ascii "FILE_SYSTEM_DIR 4\0"
	.byte	0x1
	.uleb128 0x149
	.ascii "FILE_SYSTEM_NOT_SUPPORT 6\0"
	.byte	0x1
	.uleb128 0x14a
	.ascii "FILE_UNKNOWN 5\0"
	.byte	0x1
	.uleb128 0x14b
	.ascii "FILE_USER_DISALLOWED 7\0"
	.byte	0x1
	.uleb128 0x14e
	.ascii "HANDLE_FLAG_INHERIT 0x01\0"
	.byte	0x1
	.uleb128 0x14f
	.ascii "HANDLE_FLAG_PROTECT_FROM_CLOSE 0x02\0"
	.byte	0x1
	.uleb128 0x152
	.ascii "STD_INPUT_HANDLE (DWORD)(0xfffffff6)\0"
	.byte	0x1
	.uleb128 0x153
	.ascii "STD_OUTPUT_HANDLE (DWORD)(0xfffffff5)\0"
	.byte	0x1
	.uleb128 0x154
	.ascii "STD_ERROR_HANDLE (DWORD)(0xfffffff4)\0"
	.byte	0x1
	.uleb128 0x156
	.ascii "INVALID_HANDLE_VALUE (HANDLE)(-1)\0"
	.byte	0x1
	.uleb128 0x158
	.ascii "GET_TAPE_MEDIA_INFORMATION 0\0"
	.byte	0x1
	.uleb128 0x159
	.ascii "GET_TAPE_DRIVE_INFORMATION 1\0"
	.byte	0x1
	.uleb128 0x15a
	.ascii "SET_TAPE_MEDIA_INFORMATION 0\0"
	.byte	0x1
	.uleb128 0x15b
	.ascii "SET_TAPE_DRIVE_INFORMATION 1\0"
	.byte	0x1
	.uleb128 0x15d
	.ascii "THREAD_PRIORITY_ABOVE_NORMAL 1\0"
	.byte	0x1
	.uleb128 0x15e
	.ascii "THREAD_PRIORITY_BELOW_NORMAL (-1)\0"
	.byte	0x1
	.uleb128 0x15f
	.ascii "THREAD_PRIORITY_HIGHEST 2\0"
	.byte	0x1
	.uleb128 0x160
	.ascii "THREAD_PRIORITY_IDLE (-15)\0"
	.byte	0x1
	.uleb128 0x161
	.ascii "THREAD_PRIORITY_LOWEST (-2)\0"
	.byte	0x1
	.uleb128 0x162
	.ascii "THREAD_PRIORITY_NORMAL 0\0"
	.byte	0x1
	.uleb128 0x163
	.ascii "THREAD_PRIORITY_TIME_CRITICAL 15\0"
	.byte	0x1
	.uleb128 0x164
	.ascii "THREAD_PRIORITY_ERROR_RETURN 2147483647\0"
	.byte	0x1
	.uleb128 0x166
	.ascii "TIME_ZONE_ID_UNKNOWN 0\0"
	.byte	0x1
	.uleb128 0x167
	.ascii "TIME_ZONE_ID_STANDARD 1\0"
	.byte	0x1
	.uleb128 0x168
	.ascii "TIME_ZONE_ID_DAYLIGHT 2\0"
	.byte	0x1
	.uleb128 0x169
	.ascii "TIME_ZONE_ID_INVALID 0xFFFFFFFF\0"
	.byte	0x1
	.uleb128 0x16b
	.ascii "FS_CASE_IS_PRESERVED 2\0"
	.byte	0x1
	.uleb128 0x16c
	.ascii "FS_CASE_SENSITIVE 1\0"
	.byte	0x1
	.uleb128 0x16d
	.ascii "FS_UNICODE_STORED_ON_DISK 4\0"
	.byte	0x1
	.uleb128 0x16e
	.ascii "FS_PERSISTENT_ACLS 8\0"
	.byte	0x1
	.uleb128 0x16f
	.ascii "FS_FILE_COMPRESSION 16\0"
	.byte	0x1
	.uleb128 0x170
	.ascii "FS_VOL_IS_COMPRESSED 32768\0"
	.byte	0x1
	.uleb128 0x172
	.ascii "GMEM_FIXED 0\0"
	.byte	0x1
	.uleb128 0x173
	.ascii "GMEM_MOVEABLE 2\0"
	.byte	0x1
	.uleb128 0x174
	.ascii "GMEM_MODIFY 128\0"
	.byte	0x1
	.uleb128 0x175
	.ascii "GPTR 64\0"
	.byte	0x1
	.uleb128 0x176
	.ascii "GHND 66\0"
	.byte	0x1
	.uleb128 0x177
	.ascii "GMEM_DDESHARE 8192\0"
	.byte	0x1
	.uleb128 0x178
	.ascii "GMEM_DISCARDABLE 256\0"
	.byte	0x1
	.uleb128 0x179
	.ascii "GMEM_LOWER 4096\0"
	.byte	0x1
	.uleb128 0x17a
	.ascii "GMEM_NOCOMPACT 16\0"
	.byte	0x1
	.uleb128 0x17b
	.ascii "GMEM_NODISCARD 32\0"
	.byte	0x1
	.uleb128 0x17c
	.ascii "GMEM_NOT_BANKED 4096\0"
	.byte	0x1
	.uleb128 0x17d
	.ascii "GMEM_NOTIFY 16384\0"
	.byte	0x1
	.uleb128 0x17e
	.ascii "GMEM_SHARE 8192\0"
	.byte	0x1
	.uleb128 0x17f
	.ascii "GMEM_ZEROINIT 64\0"
	.byte	0x1
	.uleb128 0x180
	.ascii "GMEM_DISCARDED 16384\0"
	.byte	0x1
	.uleb128 0x181
	.ascii "GMEM_INVALID_HANDLE 32768\0"
	.byte	0x1
	.uleb128 0x182
	.ascii "GMEM_LOCKCOUNT 255\0"
	.byte	0x1
	.uleb128 0x183
	.ascii "GMEM_VALID_FLAGS 32626\0"
	.byte	0x1
	.uleb128 0x185
	.ascii "STATUS_WAIT_0 0\0"
	.byte	0x1
	.uleb128 0x186
	.ascii "STATUS_ABANDONED_WAIT_0 0x80\0"
	.byte	0x1
	.uleb128 0x187
	.ascii "STATUS_USER_APC 0xC0\0"
	.byte	0x1
	.uleb128 0x188
	.ascii "STATUS_TIMEOUT 0x102\0"
	.byte	0x1
	.uleb128 0x189
	.ascii "STATUS_PENDING 0x103\0"
	.byte	0x1
	.uleb128 0x18a
	.ascii "STATUS_SEGMENT_NOTIFICATION 0x40000005\0"
	.byte	0x1
	.uleb128 0x18b
	.ascii "STATUS_GUARD_PAGE_VIOLATION 0x80000001\0"
	.byte	0x1
	.uleb128 0x18c
	.ascii "STATUS_DATATYPE_MISALIGNMENT 0x80000002\0"
	.byte	0x1
	.uleb128 0x18d
	.ascii "STATUS_BREAKPOINT 0x80000003\0"
	.byte	0x1
	.uleb128 0x18e
	.ascii "STATUS_SINGLE_STEP 0x80000004\0"
	.byte	0x1
	.uleb128 0x18f
	.ascii "STATUS_ACCESS_VIOLATION 0xC0000005\0"
	.byte	0x1
	.uleb128 0x190
	.ascii "STATUS_IN_PAGE_ERROR 0xC0000006\0"
	.byte	0x1
	.uleb128 0x191
	.ascii "STATUS_INVALID_HANDLE 0xC0000008L\0"
	.byte	0x1
	.uleb128 0x192
	.ascii "STATUS_NO_MEMORY 0xC0000017\0"
	.byte	0x1
	.uleb128 0x193
	.ascii "STATUS_ILLEGAL_INSTRUCTION 0xC000001D\0"
	.byte	0x1
	.uleb128 0x194
	.ascii "STATUS_NONCONTINUABLE_EXCEPTION 0xC0000025\0"
	.byte	0x1
	.uleb128 0x195
	.ascii "STATUS_INVALID_DISPOSITION 0xC0000026\0"
	.byte	0x1
	.uleb128 0x196
	.ascii "STATUS_ARRAY_BOUNDS_EXCEEDED 0xC000008C\0"
	.byte	0x1
	.uleb128 0x197
	.ascii "STATUS_FLOAT_DENORMAL_OPERAND 0xC000008D\0"
	.byte	0x1
	.uleb128 0x198
	.ascii "STATUS_FLOAT_DIVIDE_BY_ZERO 0xC000008E\0"
	.byte	0x1
	.uleb128 0x199
	.ascii "STATUS_FLOAT_INEXACT_RESULT 0xC000008F\0"
	.byte	0x1
	.uleb128 0x19a
	.ascii "STATUS_FLOAT_INVALID_OPERATION 0xC0000090\0"
	.byte	0x1
	.uleb128 0x19b
	.ascii "STATUS_FLOAT_OVERFLOW 0xC0000091\0"
	.byte	0x1
	.uleb128 0x19c
	.ascii "STATUS_FLOAT_STACK_CHECK 0xC0000092\0"
	.byte	0x1
	.uleb128 0x19d
	.ascii "STATUS_FLOAT_UNDERFLOW 0xC0000093\0"
	.byte	0x1
	.uleb128 0x19e
	.ascii "STATUS_INTEGER_DIVIDE_BY_ZERO 0xC0000094\0"
	.byte	0x1
	.uleb128 0x19f
	.ascii "STATUS_INTEGER_OVERFLOW 0xC0000095\0"
	.byte	0x1
	.uleb128 0x1a0
	.ascii "STATUS_PRIVILEGED_INSTRUCTION 0xC0000096\0"
	.byte	0x1
	.uleb128 0x1a1
	.ascii "STATUS_STACK_OVERFLOW 0xC00000FD\0"
	.byte	0x1
	.uleb128 0x1a2
	.ascii "STATUS_CONTROL_C_EXIT 0xC000013A\0"
	.byte	0x1
	.uleb128 0x1a3
	.ascii "STATUS_DLL_INIT_FAILED 0xC0000142\0"
	.byte	0x1
	.uleb128 0x1a4
	.ascii "STATUS_DLL_INIT_FAILED_LOGOFF 0xC000026B\0"
	.byte	0x1
	.uleb128 0x1a6
	.ascii "EXCEPTION_ACCESS_VIOLATION STATUS_ACCESS_VIOLATION\0"
	.byte	0x1
	.uleb128 0x1a7
	.ascii "EXCEPTION_DATATYPE_MISALIGNMENT STATUS_DATATYPE_MISALIGNMENT\0"
	.byte	0x1
	.uleb128 0x1a8
	.ascii "EXCEPTION_BREAKPOINT STATUS_BREAKPOINT\0"
	.byte	0x1
	.uleb128 0x1a9
	.ascii "EXCEPTION_SINGLE_STEP STATUS_SINGLE_STEP\0"
	.byte	0x1
	.uleb128 0x1aa
	.ascii "EXCEPTION_ARRAY_BOUNDS_EXCEEDED STATUS_ARRAY_BOUNDS_EXCEEDED\0"
	.byte	0x1
	.uleb128 0x1ab
	.ascii "EXCEPTION_FLT_DENORMAL_OPERAND STATUS_FLOAT_DENORMAL_OPERAND\0"
	.byte	0x1
	.uleb128 0x1ac
	.ascii "EXCEPTION_FLT_DIVIDE_BY_ZERO STATUS_FLOAT_DIVIDE_BY_ZERO\0"
	.byte	0x1
	.uleb128 0x1ad
	.ascii "EXCEPTION_FLT_INEXACT_RESULT STATUS_FLOAT_INEXACT_RESULT\0"
	.byte	0x1
	.uleb128 0x1ae
	.ascii "EXCEPTION_FLT_INVALID_OPERATION STATUS_FLOAT_INVALID_OPERATION\0"
	.byte	0x1
	.uleb128 0x1af
	.ascii "EXCEPTION_FLT_OVERFLOW STATUS_FLOAT_OVERFLOW\0"
	.byte	0x1
	.uleb128 0x1b0
	.ascii "EXCEPTION_FLT_STACK_CHECK STATUS_FLOAT_STACK_CHECK\0"
	.byte	0x1
	.uleb128 0x1b1
	.ascii "EXCEPTION_FLT_UNDERFLOW STATUS_FLOAT_UNDERFLOW\0"
	.byte	0x1
	.uleb128 0x1b2
	.ascii "EXCEPTION_INT_DIVIDE_BY_ZERO STATUS_INTEGER_DIVIDE_BY_ZERO\0"
	.byte	0x1
	.uleb128 0x1b3
	.ascii "EXCEPTION_INT_OVERFLOW STATUS_INTEGER_OVERFLOW\0"
	.byte	0x1
	.uleb128 0x1b4
	.ascii "EXCEPTION_PRIV_INSTRUCTION STATUS_PRIVILEGED_INSTRUCTION\0"
	.byte	0x1
	.uleb128 0x1b5
	.ascii "EXCEPTION_IN_PAGE_ERROR STATUS_IN_PAGE_ERROR\0"
	.byte	0x1
	.uleb128 0x1b6
	.ascii "EXCEPTION_ILLEGAL_INSTRUCTION STATUS_ILLEGAL_INSTRUCTION\0"
	.byte	0x1
	.uleb128 0x1b7
	.ascii "EXCEPTION_NONCONTINUABLE_EXCEPTION STATUS_NONCONTINUABLE_EXCEPTION\0"
	.byte	0x1
	.uleb128 0x1b8
	.ascii "EXCEPTION_STACK_OVERFLOW STATUS_STACK_OVERFLOW\0"
	.byte	0x1
	.uleb128 0x1b9
	.ascii "EXCEPTION_INVALID_DISPOSITION STATUS_INVALID_DISPOSITION\0"
	.byte	0x1
	.uleb128 0x1ba
	.ascii "EXCEPTION_GUARD_PAGE STATUS_GUARD_PAGE_VIOLATION\0"
	.byte	0x1
	.uleb128 0x1bb
	.ascii "EXCEPTION_INVALID_HANDLE STATUS_INVALID_HANDLE\0"
	.byte	0x1
	.uleb128 0x1bc
	.ascii "CONTROL_C_EXIT STATUS_CONTROL_C_EXIT\0"
	.byte	0x1
	.uleb128 0x1be
	.ascii "PROCESS_HEAP_REGION 1\0"
	.byte	0x1
	.uleb128 0x1bf
	.ascii "PROCESS_HEAP_UNCOMMITTED_RANGE 2\0"
	.byte	0x1
	.uleb128 0x1c0
	.ascii "PROCESS_HEAP_ENTRY_BUSY 4\0"
	.byte	0x1
	.uleb128 0x1c1
	.ascii "PROCESS_HEAP_ENTRY_MOVEABLE 16\0"
	.byte	0x1
	.uleb128 0x1c2
	.ascii "PROCESS_HEAP_ENTRY_DDESHARE 32\0"
	.byte	0x1
	.uleb128 0x1c4
	.ascii "DONT_RESOLVE_DLL_REFERENCES 1\0"
	.byte	0x1
	.uleb128 0x1c5
	.ascii "LOAD_LIBRARY_AS_DATAFILE 2\0"
	.byte	0x1
	.uleb128 0x1c6
	.ascii "LOAD_WITH_ALTERED_SEARCH_PATH 8\0"
	.byte	0x1
	.uleb128 0x1c8
	.ascii "LMEM_FIXED 0\0"
	.byte	0x1
	.uleb128 0x1c9
	.ascii "LMEM_MOVEABLE 2\0"
	.byte	0x1
	.uleb128 0x1ca
	.ascii "LMEM_NONZEROLHND 2\0"
	.byte	0x1
	.uleb128 0x1cb
	.ascii "LMEM_NONZEROLPTR 0\0"
	.byte	0x1
	.uleb128 0x1cc
	.ascii "LMEM_DISCARDABLE 3840\0"
	.byte	0x1
	.uleb128 0x1cd
	.ascii "LMEM_NOCOMPACT 16\0"
	.byte	0x1
	.uleb128 0x1ce
	.ascii "LMEM_NODISCARD 32\0"
	.byte	0x1
	.uleb128 0x1cf
	.ascii "LMEM_ZEROINIT 64\0"
	.byte	0x1
	.uleb128 0x1d0
	.ascii "LMEM_DISCARDED 16384\0"
	.byte	0x1
	.uleb128 0x1d1
	.ascii "LMEM_MODIFY 128\0"
	.byte	0x1
	.uleb128 0x1d2
	.ascii "LMEM_INVALID_HANDLE 32768\0"
	.byte	0x1
	.uleb128 0x1d3
	.ascii "LMEM_LOCKCOUNT 255\0"
	.byte	0x1
	.uleb128 0x1d5
	.ascii "LPTR 64\0"
	.byte	0x1
	.uleb128 0x1d6
	.ascii "LHND 66\0"
	.byte	0x1
	.uleb128 0x1d7
	.ascii "NONZEROLHND 2\0"
	.byte	0x1
	.uleb128 0x1d8
	.ascii "NONZEROLPTR 0\0"
	.byte	0x1
	.uleb128 0x1da
	.ascii "LOCKFILE_FAIL_IMMEDIATELY 1\0"
	.byte	0x1
	.uleb128 0x1db
	.ascii "LOCKFILE_EXCLUSIVE_LOCK 2\0"
	.byte	0x1
	.uleb128 0x1dd
	.ascii "LOGON32_PROVIDER_DEFAULT 0\0"
	.byte	0x1
	.uleb128 0x1de
	.ascii "LOGON32_PROVIDER_WINNT35 1\0"
	.byte	0x1
	.uleb128 0x1df
	.ascii "LOGON32_LOGON_INTERACTIVE 2\0"
	.byte	0x1
	.uleb128 0x1e0
	.ascii "LOGON32_LOGON_NETWORK 3\0"
	.byte	0x1
	.uleb128 0x1e1
	.ascii "LOGON32_LOGON_BATCH 4\0"
	.byte	0x1
	.uleb128 0x1e2
	.ascii "LOGON32_LOGON_SERVICE 5\0"
	.byte	0x1
	.uleb128 0x1e3
	.ascii "LOGON32_LOGON_UNLOCK 7\0"
	.byte	0x1
	.uleb128 0x1e5
	.ascii "MOVEFILE_REPLACE_EXISTING 1\0"
	.byte	0x1
	.uleb128 0x1e6
	.ascii "MOVEFILE_COPY_ALLOWED 2\0"
	.byte	0x1
	.uleb128 0x1e7
	.ascii "MOVEFILE_DELAY_UNTIL_REBOOT 4\0"
	.byte	0x1
	.uleb128 0x1e8
	.ascii "MOVEFILE_WRITE_THROUGH 8\0"
	.byte	0x1
	.uleb128 0x1ea
	.ascii "MAXIMUM_WAIT_OBJECTS 64\0"
	.byte	0x1
	.uleb128 0x1eb
	.ascii "MAXIMUM_SUSPEND_COUNT 0x7F\0"
	.byte	0x1
	.uleb128 0x1ed
	.ascii "WAIT_OBJECT_0 0\0"
	.byte	0x1
	.uleb128 0x1ee
	.ascii "WAIT_ABANDONED_0 128\0"
	.byte	0x1
	.uleb128 0x1f4
	.ascii "WAIT_TIMEOUT 258L\0"
	.byte	0x1
	.uleb128 0x1f6
	.ascii "WAIT_IO_COMPLETION 0xC0\0"
	.byte	0x1
	.uleb128 0x1f7
	.ascii "WAIT_ABANDONED 128\0"
	.byte	0x1
	.uleb128 0x1f8
	.ascii "WAIT_FAILED ((DWORD)(0xFFFFFFFF))\0"
	.byte	0x1
	.uleb128 0x1fa
	.ascii "PURGE_TXABORT 1\0"
	.byte	0x1
	.uleb128 0x1fb
	.ascii "PURGE_RXABORT 2\0"
	.byte	0x1
	.uleb128 0x1fc
	.ascii "PURGE_TXCLEAR 4\0"
	.byte	0x1
	.uleb128 0x1fd
	.ascii "PURGE_RXCLEAR 8\0"
	.byte	0x1
	.uleb128 0x1ff
	.ascii "EVENTLOG_SUCCESS 0\0"
	.byte	0x1
	.uleb128 0x200
	.ascii "EVENTLOG_FORWARDS_READ 4\0"
	.byte	0x1
	.uleb128 0x201
	.ascii "EVENTLOG_BACKWARDS_READ 8\0"
	.byte	0x1
	.uleb128 0x202
	.ascii "EVENTLOG_SEEK_READ 2\0"
	.byte	0x1
	.uleb128 0x203
	.ascii "EVENTLOG_SEQUENTIAL_READ 1\0"
	.byte	0x1
	.uleb128 0x204
	.ascii "EVENTLOG_ERROR_TYPE 1\0"
	.byte	0x1
	.uleb128 0x205
	.ascii "EVENTLOG_WARNING_TYPE 2\0"
	.byte	0x1
	.uleb128 0x206
	.ascii "EVENTLOG_INFORMATION_TYPE 4\0"
	.byte	0x1
	.uleb128 0x207
	.ascii "EVENTLOG_AUDIT_SUCCESS 8\0"
	.byte	0x1
	.uleb128 0x208
	.ascii "EVENTLOG_AUDIT_FAILURE 16\0"
	.byte	0x1
	.uleb128 0x20a
	.ascii "FORMAT_MESSAGE_ALLOCATE_BUFFER 256\0"
	.byte	0x1
	.uleb128 0x20b
	.ascii "FORMAT_MESSAGE_IGNORE_INSERTS 512\0"
	.byte	0x1
	.uleb128 0x20c
	.ascii "FORMAT_MESSAGE_FROM_STRING 1024\0"
	.byte	0x1
	.uleb128 0x20d
	.ascii "FORMAT_MESSAGE_FROM_HMODULE 2048\0"
	.byte	0x1
	.uleb128 0x20e
	.ascii "FORMAT_MESSAGE_FROM_SYSTEM 4096\0"
	.byte	0x1
	.uleb128 0x20f
	.ascii "FORMAT_MESSAGE_ARGUMENT_ARRAY 8192\0"
	.byte	0x1
	.uleb128 0x210
	.ascii "FORMAT_MESSAGE_MAX_WIDTH_MASK 255\0"
	.byte	0x1
	.uleb128 0x212
	.ascii "EV_BREAK 64\0"
	.byte	0x1
	.uleb128 0x213
	.ascii "EV_CTS 8\0"
	.byte	0x1
	.uleb128 0x214
	.ascii "EV_DSR 16\0"
	.byte	0x1
	.uleb128 0x215
	.ascii "EV_ERR 128\0"
	.byte	0x1
	.uleb128 0x216
	.ascii "EV_EVENT1 2048\0"
	.byte	0x1
	.uleb128 0x217
	.ascii "EV_EVENT2 4096\0"
	.byte	0x1
	.uleb128 0x218
	.ascii "EV_PERR 512\0"
	.byte	0x1
	.uleb128 0x219
	.ascii "EV_RING 256\0"
	.byte	0x1
	.uleb128 0x21a
	.ascii "EV_RLSD 32\0"
	.byte	0x1
	.uleb128 0x21b
	.ascii "EV_RX80FULL 1024\0"
	.byte	0x1
	.uleb128 0x21c
	.ascii "EV_RXCHAR 1\0"
	.byte	0x1
	.uleb128 0x21d
	.ascii "EV_RXFLAG 2\0"
	.byte	0x1
	.uleb128 0x21e
	.ascii "EV_TXEMPTY 4\0"
	.byte	0x1
	.uleb128 0x222
	.ascii "SEM_FAILCRITICALERRORS 0x0001\0"
	.byte	0x1
	.uleb128 0x223
	.ascii "SEM_NOGPFAULTERRORBOX 0x0002\0"
	.byte	0x1
	.uleb128 0x224
	.ascii "SEM_NOALIGNMENTFAULTEXCEPT 0x0004\0"
	.byte	0x1
	.uleb128 0x225
	.ascii "SEM_NOOPENFILEERRORBOX 0x8000\0"
	.byte	0x1
	.uleb128 0x228
	.ascii "SLE_ERROR 1\0"
	.byte	0x1
	.uleb128 0x229
	.ascii "SLE_MINORERROR 2\0"
	.byte	0x1
	.uleb128 0x22a
	.ascii "SLE_WARNING 3\0"
	.byte	0x1
	.uleb128 0x22c
	.ascii "SHUTDOWN_NORETRY 1\0"
	.byte	0x1
	.uleb128 0x22e
	.ascii "EXCEPTION_EXECUTE_HANDLER 1\0"
	.byte	0x1
	.uleb128 0x22f
	.ascii "EXCEPTION_CONTINUE_EXECUTION (-1)\0"
	.byte	0x1
	.uleb128 0x230
	.ascii "EXCEPTION_CONTINUE_SEARCH 0\0"
	.byte	0x1
	.uleb128 0x232
	.ascii "MAXINTATOM 0xC000\0"
	.byte	0x1
	.uleb128 0x233
	.ascii "INVALID_ATOM ((ATOM)(0))\0"
	.byte	0x1
	.uleb128 0x235
	.ascii "IGNORE 0\0"
	.byte	0x1
	.uleb128 0x236
	.ascii "INFINITE 0xFFFFFFFF\0"
	.byte	0x1
	.uleb128 0x237
	.ascii "NOPARITY 0\0"
	.byte	0x1
	.uleb128 0x238
	.ascii "ODDPARITY 1\0"
	.byte	0x1
	.uleb128 0x239
	.ascii "EVENPARITY 2\0"
	.byte	0x1
	.uleb128 0x23a
	.ascii "MARKPARITY 3\0"
	.byte	0x1
	.uleb128 0x23b
	.ascii "SPACEPARITY 4\0"
	.byte	0x1
	.uleb128 0x23c
	.ascii "ONESTOPBIT 0\0"
	.byte	0x1
	.uleb128 0x23d
	.ascii "ONE5STOPBITS 1\0"
	.byte	0x1
	.uleb128 0x23e
	.ascii "TWOSTOPBITS 2\0"
	.byte	0x1
	.uleb128 0x23f
	.ascii "CBR_110 110\0"
	.byte	0x1
	.uleb128 0x240
	.ascii "CBR_300 300\0"
	.byte	0x1
	.uleb128 0x241
	.ascii "CBR_600 600\0"
	.byte	0x1
	.uleb128 0x242
	.ascii "CBR_1200 1200\0"
	.byte	0x1
	.uleb128 0x243
	.ascii "CBR_2400 2400\0"
	.byte	0x1
	.uleb128 0x244
	.ascii "CBR_4800 4800\0"
	.byte	0x1
	.uleb128 0x245
	.ascii "CBR_9600 9600\0"
	.byte	0x1
	.uleb128 0x246
	.ascii "CBR_14400 14400\0"
	.byte	0x1
	.uleb128 0x247
	.ascii "CBR_19200 19200\0"
	.byte	0x1
	.uleb128 0x248
	.ascii "CBR_38400 38400\0"
	.byte	0x1
	.uleb128 0x249
	.ascii "CBR_56000 56000\0"
	.byte	0x1
	.uleb128 0x24a
	.ascii "CBR_57600 57600\0"
	.byte	0x1
	.uleb128 0x24b
	.ascii "CBR_115200 115200\0"
	.byte	0x1
	.uleb128 0x24c
	.ascii "CBR_128000 128000\0"
	.byte	0x1
	.uleb128 0x24d
	.ascii "CBR_256000 256000\0"
	.byte	0x1
	.uleb128 0x24f
	.ascii "BACKUP_INVALID 0\0"
	.byte	0x1
	.uleb128 0x250
	.ascii "BACKUP_DATA 1\0"
	.byte	0x1
	.uleb128 0x251
	.ascii "BACKUP_EA_DATA 2\0"
	.byte	0x1
	.uleb128 0x252
	.ascii "BACKUP_SECURITY_DATA 3\0"
	.byte	0x1
	.uleb128 0x253
	.ascii "BACKUP_ALTERNATE_DATA 4\0"
	.byte	0x1
	.uleb128 0x254
	.ascii "BACKUP_LINK 5\0"
	.byte	0x1
	.uleb128 0x255
	.ascii "BACKUP_PROPERTY_DATA 6\0"
	.byte	0x1
	.uleb128 0x256
	.ascii "BACKUP_OBJECT_ID 7\0"
	.byte	0x1
	.uleb128 0x257
	.ascii "BACKUP_REPARSE_DATA 8\0"
	.byte	0x1
	.uleb128 0x258
	.ascii "BACKUP_SPARSE_BLOCK 9\0"
	.byte	0x1
	.uleb128 0x25a
	.ascii "STREAM_NORMAL_ATTRIBUTE 0\0"
	.byte	0x1
	.uleb128 0x25b
	.ascii "STREAM_MODIFIED_WHEN_READ 1\0"
	.byte	0x1
	.uleb128 0x25c
	.ascii "STREAM_CONTAINS_SECURITY 2\0"
	.byte	0x1
	.uleb128 0x25d
	.ascii "STREAM_CONTAINS_PROPERTIES 4\0"
	.byte	0x1
	.uleb128 0x25f
	.ascii "STARTF_USESHOWWINDOW 1\0"
	.byte	0x1
	.uleb128 0x260
	.ascii "STARTF_USESIZE 2\0"
	.byte	0x1
	.uleb128 0x261
	.ascii "STARTF_USEPOSITION 4\0"
	.byte	0x1
	.uleb128 0x262
	.ascii "STARTF_USECOUNTCHARS 8\0"
	.byte	0x1
	.uleb128 0x263
	.ascii "STARTF_USEFILLATTRIBUTE 16\0"
	.byte	0x1
	.uleb128 0x264
	.ascii "STARTF_RUNFULLSCREEN 32\0"
	.byte	0x1
	.uleb128 0x265
	.ascii "STARTF_FORCEONFEEDBACK 64\0"
	.byte	0x1
	.uleb128 0x266
	.ascii "STARTF_FORCEOFFFEEDBACK 128\0"
	.byte	0x1
	.uleb128 0x267
	.ascii "STARTF_USESTDHANDLES 256\0"
	.byte	0x1
	.uleb128 0x268
	.ascii "STARTF_USEHOTKEY 512\0"
	.byte	0x1
	.uleb128 0x26a
	.ascii "TC_NORMAL 0\0"
	.byte	0x1
	.uleb128 0x26b
	.ascii "TC_HARDERR 1\0"
	.byte	0x1
	.uleb128 0x26c
	.ascii "TC_GP_TRAP 2\0"
	.byte	0x1
	.uleb128 0x26d
	.ascii "TC_SIGNAL 3\0"
	.byte	0x1
	.uleb128 0x26f
	.ascii "AC_LINE_OFFLINE 0\0"
	.byte	0x1
	.uleb128 0x270
	.ascii "AC_LINE_ONLINE 1\0"
	.byte	0x1
	.uleb128 0x271
	.ascii "AC_LINE_BACKUP_POWER 2\0"
	.byte	0x1
	.uleb128 0x272
	.ascii "AC_LINE_UNKNOWN 255\0"
	.byte	0x1
	.uleb128 0x274
	.ascii "BATTERY_FLAG_HIGH 1\0"
	.byte	0x1
	.uleb128 0x275
	.ascii "BATTERY_FLAG_LOW 2\0"
	.byte	0x1
	.uleb128 0x276
	.ascii "BATTERY_FLAG_CRITICAL 4\0"
	.byte	0x1
	.uleb128 0x277
	.ascii "BATTERY_FLAG_CHARGING 8\0"
	.byte	0x1
	.uleb128 0x278
	.ascii "BATTERY_FLAG_NO_BATTERY 128\0"
	.byte	0x1
	.uleb128 0x279
	.ascii "BATTERY_FLAG_UNKNOWN 255\0"
	.byte	0x1
	.uleb128 0x27a
	.ascii "BATTERY_PERCENTAGE_UNKNOWN 255\0"
	.byte	0x1
	.uleb128 0x27b
	.ascii "BATTERY_LIFE_UNKNOWN 0xFFFFFFFF\0"
	.byte	0x1
	.uleb128 0x27d
	.ascii "DDD_RAW_TARGET_PATH 1\0"
	.byte	0x1
	.uleb128 0x27e
	.ascii "DDD_REMOVE_DEFINITION 2\0"
	.byte	0x1
	.uleb128 0x27f
	.ascii "DDD_EXACT_MATCH_ON_REMOVE 4\0"
	.byte	0x1
	.uleb128 0x281
	.ascii "HINSTANCE_ERROR 32\0"
	.byte	0x1
	.uleb128 0x283
	.ascii "MS_CTS_ON 16\0"
	.byte	0x1
	.uleb128 0x284
	.ascii "MS_DSR_ON 32\0"
	.byte	0x1
	.uleb128 0x285
	.ascii "MS_RING_ON 64\0"
	.byte	0x1
	.uleb128 0x286
	.ascii "MS_RLSD_ON 128\0"
	.byte	0x1
	.uleb128 0x288
	.ascii "DTR_CONTROL_DISABLE 0\0"
	.byte	0x1
	.uleb128 0x289
	.ascii "DTR_CONTROL_ENABLE 1\0"
	.byte	0x1
	.uleb128 0x28a
	.ascii "DTR_CONTROL_HANDSHAKE 2\0"
	.byte	0x1
	.uleb128 0x28c
	.ascii "RTS_CONTROL_DISABLE 0\0"
	.byte	0x1
	.uleb128 0x28d
	.ascii "RTS_CONTROL_ENABLE 1\0"
	.byte	0x1
	.uleb128 0x28e
	.ascii "RTS_CONTROL_HANDSHAKE 2\0"
	.byte	0x1
	.uleb128 0x28f
	.ascii "RTS_CONTROL_TOGGLE 3\0"
	.byte	0x1
	.uleb128 0x291
	.ascii "SECURITY_ANONYMOUS (SecurityAnonymous<<16)\0"
	.byte	0x1
	.uleb128 0x292
	.ascii "SECURITY_IDENTIFICATION (SecurityIdentification<<16)\0"
	.byte	0x1
	.uleb128 0x293
	.ascii "SECURITY_IMPERSONATION (SecurityImpersonation<<16)\0"
	.byte	0x1
	.uleb128 0x294
	.ascii "SECURITY_DELEGATION (SecurityDelegation<<16)\0"
	.byte	0x1
	.uleb128 0x295
	.ascii "SECURITY_CONTEXT_TRACKING 0x40000\0"
	.byte	0x1
	.uleb128 0x296
	.ascii "SECURITY_EFFECTIVE_ONLY 0x80000\0"
	.byte	0x1
	.uleb128 0x297
	.ascii "SECURITY_SQOS_PRESENT 0x100000\0"
	.byte	0x1
	.uleb128 0x298
	.ascii "SECURITY_VALID_SQOS_FLAGS 0x1F0000\0"
	.byte	0x1
	.uleb128 0x29a
	.ascii "INVALID_FILE_SIZE 0xFFFFFFFF\0"
	.byte	0x1
	.uleb128 0x29b
	.ascii "TLS_OUT_OF_INDEXES (DWORD)(0xFFFFFFFF)\0"
	.byte	0x1
	.uleb128 0x29d
	.ascii "GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS 0x00000004\0"
	.byte	0x1
	.uleb128 0x29e
	.ascii "GET_MODULE_HANDLE_EX_FLAG_PIN 0x00000001\0"
	.byte	0x1
	.uleb128 0x29f
	.ascii "GET_MODULE_HANDLE_EX_FLAG_UNCHANGED_REFCOUNT 0x00000002\0"
	.byte	0x1
	.uleb128 0x2a1
	.ascii "WRITE_WATCH_FLAG_RESET 1\0"
	.byte	0x1
	.uleb128 0x2a7
	.ascii "LOGON32_PROVIDER_WINNT40 2\0"
	.byte	0x1
	.uleb128 0x2b4
	.ascii "FILE_FLAG_FIRST_PIPE_INSTANCE 524288\0"
	.byte	0x1
	.uleb128 0x2b6
	.ascii "LOGON32_PROVIDER_WINNT50 3\0"
	.byte	0x1
	.uleb128 0x2b7
	.ascii "LOGON32_LOGON_NETWORK_CLEARTEXT 8\0"
	.byte	0x1
	.uleb128 0x2b8
	.ascii "LOGON32_LOGON_NEW_CREDENTIALS 9\0"
	.byte	0x1
	.uleb128 0x2ba
	.ascii "REPLACEFILE_WRITE_THROUGH 0x00000001\0"
	.byte	0x1
	.uleb128 0x2bb
	.ascii "REPLACEFILE_IGNORE_MERGE_ERRORS 0x00000002\0"
	.byte	0x1
	.uleb128 0x4d7
	.ascii "ENUMRESLANGPROC __AW_SUFFIXED__(ENUMRESLANGPROC)\0"
	.byte	0x1
	.uleb128 0x4dc
	.ascii "ENUMRESNAMEPROC __AW_SUFFIXED__(ENUMRESNAMEPROC)\0"
	.byte	0x1
	.uleb128 0x4e0
	.ascii "ENUMRESTYPEPROC __AW_SUFFIXED__(ENUMRESTYPEPROC)\0"
	.byte	0x1
	.uleb128 0x4eb
	.ascii "MAKEINTATOM(i) (LPTSTR)((DWORD)((WORD)(i)))\0"
	.byte	0x1
	.uleb128 0x4ff
	.ascii "AbnormalTermination() FALSE\0"
	.byte	0x1
	.uleb128 0x506
	.ascii "AccessCheckAndAuditAlarm __AW_SUFFIXED__(AccessCheckAndAuditAlarm)\0"
	.byte	0x1
	.uleb128 0x514
	.ascii "AddAtom __AW_SUFFIXED__(AddAtom)\0"
	.byte	0x1
	.uleb128 0x526
	.ascii "BackupEventLog __AW_SUFFIXED__(BackupEventLog)\0"
	.byte	0x1
	.uleb128 0x532
	.ascii "BeginUpdateResource __AW_SUFFIXED__(BeginUpdateResource)\0"
	.byte	0x1
	.uleb128 0x536
	.ascii "BuildCommDCB __AW_SUFFIXED__(BuildCommDCB)\0"
	.byte	0x1
	.uleb128 0x53a
	.ascii "BuildCommDCBAndTimeouts __AW_SUFFIXED__(BuildCommDCBAndTimeouts)\0"
	.byte	0x1
	.uleb128 0x53f
	.ascii "CallNamedPipe __AW_SUFFIXED__(CallNamedPipe)\0"
	.byte	0x1
	.uleb128 0x54b
	.ascii "ClearEventLog __AW_SUFFIXED__(ClearEventLog)\0"
	.byte	0x1
	.uleb128 0x552
	.ascii "CommConfigDialog __AW_SUFFIXED__(CommConfigDialog)\0"
	.byte	0x1
	.uleb128 0x55b
	.ascii "CopyFile __AW_SUFFIXED__(CopyFile)\0"
	.byte	0x1
	.uleb128 0x55f
	.ascii "CopyFileEx __AW_SUFFIXED__(CopyFileEx)\0"
	.byte	0x1
	.uleb128 0x565
	.ascii "RtlMoveMemory memmove\0"
	.byte	0x1
	.uleb128 0x566
	.ascii "RtlCopyMemory memcpy\0"
	.byte	0x1
	.uleb128 0x567
	.ascii "RtlFillMemory(d,l,f) memset((d),(f),(l))\0"
	.byte	0x1
	.uleb128 0x568
	.ascii "RtlZeroMemory(d,l) RtlFillMemory((d),(l),0)\0"
	.byte	0x1
	.uleb128 0x569
	.ascii "MoveMemory RtlMoveMemory\0"
	.byte	0x1
	.uleb128 0x56a
	.ascii "CopyMemory RtlCopyMemory\0"
	.byte	0x1
	.uleb128 0x56b
	.ascii "FillMemory RtlFillMemory\0"
	.byte	0x1
	.uleb128 0x56c
	.ascii "ZeroMemory RtlZeroMemory\0"
	.byte	0x1
	.uleb128 0x570
	.ascii "CreateDirectory __AW_SUFFIXED__(CreateDirectory)\0"
	.byte	0x1
	.uleb128 0x574
	.ascii "CreateDirectoryEx __AW_SUFFIXED__(CreateDirectoryEx)\0"
	.byte	0x1
	.uleb128 0x57a
	.ascii "CreateEvent __AW_SUFFIXED__(CreateEvent)\0"
	.byte	0x1
	.uleb128 0x582
	.ascii "CreateFile __AW_SUFFIXED__(CreateFile)\0"
	.byte	0x1
	.uleb128 0x588
	.ascii "CreateFileMapping __AW_SUFFIXED__(CreateFileMapping)\0"
	.byte	0x1
	.uleb128 0x591
	.ascii "CreateMailslot __AW_SUFFIXED__(CreateMailslot)\0"
	.byte	0x1
	.uleb128 0x597
	.ascii "CreateMutex __AW_SUFFIXED__(CreateMutex)\0"
	.byte	0x1
	.uleb128 0x59b
	.ascii "CreateNamedPipe __AW_SUFFIXED__(CreateNamedPipe)\0"
	.byte	0x1
	.uleb128 0x5a8
	.ascii "CreateProcess __AW_SUFFIXED__(CreateProcess)\0"
	.byte	0x1
	.uleb128 0x5b2
	.ascii "CreateProcessAsUser __AW_SUFFIXED__(CreateProcessAsUser)\0"
	.byte	0x1
	.uleb128 0x5c1
	.ascii "CreateSemaphore __AW_SUFFIXED__(CreateSemaphore)\0"
	.byte	0x1
	.uleb128 0x5cb
	.ascii "CreateWaitableTimer __AW_SUFFIXED__(CreateWaitableTimer)\0"
	.byte	0x1
	.uleb128 0x5d4
	.ascii "DefineDosDevice __AW_SUFFIXED__(DefineDosDevice)\0"
	.byte	0x1
	.uleb128 0x5d8
	.ascii "DefineHandleTable(w) ((w), TRUE)\0"
	.byte	0x1
	.uleb128 0x5df
	.ascii "DeleteFile __AW_SUFFIXED__(DeleteFile)\0"
	.byte	0x1
	.uleb128 0x5f3
	.ascii "EncryptFile __AW_SUFFIXED__(EncryptFile)\0"
	.byte	0x1
	.uleb128 0x5f7
	.ascii "EndUpdateResource __AW_SUFFIXED__(EndUpdateResource)\0"
	.byte	0x1
	.uleb128 0x5fd
	.ascii "EnumResourceLanguages __AW_SUFFIXED__(EnumResourceLanguages)\0"
	.byte	0x1
	.uleb128 0x603
	.ascii "EnumResourceNames __AW_SUFFIXED__(EnumResourceNames)\0"
	.byte	0x1
	.uleb128 0x609
	.ascii "EnumResourceTypes __AW_SUFFIXED__(EnumResourceTypes)\0"
	.byte	0x1
	.uleb128 0x614
	.ascii "ExpandEnvironmentStrings __AW_SUFFIXED__(ExpandEnvironmentStrings)\0"
	.byte	0x1
	.uleb128 0x618
	.ascii "FatalAppExit __AW_SUFFIXED__(FatalAppExit)\0"
	.byte	0x1
	.uleb128 0x61e
	.ascii "FileEncryptionStatus __AW_SUFFIXED__(FileEncryptionStatus)\0"
	.byte	0x1
	.uleb128 0x626
	.ascii "FindAtom __AW_SUFFIXED__(FindAtom)\0"
	.byte	0x1
	.uleb128 0x62d
	.ascii "FindFirstChangeNotification __AW_SUFFIXED__(FindFirstChangeNotification)\0"
	.byte	0x1
	.uleb128 0x631
	.ascii "FindFirstFile __AW_SUFFIXED__(FindFirstFile)\0"
	.byte	0x1
	.uleb128 0x635
	.ascii "FindFirstFileEx __AW_SUFFIXED__(FindFirstFileEx)\0"
	.byte	0x1
	.uleb128 0x63e
	.ascii "FindNextFile __AW_SUFFIXED__(FindNextFile)\0"
	.byte	0x1
	.uleb128 0x642
	.ascii "FindResource __AW_SUFFIXED__(FindResource)\0"
	.byte	0x1
	.uleb128 0x646
	.ascii "FindResourceEx __AW_SUFFIXED__(FindResourceEx)\0"
	.byte	0x1
	.uleb128 0x64e
	.ascii "FormatMessage __AW_SUFFIXED__(FormatMessage)\0"
	.byte	0x1
	.uleb128 0x654
	.ascii "FreeEnvironmentStrings __AW_SUFFIXED__(FreeEnvironmentStrings)\0"
	.byte	0x1
	.uleb128 0x65c
	.ascii "FreeModule(m) FreeLibrary(m)\0"
	.byte	0x1
	.uleb128 0x65d
	.ascii "FreeProcInstance(p) (void)(p)\0"
	.byte	0x1
	.uleb128 0x668
	.ascii "GetAtomName __AW_SUFFIXED__(GetAtomName)\0"
	.byte	0x1
	.uleb128 0x66c
	.ascii "GetBinaryType __AW_SUFFIXED__(GetBinaryType)\0"
	.byte	0x1
	.uleb128 0x670
	.ascii "GetCommandLine __AW_SUFFIXED__(GetCommandLine)\0"
	.byte	0x1
	.uleb128 0x67b
	.ascii "GetCompressedFileSize __AW_SUFFIXED__(GetCompressedFileSize)\0"
	.byte	0x1
	.uleb128 0x67f
	.ascii "GetComputerName __AW_SUFFIXED__(GetComputerName)\0"
	.byte	0x1
	.uleb128 0x683
	.ascii "GetCurrentDirectory __AW_SUFFIXED__(GetCurrentDirectory)\0"
	.byte	0x1
	.uleb128 0x688
	.ascii "GetCurrentHwProfile __AW_SUFFIXED__(GetCurrentHwProfile)\0"
	.byte	0x1
	.uleb128 0x696
	.ascii "GetCurrentTime GetTickCount\0"
	.byte	0x1
	.uleb128 0x698
	.ascii "GetDefaultCommConfig __AW_SUFFIXED__(GetDefaultCommConfig)\0"
	.byte	0x1
	.uleb128 0x69e
	.ascii "GetDiskFreeSpace __AW_SUFFIXED__(GetDiskFreeSpace)\0"
	.byte	0x1
	.uleb128 0x6a4
	.ascii "GetDiskFreeSpaceEx __AW_SUFFIXED__(GetDiskFreeSpaceEx)\0"
	.byte	0x1
	.uleb128 0x6aa
	.ascii "GetDriveType __AW_SUFFIXED__(GetDriveType)\0"
	.byte	0x1
	.uleb128 0x6b0
	.ascii "GetEnvironmentStrings __AW_SUFFIXED__(GetEnvironmentStrings)\0"
	.byte	0x1
	.uleb128 0x6b4
	.ascii "GetEnvironmentVariable __AW_SUFFIXED__(GetEnvironmentVariable)\0"
	.byte	0x1
	.uleb128 0x6bb
	.ascii "GetFileAttributes __AW_SUFFIXED__(GetFileAttributes)\0"
	.byte	0x1
	.uleb128 0x6bf
	.ascii "GetFileAttributesEx __AW_SUFFIXED__(GetFileAttributesEx)\0"
	.byte	0x1
	.uleb128 0x6c8
	.ascii "GetFileSecurity __AW_SUFFIXED__(GetFileSecurity)\0"
	.byte	0x1
	.uleb128 0x6d2
	.ascii "GetFreeSpace(w) (0x100000L)\0"
	.byte	0x1
	.uleb128 0x6d4
	.ascii "GetFullPathName __AW_SUFFIXED__(GetFullPathName)\0"
	.byte	0x1
	.uleb128 0x6e0
	.ascii "GetLogicalDriveStrings __AW_SUFFIXED__(GetLogicalDriveStrings)\0"
	.byte	0x1
	.uleb128 0x6e6
	.ascii "GetModuleFileName __AW_SUFFIXED__(GetModuleFileName)\0"
	.byte	0x1
	.uleb128 0x6ea
	.ascii "GetModuleHandle __AW_SUFFIXED__(GetModuleHandle)\0"
	.byte	0x1
	.uleb128 0x6ee
	.ascii "GetNamedPipeHandleState __AW_SUFFIXED__(GetNamedPipeHandleState)\0"
	.byte	0x1
	.uleb128 0x6ff
	.ascii "GetPrivateProfileInt __AW_SUFFIXED__(GetPrivateProfileInt)\0"
	.byte	0x1
	.uleb128 0x703
	.ascii "GetPrivateProfileSection __AW_SUFFIXED__(GetPrivateProfileSection)\0"
	.byte	0x1
	.uleb128 0x709
	.ascii "GetPrivateProfileSectionNames __AW_SUFFIXED__(GetPrivateProfileSectionNames)\0"
	.byte	0x1
	.uleb128 0x70e
	.ascii "GetPrivateProfileString __AW_SUFFIXED__(GetPrivateProfileString)\0"
	.byte	0x1
	.uleb128 0x714
	.ascii "GetPrivateProfileStruct __AW_SUFFIXED__(GetPrivateProfileStruct)\0"
	.byte	0x1
	.uleb128 0x727
	.ascii "GetProfileInt __AW_SUFFIXED__(GetProfileInt)\0"
	.byte	0x1
	.uleb128 0x72b
	.ascii "GetProfileSection __AW_SUFFIXED__(GetProfileSection)\0"
	.byte	0x1
	.uleb128 0x72f
	.ascii "GetProfileString __AW_SUFFIXED__(GetProfileString)\0"
	.byte	0x1
	.uleb128 0x743
	.ascii "GetShortPathName __AW_SUFFIXED__(GetShortPathName)\0"
	.byte	0x1
	.uleb128 0x74c
	.ascii "GetStartupInfo __AW_SUFFIXED__(GetStartupInfo)\0"
	.byte	0x1
	.uleb128 0x752
	.ascii "GetSystemDirectory __AW_SUFFIXED__(GetSystemDirectory)\0"
	.byte	0x1
	.uleb128 0x75f
	.ascii "GetTempFileName __AW_SUFFIXED__(GetTempFileName)\0"
	.byte	0x1
	.uleb128 0x763
	.ascii "GetTempPath __AW_SUFFIXED__(GetTempPath)\0"
	.byte	0x1
	.uleb128 0x772
	.ascii "GetUserName __AW_SUFFIXED__(GetUserName)\0"
	.byte	0x1
	.uleb128 0x778
	.ascii "GetVersionEx __AW_SUFFIXED__(GetVersionEx)\0"
	.byte	0x1
	.uleb128 0x77c
	.ascii "GetVolumeInformation __AW_SUFFIXED__(GetVolumeInformation)\0"
	.byte	0x1
	.uleb128 0x782
	.ascii "GetWindowsDirectory __AW_SUFFIXED__(GetWindowsDirectory)\0"
	.byte	0x1
	.uleb128 0x78a
	.ascii "GlobalAddAtom __AW_SUFFIXED__(GlobalAddAtom)\0"
	.byte	0x1
	.uleb128 0x792
	.ascii "GlobalDiscard(hMem) GlobalReAlloc((hMem), 0, GMEM_MOVEABLE)\0"
	.byte	0x1
	.uleb128 0x794
	.ascii "GlobalFindAtom __AW_SUFFIXED__(GlobalFindAtom)\0"
	.byte	0x1
	.uleb128 0x79c
	.ascii "GlobalGetAtomName __AW_SUFFIXED__(GlobalGetAtomName)\0"
	.byte	0x1
	.uleb128 0x7aa
	.ascii "HasOverlappedIoCompleted(lpOverlapped) ((lpOverlapped)->Internal != STATUS_PENDING)\0"
	.byte	0x1
	.uleb128 0x7d0
	.ascii "__INTERLOCKED_DECLARED \0"
	.byte	0x1
	.uleb128 0x7d3
	.ascii "InterlockedCompareExchangePointer(d,e,c) (PVOID)InterlockedCompareExchange((LONG volatile *)(d),(LONG)(e),(LONG)(c))\0"
	.byte	0x1
	.uleb128 0x7d8
	.ascii "InterlockedExchangePointer(t,v) (PVOID)InterlockedExchange((LONG volatile *)(t),(LONG)(v))\0"
	.byte	0x1
	.uleb128 0x7ee
	.ascii "IsBadStringPtr __AW_SUFFIXED__(IsBadStringPtr)\0"
	.byte	0x1
	.uleb128 0x7fd
	.ascii "LimitEmsPages(n) \0"
	.byte	0x1
	.uleb128 0x7ff
	.ascii "LoadLibrary __AW_SUFFIXED__(LoadLibrary)\0"
	.byte	0x1
	.uleb128 0x803
	.ascii "LoadLibraryEx __AW_SUFFIXED__(LoadLibraryEx)\0"
	.byte	0x1
	.uleb128 0x81a
	.ascii "LockSegment(w) GlobalFix((HANDLE)(w))\0"
	.byte	0x1
	.uleb128 0x81c
	.ascii "LogonUser __AW_SUFFIXED__(LogonUser)\0"
	.byte	0x1
	.uleb128 0x821
	.ascii "LookupAccountName __AW_SUFFIXED__(LookupAccountName)\0"
	.byte	0x1
	.uleb128 0x827
	.ascii "LookupAccountSid __AW_SUFFIXED__(LookupAccountSid)\0"
	.byte	0x1
	.uleb128 0x82d
	.ascii "LookupPrivilegeDisplayName __AW_SUFFIXED__(LookupPrivilegeDisplayName)\0"
	.byte	0x1
	.uleb128 0x833
	.ascii "LookupPrivilegeName __AW_SUFFIXED__(LookupPrivilegeName)\0"
	.byte	0x1
	.uleb128 0x837
	.ascii "LookupPrivilegeValue __AW_SUFFIXED__(LookupPrivilegeValue)\0"
	.byte	0x1
	.uleb128 0x83b
	.ascii "lstrcat __AW_SUFFIXED__(lstrcat)\0"
	.byte	0x1
	.uleb128 0x83f
	.ascii "lstrcmp __AW_SUFFIXED__(lstrcmp)\0"
	.byte	0x1
	.uleb128 0x843
	.ascii "lstrcmpi __AW_SUFFIXED__(lstrcmpi)\0"
	.byte	0x1
	.uleb128 0x847
	.ascii "lstrcpy __AW_SUFFIXED__(lstrcpy)\0"
	.byte	0x1
	.uleb128 0x84b
	.ascii "lstrcpyn __AW_SUFFIXED__(lstrcpyn)\0"
	.byte	0x1
	.uleb128 0x84f
	.ascii "lstrlen __AW_SUFFIXED__(lstrlen)\0"
	.byte	0x1
	.uleb128 0x858
	.ascii "MakeProcInstance(p,i) (p)\0"
	.byte	0x1
	.uleb128 0x861
	.ascii "MoveFile __AW_SUFFIXED__(MoveFile)\0"
	.byte	0x1
	.uleb128 0x865
	.ascii "MoveFileEx __AW_SUFFIXED__(MoveFileEx)\0"
	.byte	0x1
	.uleb128 0x86c
	.ascii "ObjectCloseAuditAlarm __AW_SUFFIXED__(ObjectCloseAuditAlarm)\0"
	.byte	0x1
	.uleb128 0x870
	.ascii "ObjectDeleteAuditAlarm __AW_SUFFIXED__(ObjectDeleteAuditAlarm)\0"
	.byte	0x1
	.uleb128 0x874
	.ascii "ObjectOpenAuditAlarm __AW_SUFFIXED__(ObjectOpenAuditAlarm)\0"
	.byte	0x1
	.uleb128 0x87e
	.ascii "ObjectPrivilegeAuditAlarm __AW_SUFFIXED__(ObjectPrivilegeAuditAlarm)\0"
	.byte	0x1
	.uleb128 0x884
	.ascii "OpenBackupEventLog __AW_SUFFIXED__(OpenBackupEventLog)\0"
	.byte	0x1
	.uleb128 0x888
	.ascii "OpenEvent __AW_SUFFIXED__(OpenEvent)\0"
	.byte	0x1
	.uleb128 0x88c
	.ascii "OpenEventLog __AW_SUFFIXED__(OpenEventLog)\0"
	.byte	0x1
	.uleb128 0x892
	.ascii "OpenFileMapping __AW_SUFFIXED__(OpenFileMapping)\0"
	.byte	0x1
	.uleb128 0x896
	.ascii "OpenMutex __AW_SUFFIXED__(OpenMutex)\0"
	.byte	0x1
	.uleb128 0x89d
	.ascii "OpenSemaphore __AW_SUFFIXED__(OpenSemaphore)\0"
	.byte	0x1
	.uleb128 0x8a4
	.ascii "OpenWaitableTimer __AW_SUFFIXED__(OpenWaitableTimer)\0"
	.byte	0x1
	.uleb128 0x8a8
	.ascii "OutputDebugString __AW_SUFFIXED__(OutputDebugString)\0"
	.byte	0x1
	.uleb128 0x8b3
	.ascii "PrivilegedServiceAuditAlarm __AW_SUFFIXED__(PrivilegedServiceAuditAlarm)\0"
	.byte	0x1
	.uleb128 0x8bc
	.ascii "QueryDosDevice __AW_SUFFIXED__(QueryDosDevice)\0"
	.byte	0x1
	.uleb128 0x8c9
	.ascii "ReadEventLog __AW_SUFFIXED__(ReadEventLog)\0"
	.byte	0x1
	.uleb128 0x8d6
	.ascii "RegisterEventSource __AW_SUFFIXED__(RegisterEventSource)\0"
	.byte	0x1
	.uleb128 0x8dd
	.ascii "RemoveDirectory __AW_SUFFIXED__(RemoveDirectory)\0"
	.byte	0x1
	.uleb128 0x8e1
	.ascii "ReportEvent __AW_SUFFIXED__(ReportEvent)\0"
	.byte	0x1
	.uleb128 0x8f1
	.ascii "SearchPath __AW_SUFFIXED__(SearchPath)\0"
	.byte	0x1
	.uleb128 0x8ff
	.ascii "SetComputerName __AW_SUFFIXED__(SetComputerName)\0"
	.byte	0x1
	.uleb128 0x903
	.ascii "SetCurrentDirectory __AW_SUFFIXED__(SetCurrentDirectory)\0"
	.byte	0x1
	.uleb128 0x907
	.ascii "SetDefaultCommConfig __AW_SUFFIXED__(SetDefaultCommConfig)\0"
	.byte	0x1
	.uleb128 0x90d
	.ascii "SetEnvironmentVariable __AW_SUFFIXED__(SetEnvironmentVariable)\0"
	.byte	0x1
	.uleb128 0x91c
	.ascii "SetFileAttributes __AW_SUFFIXED__(SetFileAttributes)\0"
	.byte	0x1
	.uleb128 0x924
	.ascii "SetFileSecurity __AW_SUFFIXED__(SetFileSecurity)\0"
	.byte	0x1
	.uleb128 0x94c
	.ascii "SetSwapAreaSize(w) (w)\0"
	.byte	0x1
	.uleb128 0x962
	.ascii "SetVolumeLabel __AW_SUFFIXED__(SetVolumeLabel)\0"
	.byte	0x1
	.uleb128 0x981
	.ascii "UnlockResource(h) (h)\0"
	.byte	0x1
	.uleb128 0x982
	.ascii "UnlockSegment(w) GlobalUnfix((HANDLE)(w))\0"
	.byte	0x1
	.uleb128 0x986
	.ascii "UpdateResource __AW_SUFFIXED__(UpdateResource)\0"
	.byte	0x1
	.uleb128 0x98c
	.ascii "VerifyVersionInfo __AW_SUFFIXED__(VerifyVersionInfo)\0"
	.byte	0x1
	.uleb128 0x9a6
	.ascii "WaitNamedPipe __AW_SUFFIXED__(WaitNamedPipe)\0"
	.byte	0x1
	.uleb128 0x9b1
	.ascii "WritePrivateProfileSection __AW_SUFFIXED__(WritePrivateProfileSection)\0"
	.byte	0x1
	.uleb128 0x9b5
	.ascii "WritePrivateProfileString __AW_SUFFIXED__(WritePrivateProfileString)\0"
	.byte	0x1
	.uleb128 0x9bb
	.ascii "WritePrivateProfileStruct __AW_SUFFIXED__(WritePrivateProfileStruct)\0"
	.byte	0x1
	.uleb128 0x9c4
	.ascii "WriteProfileSection __AW_SUFFIXED__(WriteProfileSection)\0"
	.byte	0x1
	.uleb128 0x9c8
	.ascii "WriteProfileString __AW_SUFFIXED__(WriteProfileString)\0"
	.byte	0x1
	.uleb128 0x9ce
	.ascii "Yield() \0"
	.byte	0x1
	.uleb128 0x9df
	.ascii "GetLongPathName __AW_SUFFIXED__(GetLongPathName)\0"
	.byte	0x1
	.uleb128 0xa11
	.ascii "CreateHardLink __AW_SUFFIXED__(CreateHardLink)\0"
	.byte	0x1
	.uleb128 0xa16
	.ascii "CreateJobObject __AW_SUFFIXED__(CreateJobObject)\0"
	.byte	0x1
	.uleb128 0xa26
	.ascii "LOGON_WITH_PROFILE 0x00000001\0"
	.byte	0x1
	.uleb128 0xa27
	.ascii "LOGON_NETCREDENTIALS_ONLY 0x00000002\0"
	.byte	0x1
	.uleb128 0xa2d
	.ascii "DISABLE_MAX_PRIVILEGE 1\0"
	.byte	0x1
	.uleb128 0xa2e
	.ascii "SANDBOX_INERT 2\0"
	.byte	0x1
	.uleb128 0xa2f
	.ascii "LUA_TOKEN 4\0"
	.byte	0x1
	.uleb128 0xa30
	.ascii "WRITE_RESTRICTED 8\0"
	.byte	0x1
	.uleb128 0xa3a
	.ascii "DeleteVolumeMountPoint __AW_SUFFIXED__(DeleteVolumeMountPoint)\0"
	.byte	0x1
	.uleb128 0xa3e
	.ascii "DnsHostnameToComputerName __AW_SUFFIXED__(DnsHostnameToComputerName)\0"
	.byte	0x1
	.uleb128 0xa42
	.ascii "FindFirstVolume __AW_SUFFIXED__(FindFirstVolume)\0"
	.byte	0x1
	.uleb128 0xa46
	.ascii "FindFirstVolumeMountPoint __AW_SUFFIXED__(FindFirstVolumeMountPoint)\0"
	.byte	0x1
	.uleb128 0xa4a
	.ascii "FindNextVolume __AW_SUFFIXED__(FindNextVolume)\0"
	.byte	0x1
	.uleb128 0xa4e
	.ascii "FindNextVolumeMountPoint __AW_SUFFIXED__(FindNextVolumeMountPoint)\0"
	.byte	0x1
	.uleb128 0xa55
	.ascii "GetComputerNameEx __AW_SUFFIXED__(GetComputerNameEx)\0"
	.byte	0x1
	.uleb128 0xa5e
	.ascii "GetSystemWindowsDirectory __AW_SUFFIXED__(GetSystemWindowsDirectory)\0"
	.byte	0x1
	.uleb128 0xa61
	.ascii "GetVolumeNameForVolumeMountPoint __AW_SUFFIXED__(GetVolumeNameForVolumeMountPoint)\0"
	.byte	0x1
	.uleb128 0xa67
	.ascii "GetVolumePathName __AW_SUFFIXED__(GetVolumePathName)\0"
	.byte	0x1
	.uleb128 0xa6f
	.ascii "MoveFileWithProgress __AW_SUFFIXED__(MoveFileWithProgress)\0"
	.byte	0x1
	.uleb128 0xa7f
	.ascii "ReplaceFile __AW_SUFFIXED__(ReplaceFile)\0"
	.byte	0x1
	.uleb128 0xa86
	.ascii "SetComputerNameEx __AW_SUFFIXED__(SetComputerNameEx)\0"
	.byte	0x1
	.uleb128 0xa8a
	.ascii "SetVolumeMountPoint __AW_SUFFIXED__(SetVolumeMountPoint)\0"
	.byte	0x4
	.file 34 "c:/mingw/include/wingdi.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x22
	.byte	0x1
	.uleb128 0x22
	.ascii "_WINGDI_H \0"
	.byte	0x1
	.uleb128 0x23
	.ascii "_WINGDI_ \0"
	.byte	0x1
	.uleb128 0x30
	.ascii "WINGDIAPI \0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "BI_RGB 0\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "BI_RLE8 1\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "BI_RLE4 2\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "BI_BITFIELDS 3\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "BI_JPEG 4\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "BI_PNG 5\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "LF_FACESIZE 32\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "LF_FULLFACESIZE 64\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "CA_NEGATIVE 1\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "CA_LOG_FILTER 2\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "ILLUMINANT_DEVICE_DEFAULT 0\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "ILLUMINANT_A 1\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "ILLUMINANT_B 2\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "ILLUMINANT_C 3\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "ILLUMINANT_D50 4\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "ILLUMINANT_D55 5\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "ILLUMINANT_D65 6\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "ILLUMINANT_D75 7\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "ILLUMINANT_F2 8\0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "ILLUMINANT_MAX_INDEX ILLUMINANT_F2\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "ILLUMINANT_TUNGSTEN ILLUMINANT_A\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "ILLUMINANT_DAYLIGHT ILLUMINANT_C\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "ILLUMINANT_FLUORESCENT ILLUMINANT_F2\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "ILLUMINANT_NTSC ILLUMINANT_C\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "RGB_GAMMA_MIN 2500\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "RGB_GAMMA_MAX 65000\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "REFERENCE_WHITE_MIN 6000\0"
	.byte	0x1
	.uleb128 0x55
	.ascii "REFERENCE_WHITE_MAX 10000\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "REFERENCE_BLACK_MIN 0\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "REFERENCE_BLACK_MAX 4000\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "COLOR_ADJ_MIN (-100)\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "COLOR_ADJ_MAX 100\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "CCHDEVICENAME 32\0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "CCHFORMNAME 32\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "DI_COMPAT 4\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "DI_DEFAULTSIZE 8\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "DI_IMAGE 2\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "DI_MASK 1\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "DI_NORMAL 3\0"
	.byte	0x1
	.uleb128 0x61
	.ascii "DI_APPBANDING 1\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "EMR_HEADER 1\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "EMR_POLYBEZIER 2\0"
	.byte	0x1
	.uleb128 0x64
	.ascii "EMR_POLYGON 3\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "EMR_POLYLINE 4\0"
	.byte	0x1
	.uleb128 0x66
	.ascii "EMR_POLYBEZIERTO 5\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "EMR_POLYLINETO 6\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "EMR_POLYPOLYLINE 7\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "EMR_POLYPOLYGON 8\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "EMR_SETWINDOWEXTEX 9\0"
	.byte	0x1
	.uleb128 0x6b
	.ascii "EMR_SETWINDOWORGEX 10\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "EMR_SETVIEWPORTEXTEX 11\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "EMR_SETVIEWPORTORGEX 12\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "EMR_SETBRUSHORGEX 13\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "EMR_EOF 14\0"
	.byte	0x1
	.uleb128 0x70
	.ascii "EMR_SETPIXELV 15\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "EMR_SETMAPPERFLAGS 16\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "EMR_SETMAPMODE 17\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "EMR_SETBKMODE 18\0"
	.byte	0x1
	.uleb128 0x74
	.ascii "EMR_SETPOLYFILLMODE 19\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "EMR_SETROP2 20\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "EMR_SETSTRETCHBLTMODE 21\0"
	.byte	0x1
	.uleb128 0x77
	.ascii "EMR_SETTEXTALIGN 22\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "EMR_SETCOLORADJUSTMENT 23\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "EMR_SETTEXTCOLOR 24\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "EMR_SETBKCOLOR 25\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "EMR_OFFSETCLIPRGN 26\0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "EMR_MOVETOEX 27\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "EMR_SETMETARGN 28\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "EMR_EXCLUDECLIPRECT 29\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "EMR_INTERSECTCLIPRECT 30\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "EMR_SCALEVIEWPORTEXTEX 31\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "EMR_SCALEWINDOWEXTEX 32\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "EMR_SAVEDC 33\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "EMR_RESTOREDC 34\0"
	.byte	0x1
	.uleb128 0x84
	.ascii "EMR_SETWORLDTRANSFORM 35\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "EMR_MODIFYWORLDTRANSFORM 36\0"
	.byte	0x1
	.uleb128 0x86
	.ascii "EMR_SELECTOBJECT 37\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "EMR_CREATEPEN 38\0"
	.byte	0x1
	.uleb128 0x88
	.ascii "EMR_CREATEBRUSHINDIRECT 39\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "EMR_DELETEOBJECT 40\0"
	.byte	0x1
	.uleb128 0x8a
	.ascii "EMR_ANGLEARC 41\0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "EMR_ELLIPSE 42\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "EMR_RECTANGLE 43\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "EMR_ROUNDRECT 44\0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "EMR_ARC 45\0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "EMR_CHORD 46\0"
	.byte	0x1
	.uleb128 0x90
	.ascii "EMR_PIE 47\0"
	.byte	0x1
	.uleb128 0x91
	.ascii "EMR_SELECTPALETTE 48\0"
	.byte	0x1
	.uleb128 0x92
	.ascii "EMR_CREATEPALETTE 49\0"
	.byte	0x1
	.uleb128 0x93
	.ascii "EMR_SETPALETTEENTRIES 50\0"
	.byte	0x1
	.uleb128 0x94
	.ascii "EMR_RESIZEPALETTE 51\0"
	.byte	0x1
	.uleb128 0x95
	.ascii "EMR_REALIZEPALETTE 52\0"
	.byte	0x1
	.uleb128 0x96
	.ascii "EMR_EXTFLOODFILL 53\0"
	.byte	0x1
	.uleb128 0x97
	.ascii "EMR_LINETO 54\0"
	.byte	0x1
	.uleb128 0x98
	.ascii "EMR_ARCTO 55\0"
	.byte	0x1
	.uleb128 0x99
	.ascii "EMR_POLYDRAW 56\0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "EMR_SETARCDIRECTION 57\0"
	.byte	0x1
	.uleb128 0x9b
	.ascii "EMR_SETMITERLIMIT 58\0"
	.byte	0x1
	.uleb128 0x9c
	.ascii "EMR_BEGINPATH 59\0"
	.byte	0x1
	.uleb128 0x9d
	.ascii "EMR_ENDPATH 60\0"
	.byte	0x1
	.uleb128 0x9e
	.ascii "EMR_CLOSEFIGURE 61\0"
	.byte	0x1
	.uleb128 0x9f
	.ascii "EMR_FILLPATH 62\0"
	.byte	0x1
	.uleb128 0xa0
	.ascii "EMR_STROKEANDFILLPATH 63\0"
	.byte	0x1
	.uleb128 0xa1
	.ascii "EMR_STROKEPATH 64\0"
	.byte	0x1
	.uleb128 0xa2
	.ascii "EMR_FLATTENPATH 65\0"
	.byte	0x1
	.uleb128 0xa3
	.ascii "EMR_WIDENPATH 66\0"
	.byte	0x1
	.uleb128 0xa4
	.ascii "EMR_SELECTCLIPPATH 67\0"
	.byte	0x1
	.uleb128 0xa5
	.ascii "EMR_ABORTPATH 68\0"
	.byte	0x1
	.uleb128 0xa6
	.ascii "EMR_GDICOMMENT 70\0"
	.byte	0x1
	.uleb128 0xa7
	.ascii "EMR_FILLRGN 71\0"
	.byte	0x1
	.uleb128 0xa8
	.ascii "EMR_FRAMERGN 72\0"
	.byte	0x1
	.uleb128 0xa9
	.ascii "EMR_INVERTRGN 73\0"
	.byte	0x1
	.uleb128 0xaa
	.ascii "EMR_PAINTRGN 74\0"
	.byte	0x1
	.uleb128 0xab
	.ascii "EMR_EXTSELECTCLIPRGN 75\0"
	.byte	0x1
	.uleb128 0xac
	.ascii "EMR_BITBLT 76\0"
	.byte	0x1
	.uleb128 0xad
	.ascii "EMR_STRETCHBLT 77\0"
	.byte	0x1
	.uleb128 0xae
	.ascii "EMR_MASKBLT 78\0"
	.byte	0x1
	.uleb128 0xaf
	.ascii "EMR_PLGBLT 79\0"
	.byte	0x1
	.uleb128 0xb0
	.ascii "EMR_SETDIBITSTODEVICE 80\0"
	.byte	0x1
	.uleb128 0xb1
	.ascii "EMR_STRETCHDIBITS 81\0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "EMR_EXTCREATEFONTINDIRECTW 82\0"
	.byte	0x1
	.uleb128 0xb3
	.ascii "EMR_EXTTEXTOUTA 83\0"
	.byte	0x1
	.uleb128 0xb4
	.ascii "EMR_EXTTEXTOUTW 84\0"
	.byte	0x1
	.uleb128 0xb5
	.ascii "EMR_POLYBEZIER16 85\0"
	.byte	0x1
	.uleb128 0xb6
	.ascii "EMR_POLYGON16 86\0"
	.byte	0x1
	.uleb128 0xb7
	.ascii "EMR_POLYLINE16 87\0"
	.byte	0x1
	.uleb128 0xb8
	.ascii "EMR_POLYBEZIERTO16 88\0"
	.byte	0x1
	.uleb128 0xb9
	.ascii "EMR_POLYLINETO16 89\0"
	.byte	0x1
	.uleb128 0xba
	.ascii "EMR_POLYPOLYLINE16 90\0"
	.byte	0x1
	.uleb128 0xbb
	.ascii "EMR_POLYPOLYGON16 91\0"
	.byte	0x1
	.uleb128 0xbc
	.ascii "EMR_POLYDRAW16 92\0"
	.byte	0x1
	.uleb128 0xbd
	.ascii "EMR_CREATEMONOBRUSH 93\0"
	.byte	0x1
	.uleb128 0xbe
	.ascii "EMR_CREATEDIBPATTERNBRUSHPT 94\0"
	.byte	0x1
	.uleb128 0xbf
	.ascii "EMR_EXTCREATEPEN 95\0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "EMR_POLYTEXTOUTA 96\0"
	.byte	0x1
	.uleb128 0xc1
	.ascii "EMR_POLYTEXTOUTW 97\0"
	.byte	0x1
	.uleb128 0xc2
	.ascii "EMR_SETICMMODE 98\0"
	.byte	0x1
	.uleb128 0xc3
	.ascii "EMR_CREATECOLORSPACE 99\0"
	.byte	0x1
	.uleb128 0xc4
	.ascii "EMR_SETCOLORSPACE 100\0"
	.byte	0x1
	.uleb128 0xc5
	.ascii "EMR_DELETECOLORSPACE 101\0"
	.byte	0x1
	.uleb128 0xc6
	.ascii "EMR_GLSRECORD 102\0"
	.byte	0x1
	.uleb128 0xc7
	.ascii "EMR_GLSBOUNDEDRECORD 103\0"
	.byte	0x1
	.uleb128 0xc8
	.ascii "EMR_PIXELFORMAT 104\0"
	.byte	0x1
	.uleb128 0xc9
	.ascii "ENHMETA_SIGNATURE 1179469088\0"
	.byte	0x1
	.uleb128 0xca
	.ascii "EPS_SIGNATURE 0x46535045\0"
	.byte	0x1
	.uleb128 0xcc
	.ascii "META_SETBKCOLOR 0x201\0"
	.byte	0x1
	.uleb128 0xcd
	.ascii "META_SETBKMODE 0x102\0"
	.byte	0x1
	.uleb128 0xce
	.ascii "META_SETMAPMODE 0x103\0"
	.byte	0x1
	.uleb128 0xcf
	.ascii "META_SETROP2 0x104\0"
	.byte	0x1
	.uleb128 0xd0
	.ascii "META_SETRELABS 0x105\0"
	.byte	0x1
	.uleb128 0xd1
	.ascii "META_SETPOLYFILLMODE 0x106\0"
	.byte	0x1
	.uleb128 0xd2
	.ascii "META_SETSTRETCHBLTMODE 0x107\0"
	.byte	0x1
	.uleb128 0xd3
	.ascii "META_SETTEXTCHAREXTRA 0x108\0"
	.byte	0x1
	.uleb128 0xd4
	.ascii "META_SETTEXTCOLOR 0x209\0"
	.byte	0x1
	.uleb128 0xd5
	.ascii "META_SETTEXTJUSTIFICATION 0x20A\0"
	.byte	0x1
	.uleb128 0xd6
	.ascii "META_SETWINDOWORG 0x20B\0"
	.byte	0x1
	.uleb128 0xd7
	.ascii "META_SETWINDOWEXT 0x20C\0"
	.byte	0x1
	.uleb128 0xd8
	.ascii "META_SETVIEWPORTORG 0x20D\0"
	.byte	0x1
	.uleb128 0xd9
	.ascii "META_SETVIEWPORTEXT 0x20E\0"
	.byte	0x1
	.uleb128 0xda
	.ascii "META_OFFSETWINDOWORG 0x20F\0"
	.byte	0x1
	.uleb128 0xdb
	.ascii "META_SCALEWINDOWEXT 0x410\0"
	.byte	0x1
	.uleb128 0xdc
	.ascii "META_OFFSETVIEWPORTORG 0x211\0"
	.byte	0x1
	.uleb128 0xdd
	.ascii "META_SCALEVIEWPORTEXT 0x412\0"
	.byte	0x1
	.uleb128 0xde
	.ascii "META_LINETO 0x213\0"
	.byte	0x1
	.uleb128 0xdf
	.ascii "META_MOVETO 0x214\0"
	.byte	0x1
	.uleb128 0xe0
	.ascii "META_EXCLUDECLIPRECT 0x415\0"
	.byte	0x1
	.uleb128 0xe1
	.ascii "META_INTERSECTCLIPRECT 0x416\0"
	.byte	0x1
	.uleb128 0xe2
	.ascii "META_ARC 0x817\0"
	.byte	0x1
	.uleb128 0xe3
	.ascii "META_ELLIPSE 0x418\0"
	.byte	0x1
	.uleb128 0xe4
	.ascii "META_FLOODFILL 0x419\0"
	.byte	0x1
	.uleb128 0xe5
	.ascii "META_PIE 0x81A\0"
	.byte	0x1
	.uleb128 0xe6
	.ascii "META_RECTANGLE 0x41B\0"
	.byte	0x1
	.uleb128 0xe7
	.ascii "META_ROUNDRECT 0x61C\0"
	.byte	0x1
	.uleb128 0xe8
	.ascii "META_PATBLT 0x61D\0"
	.byte	0x1
	.uleb128 0xe9
	.ascii "META_SAVEDC 0x1E\0"
	.byte	0x1
	.uleb128 0xea
	.ascii "META_SETPIXEL 0x41F\0"
	.byte	0x1
	.uleb128 0xeb
	.ascii "META_OFFSETCLIPRGN 0x220\0"
	.byte	0x1
	.uleb128 0xec
	.ascii "META_TEXTOUT 0x521\0"
	.byte	0x1
	.uleb128 0xed
	.ascii "META_BITBLT 0x922\0"
	.byte	0x1
	.uleb128 0xee
	.ascii "META_STRETCHBLT 0xB23\0"
	.byte	0x1
	.uleb128 0xef
	.ascii "META_POLYGON 0x324\0"
	.byte	0x1
	.uleb128 0xf0
	.ascii "META_POLYLINE 0x325\0"
	.byte	0x1
	.uleb128 0xf1
	.ascii "META_ESCAPE 0x626\0"
	.byte	0x1
	.uleb128 0xf2
	.ascii "META_RESTOREDC 0x127\0"
	.byte	0x1
	.uleb128 0xf3
	.ascii "META_FILLREGION 0x228\0"
	.byte	0x1
	.uleb128 0xf4
	.ascii "META_FRAMEREGION 0x429\0"
	.byte	0x1
	.uleb128 0xf5
	.ascii "META_INVERTREGION 0x12A\0"
	.byte	0x1
	.uleb128 0xf6
	.ascii "META_PAINTREGION 0x12B\0"
	.byte	0x1
	.uleb128 0xf7
	.ascii "META_SELECTCLIPREGION 0x12C\0"
	.byte	0x1
	.uleb128 0xf8
	.ascii "META_SELECTOBJECT 0x12D\0"
	.byte	0x1
	.uleb128 0xf9
	.ascii "META_SETTEXTALIGN 0x12E\0"
	.byte	0x1
	.uleb128 0xfa
	.ascii "META_CHORD 0x830\0"
	.byte	0x1
	.uleb128 0xfb
	.ascii "META_SETMAPPERFLAGS 0x231\0"
	.byte	0x1
	.uleb128 0xfc
	.ascii "META_EXTTEXTOUT 0xA32\0"
	.byte	0x1
	.uleb128 0xfd
	.ascii "META_SETDIBTODEV 0xD33\0"
	.byte	0x1
	.uleb128 0xfe
	.ascii "META_SELECTPALETTE 0x234\0"
	.byte	0x1
	.uleb128 0xff
	.ascii "META_REALIZEPALETTE 0x35\0"
	.byte	0x1
	.uleb128 0x100
	.ascii "META_ANIMATEPALETTE 0x436\0"
	.byte	0x1
	.uleb128 0x101
	.ascii "META_SETPALENTRIES 0x37\0"
	.byte	0x1
	.uleb128 0x102
	.ascii "META_POLYPOLYGON 0x538\0"
	.byte	0x1
	.uleb128 0x103
	.ascii "META_RESIZEPALETTE 0x139\0"
	.byte	0x1
	.uleb128 0x104
	.ascii "META_DIBBITBLT 0x940\0"
	.byte	0x1
	.uleb128 0x105
	.ascii "META_DIBSTRETCHBLT 0xB41\0"
	.byte	0x1
	.uleb128 0x106
	.ascii "META_DIBCREATEPATTERNBRUSH 0x142\0"
	.byte	0x1
	.uleb128 0x107
	.ascii "META_STRETCHDIB 0xF43\0"
	.byte	0x1
	.uleb128 0x108
	.ascii "META_EXTFLOODFILL 0x548\0"
	.byte	0x1
	.uleb128 0x109
	.ascii "META_DELETEOBJECT 0x1F0\0"
	.byte	0x1
	.uleb128 0x10a
	.ascii "META_CREATEPALETTE 0xF7\0"
	.byte	0x1
	.uleb128 0x10b
	.ascii "META_CREATEPATTERNBRUSH 0x1F9\0"
	.byte	0x1
	.uleb128 0x10c
	.ascii "META_CREATEPENINDIRECT 0x2FA\0"
	.byte	0x1
	.uleb128 0x10d
	.ascii "META_CREATEFONTINDIRECT 0x2FB\0"
	.byte	0x1
	.uleb128 0x10e
	.ascii "META_CREATEBRUSHINDIRECT 0x2FC\0"
	.byte	0x1
	.uleb128 0x10f
	.ascii "META_CREATEREGION 0x6FF\0"
	.byte	0x1
	.uleb128 0x110
	.ascii "PT_MOVETO 6\0"
	.byte	0x1
	.uleb128 0x111
	.ascii "PT_LINETO 2\0"
	.byte	0x1
	.uleb128 0x112
	.ascii "PT_BEZIERTO 4\0"
	.byte	0x1
	.uleb128 0x113
	.ascii "PT_CLOSEFIGURE 1\0"
	.byte	0x1
	.uleb128 0x114
	.ascii "ELF_VENDOR_SIZE 4\0"
	.byte	0x1
	.uleb128 0x115
	.ascii "ELF_VERSION 0\0"
	.byte	0x1
	.uleb128 0x116
	.ascii "ELF_CULTURE_LATIN 0\0"
	.byte	0x1
	.uleb128 0x117
	.ascii "PFD_TYPE_RGBA 0\0"
	.byte	0x1
	.uleb128 0x118
	.ascii "PFD_TYPE_COLORINDEX 1\0"
	.byte	0x1
	.uleb128 0x119
	.ascii "PFD_MAIN_PLANE 0\0"
	.byte	0x1
	.uleb128 0x11a
	.ascii "PFD_OVERLAY_PLANE 1\0"
	.byte	0x1
	.uleb128 0x11b
	.ascii "PFD_UNDERLAY_PLANE (-1)\0"
	.byte	0x1
	.uleb128 0x11c
	.ascii "PFD_DOUBLEBUFFER 1\0"
	.byte	0x1
	.uleb128 0x11d
	.ascii "PFD_STEREO 2\0"
	.byte	0x1
	.uleb128 0x11e
	.ascii "PFD_DRAW_TO_WINDOW 4\0"
	.byte	0x1
	.uleb128 0x11f
	.ascii "PFD_DRAW_TO_BITMAP 8\0"
	.byte	0x1
	.uleb128 0x120
	.ascii "PFD_SUPPORT_GDI 16\0"
	.byte	0x1
	.uleb128 0x121
	.ascii "PFD_SUPPORT_OPENGL 32\0"
	.byte	0x1
	.uleb128 0x122
	.ascii "PFD_GENERIC_FORMAT 64\0"
	.byte	0x1
	.uleb128 0x123
	.ascii "PFD_NEED_PALETTE 128\0"
	.byte	0x1
	.uleb128 0x124
	.ascii "PFD_NEED_SYSTEM_PALETTE 0x00000100\0"
	.byte	0x1
	.uleb128 0x125
	.ascii "PFD_SWAP_EXCHANGE 0x00000200\0"
	.byte	0x1
	.uleb128 0x126
	.ascii "PFD_SWAP_COPY 0x00000400\0"
	.byte	0x1
	.uleb128 0x127
	.ascii "PFD_SWAP_LAYER_BUFFERS 0x00000800\0"
	.byte	0x1
	.uleb128 0x128
	.ascii "PFD_GENERIC_ACCELERATED 0x00001000\0"
	.byte	0x1
	.uleb128 0x129
	.ascii "PFD_DEPTH_DONTCARE 0x20000000\0"
	.byte	0x1
	.uleb128 0x12a
	.ascii "PFD_DOUBLEBUFFER_DONTCARE 0x40000000\0"
	.byte	0x1
	.uleb128 0x12b
	.ascii "PFD_STEREO_DONTCARE 0x80000000\0"
	.byte	0x1
	.uleb128 0x12c
	.ascii "SP_ERROR (-1)\0"
	.byte	0x1
	.uleb128 0x12d
	.ascii "SP_OUTOFDISK (-4)\0"
	.byte	0x1
	.uleb128 0x12e
	.ascii "SP_OUTOFMEMORY (-5)\0"
	.byte	0x1
	.uleb128 0x12f
	.ascii "SP_USERABORT (-3)\0"
	.byte	0x1
	.uleb128 0x130
	.ascii "SP_APPABORT (-2)\0"
	.byte	0x1
	.uleb128 0x131
	.ascii "BLACKNESS 0x00000042\0"
	.byte	0x1
	.uleb128 0x132
	.ascii "NOTSRCERASE 0x001100A6\0"
	.byte	0x1
	.uleb128 0x133
	.ascii "NOTSRCCOPY 0x00330008\0"
	.byte	0x1
	.uleb128 0x134
	.ascii "SRCERASE 0x00440328\0"
	.byte	0x1
	.uleb128 0x135
	.ascii "DSTINVERT 0x00550009\0"
	.byte	0x1
	.uleb128 0x136
	.ascii "PATINVERT 0x005A0049\0"
	.byte	0x1
	.uleb128 0x137
	.ascii "SRCINVERT 0x00660046\0"
	.byte	0x1
	.uleb128 0x138
	.ascii "SRCAND 0x008800C6\0"
	.byte	0x1
	.uleb128 0x139
	.ascii "MERGEPAINT 0x00BB0226\0"
	.byte	0x1
	.uleb128 0x13a
	.ascii "MERGECOPY 0x00C000CA\0"
	.byte	0x1
	.uleb128 0x13b
	.ascii "SRCCOPY 0x00CC0020\0"
	.byte	0x1
	.uleb128 0x13c
	.ascii "SRCPAINT 0x00EE0086\0"
	.byte	0x1
	.uleb128 0x13d
	.ascii "PATCOPY 0x00F00021\0"
	.byte	0x1
	.uleb128 0x13e
	.ascii "PATPAINT 0x00FB0A09\0"
	.byte	0x1
	.uleb128 0x13f
	.ascii "WHITENESS 0x00FF0062\0"
	.byte	0x1
	.uleb128 0x140
	.ascii "CAPTUREBLT 0x40000000\0"
	.byte	0x1
	.uleb128 0x141
	.ascii "NOMIRRORBITMAP 0x80000000\0"
	.byte	0x1
	.uleb128 0x142
	.ascii "R2_BLACK 1\0"
	.byte	0x1
	.uleb128 0x143
	.ascii "R2_COPYPEN 13\0"
	.byte	0x1
	.uleb128 0x144
	.ascii "R2_MASKNOTPEN 3\0"
	.byte	0x1
	.uleb128 0x145
	.ascii "R2_MASKPEN 9\0"
	.byte	0x1
	.uleb128 0x146
	.ascii "R2_MASKPENNOT 5\0"
	.byte	0x1
	.uleb128 0x147
	.ascii "R2_MERGENOTPEN 12\0"
	.byte	0x1
	.uleb128 0x148
	.ascii "R2_MERGEPEN 15\0"
	.byte	0x1
	.uleb128 0x149
	.ascii "R2_MERGEPENNOT 14\0"
	.byte	0x1
	.uleb128 0x14a
	.ascii "R2_NOP 11\0"
	.byte	0x1
	.uleb128 0x14b
	.ascii "R2_NOT 6\0"
	.byte	0x1
	.uleb128 0x14c
	.ascii "R2_NOTCOPYPEN 4\0"
	.byte	0x1
	.uleb128 0x14d
	.ascii "R2_NOTMASKPEN 8\0"
	.byte	0x1
	.uleb128 0x14e
	.ascii "R2_NOTMERGEPEN 2\0"
	.byte	0x1
	.uleb128 0x14f
	.ascii "R2_NOTXORPEN 10\0"
	.byte	0x1
	.uleb128 0x150
	.ascii "R2_WHITE 16\0"
	.byte	0x1
	.uleb128 0x151
	.ascii "R2_XORPEN 7\0"
	.byte	0x1
	.uleb128 0x152
	.ascii "CM_OUT_OF_GAMUT 255\0"
	.byte	0x1
	.uleb128 0x153
	.ascii "CM_IN_GAMUT 0\0"
	.byte	0x1
	.uleb128 0x154
	.ascii "RGN_AND 1\0"
	.byte	0x1
	.uleb128 0x155
	.ascii "RGN_COPY 5\0"
	.byte	0x1
	.uleb128 0x156
	.ascii "RGN_DIFF 4\0"
	.byte	0x1
	.uleb128 0x157
	.ascii "RGN_OR 2\0"
	.byte	0x1
	.uleb128 0x158
	.ascii "RGN_XOR 3\0"
	.byte	0x1
	.uleb128 0x159
	.ascii "NULLREGION 1\0"
	.byte	0x1
	.uleb128 0x15a
	.ascii "SIMPLEREGION 2\0"
	.byte	0x1
	.uleb128 0x15b
	.ascii "COMPLEXREGION 3\0"
	.byte	0x1
	.uleb128 0x15c
	.ascii "ERROR 0\0"
	.byte	0x1
	.uleb128 0x15d
	.ascii "CBM_INIT 4\0"
	.byte	0x1
	.uleb128 0x15e
	.ascii "DIB_PAL_COLORS 1\0"
	.byte	0x1
	.uleb128 0x15f
	.ascii "DIB_RGB_COLORS 0\0"
	.byte	0x1
	.uleb128 0x160
	.ascii "FW_DONTCARE 0\0"
	.byte	0x1
	.uleb128 0x161
	.ascii "FW_THIN 100\0"
	.byte	0x1
	.uleb128 0x162
	.ascii "FW_EXTRALIGHT 200\0"
	.byte	0x1
	.uleb128 0x163
	.ascii "FW_ULTRALIGHT FW_EXTRALIGHT\0"
	.byte	0x1
	.uleb128 0x164
	.ascii "FW_LIGHT 300\0"
	.byte	0x1
	.uleb128 0x165
	.ascii "FW_NORMAL 400\0"
	.byte	0x1
	.uleb128 0x166
	.ascii "FW_REGULAR 400\0"
	.byte	0x1
	.uleb128 0x167
	.ascii "FW_MEDIUM 500\0"
	.byte	0x1
	.uleb128 0x168
	.ascii "FW_SEMIBOLD 600\0"
	.byte	0x1
	.uleb128 0x169
	.ascii "FW_DEMIBOLD FW_SEMIBOLD\0"
	.byte	0x1
	.uleb128 0x16a
	.ascii "FW_BOLD 700\0"
	.byte	0x1
	.uleb128 0x16b
	.ascii "FW_EXTRABOLD 800\0"
	.byte	0x1
	.uleb128 0x16c
	.ascii "FW_ULTRABOLD FW_EXTRABOLD\0"
	.byte	0x1
	.uleb128 0x16d
	.ascii "FW_HEAVY 900\0"
	.byte	0x1
	.uleb128 0x16e
	.ascii "FW_BLACK FW_HEAVY\0"
	.byte	0x1
	.uleb128 0x16f
	.ascii "ANSI_CHARSET 0\0"
	.byte	0x1
	.uleb128 0x170
	.ascii "DEFAULT_CHARSET 1\0"
	.byte	0x1
	.uleb128 0x171
	.ascii "SYMBOL_CHARSET 2\0"
	.byte	0x1
	.uleb128 0x172
	.ascii "SHIFTJIS_CHARSET 128\0"
	.byte	0x1
	.uleb128 0x173
	.ascii "HANGEUL_CHARSET 129\0"
	.byte	0x1
	.uleb128 0x174
	.ascii "HANGUL_CHARSET 129\0"
	.byte	0x1
	.uleb128 0x175
	.ascii "GB2312_CHARSET 134\0"
	.byte	0x1
	.uleb128 0x176
	.ascii "CHINESEBIG5_CHARSET 136\0"
	.byte	0x1
	.uleb128 0x177
	.ascii "GREEK_CHARSET 161\0"
	.byte	0x1
	.uleb128 0x178
	.ascii "TURKISH_CHARSET 162\0"
	.byte	0x1
	.uleb128 0x179
	.ascii "HEBREW_CHARSET 177\0"
	.byte	0x1
	.uleb128 0x17a
	.ascii "ARABIC_CHARSET 178\0"
	.byte	0x1
	.uleb128 0x17b
	.ascii "BALTIC_CHARSET 186\0"
	.byte	0x1
	.uleb128 0x17c
	.ascii "RUSSIAN_CHARSET 204\0"
	.byte	0x1
	.uleb128 0x17d
	.ascii "THAI_CHARSET 222\0"
	.byte	0x1
	.uleb128 0x17e
	.ascii "EASTEUROPE_CHARSET 238\0"
	.byte	0x1
	.uleb128 0x17f
	.ascii "OEM_CHARSET 255\0"
	.byte	0x1
	.uleb128 0x180
	.ascii "JOHAB_CHARSET 130\0"
	.byte	0x1
	.uleb128 0x181
	.ascii "VIETNAMESE_CHARSET 163\0"
	.byte	0x1
	.uleb128 0x182
	.ascii "MAC_CHARSET 77\0"
	.byte	0x1
	.uleb128 0x183
	.ascii "OUT_DEFAULT_PRECIS 0\0"
	.byte	0x1
	.uleb128 0x184
	.ascii "OUT_STRING_PRECIS 1\0"
	.byte	0x1
	.uleb128 0x185
	.ascii "OUT_CHARACTER_PRECIS 2\0"
	.byte	0x1
	.uleb128 0x186
	.ascii "OUT_STROKE_PRECIS 3\0"
	.byte	0x1
	.uleb128 0x187
	.ascii "OUT_TT_PRECIS 4\0"
	.byte	0x1
	.uleb128 0x188
	.ascii "OUT_DEVICE_PRECIS 5\0"
	.byte	0x1
	.uleb128 0x189
	.ascii "OUT_RASTER_PRECIS 6\0"
	.byte	0x1
	.uleb128 0x18a
	.ascii "OUT_TT_ONLY_PRECIS 7\0"
	.byte	0x1
	.uleb128 0x18b
	.ascii "OUT_OUTLINE_PRECIS 8\0"
	.byte	0x1
	.uleb128 0x18d
	.ascii "OUT_PS_ONLY_PRECIS 10\0"
	.byte	0x1
	.uleb128 0x18e
	.ascii "CLIP_DEFAULT_PRECIS 0\0"
	.byte	0x1
	.uleb128 0x18f
	.ascii "CLIP_CHARACTER_PRECIS 1\0"
	.byte	0x1
	.uleb128 0x190
	.ascii "CLIP_STROKE_PRECIS 2\0"
	.byte	0x1
	.uleb128 0x191
	.ascii "CLIP_MASK 15\0"
	.byte	0x1
	.uleb128 0x192
	.ascii "CLIP_LH_ANGLES 16\0"
	.byte	0x1
	.uleb128 0x193
	.ascii "CLIP_TT_ALWAYS 32\0"
	.byte	0x1
	.uleb128 0x194
	.ascii "CLIP_EMBEDDED 128\0"
	.byte	0x1
	.uleb128 0x195
	.ascii "DEFAULT_QUALITY 0\0"
	.byte	0x1
	.uleb128 0x196
	.ascii "DRAFT_QUALITY 1\0"
	.byte	0x1
	.uleb128 0x197
	.ascii "PROOF_QUALITY 2\0"
	.byte	0x1
	.uleb128 0x198
	.ascii "NONANTIALIASED_QUALITY 3\0"
	.byte	0x1
	.uleb128 0x199
	.ascii "ANTIALIASED_QUALITY 4\0"
	.byte	0x1
	.uleb128 0x19b
	.ascii "DEFAULT_PITCH 0\0"
	.byte	0x1
	.uleb128 0x19c
	.ascii "FIXED_PITCH 1\0"
	.byte	0x1
	.uleb128 0x19d
	.ascii "VARIABLE_PITCH 2\0"
	.byte	0x1
	.uleb128 0x19e
	.ascii "MONO_FONT 8\0"
	.byte	0x1
	.uleb128 0x19f
	.ascii "FF_DECORATIVE 80\0"
	.byte	0x1
	.uleb128 0x1a0
	.ascii "FF_DONTCARE 0\0"
	.byte	0x1
	.uleb128 0x1a1
	.ascii "FF_MODERN 48\0"
	.byte	0x1
	.uleb128 0x1a2
	.ascii "FF_ROMAN 16\0"
	.byte	0x1
	.uleb128 0x1a3
	.ascii "FF_SCRIPT 64\0"
	.byte	0x1
	.uleb128 0x1a4
	.ascii "FF_SWISS 32\0"
	.byte	0x1
	.uleb128 0x1a5
	.ascii "PANOSE_COUNT 10\0"
	.byte	0x1
	.uleb128 0x1a6
	.ascii "PAN_FAMILYTYPE_INDEX 0\0"
	.byte	0x1
	.uleb128 0x1a7
	.ascii "PAN_SERIFSTYLE_INDEX 1\0"
	.byte	0x1
	.uleb128 0x1a8
	.ascii "PAN_WEIGHT_INDEX 2\0"
	.byte	0x1
	.uleb128 0x1a9
	.ascii "PAN_PROPORTION_INDEX 3\0"
	.byte	0x1
	.uleb128 0x1aa
	.ascii "PAN_CONTRAST_INDEX 4\0"
	.byte	0x1
	.uleb128 0x1ab
	.ascii "PAN_STROKEVARIATION_INDEX 5\0"
	.byte	0x1
	.uleb128 0x1ac
	.ascii "PAN_ARMSTYLE_INDEX 6\0"
	.byte	0x1
	.uleb128 0x1ad
	.ascii "PAN_LETTERFORM_INDEX 7\0"
	.byte	0x1
	.uleb128 0x1ae
	.ascii "PAN_MIDLINE_INDEX 8\0"
	.byte	0x1
	.uleb128 0x1af
	.ascii "PAN_XHEIGHT_INDEX 9\0"
	.byte	0x1
	.uleb128 0x1b0
	.ascii "PAN_CULTURE_LATIN 0\0"
	.byte	0x1
	.uleb128 0x1b1
	.ascii "PAN_ANY 0\0"
	.byte	0x1
	.uleb128 0x1b2
	.ascii "PAN_NO_FIT 1\0"
	.byte	0x1
	.uleb128 0x1b3
	.ascii "PAN_FAMILY_TEXT_DISPLAY 2\0"
	.byte	0x1
	.uleb128 0x1b4
	.ascii "PAN_FAMILY_SCRIPT 3\0"
	.byte	0x1
	.uleb128 0x1b5
	.ascii "PAN_FAMILY_DECORATIVE 4\0"
	.byte	0x1
	.uleb128 0x1b6
	.ascii "PAN_FAMILY_PICTORIAL 5\0"
	.byte	0x1
	.uleb128 0x1b7
	.ascii "PAN_SERIF_COVE 2\0"
	.byte	0x1
	.uleb128 0x1b8
	.ascii "PAN_SERIF_OBTUSE_COVE 3\0"
	.byte	0x1
	.uleb128 0x1b9
	.ascii "PAN_SERIF_SQUARE_COVE 4\0"
	.byte	0x1
	.uleb128 0x1ba
	.ascii "PAN_SERIF_OBTUSE_SQUARE_COVE 5\0"
	.byte	0x1
	.uleb128 0x1bb
	.ascii "PAN_SERIF_SQUARE 6\0"
	.byte	0x1
	.uleb128 0x1bc
	.ascii "PAN_SERIF_THIN 7\0"
	.byte	0x1
	.uleb128 0x1bd
	.ascii "PAN_SERIF_BONE 8\0"
	.byte	0x1
	.uleb128 0x1be
	.ascii "PAN_SERIF_EXAGGERATED 9\0"
	.byte	0x1
	.uleb128 0x1bf
	.ascii "PAN_SERIF_TRIANGLE 10\0"
	.byte	0x1
	.uleb128 0x1c0
	.ascii "PAN_SERIF_NORMAL_SANS 11\0"
	.byte	0x1
	.uleb128 0x1c1
	.ascii "PAN_SERIF_OBTUSE_SANS 12\0"
	.byte	0x1
	.uleb128 0x1c2
	.ascii "PAN_SERIF_PERP_SANS 13\0"
	.byte	0x1
	.uleb128 0x1c3
	.ascii "PAN_SERIF_FLARED 14\0"
	.byte	0x1
	.uleb128 0x1c4
	.ascii "PAN_SERIF_ROUNDED 15\0"
	.byte	0x1
	.uleb128 0x1c5
	.ascii "PAN_WEIGHT_VERY_LIGHT 2\0"
	.byte	0x1
	.uleb128 0x1c6
	.ascii "PAN_WEIGHT_LIGHT 3\0"
	.byte	0x1
	.uleb128 0x1c7
	.ascii "PAN_WEIGHT_THIN 4\0"
	.byte	0x1
	.uleb128 0x1c8
	.ascii "PAN_WEIGHT_BOOK 5\0"
	.byte	0x1
	.uleb128 0x1c9
	.ascii "PAN_WEIGHT_MEDIUM 6\0"
	.byte	0x1
	.uleb128 0x1ca
	.ascii "PAN_WEIGHT_DEMI 7\0"
	.byte	0x1
	.uleb128 0x1cb
	.ascii "PAN_WEIGHT_BOLD 8\0"
	.byte	0x1
	.uleb128 0x1cc
	.ascii "PAN_WEIGHT_HEAVY 9\0"
	.byte	0x1
	.uleb128 0x1cd
	.ascii "PAN_WEIGHT_BLACK 10\0"
	.byte	0x1
	.uleb128 0x1ce
	.ascii "PAN_WEIGHT_NORD 11\0"
	.byte	0x1
	.uleb128 0x1cf
	.ascii "PAN_PROP_OLD_STYLE 2\0"
	.byte	0x1
	.uleb128 0x1d0
	.ascii "PAN_PROP_MODERN 3\0"
	.byte	0x1
	.uleb128 0x1d1
	.ascii "PAN_PROP_EVEN_WIDTH 4\0"
	.byte	0x1
	.uleb128 0x1d2
	.ascii "PAN_PROP_EXPANDED 5\0"
	.byte	0x1
	.uleb128 0x1d3
	.ascii "PAN_PROP_CONDENSED 6\0"
	.byte	0x1
	.uleb128 0x1d4
	.ascii "PAN_PROP_VERY_EXPANDED 7\0"
	.byte	0x1
	.uleb128 0x1d5
	.ascii "PAN_PROP_VERY_CONDENSED 8\0"
	.byte	0x1
	.uleb128 0x1d6
	.ascii "PAN_PROP_MONOSPACED 9\0"
	.byte	0x1
	.uleb128 0x1d7
	.ascii "PAN_CONTRAST_NONE 2\0"
	.byte	0x1
	.uleb128 0x1d8
	.ascii "PAN_CONTRAST_VERY_LOW 3\0"
	.byte	0x1
	.uleb128 0x1d9
	.ascii "PAN_CONTRAST_LOW 4\0"
	.byte	0x1
	.uleb128 0x1da
	.ascii "PAN_CONTRAST_MEDIUM_LOW 5\0"
	.byte	0x1
	.uleb128 0x1db
	.ascii "PAN_CONTRAST_MEDIUM 6\0"
	.byte	0x1
	.uleb128 0x1dc
	.ascii "PAN_CONTRAST_MEDIUM_HIGH 7\0"
	.byte	0x1
	.uleb128 0x1dd
	.ascii "PAN_CONTRAST_HIGH 8\0"
	.byte	0x1
	.uleb128 0x1de
	.ascii "PAN_CONTRAST_VERY_HIGH 9\0"
	.byte	0x1
	.uleb128 0x1df
	.ascii "PAN_STROKE_GRADUAL_DIAG 2\0"
	.byte	0x1
	.uleb128 0x1e0
	.ascii "PAN_STROKE_GRADUAL_TRAN 3\0"
	.byte	0x1
	.uleb128 0x1e1
	.ascii "PAN_STROKE_GRADUAL_VERT 4\0"
	.byte	0x1
	.uleb128 0x1e2
	.ascii "PAN_STROKE_GRADUAL_HORZ 5\0"
	.byte	0x1
	.uleb128 0x1e3
	.ascii "PAN_STROKE_RAPID_VERT 6\0"
	.byte	0x1
	.uleb128 0x1e4
	.ascii "PAN_STROKE_RAPID_HORZ 7\0"
	.byte	0x1
	.uleb128 0x1e5
	.ascii "PAN_STROKE_INSTANT_VERT 8\0"
	.byte	0x1
	.uleb128 0x1e6
	.ascii "PAN_STRAIGHT_ARMS_HORZ 2\0"
	.byte	0x1
	.uleb128 0x1e7
	.ascii "PAN_STRAIGHT_ARMS_WEDGE 3\0"
	.byte	0x1
	.uleb128 0x1e8
	.ascii "PAN_STRAIGHT_ARMS_VERT 4\0"
	.byte	0x1
	.uleb128 0x1e9
	.ascii "PAN_STRAIGHT_ARMS_SINGLE_SERIF 5\0"
	.byte	0x1
	.uleb128 0x1ea
	.ascii "PAN_STRAIGHT_ARMS_DOUBLE_SERIF 6\0"
	.byte	0x1
	.uleb128 0x1eb
	.ascii "PAN_BENT_ARMS_HORZ 7\0"
	.byte	0x1
	.uleb128 0x1ec
	.ascii "PAN_BENT_ARMS_WEDGE 8\0"
	.byte	0x1
	.uleb128 0x1ed
	.ascii "PAN_BENT_ARMS_VERT 9\0"
	.byte	0x1
	.uleb128 0x1ee
	.ascii "PAN_BENT_ARMS_SINGLE_SERIF 10\0"
	.byte	0x1
	.uleb128 0x1ef
	.ascii "PAN_BENT_ARMS_DOUBLE_SERIF 11\0"
	.byte	0x1
	.uleb128 0x1f0
	.ascii "PAN_LETT_NORMAL_CONTACT 2\0"
	.byte	0x1
	.uleb128 0x1f1
	.ascii "PAN_LETT_NORMAL_WEIGHTED 3\0"
	.byte	0x1
	.uleb128 0x1f2
	.ascii "PAN_LETT_NORMAL_BOXED 4\0"
	.byte	0x1
	.uleb128 0x1f3
	.ascii "PAN_LETT_NORMAL_FLATTENED 5\0"
	.byte	0x1
	.uleb128 0x1f4
	.ascii "PAN_LETT_NORMAL_ROUNDED 6\0"
	.byte	0x1
	.uleb128 0x1f5
	.ascii "PAN_LETT_NORMAL_OFF_CENTER 7\0"
	.byte	0x1
	.uleb128 0x1f6
	.ascii "PAN_LETT_NORMAL_SQUARE 8\0"
	.byte	0x1
	.uleb128 0x1f7
	.ascii "PAN_LETT_OBLIQUE_CONTACT 9\0"
	.byte	0x1
	.uleb128 0x1f8
	.ascii "PAN_LETT_OBLIQUE_WEIGHTED 10\0"
	.byte	0x1
	.uleb128 0x1f9
	.ascii "PAN_LETT_OBLIQUE_BOXED 11\0"
	.byte	0x1
	.uleb128 0x1fa
	.ascii "PAN_LETT_OBLIQUE_FLATTENED 12\0"
	.byte	0x1
	.uleb128 0x1fb
	.ascii "PAN_LETT_OBLIQUE_ROUNDED 13\0"
	.byte	0x1
	.uleb128 0x1fc
	.ascii "PAN_LETT_OBLIQUE_OFF_CENTER 14\0"
	.byte	0x1
	.uleb128 0x1fd
	.ascii "PAN_LETT_OBLIQUE_SQUARE 15\0"
	.byte	0x1
	.uleb128 0x1fe
	.ascii "PAN_MIDLINE_STANDARD_TRIMMED 2\0"
	.byte	0x1
	.uleb128 0x1ff
	.ascii "PAN_MIDLINE_STANDARD_POINTED 3\0"
	.byte	0x1
	.uleb128 0x200
	.ascii "PAN_MIDLINE_STANDARD_SERIFED 4\0"
	.byte	0x1
	.uleb128 0x201
	.ascii "PAN_MIDLINE_HIGH_TRIMMED 5\0"
	.byte	0x1
	.uleb128 0x202
	.ascii "PAN_MIDLINE_HIGH_POINTED 6\0"
	.byte	0x1
	.uleb128 0x203
	.ascii "PAN_MIDLINE_HIGH_SERIFED 7\0"
	.byte	0x1
	.uleb128 0x204
	.ascii "PAN_MIDLINE_CONSTANT_TRIMMED 8\0"
	.byte	0x1
	.uleb128 0x205
	.ascii "PAN_MIDLINE_CONSTANT_POINTED 9\0"
	.byte	0x1
	.uleb128 0x206
	.ascii "PAN_MIDLINE_CONSTANT_SERIFED 10\0"
	.byte	0x1
	.uleb128 0x207
	.ascii "PAN_MIDLINE_LOW_TRIMMED 11\0"
	.byte	0x1
	.uleb128 0x208
	.ascii "PAN_MIDLINE_LOW_POINTED 12\0"
	.byte	0x1
	.uleb128 0x209
	.ascii "PAN_MIDLINE_LOW_SERIFED 13\0"
	.byte	0x1
	.uleb128 0x20a
	.ascii "PAN_XHEIGHT_CONSTANT_SMALL 2\0"
	.byte	0x1
	.uleb128 0x20b
	.ascii "PAN_XHEIGHT_CONSTANT_STD 3\0"
	.byte	0x1
	.uleb128 0x20c
	.ascii "PAN_XHEIGHT_CONSTANT_LARGE 4\0"
	.byte	0x1
	.uleb128 0x20d
	.ascii "PAN_XHEIGHT_DUCKING_SMALL 5\0"
	.byte	0x1
	.uleb128 0x20e
	.ascii "PAN_XHEIGHT_DUCKING_STD 6\0"
	.byte	0x1
	.uleb128 0x20f
	.ascii "PAN_XHEIGHT_DUCKING_LARGE 7\0"
	.byte	0x1
	.uleb128 0x210
	.ascii "FS_LATIN1 1\0"
	.byte	0x1
	.uleb128 0x211
	.ascii "FS_LATIN2 2\0"
	.byte	0x1
	.uleb128 0x212
	.ascii "FS_CYRILLIC 4\0"
	.byte	0x1
	.uleb128 0x213
	.ascii "FS_GREEK 8\0"
	.byte	0x1
	.uleb128 0x214
	.ascii "FS_TURKISH 16\0"
	.byte	0x1
	.uleb128 0x215
	.ascii "FS_HEBREW 32\0"
	.byte	0x1
	.uleb128 0x216
	.ascii "FS_ARABIC 64\0"
	.byte	0x1
	.uleb128 0x217
	.ascii "FS_BALTIC 128\0"
	.byte	0x1
	.uleb128 0x218
	.ascii "FS_THAI 0x10000\0"
	.byte	0x1
	.uleb128 0x219
	.ascii "FS_JISJAPAN 0x20000\0"
	.byte	0x1
	.uleb128 0x21a
	.ascii "FS_CHINESESIMP 0x40000\0"
	.byte	0x1
	.uleb128 0x21b
	.ascii "FS_WANSUNG 0x80000\0"
	.byte	0x1
	.uleb128 0x21c
	.ascii "FS_CHINESETRAD 0x100000\0"
	.byte	0x1
	.uleb128 0x21d
	.ascii "FS_JOHAB 0x200000\0"
	.byte	0x1
	.uleb128 0x21e
	.ascii "FS_SYMBOL 0x80000000\0"
	.byte	0x1
	.uleb128 0x21f
	.ascii "HS_BDIAGONAL 3\0"
	.byte	0x1
	.uleb128 0x220
	.ascii "HS_CROSS 4\0"
	.byte	0x1
	.uleb128 0x221
	.ascii "HS_DIAGCROSS 5\0"
	.byte	0x1
	.uleb128 0x222
	.ascii "HS_FDIAGONAL 2\0"
	.byte	0x1
	.uleb128 0x223
	.ascii "HS_HORIZONTAL 0\0"
	.byte	0x1
	.uleb128 0x224
	.ascii "HS_VERTICAL 1\0"
	.byte	0x1
	.uleb128 0x225
	.ascii "PS_GEOMETRIC 65536\0"
	.byte	0x1
	.uleb128 0x226
	.ascii "PS_COSMETIC 0\0"
	.byte	0x1
	.uleb128 0x227
	.ascii "PS_ALTERNATE 8\0"
	.byte	0x1
	.uleb128 0x228
	.ascii "PS_SOLID 0\0"
	.byte	0x1
	.uleb128 0x229
	.ascii "PS_DASH 1\0"
	.byte	0x1
	.uleb128 0x22a
	.ascii "PS_DOT 2\0"
	.byte	0x1
	.uleb128 0x22b
	.ascii "PS_DASHDOT 3\0"
	.byte	0x1
	.uleb128 0x22c
	.ascii "PS_DASHDOTDOT 4\0"
	.byte	0x1
	.uleb128 0x22d
	.ascii "PS_NULL 5\0"
	.byte	0x1
	.uleb128 0x22e
	.ascii "PS_USERSTYLE 7\0"
	.byte	0x1
	.uleb128 0x22f
	.ascii "PS_INSIDEFRAME 6\0"
	.byte	0x1
	.uleb128 0x230
	.ascii "PS_ENDCAP_ROUND 0\0"
	.byte	0x1
	.uleb128 0x231
	.ascii "PS_ENDCAP_SQUARE 256\0"
	.byte	0x1
	.uleb128 0x232
	.ascii "PS_ENDCAP_FLAT 512\0"
	.byte	0x1
	.uleb128 0x233
	.ascii "PS_JOIN_BEVEL 4096\0"
	.byte	0x1
	.uleb128 0x234
	.ascii "PS_JOIN_MITER 8192\0"
	.byte	0x1
	.uleb128 0x235
	.ascii "PS_JOIN_ROUND 0\0"
	.byte	0x1
	.uleb128 0x236
	.ascii "PS_STYLE_MASK 15\0"
	.byte	0x1
	.uleb128 0x237
	.ascii "PS_ENDCAP_MASK 3840\0"
	.byte	0x1
	.uleb128 0x238
	.ascii "PS_TYPE_MASK 983040\0"
	.byte	0x1
	.uleb128 0x239
	.ascii "ALTERNATE 1\0"
	.byte	0x1
	.uleb128 0x23a
	.ascii "WINDING 2\0"
	.byte	0x1
	.uleb128 0x23b
	.ascii "DC_BINNAMES 12\0"
	.byte	0x1
	.uleb128 0x23c
	.ascii "DC_BINS 6\0"
	.byte	0x1
	.uleb128 0x23d
	.ascii "DC_COPIES 18\0"
	.byte	0x1
	.uleb128 0x23e
	.ascii "DC_DRIVER 11\0"
	.byte	0x1
	.uleb128 0x23f
	.ascii "DC_DATATYPE_PRODUCED 21\0"
	.byte	0x1
	.uleb128 0x240
	.ascii "DC_DUPLEX 7\0"
	.byte	0x1
	.uleb128 0x241
	.ascii "DC_EMF_COMPLIANT 20\0"
	.byte	0x1
	.uleb128 0x242
	.ascii "DC_ENUMRESOLUTIONS 13\0"
	.byte	0x1
	.uleb128 0x243
	.ascii "DC_EXTRA 9\0"
	.byte	0x1
	.uleb128 0x244
	.ascii "DC_FIELDS 1\0"
	.byte	0x1
	.uleb128 0x245
	.ascii "DC_FILEDEPENDENCIES 14\0"
	.byte	0x1
	.uleb128 0x246
	.ascii "DC_MAXEXTENT 5\0"
	.byte	0x1
	.uleb128 0x247
	.ascii "DC_MINEXTENT 4\0"
	.byte	0x1
	.uleb128 0x248
	.ascii "DC_ORIENTATION 17\0"
	.byte	0x1
	.uleb128 0x249
	.ascii "DC_PAPERNAMES 16\0"
	.byte	0x1
	.uleb128 0x24a
	.ascii "DC_PAPERS 2\0"
	.byte	0x1
	.uleb128 0x24b
	.ascii "DC_PAPERSIZE 3\0"
	.byte	0x1
	.uleb128 0x24c
	.ascii "DC_SIZE 8\0"
	.byte	0x1
	.uleb128 0x24d
	.ascii "DC_TRUETYPE 15\0"
	.byte	0x1
	.uleb128 0x24e
	.ascii "DCTT_BITMAP 1\0"
	.byte	0x1
	.uleb128 0x24f
	.ascii "DCTT_DOWNLOAD 2\0"
	.byte	0x1
	.uleb128 0x250
	.ascii "DCTT_SUBDEV 4\0"
	.byte	0x1
	.uleb128 0x251
	.ascii "DCTT_DOWNLOAD_OUTLINE 8\0"
	.byte	0x1
	.uleb128 0x252
	.ascii "DC_VERSION 10\0"
	.byte	0x1
	.uleb128 0x253
	.ascii "DC_BINADJUST 19\0"
	.byte	0x1
	.uleb128 0x254
	.ascii "DC_EMF_COMPLIANT 20\0"
	.byte	0x1
	.uleb128 0x255
	.ascii "DC_DATATYPE_PRODUCED 21\0"
	.byte	0x1
	.uleb128 0x256
	.ascii "DC_MANUFACTURER 23\0"
	.byte	0x1
	.uleb128 0x257
	.ascii "DC_MODEL 24\0"
	.byte	0x1
	.uleb128 0x259
	.ascii "DCBA_FACEUPNONE 0\0"
	.byte	0x1
	.uleb128 0x25a
	.ascii "DCBA_FACEUPCENTER 1\0"
	.byte	0x1
	.uleb128 0x25b
	.ascii "DCBA_FACEUPLEFT 2\0"
	.byte	0x1
	.uleb128 0x25c
	.ascii "DCBA_FACEUPRIGHT 3\0"
	.byte	0x1
	.uleb128 0x25d
	.ascii "DCBA_FACEDOWNNONE 256\0"
	.byte	0x1
	.uleb128 0x25e
	.ascii "DCBA_FACEDOWNCENTER 257\0"
	.byte	0x1
	.uleb128 0x25f
	.ascii "DCBA_FACEDOWNLEFT 258\0"
	.byte	0x1
	.uleb128 0x260
	.ascii "DCBA_FACEDOWNRIGHT 259\0"
	.byte	0x1
	.uleb128 0x261
	.ascii "FLOODFILLBORDER 0\0"
	.byte	0x1
	.uleb128 0x262
	.ascii "FLOODFILLSURFACE 1\0"
	.byte	0x1
	.uleb128 0x263
	.ascii "ETO_CLIPPED 0x0004\0"
	.byte	0x1
	.uleb128 0x264
	.ascii "ETO_GLYPH_INDEX 0x0010\0"
	.byte	0x1
	.uleb128 0x265
	.ascii "ETO_OPAQUE 0x0002\0"
	.byte	0x1
	.uleb128 0x266
	.ascii "ETO_NUMERICSLATIN 0x0800\0"
	.byte	0x1
	.uleb128 0x267
	.ascii "ETO_NUMERICSLOCAL 0x0400\0"
	.byte	0x1
	.uleb128 0x268
	.ascii "ETO_RTLREADING 0x0080\0"
	.byte	0x1
	.uleb128 0x26a
	.ascii "GDICOMMENT_WINDOWS_METAFILE (-2147483647)\0"
	.byte	0x1
	.uleb128 0x26b
	.ascii "GDICOMMENT_BEGINGROUP 2\0"
	.byte	0x1
	.uleb128 0x26c
	.ascii "GDICOMMENT_ENDGROUP 3\0"
	.byte	0x1
	.uleb128 0x26d
	.ascii "GDICOMMENT_MULTIFORMATS 1073741828\0"
	.byte	0x1
	.uleb128 0x26e
	.ascii "GDICOMMENT_IDENTIFIER 1128875079\0"
	.byte	0x1
	.uleb128 0x26f
	.ascii "AD_COUNTERCLOCKWISE 1\0"
	.byte	0x1
	.uleb128 0x270
	.ascii "AD_CLOCKWISE 2\0"
	.byte	0x1
	.uleb128 0x271
	.ascii "RDH_RECTANGLES 1\0"
	.byte	0x1
	.uleb128 0x272
	.ascii "GCPCLASS_LATIN 1\0"
	.byte	0x1
	.uleb128 0x273
	.ascii "GCPCLASS_HEBREW 2\0"
	.byte	0x1
	.uleb128 0x274
	.ascii "GCPCLASS_ARABIC 2\0"
	.byte	0x1
	.uleb128 0x275
	.ascii "GCPCLASS_NEUTRAL 3\0"
	.byte	0x1
	.uleb128 0x276
	.ascii "GCPCLASS_LOCALNUMBER 4\0"
	.byte	0x1
	.uleb128 0x277
	.ascii "GCPCLASS_LATINNUMBER 5\0"
	.byte	0x1
	.uleb128 0x278
	.ascii "GCPCLASS_LATINNUMERICTERMINATOR 6\0"
	.byte	0x1
	.uleb128 0x279
	.ascii "GCPCLASS_LATINNUMERICSEPARATOR 7\0"
	.byte	0x1
	.uleb128 0x27a
	.ascii "GCPCLASS_NUMERICSEPARATOR 8\0"
	.byte	0x1
	.uleb128 0x27b
	.ascii "GCPCLASS_PREBOUNDLTR 128\0"
	.byte	0x1
	.uleb128 0x27c
	.ascii "GCPCLASS_PREBOUNDRTL 64\0"
	.byte	0x1
	.uleb128 0x27d
	.ascii "GCPCLASS_POSTBOUNDLTR 32\0"
	.byte	0x1
	.uleb128 0x27e
	.ascii "GCPCLASS_POSTBOUNDRTL 16\0"
	.byte	0x1
	.uleb128 0x27f
	.ascii "GCPGLYPH_LINKBEFORE 0x8000\0"
	.byte	0x1
	.uleb128 0x280
	.ascii "GCPGLYPH_LINKAFTER 0x4000\0"
	.byte	0x1
	.uleb128 0x281
	.ascii "DCB_DISABLE 8\0"
	.byte	0x1
	.uleb128 0x282
	.ascii "DCB_ENABLE 4\0"
	.byte	0x1
	.uleb128 0x283
	.ascii "DCB_RESET 1\0"
	.byte	0x1
	.uleb128 0x284
	.ascii "DCB_SET 3\0"
	.byte	0x1
	.uleb128 0x285
	.ascii "DCB_ACCUMULATE 2\0"
	.byte	0x1
	.uleb128 0x286
	.ascii "DCB_DIRTY 2\0"
	.byte	0x1
	.uleb128 0x287
	.ascii "OBJ_BRUSH 2\0"
	.byte	0x1
	.uleb128 0x288
	.ascii "OBJ_PEN 1\0"
	.byte	0x1
	.uleb128 0x289
	.ascii "OBJ_PAL 5\0"
	.byte	0x1
	.uleb128 0x28a
	.ascii "OBJ_FONT 6\0"
	.byte	0x1
	.uleb128 0x28b
	.ascii "OBJ_BITMAP 7\0"
	.byte	0x1
	.uleb128 0x28c
	.ascii "OBJ_EXTPEN 11\0"
	.byte	0x1
	.uleb128 0x28d
	.ascii "OBJ_REGION 8\0"
	.byte	0x1
	.uleb128 0x28e
	.ascii "OBJ_DC 3\0"
	.byte	0x1
	.uleb128 0x28f
	.ascii "OBJ_MEMDC 10\0"
	.byte	0x1
	.uleb128 0x290
	.ascii "OBJ_METAFILE 9\0"
	.byte	0x1
	.uleb128 0x291
	.ascii "OBJ_METADC 4\0"
	.byte	0x1
	.uleb128 0x292
	.ascii "OBJ_ENHMETAFILE 13\0"
	.byte	0x1
	.uleb128 0x293
	.ascii "OBJ_ENHMETADC 12\0"
	.byte	0x1
	.uleb128 0x294
	.ascii "DRIVERVERSION 0\0"
	.byte	0x1
	.uleb128 0x295
	.ascii "TECHNOLOGY 2\0"
	.byte	0x1
	.uleb128 0x296
	.ascii "DT_PLOTTER 0\0"
	.byte	0x1
	.uleb128 0x297
	.ascii "DT_RASDISPLAY 1\0"
	.byte	0x1
	.uleb128 0x298
	.ascii "DT_RASPRINTER 2\0"
	.byte	0x1
	.uleb128 0x299
	.ascii "DT_RASCAMERA 3\0"
	.byte	0x1
	.uleb128 0x29a
	.ascii "DT_CHARSTREAM 4\0"
	.byte	0x1
	.uleb128 0x29b
	.ascii "DT_METAFILE 5\0"
	.byte	0x1
	.uleb128 0x29c
	.ascii "DT_DISPFILE 6\0"
	.byte	0x1
	.uleb128 0x29d
	.ascii "HORZSIZE 4\0"
	.byte	0x1
	.uleb128 0x29e
	.ascii "VERTSIZE 6\0"
	.byte	0x1
	.uleb128 0x29f
	.ascii "HORZRES 8\0"
	.byte	0x1
	.uleb128 0x2a0
	.ascii "VERTRES 10\0"
	.byte	0x1
	.uleb128 0x2a1
	.ascii "LOGPIXELSX 88\0"
	.byte	0x1
	.uleb128 0x2a2
	.ascii "LOGPIXELSY 90\0"
	.byte	0x1
	.uleb128 0x2a3
	.ascii "BITSPIXEL 12\0"
	.byte	0x1
	.uleb128 0x2a4
	.ascii "PLANES 14\0"
	.byte	0x1
	.uleb128 0x2a5
	.ascii "NUMBRUSHES 16\0"
	.byte	0x1
	.uleb128 0x2a6
	.ascii "NUMPENS 18\0"
	.byte	0x1
	.uleb128 0x2a7
	.ascii "NUMFONTS 22\0"
	.byte	0x1
	.uleb128 0x2a8
	.ascii "NUMCOLORS 24\0"
	.byte	0x1
	.uleb128 0x2a9
	.ascii "NUMMARKERS 20\0"
	.byte	0x1
	.uleb128 0x2aa
	.ascii "ASPECTX 40\0"
	.byte	0x1
	.uleb128 0x2ab
	.ascii "ASPECTY 42\0"
	.byte	0x1
	.uleb128 0x2ac
	.ascii "ASPECTXY 44\0"
	.byte	0x1
	.uleb128 0x2ad
	.ascii "PDEVICESIZE 26\0"
	.byte	0x1
	.uleb128 0x2ae
	.ascii "CLIPCAPS 36\0"
	.byte	0x1
	.uleb128 0x2af
	.ascii "SIZEPALETTE 104\0"
	.byte	0x1
	.uleb128 0x2b0
	.ascii "NUMRESERVED 106\0"
	.byte	0x1
	.uleb128 0x2b1
	.ascii "COLORRES 108\0"
	.byte	0x1
	.uleb128 0x2b2
	.ascii "PHYSICALWIDTH 110\0"
	.byte	0x1
	.uleb128 0x2b3
	.ascii "PHYSICALHEIGHT 111\0"
	.byte	0x1
	.uleb128 0x2b4
	.ascii "PHYSICALOFFSETX 112\0"
	.byte	0x1
	.uleb128 0x2b5
	.ascii "PHYSICALOFFSETY 113\0"
	.byte	0x1
	.uleb128 0x2b6
	.ascii "SCALINGFACTORX 114\0"
	.byte	0x1
	.uleb128 0x2b7
	.ascii "SCALINGFACTORY 115\0"
	.byte	0x1
	.uleb128 0x2b8
	.ascii "VREFRESH 116\0"
	.byte	0x1
	.uleb128 0x2b9
	.ascii "DESKTOPHORZRES 118\0"
	.byte	0x1
	.uleb128 0x2ba
	.ascii "DESKTOPVERTRES 117\0"
	.byte	0x1
	.uleb128 0x2bb
	.ascii "BLTALIGNMENT 119\0"
	.byte	0x1
	.uleb128 0x2bd
	.ascii "RASTERCAPS 38\0"
	.byte	0x1
	.uleb128 0x2be
	.ascii "RC_BANDING 2\0"
	.byte	0x1
	.uleb128 0x2bf
	.ascii "RC_BITBLT 1\0"
	.byte	0x1
	.uleb128 0x2c0
	.ascii "RC_BITMAP64 8\0"
	.byte	0x1
	.uleb128 0x2c1
	.ascii "RC_DI_BITMAP 128\0"
	.byte	0x1
	.uleb128 0x2c2
	.ascii "RC_DIBTODEV 512\0"
	.byte	0x1
	.uleb128 0x2c3
	.ascii "RC_FLOODFILL 4096\0"
	.byte	0x1
	.uleb128 0x2c4
	.ascii "RC_GDI20_OUTPUT 16\0"
	.byte	0x1
	.uleb128 0x2c5
	.ascii "RC_PALETTE 256\0"
	.byte	0x1
	.uleb128 0x2c6
	.ascii "RC_SCALING 4\0"
	.byte	0x1
	.uleb128 0x2c7
	.ascii "RC_STRETCHBLT 2048\0"
	.byte	0x1
	.uleb128 0x2c8
	.ascii "RC_STRETCHDIB 8192\0"
	.byte	0x1
	.uleb128 0x2c9
	.ascii "RC_DEVBITS 0x8000\0"
	.byte	0x1
	.uleb128 0x2ca
	.ascii "RC_OP_DX_OUTPUT 0x4000\0"
	.byte	0x1
	.uleb128 0x2cb
	.ascii "CURVECAPS 28\0"
	.byte	0x1
	.uleb128 0x2cc
	.ascii "CC_NONE 0\0"
	.byte	0x1
	.uleb128 0x2cd
	.ascii "CC_CIRCLES 1\0"
	.byte	0x1
	.uleb128 0x2ce
	.ascii "CC_PIE 2\0"
	.byte	0x1
	.uleb128 0x2cf
	.ascii "CC_CHORD 4\0"
	.byte	0x1
	.uleb128 0x2d0
	.ascii "CC_ELLIPSES 8\0"
	.byte	0x1
	.uleb128 0x2d1
	.ascii "CC_WIDE 16\0"
	.byte	0x1
	.uleb128 0x2d2
	.ascii "CC_STYLED 32\0"
	.byte	0x1
	.uleb128 0x2d3
	.ascii "CC_WIDESTYLED 64\0"
	.byte	0x1
	.uleb128 0x2d4
	.ascii "CC_INTERIORS 128\0"
	.byte	0x1
	.uleb128 0x2d5
	.ascii "CC_ROUNDRECT 256\0"
	.byte	0x1
	.uleb128 0x2d6
	.ascii "LINECAPS 30\0"
	.byte	0x1
	.uleb128 0x2d7
	.ascii "LC_NONE 0\0"
	.byte	0x1
	.uleb128 0x2d8
	.ascii "LC_POLYLINE 2\0"
	.byte	0x1
	.uleb128 0x2d9
	.ascii "LC_MARKER 4\0"
	.byte	0x1
	.uleb128 0x2da
	.ascii "LC_POLYMARKER 8\0"
	.byte	0x1
	.uleb128 0x2db
	.ascii "LC_WIDE 16\0"
	.byte	0x1
	.uleb128 0x2dc
	.ascii "LC_STYLED 32\0"
	.byte	0x1
	.uleb128 0x2dd
	.ascii "LC_WIDESTYLED 64\0"
	.byte	0x1
	.uleb128 0x2de
	.ascii "LC_INTERIORS 128\0"
	.byte	0x1
	.uleb128 0x2df
	.ascii "POLYGONALCAPS 32\0"
	.byte	0x1
	.uleb128 0x2e0
	.ascii "RC_BANDING 2\0"
	.byte	0x1
	.uleb128 0x2e1
	.ascii "RC_BIGFONT 1024\0"
	.byte	0x1
	.uleb128 0x2e2
	.ascii "RC_BITBLT 1\0"
	.byte	0x1
	.uleb128 0x2e3
	.ascii "RC_BITMAP64 8\0"
	.byte	0x1
	.uleb128 0x2e4
	.ascii "RC_DEVBITS 0x8000\0"
	.byte	0x1
	.uleb128 0x2e5
	.ascii "RC_DI_BITMAP 128\0"
	.byte	0x1
	.uleb128 0x2e6
	.ascii "RC_GDI20_OUTPUT 16\0"
	.byte	0x1
	.uleb128 0x2e7
	.ascii "RC_GDI20_STATE 32\0"
	.byte	0x1
	.uleb128 0x2e8
	.ascii "RC_NONE 0\0"
	.byte	0x1
	.uleb128 0x2e9
	.ascii "RC_OP_DX_OUTPUT 0x4000\0"
	.byte	0x1
	.uleb128 0x2ea
	.ascii "RC_PALETTE 256\0"
	.byte	0x1
	.uleb128 0x2eb
	.ascii "RC_SAVEBITMAP 64\0"
	.byte	0x1
	.uleb128 0x2ec
	.ascii "RC_SCALING 4\0"
	.byte	0x1
	.uleb128 0x2ed
	.ascii "PC_NONE 0\0"
	.byte	0x1
	.uleb128 0x2ee
	.ascii "PC_POLYGON 1\0"
	.byte	0x1
	.uleb128 0x2ef
	.ascii "PC_POLYPOLYGON 256\0"
	.byte	0x1
	.uleb128 0x2f0
	.ascii "PC_PATHS 512\0"
	.byte	0x1
	.uleb128 0x2f1
	.ascii "PC_RECTANGLE 2\0"
	.byte	0x1
	.uleb128 0x2f2
	.ascii "PC_WINDPOLYGON 4\0"
	.byte	0x1
	.uleb128 0x2f3
	.ascii "PC_SCANLINE 8\0"
	.byte	0x1
	.uleb128 0x2f4
	.ascii "PC_TRAPEZOID 4\0"
	.byte	0x1
	.uleb128 0x2f5
	.ascii "PC_WIDE 16\0"
	.byte	0x1
	.uleb128 0x2f6
	.ascii "PC_STYLED 32\0"
	.byte	0x1
	.uleb128 0x2f7
	.ascii "PC_WIDESTYLED 64\0"
	.byte	0x1
	.uleb128 0x2f8
	.ascii "PC_INTERIORS 128\0"
	.byte	0x1
	.uleb128 0x2f9
	.ascii "PC_PATHS 512\0"
	.byte	0x1
	.uleb128 0x2fa
	.ascii "TEXTCAPS 34\0"
	.byte	0x1
	.uleb128 0x2fb
	.ascii "TC_OP_CHARACTER 1\0"
	.byte	0x1
	.uleb128 0x2fc
	.ascii "TC_OP_STROKE 2\0"
	.byte	0x1
	.uleb128 0x2fd
	.ascii "TC_CP_STROKE 4\0"
	.byte	0x1
	.uleb128 0x2fe
	.ascii "TC_CR_90 8\0"
	.byte	0x1
	.uleb128 0x2ff
	.ascii "TC_CR_ANY 16\0"
	.byte	0x1
	.uleb128 0x300
	.ascii "TC_SF_X_YINDEP 32\0"
	.byte	0x1
	.uleb128 0x301
	.ascii "TC_SA_DOUBLE 64\0"
	.byte	0x1
	.uleb128 0x302
	.ascii "TC_SA_INTEGER 128\0"
	.byte	0x1
	.uleb128 0x303
	.ascii "TC_SA_CONTIN 256\0"
	.byte	0x1
	.uleb128 0x304
	.ascii "TC_EA_DOUBLE 512\0"
	.byte	0x1
	.uleb128 0x305
	.ascii "TC_IA_ABLE 1024\0"
	.byte	0x1
	.uleb128 0x306
	.ascii "TC_UA_ABLE 2048\0"
	.byte	0x1
	.uleb128 0x307
	.ascii "TC_SO_ABLE 4096\0"
	.byte	0x1
	.uleb128 0x308
	.ascii "TC_RA_ABLE 8192\0"
	.byte	0x1
	.uleb128 0x309
	.ascii "TC_VA_ABLE 16384\0"
	.byte	0x1
	.uleb128 0x30a
	.ascii "TC_RESERVED 32768\0"
	.byte	0x1
	.uleb128 0x30b
	.ascii "TC_SCROLLBLT 65536\0"
	.byte	0x1
	.uleb128 0x30c
	.ascii "GCP_DBCS 1\0"
	.byte	0x1
	.uleb128 0x30d
	.ascii "GCP_ERROR 0x8000\0"
	.byte	0x1
	.uleb128 0x30e
	.ascii "GCP_CLASSIN 0x80000\0"
	.byte	0x1
	.uleb128 0x30f
	.ascii "GCP_DIACRITIC 256\0"
	.byte	0x1
	.uleb128 0x310
	.ascii "GCP_DISPLAYZWG 0x400000\0"
	.byte	0x1
	.uleb128 0x311
	.ascii "GCP_GLYPHSHAPE 16\0"
	.byte	0x1
	.uleb128 0x312
	.ascii "GCP_JUSTIFY 0x10000\0"
	.byte	0x1
	.uleb128 0x313
	.ascii "GCP_JUSTIFYIN 0x200000\0"
	.byte	0x1
	.uleb128 0x314
	.ascii "GCP_KASHIDA 1024\0"
	.byte	0x1
	.uleb128 0x315
	.ascii "GCP_LIGATE 32\0"
	.byte	0x1
	.uleb128 0x316
	.ascii "GCP_MAXEXTENT 0x100000\0"
	.byte	0x1
	.uleb128 0x317
	.ascii "GCP_NEUTRALOVERRIDE 0x2000000\0"
	.byte	0x1
	.uleb128 0x318
	.ascii "GCP_NUMERICOVERRIDE 0x1000000\0"
	.byte	0x1
	.uleb128 0x319
	.ascii "GCP_NUMERICSLATIN 0x4000000\0"
	.byte	0x1
	.uleb128 0x31a
	.ascii "GCP_NUMERICSLOCAL 0x8000000\0"
	.byte	0x1
	.uleb128 0x31b
	.ascii "GCP_REORDER 2\0"
	.byte	0x1
	.uleb128 0x31c
	.ascii "GCP_SYMSWAPOFF 0x800000\0"
	.byte	0x1
	.uleb128 0x31d
	.ascii "GCP_USEKERNING 8\0"
	.byte	0x1
	.uleb128 0x31e
	.ascii "FLI_GLYPHS 0x40000\0"
	.byte	0x1
	.uleb128 0x31f
	.ascii "FLI_MASK 0x103B\0"
	.byte	0x1
	.uleb128 0x320
	.ascii "GGO_METRICS 0\0"
	.byte	0x1
	.uleb128 0x321
	.ascii "GGO_BITMAP 1\0"
	.byte	0x1
	.uleb128 0x322
	.ascii "GGO_NATIVE 2\0"
	.byte	0x1
	.uleb128 0x323
	.ascii "GGO_BEZIER 3\0"
	.byte	0x1
	.uleb128 0x324
	.ascii "GGO_GRAY2_BITMAP 4\0"
	.byte	0x1
	.uleb128 0x325
	.ascii "GGO_GRAY4_BITMAP 5\0"
	.byte	0x1
	.uleb128 0x326
	.ascii "GGO_GRAY8_BITMAP 6\0"
	.byte	0x1
	.uleb128 0x327
	.ascii "GGO_GLYPH_INDEX 128\0"
	.byte	0x1
	.uleb128 0x329
	.ascii "GM_COMPATIBLE 1\0"
	.byte	0x1
	.uleb128 0x32a
	.ascii "GM_ADVANCED 2\0"
	.byte	0x1
	.uleb128 0x32b
	.ascii "MM_ANISOTROPIC 8\0"
	.byte	0x1
	.uleb128 0x32c
	.ascii "MM_HIENGLISH 5\0"
	.byte	0x1
	.uleb128 0x32d
	.ascii "MM_HIMETRIC 3\0"
	.byte	0x1
	.uleb128 0x32e
	.ascii "MM_ISOTROPIC 7\0"
	.byte	0x1
	.uleb128 0x32f
	.ascii "MM_LOENGLISH 4\0"
	.byte	0x1
	.uleb128 0x330
	.ascii "MM_LOMETRIC 2\0"
	.byte	0x1
	.uleb128 0x331
	.ascii "MM_TEXT 1\0"
	.byte	0x1
	.uleb128 0x332
	.ascii "MM_TWIPS 6\0"
	.byte	0x1
	.uleb128 0x333
	.ascii "MM_MAX_FIXEDSCALE MM_TWIPS\0"
	.byte	0x1
	.uleb128 0x334
	.ascii "ABSOLUTE 1\0"
	.byte	0x1
	.uleb128 0x335
	.ascii "RELATIVE 2\0"
	.byte	0x1
	.uleb128 0x336
	.ascii "PC_EXPLICIT 2\0"
	.byte	0x1
	.uleb128 0x337
	.ascii "PC_NOCOLLAPSE 4\0"
	.byte	0x1
	.uleb128 0x338
	.ascii "PC_RESERVED 1\0"
	.byte	0x1
	.uleb128 0x339
	.ascii "CLR_NONE 0xFFFFFFFF\0"
	.byte	0x1
	.uleb128 0x33a
	.ascii "CLR_INVALID CLR_NONE\0"
	.byte	0x1
	.uleb128 0x33b
	.ascii "CLR_DEFAULT 0xFF000000\0"
	.byte	0x1
	.uleb128 0x33c
	.ascii "PT_MOVETO 6\0"
	.byte	0x1
	.uleb128 0x33d
	.ascii "PT_LINETO 2\0"
	.byte	0x1
	.uleb128 0x33e
	.ascii "PT_BEZIERTO 4\0"
	.byte	0x1
	.uleb128 0x33f
	.ascii "PT_CLOSEFIGURE 1\0"
	.byte	0x1
	.uleb128 0x340
	.ascii "TT_AVAILABLE 1\0"
	.byte	0x1
	.uleb128 0x341
	.ascii "TT_ENABLED 2\0"
	.byte	0x1
	.uleb128 0x342
	.ascii "BLACK_BRUSH 4\0"
	.byte	0x1
	.uleb128 0x343
	.ascii "DKGRAY_BRUSH 3\0"
	.byte	0x1
	.uleb128 0x344
	.ascii "GRAY_BRUSH 2\0"
	.byte	0x1
	.uleb128 0x345
	.ascii "HOLLOW_BRUSH 5\0"
	.byte	0x1
	.uleb128 0x346
	.ascii "LTGRAY_BRUSH 1\0"
	.byte	0x1
	.uleb128 0x347
	.ascii "NULL_BRUSH 5\0"
	.byte	0x1
	.uleb128 0x348
	.ascii "WHITE_BRUSH 0\0"
	.byte	0x1
	.uleb128 0x349
	.ascii "BLACK_PEN 7\0"
	.byte	0x1
	.uleb128 0x34a
	.ascii "NULL_PEN 8\0"
	.byte	0x1
	.uleb128 0x34b
	.ascii "WHITE_PEN 6\0"
	.byte	0x1
	.uleb128 0x34c
	.ascii "ANSI_FIXED_FONT 11\0"
	.byte	0x1
	.uleb128 0x34d
	.ascii "ANSI_VAR_FONT 12\0"
	.byte	0x1
	.uleb128 0x34e
	.ascii "DEVICE_DEFAULT_FONT 14\0"
	.byte	0x1
	.uleb128 0x34f
	.ascii "DEFAULT_GUI_FONT 17\0"
	.byte	0x1
	.uleb128 0x350
	.ascii "OEM_FIXED_FONT 10\0"
	.byte	0x1
	.uleb128 0x351
	.ascii "SYSTEM_FONT 13\0"
	.byte	0x1
	.uleb128 0x352
	.ascii "SYSTEM_FIXED_FONT 16\0"
	.byte	0x1
	.uleb128 0x353
	.ascii "DEFAULT_PALETTE 15\0"
	.byte	0x1
	.uleb128 0x355
	.ascii "SYSPAL_ERROR 0\0"
	.byte	0x1
	.uleb128 0x356
	.ascii "SYSPAL_STATIC 1\0"
	.byte	0x1
	.uleb128 0x357
	.ascii "SYSPAL_NOSTATIC 2\0"
	.byte	0x1
	.uleb128 0x358
	.ascii "SYSPAL_NOSTATIC256 3\0"
	.byte	0x1
	.uleb128 0x359
	.ascii "TA_BASELINE 24\0"
	.byte	0x1
	.uleb128 0x35a
	.ascii "TA_BOTTOM 8\0"
	.byte	0x1
	.uleb128 0x35b
	.ascii "TA_TOP 0\0"
	.byte	0x1
	.uleb128 0x35c
	.ascii "TA_CENTER 6\0"
	.byte	0x1
	.uleb128 0x35d
	.ascii "TA_LEFT 0\0"
	.byte	0x1
	.uleb128 0x35e
	.ascii "TA_RIGHT 2\0"
	.byte	0x1
	.uleb128 0x35f
	.ascii "TA_RTLREADING 256\0"
	.byte	0x1
	.uleb128 0x360
	.ascii "TA_NOUPDATECP 0\0"
	.byte	0x1
	.uleb128 0x361
	.ascii "TA_UPDATECP 1\0"
	.byte	0x1
	.uleb128 0x363
	.ascii "TA_MASK (TA_BASELINE+TA_CENTER+TA_UPDATECP+TA_RTLREADING)\0"
	.byte	0x1
	.uleb128 0x365
	.ascii "VTA_BASELINE 24\0"
	.byte	0x1
	.uleb128 0x366
	.ascii "VTA_CENTER 6\0"
	.byte	0x1
	.uleb128 0x367
	.ascii "VTA_LEFT TA_BOTTOM\0"
	.byte	0x1
	.uleb128 0x368
	.ascii "VTA_RIGHT TA_TOP\0"
	.byte	0x1
	.uleb128 0x369
	.ascii "VTA_BOTTOM TA_RIGHT\0"
	.byte	0x1
	.uleb128 0x36a
	.ascii "VTA_TOP TA_LEFT\0"
	.byte	0x1
	.uleb128 0x36b
	.ascii "MWT_IDENTITY 1\0"
	.byte	0x1
	.uleb128 0x36c
	.ascii "MWT_LEFTMULTIPLY 2\0"
	.byte	0x1
	.uleb128 0x36d
	.ascii "MWT_RIGHTMULTIPLY 3\0"
	.byte	0x1
	.uleb128 0x36e
	.ascii "OPAQUE 2\0"
	.byte	0x1
	.uleb128 0x36f
	.ascii "TRANSPARENT 1\0"
	.byte	0x1
	.uleb128 0x370
	.ascii "BLACKONWHITE 1\0"
	.byte	0x1
	.uleb128 0x371
	.ascii "WHITEONBLACK 2\0"
	.byte	0x1
	.uleb128 0x372
	.ascii "COLORONCOLOR 3\0"
	.byte	0x1
	.uleb128 0x373
	.ascii "HALFTONE 4\0"
	.byte	0x1
	.uleb128 0x374
	.ascii "MAXSTRETCHBLTMODE 4\0"
	.byte	0x1
	.uleb128 0x375
	.ascii "STRETCH_ANDSCANS 1\0"
	.byte	0x1
	.uleb128 0x376
	.ascii "STRETCH_DELETESCANS 3\0"
	.byte	0x1
	.uleb128 0x377
	.ascii "STRETCH_HALFTONE 4\0"
	.byte	0x1
	.uleb128 0x378
	.ascii "STRETCH_ORSCANS 2\0"
	.byte	0x1
	.uleb128 0x379
	.ascii "TCI_SRCCHARSET 1\0"
	.byte	0x1
	.uleb128 0x37a
	.ascii "TCI_SRCCODEPAGE 2\0"
	.byte	0x1
	.uleb128 0x37b
	.ascii "TCI_SRCFONTSIG 3\0"
	.byte	0x1
	.uleb128 0x37c
	.ascii "ICM_ON 2\0"
	.byte	0x1
	.uleb128 0x37d
	.ascii "ICM_OFF 1\0"
	.byte	0x1
	.uleb128 0x37e
	.ascii "ICM_QUERY 3\0"
	.byte	0x1
	.uleb128 0x37f
	.ascii "NEWFRAME 1\0"
	.byte	0x1
	.uleb128 0x380
	.ascii "ABORTDOC 2\0"
	.byte	0x1
	.uleb128 0x381
	.ascii "NEXTBAND 3\0"
	.byte	0x1
	.uleb128 0x382
	.ascii "SETCOLORTABLE 4\0"
	.byte	0x1
	.uleb128 0x383
	.ascii "GETCOLORTABLE 5\0"
	.byte	0x1
	.uleb128 0x384
	.ascii "FLUSHOUTPUT 6\0"
	.byte	0x1
	.uleb128 0x385
	.ascii "DRAFTMODE 7\0"
	.byte	0x1
	.uleb128 0x386
	.ascii "QUERYESCSUPPORT 8\0"
	.byte	0x1
	.uleb128 0x387
	.ascii "SETABORTPROC 9\0"
	.byte	0x1
	.uleb128 0x388
	.ascii "STARTDOC 10\0"
	.byte	0x1
	.uleb128 0x389
	.ascii "ENDDOC 11\0"
	.byte	0x1
	.uleb128 0x38a
	.ascii "GETPHYSPAGESIZE 12\0"
	.byte	0x1
	.uleb128 0x38b
	.ascii "GETPRINTINGOFFSET 13\0"
	.byte	0x1
	.uleb128 0x38c
	.ascii "GETSCALINGFACTOR 14\0"
	.byte	0x1
	.uleb128 0x38d
	.ascii "MFCOMMENT 15\0"
	.byte	0x1
	.uleb128 0x38e
	.ascii "GETPENWIDTH 16\0"
	.byte	0x1
	.uleb128 0x38f
	.ascii "SETCOPYCOUNT 17\0"
	.byte	0x1
	.uleb128 0x390
	.ascii "SELECTPAPERSOURCE 18\0"
	.byte	0x1
	.uleb128 0x391
	.ascii "DEVICEDATA 19\0"
	.byte	0x1
	.uleb128 0x392
	.ascii "PASSTHROUGH 19\0"
	.byte	0x1
	.uleb128 0x393
	.ascii "GETTECHNOLGY 20\0"
	.byte	0x1
	.uleb128 0x394
	.ascii "GETTECHNOLOGY 20\0"
	.byte	0x1
	.uleb128 0x395
	.ascii "SETLINECAP 21\0"
	.byte	0x1
	.uleb128 0x396
	.ascii "SETLINEJOIN 22\0"
	.byte	0x1
	.uleb128 0x397
	.ascii "SETMITERLIMIT 23\0"
	.byte	0x1
	.uleb128 0x398
	.ascii "BANDINFO 24\0"
	.byte	0x1
	.uleb128 0x399
	.ascii "DRAWPATTERNRECT 25\0"
	.byte	0x1
	.uleb128 0x39a
	.ascii "GETVECTORPENSIZE 26\0"
	.byte	0x1
	.uleb128 0x39b
	.ascii "GETVECTORBRUSHSIZE 27\0"
	.byte	0x1
	.uleb128 0x39c
	.ascii "ENABLEDUPLEX 28\0"
	.byte	0x1
	.uleb128 0x39d
	.ascii "GETSETPAPERBINS 29\0"
	.byte	0x1
	.uleb128 0x39e
	.ascii "GETSETPRINTORIENT 30\0"
	.byte	0x1
	.uleb128 0x39f
	.ascii "ENUMPAPERBINS 31\0"
	.byte	0x1
	.uleb128 0x3a0
	.ascii "SETDIBSCALING 32\0"
	.byte	0x1
	.uleb128 0x3a1
	.ascii "EPSPRINTING 33\0"
	.byte	0x1
	.uleb128 0x3a2
	.ascii "ENUMPAPERMETRICS 34\0"
	.byte	0x1
	.uleb128 0x3a3
	.ascii "GETSETPAPERMETRICS 35\0"
	.byte	0x1
	.uleb128 0x3a4
	.ascii "POSTSCRIPT_DATA 37\0"
	.byte	0x1
	.uleb128 0x3a5
	.ascii "POSTSCRIPT_IGNORE 38\0"
	.byte	0x1
	.uleb128 0x3a6
	.ascii "MOUSETRAILS 39\0"
	.byte	0x1
	.uleb128 0x3a7
	.ascii "GETDEVICEUNITS 42\0"
	.byte	0x1
	.uleb128 0x3a8
	.ascii "GETEXTENDEDTEXTMETRICS 256\0"
	.byte	0x1
	.uleb128 0x3a9
	.ascii "GETEXTENTTABLE 257\0"
	.byte	0x1
	.uleb128 0x3aa
	.ascii "GETPAIRKERNTABLE 258\0"
	.byte	0x1
	.uleb128 0x3ab
	.ascii "GETTRACKKERNTABLE 259\0"
	.byte	0x1
	.uleb128 0x3ac
	.ascii "EXTTEXTOUT 512\0"
	.byte	0x1
	.uleb128 0x3ad
	.ascii "GETFACENAME 513\0"
	.byte	0x1
	.uleb128 0x3ae
	.ascii "DOWNLOADFACE 514\0"
	.byte	0x1
	.uleb128 0x3af
	.ascii "ENABLERELATIVEWIDTHS 768\0"
	.byte	0x1
	.uleb128 0x3b0
	.ascii "ENABLEPAIRKERNING 769\0"
	.byte	0x1
	.uleb128 0x3b1
	.ascii "SETKERNTRACK 770\0"
	.byte	0x1
	.uleb128 0x3b2
	.ascii "SETALLJUSTVALUES 771\0"
	.byte	0x1
	.uleb128 0x3b3
	.ascii "SETCHARSET 772\0"
	.byte	0x1
	.uleb128 0x3b4
	.ascii "STRETCHBLT 2048\0"
	.byte	0x1
	.uleb128 0x3b5
	.ascii "GETSETSCREENPARAMS 3072\0"
	.byte	0x1
	.uleb128 0x3b6
	.ascii "QUERYDIBSUPPORT 3073\0"
	.byte	0x1
	.uleb128 0x3b7
	.ascii "BEGIN_PATH 4096\0"
	.byte	0x1
	.uleb128 0x3b8
	.ascii "CLIP_TO_PATH 4097\0"
	.byte	0x1
	.uleb128 0x3b9
	.ascii "END_PATH 4098\0"
	.byte	0x1
	.uleb128 0x3ba
	.ascii "EXT_DEVICE_CAPS 4099\0"
	.byte	0x1
	.uleb128 0x3bb
	.ascii "RESTORE_CTM 4100\0"
	.byte	0x1
	.uleb128 0x3bc
	.ascii "SAVE_CTM 4101\0"
	.byte	0x1
	.uleb128 0x3bd
	.ascii "SET_ARC_DIRECTION 4102\0"
	.byte	0x1
	.uleb128 0x3be
	.ascii "SET_BACKGROUND_COLOR 4103\0"
	.byte	0x1
	.uleb128 0x3bf
	.ascii "SET_POLY_MODE 4104\0"
	.byte	0x1
	.uleb128 0x3c0
	.ascii "SET_SCREEN_ANGLE 4105\0"
	.byte	0x1
	.uleb128 0x3c1
	.ascii "SET_SPREAD 4106\0"
	.byte	0x1
	.uleb128 0x3c2
	.ascii "TRANSFORM_CTM 4107\0"
	.byte	0x1
	.uleb128 0x3c3
	.ascii "SET_CLIP_BOX 4108\0"
	.byte	0x1
	.uleb128 0x3c4
	.ascii "SET_BOUNDS 4109\0"
	.byte	0x1
	.uleb128 0x3c5
	.ascii "SET_MIRROR_MODE 4110\0"
	.byte	0x1
	.uleb128 0x3c6
	.ascii "OPENCHANNEL 4110\0"
	.byte	0x1
	.uleb128 0x3c7
	.ascii "DOWNLOADHEADER 4111\0"
	.byte	0x1
	.uleb128 0x3c8
	.ascii "CLOSECHANNEL 4112\0"
	.byte	0x1
	.uleb128 0x3c9
	.ascii "POSTSCRIPT_PASSTHROUGH 4115\0"
	.byte	0x1
	.uleb128 0x3ca
	.ascii "ENCAPSULATED_POSTSCRIPT 4116\0"
	.byte	0x1
	.uleb128 0x3cb
	.ascii "QDI_SETDIBITS 1\0"
	.byte	0x1
	.uleb128 0x3cc
	.ascii "QDI_GETDIBITS 2\0"
	.byte	0x1
	.uleb128 0x3cd
	.ascii "QDI_DIBTOSCREEN 4\0"
	.byte	0x1
	.uleb128 0x3ce
	.ascii "QDI_STRETCHDIB 8\0"
	.byte	0x1
	.uleb128 0x3cf
	.ascii "SP_NOTREPORTED 0x4000\0"
	.byte	0x1
	.uleb128 0x3d0
	.ascii "PR_JOBSTATUS 0\0"
	.byte	0x1
	.uleb128 0x3d1
	.ascii "ASPECT_FILTERING 1\0"
	.byte	0x1
	.uleb128 0x3d2
	.ascii "BS_SOLID 0\0"
	.byte	0x1
	.uleb128 0x3d3
	.ascii "BS_NULL 1\0"
	.byte	0x1
	.uleb128 0x3d4
	.ascii "BS_HOLLOW 1\0"
	.byte	0x1
	.uleb128 0x3d5
	.ascii "BS_HATCHED 2\0"
	.byte	0x1
	.uleb128 0x3d6
	.ascii "BS_PATTERN 3\0"
	.byte	0x1
	.uleb128 0x3d7
	.ascii "BS_INDEXED 4\0"
	.byte	0x1
	.uleb128 0x3d8
	.ascii "BS_DIBPATTERN 5\0"
	.byte	0x1
	.uleb128 0x3d9
	.ascii "BS_DIBPATTERNPT 6\0"
	.byte	0x1
	.uleb128 0x3da
	.ascii "BS_PATTERN8X8 7\0"
	.byte	0x1
	.uleb128 0x3db
	.ascii "BS_DIBPATTERN8X8 8\0"
	.byte	0x1
	.uleb128 0x3dc
	.ascii "LCS_CALIBRATED_RGB 0\0"
	.byte	0x1
	.uleb128 0x3dd
	.ascii "LCS_DEVICE_RGB 1\0"
	.byte	0x1
	.uleb128 0x3de
	.ascii "LCS_DEVICE_CMYK 2\0"
	.byte	0x1
	.uleb128 0x3df
	.ascii "LCS_GM_BUSINESS 1\0"
	.byte	0x1
	.uleb128 0x3e0
	.ascii "LCS_GM_GRAPHICS 2\0"
	.byte	0x1
	.uleb128 0x3e1
	.ascii "LCS_GM_IMAGES 4\0"
	.byte	0x1
	.uleb128 0x3e2
	.ascii "RASTER_FONTTYPE 1\0"
	.byte	0x1
	.uleb128 0x3e3
	.ascii "DEVICE_FONTTYPE 2\0"
	.byte	0x1
	.uleb128 0x3e4
	.ascii "TRUETYPE_FONTTYPE 4\0"
	.byte	0x1
	.uleb128 0x3e5
	.ascii "DMORIENT_PORTRAIT 1\0"
	.byte	0x1
	.uleb128 0x3e6
	.ascii "DMORIENT_LANDSCAPE 2\0"
	.byte	0x1
	.uleb128 0x3e7
	.ascii "DMPAPER_FIRST 1\0"
	.byte	0x1
	.uleb128 0x3e8
	.ascii "DMPAPER_LETTER 1\0"
	.byte	0x1
	.uleb128 0x3e9
	.ascii "DMPAPER_LETTERSMALL 2\0"
	.byte	0x1
	.uleb128 0x3ea
	.ascii "DMPAPER_TABLOID 3\0"
	.byte	0x1
	.uleb128 0x3eb
	.ascii "DMPAPER_LEDGER 4\0"
	.byte	0x1
	.uleb128 0x3ec
	.ascii "DMPAPER_LEGAL 5\0"
	.byte	0x1
	.uleb128 0x3ed
	.ascii "DMPAPER_STATEMENT 6\0"
	.byte	0x1
	.uleb128 0x3ee
	.ascii "DMPAPER_EXECUTIVE 7\0"
	.byte	0x1
	.uleb128 0x3ef
	.ascii "DMPAPER_A3 8\0"
	.byte	0x1
	.uleb128 0x3f0
	.ascii "DMPAPER_A4 9\0"
	.byte	0x1
	.uleb128 0x3f1
	.ascii "DMPAPER_A4SMALL 10\0"
	.byte	0x1
	.uleb128 0x3f2
	.ascii "DMPAPER_A5 11\0"
	.byte	0x1
	.uleb128 0x3f3
	.ascii "DMPAPER_B4 12\0"
	.byte	0x1
	.uleb128 0x3f4
	.ascii "DMPAPER_B5 13\0"
	.byte	0x1
	.uleb128 0x3f5
	.ascii "DMPAPER_FOLIO 14\0"
	.byte	0x1
	.uleb128 0x3f6
	.ascii "DMPAPER_QUARTO 15\0"
	.byte	0x1
	.uleb128 0x3f7
	.ascii "DMPAPER_10X14 16\0"
	.byte	0x1
	.uleb128 0x3f8
	.ascii "DMPAPER_11X17 17\0"
	.byte	0x1
	.uleb128 0x3f9
	.ascii "DMPAPER_NOTE 18\0"
	.byte	0x1
	.uleb128 0x3fa
	.ascii "DMPAPER_ENV_9 19\0"
	.byte	0x1
	.uleb128 0x3fb
	.ascii "DMPAPER_ENV_10 20\0"
	.byte	0x1
	.uleb128 0x3fc
	.ascii "DMPAPER_ENV_11 21\0"
	.byte	0x1
	.uleb128 0x3fd
	.ascii "DMPAPER_ENV_12 22\0"
	.byte	0x1
	.uleb128 0x3fe
	.ascii "DMPAPER_ENV_14 23\0"
	.byte	0x1
	.uleb128 0x3ff
	.ascii "DMPAPER_CSHEET 24\0"
	.byte	0x1
	.uleb128 0x400
	.ascii "DMPAPER_DSHEET 25\0"
	.byte	0x1
	.uleb128 0x401
	.ascii "DMPAPER_ESHEET 26\0"
	.byte	0x1
	.uleb128 0x402
	.ascii "DMPAPER_ENV_DL 27\0"
	.byte	0x1
	.uleb128 0x403
	.ascii "DMPAPER_ENV_C5 28\0"
	.byte	0x1
	.uleb128 0x404
	.ascii "DMPAPER_ENV_C3 29\0"
	.byte	0x1
	.uleb128 0x405
	.ascii "DMPAPER_ENV_C4 30\0"
	.byte	0x1
	.uleb128 0x406
	.ascii "DMPAPER_ENV_C6 31\0"
	.byte	0x1
	.uleb128 0x407
	.ascii "DMPAPER_ENV_C65 32\0"
	.byte	0x1
	.uleb128 0x408
	.ascii "DMPAPER_ENV_B4 33\0"
	.byte	0x1
	.uleb128 0x409
	.ascii "DMPAPER_ENV_B5 34\0"
	.byte	0x1
	.uleb128 0x40a
	.ascii "DMPAPER_ENV_B6 35\0"
	.byte	0x1
	.uleb128 0x40b
	.ascii "DMPAPER_ENV_ITALY 36\0"
	.byte	0x1
	.uleb128 0x40c
	.ascii "DMPAPER_ENV_MONARCH 37\0"
	.byte	0x1
	.uleb128 0x40d
	.ascii "DMPAPER_ENV_PERSONAL 38\0"
	.byte	0x1
	.uleb128 0x40e
	.ascii "DMPAPER_FANFOLD_US 39\0"
	.byte	0x1
	.uleb128 0x40f
	.ascii "DMPAPER_FANFOLD_STD_GERMAN 40\0"
	.byte	0x1
	.uleb128 0x410
	.ascii "DMPAPER_FANFOLD_LGL_GERMAN 41\0"
	.byte	0x1
	.uleb128 0x411
	.ascii "DMPAPER_ISO_B4 42\0"
	.byte	0x1
	.uleb128 0x412
	.ascii "DMPAPER_JAPANESE_POSTCARD 43\0"
	.byte	0x1
	.uleb128 0x413
	.ascii "DMPAPER_9X11 44\0"
	.byte	0x1
	.uleb128 0x414
	.ascii "DMPAPER_10X11 45\0"
	.byte	0x1
	.uleb128 0x415
	.ascii "DMPAPER_15X11 46\0"
	.byte	0x1
	.uleb128 0x416
	.ascii "DMPAPER_ENV_INVITE 47\0"
	.byte	0x1
	.uleb128 0x417
	.ascii "DMPAPER_RESERVED_48 48\0"
	.byte	0x1
	.uleb128 0x418
	.ascii "DMPAPER_RESERVED_49 49\0"
	.byte	0x1
	.uleb128 0x419
	.ascii "DMPAPER_LETTER_EXTRA 50\0"
	.byte	0x1
	.uleb128 0x41a
	.ascii "DMPAPER_LEGAL_EXTRA 51\0"
	.byte	0x1
	.uleb128 0x41b
	.ascii "DMPAPER_TABLOID_EXTRA 52\0"
	.byte	0x1
	.uleb128 0x41c
	.ascii "DMPAPER_A4_EXTRA 53\0"
	.byte	0x1
	.uleb128 0x41d
	.ascii "DMPAPER_LETTER_TRANSVERSE 54\0"
	.byte	0x1
	.uleb128 0x41e
	.ascii "DMPAPER_A4_TRANSVERSE 55\0"
	.byte	0x1
	.uleb128 0x41f
	.ascii "DMPAPER_LETTER_EXTRA_TRANSVERSE 56\0"
	.byte	0x1
	.uleb128 0x420
	.ascii "DMPAPER_A_PLUS 57\0"
	.byte	0x1
	.uleb128 0x421
	.ascii "DMPAPER_B_PLUS 58\0"
	.byte	0x1
	.uleb128 0x422
	.ascii "DMPAPER_LETTER_PLUS 59\0"
	.byte	0x1
	.uleb128 0x423
	.ascii "DMPAPER_A4_PLUS 60\0"
	.byte	0x1
	.uleb128 0x424
	.ascii "DMPAPER_A5_TRANSVERSE 61\0"
	.byte	0x1
	.uleb128 0x425
	.ascii "DMPAPER_B5_TRANSVERSE 62\0"
	.byte	0x1
	.uleb128 0x426
	.ascii "DMPAPER_A3_EXTRA 63\0"
	.byte	0x1
	.uleb128 0x427
	.ascii "DMPAPER_A5_EXTRA 64\0"
	.byte	0x1
	.uleb128 0x428
	.ascii "DMPAPER_B5_EXTRA 65\0"
	.byte	0x1
	.uleb128 0x429
	.ascii "DMPAPER_A2 66\0"
	.byte	0x1
	.uleb128 0x42a
	.ascii "DMPAPER_A3_TRANSVERSE 67\0"
	.byte	0x1
	.uleb128 0x42b
	.ascii "DMPAPER_A3_EXTRA_TRANSVERSE 68\0"
	.byte	0x1
	.uleb128 0x42d
	.ascii "DMPAPER_USER 256\0"
	.byte	0x1
	.uleb128 0x42e
	.ascii "DMBIN_FIRST 1\0"
	.byte	0x1
	.uleb128 0x42f
	.ascii "DMBIN_UPPER 1\0"
	.byte	0x1
	.uleb128 0x430
	.ascii "DMBIN_ONLYONE 1\0"
	.byte	0x1
	.uleb128 0x431
	.ascii "DMBIN_LOWER 2\0"
	.byte	0x1
	.uleb128 0x432
	.ascii "DMBIN_MIDDLE 3\0"
	.byte	0x1
	.uleb128 0x433
	.ascii "DMBIN_MANUAL 4\0"
	.byte	0x1
	.uleb128 0x434
	.ascii "DMBIN_ENVELOPE 5\0"
	.byte	0x1
	.uleb128 0x435
	.ascii "DMBIN_ENVMANUAL 6\0"
	.byte	0x1
	.uleb128 0x436
	.ascii "DMBIN_AUTO 7\0"
	.byte	0x1
	.uleb128 0x437
	.ascii "DMBIN_TRACTOR 8\0"
	.byte	0x1
	.uleb128 0x438
	.ascii "DMBIN_SMALLFMT 9\0"
	.byte	0x1
	.uleb128 0x439
	.ascii "DMBIN_LARGEFMT 10\0"
	.byte	0x1
	.uleb128 0x43a
	.ascii "DMBIN_LARGECAPACITY 11\0"
	.byte	0x1
	.uleb128 0x43b
	.ascii "DMBIN_CASSETTE 14\0"
	.byte	0x1
	.uleb128 0x43c
	.ascii "DMBIN_FORMSOURCE 15\0"
	.byte	0x1
	.uleb128 0x43d
	.ascii "DMBIN_LAST 15\0"
	.byte	0x1
	.uleb128 0x43e
	.ascii "DMBIN_USER 256\0"
	.byte	0x1
	.uleb128 0x43f
	.ascii "DMRES_DRAFT (-1)\0"
	.byte	0x1
	.uleb128 0x440
	.ascii "DMRES_LOW (-2)\0"
	.byte	0x1
	.uleb128 0x441
	.ascii "DMRES_MEDIUM (-3)\0"
	.byte	0x1
	.uleb128 0x442
	.ascii "DMRES_HIGH (-4)\0"
	.byte	0x1
	.uleb128 0x443
	.ascii "DMCOLOR_MONOCHROME 1\0"
	.byte	0x1
	.uleb128 0x444
	.ascii "DMCOLOR_COLOR 2\0"
	.byte	0x1
	.uleb128 0x445
	.ascii "DMDUP_SIMPLEX 1\0"
	.byte	0x1
	.uleb128 0x446
	.ascii "DMDUP_VERTICAL 2\0"
	.byte	0x1
	.uleb128 0x447
	.ascii "DMDUP_HORIZONTAL 3\0"
	.byte	0x1
	.uleb128 0x448
	.ascii "DMTT_BITMAP 1\0"
	.byte	0x1
	.uleb128 0x449
	.ascii "DMTT_DOWNLOAD 2\0"
	.byte	0x1
	.uleb128 0x44a
	.ascii "DMTT_SUBDEV 3\0"
	.byte	0x1
	.uleb128 0x44b
	.ascii "DMTT_DOWNLOAD_OUTLINE 4\0"
	.byte	0x1
	.uleb128 0x44c
	.ascii "DMCOLLATE_FALSE 0\0"
	.byte	0x1
	.uleb128 0x44d
	.ascii "DMCOLLATE_TRUE 1\0"
	.byte	0x1
	.uleb128 0x44e
	.ascii "DM_SPECVERSION 800\0"
	.byte	0x1
	.uleb128 0x44f
	.ascii "DM_GRAYSCALE 1\0"
	.byte	0x1
	.uleb128 0x450
	.ascii "DM_INTERLACED 2\0"
	.byte	0x1
	.uleb128 0x451
	.ascii "DM_UPDATE 1\0"
	.byte	0x1
	.uleb128 0x452
	.ascii "DM_COPY 2\0"
	.byte	0x1
	.uleb128 0x453
	.ascii "DM_PROMPT 4\0"
	.byte	0x1
	.uleb128 0x454
	.ascii "DM_MODIFY 8\0"
	.byte	0x1
	.uleb128 0x455
	.ascii "DM_IN_BUFFER DM_MODIFY\0"
	.byte	0x1
	.uleb128 0x456
	.ascii "DM_IN_PROMPT DM_PROMPT\0"
	.byte	0x1
	.uleb128 0x457
	.ascii "DM_OUT_BUFFER DM_COPY\0"
	.byte	0x1
	.uleb128 0x458
	.ascii "DM_OUT_DEFAULT DM_UPDATE\0"
	.byte	0x1
	.uleb128 0x459
	.ascii "DM_ORIENTATION 0x00000001\0"
	.byte	0x1
	.uleb128 0x45a
	.ascii "DM_PAPERSIZE 0x00000002\0"
	.byte	0x1
	.uleb128 0x45b
	.ascii "DM_PAPERLENGTH 0x00000004\0"
	.byte	0x1
	.uleb128 0x45c
	.ascii "DM_PAPERWIDTH 0x00000008\0"
	.byte	0x1
	.uleb128 0x45d
	.ascii "DM_SCALE 0x00000010\0"
	.byte	0x1
	.uleb128 0x45e
	.ascii "DM_POSITION 0x00000020\0"
	.byte	0x1
	.uleb128 0x45f
	.ascii "DM_COPIES 0x00000100\0"
	.byte	0x1
	.uleb128 0x460
	.ascii "DM_DEFAULTSOURCE 0x00000200\0"
	.byte	0x1
	.uleb128 0x461
	.ascii "DM_PRINTQUALITY 0x00000400\0"
	.byte	0x1
	.uleb128 0x462
	.ascii "DM_COLOR 0x00000800\0"
	.byte	0x1
	.uleb128 0x463
	.ascii "DM_DUPLEX 0x00001000\0"
	.byte	0x1
	.uleb128 0x464
	.ascii "DM_YRESOLUTION 0x00002000\0"
	.byte	0x1
	.uleb128 0x465
	.ascii "DM_TTOPTION 0x00004000\0"
	.byte	0x1
	.uleb128 0x466
	.ascii "DM_COLLATE 0x00008000\0"
	.byte	0x1
	.uleb128 0x467
	.ascii "DM_FORMNAME 0x00010000\0"
	.byte	0x1
	.uleb128 0x468
	.ascii "DM_LOGPIXELS 0x00020000\0"
	.byte	0x1
	.uleb128 0x469
	.ascii "DM_BITSPERPEL 0x00040000\0"
	.byte	0x1
	.uleb128 0x46a
	.ascii "DM_PELSWIDTH 0x00080000\0"
	.byte	0x1
	.uleb128 0x46b
	.ascii "DM_PELSHEIGHT 0x00100000\0"
	.byte	0x1
	.uleb128 0x46c
	.ascii "DM_DISPLAYFLAGS 0x00200000\0"
	.byte	0x1
	.uleb128 0x46d
	.ascii "DM_DISPLAYFREQUENCY 0x00400000\0"
	.byte	0x1
	.uleb128 0x46e
	.ascii "DM_ICMMETHOD 0x00800000\0"
	.byte	0x1
	.uleb128 0x46f
	.ascii "DM_ICMINTENT 0x01000000\0"
	.byte	0x1
	.uleb128 0x470
	.ascii "DM_MEDIATYPE 0x02000000\0"
	.byte	0x1
	.uleb128 0x471
	.ascii "DM_DITHERTYPE 0x04000000\0"
	.byte	0x1
	.uleb128 0x473
	.ascii "DMICMMETHOD_NONE 1\0"
	.byte	0x1
	.uleb128 0x474
	.ascii "DMICMMETHOD_SYSTEM 2\0"
	.byte	0x1
	.uleb128 0x475
	.ascii "DMICMMETHOD_DRIVER 3\0"
	.byte	0x1
	.uleb128 0x476
	.ascii "DMICMMETHOD_DEVICE 4\0"
	.byte	0x1
	.uleb128 0x477
	.ascii "DMICMMETHOD_USER 256\0"
	.byte	0x1
	.uleb128 0x478
	.ascii "DMICM_SATURATE 1\0"
	.byte	0x1
	.uleb128 0x479
	.ascii "DMICM_CONTRAST 2\0"
	.byte	0x1
	.uleb128 0x47a
	.ascii "DMICM_COLORMETRIC 3\0"
	.byte	0x1
	.uleb128 0x47b
	.ascii "DMICM_USER 256\0"
	.byte	0x1
	.uleb128 0x47c
	.ascii "DMMEDIA_STANDARD 1\0"
	.byte	0x1
	.uleb128 0x47d
	.ascii "DMMEDIA_TRANSPARENCY 2\0"
	.byte	0x1
	.uleb128 0x47e
	.ascii "DMMEDIA_GLOSSY 3\0"
	.byte	0x1
	.uleb128 0x47f
	.ascii "DMMEDIA_USER 256\0"
	.byte	0x1
	.uleb128 0x480
	.ascii "DMDITHER_NONE 1\0"
	.byte	0x1
	.uleb128 0x481
	.ascii "DMDITHER_COARSE 2\0"
	.byte	0x1
	.uleb128 0x482
	.ascii "DMDITHER_FINE 3\0"
	.byte	0x1
	.uleb128 0x483
	.ascii "DMDITHER_LINEART 4\0"
	.byte	0x1
	.uleb128 0x484
	.ascii "DMDITHER_ERRORDIFFUSION 5\0"
	.byte	0x1
	.uleb128 0x485
	.ascii "DMDITHER_RESERVED6 6\0"
	.byte	0x1
	.uleb128 0x486
	.ascii "DMDITHER_RESERVED7 7\0"
	.byte	0x1
	.uleb128 0x487
	.ascii "DMDITHER_RESERVED8 8\0"
	.byte	0x1
	.uleb128 0x488
	.ascii "DMDITHER_RESERVED9 9\0"
	.byte	0x1
	.uleb128 0x489
	.ascii "DMDITHER_GRAYSCALE 10\0"
	.byte	0x1
	.uleb128 0x48a
	.ascii "DMDITHER_USER 256\0"
	.byte	0x1
	.uleb128 0x48b
	.ascii "GDI_ERROR 0xFFFFFFFF\0"
	.byte	0x1
	.uleb128 0x48c
	.ascii "HGDI_ERROR ((HANDLE)(GDI_ERROR))\0"
	.byte	0x1
	.uleb128 0x48d
	.ascii "TMPF_FIXED_PITCH 1\0"
	.byte	0x1
	.uleb128 0x48e
	.ascii "TMPF_VECTOR 2\0"
	.byte	0x1
	.uleb128 0x48f
	.ascii "TMPF_TRUETYPE 4\0"
	.byte	0x1
	.uleb128 0x490
	.ascii "TMPF_DEVICE 8\0"
	.byte	0x1
	.uleb128 0x491
	.ascii "NTM_ITALIC 1\0"
	.byte	0x1
	.uleb128 0x492
	.ascii "NTM_BOLD 32\0"
	.byte	0x1
	.uleb128 0x493
	.ascii "NTM_REGULAR 64\0"
	.byte	0x1
	.uleb128 0x494
	.ascii "TT_POLYGON_TYPE 24\0"
	.byte	0x1
	.uleb128 0x495
	.ascii "TT_PRIM_LINE 1\0"
	.byte	0x1
	.uleb128 0x496
	.ascii "TT_PRIM_QSPLINE 2\0"
	.byte	0x1
	.uleb128 0x497
	.ascii "TT_PRIM_CSPLINE 3\0"
	.byte	0x1
	.uleb128 0x498
	.ascii "FONTMAPPER_MAX 10\0"
	.byte	0x1
	.uleb128 0x499
	.ascii "ENHMETA_STOCK_OBJECT 0x80000000\0"
	.byte	0x1
	.uleb128 0x49a
	.ascii "WGL_FONT_LINES 0\0"
	.byte	0x1
	.uleb128 0x49b
	.ascii "WGL_FONT_POLYGONS 1\0"
	.byte	0x1
	.uleb128 0x49c
	.ascii "LPD_DOUBLEBUFFER 1\0"
	.byte	0x1
	.uleb128 0x49d
	.ascii "LPD_STEREO 2\0"
	.byte	0x1
	.uleb128 0x49e
	.ascii "LPD_SUPPORT_GDI 16\0"
	.byte	0x1
	.uleb128 0x49f
	.ascii "LPD_SUPPORT_OPENGL 32\0"
	.byte	0x1
	.uleb128 0x4a0
	.ascii "LPD_SHARE_DEPTH 64\0"
	.byte	0x1
	.uleb128 0x4a1
	.ascii "LPD_SHARE_STENCIL 128\0"
	.byte	0x1
	.uleb128 0x4a2
	.ascii "LPD_SHARE_ACCUM 256\0"
	.byte	0x1
	.uleb128 0x4a3
	.ascii "LPD_SWAP_EXCHANGE 512\0"
	.byte	0x1
	.uleb128 0x4a4
	.ascii "LPD_SWAP_COPY 1024\0"
	.byte	0x1
	.uleb128 0x4a5
	.ascii "LPD_TRANSPARENT 4096\0"
	.byte	0x1
	.uleb128 0x4a6
	.ascii "LPD_TYPE_RGBA 0\0"
	.byte	0x1
	.uleb128 0x4a7
	.ascii "LPD_TYPE_COLORINDEX 1\0"
	.byte	0x1
	.uleb128 0x4a8
	.ascii "WGL_SWAP_MAIN_PLANE 1\0"
	.byte	0x1
	.uleb128 0x4a9
	.ascii "WGL_SWAP_OVERLAY1 2\0"
	.byte	0x1
	.uleb128 0x4aa
	.ascii "WGL_SWAP_OVERLAY2 4\0"
	.byte	0x1
	.uleb128 0x4ab
	.ascii "WGL_SWAP_OVERLAY3 8\0"
	.byte	0x1
	.uleb128 0x4ac
	.ascii "WGL_SWAP_OVERLAY4 16\0"
	.byte	0x1
	.uleb128 0x4ad
	.ascii "WGL_SWAP_OVERLAY5 32\0"
	.byte	0x1
	.uleb128 0x4ae
	.ascii "WGL_SWAP_OVERLAY6 64\0"
	.byte	0x1
	.uleb128 0x4af
	.ascii "WGL_SWAP_OVERLAY7 128\0"
	.byte	0x1
	.uleb128 0x4b0
	.ascii "WGL_SWAP_OVERLAY8 256\0"
	.byte	0x1
	.uleb128 0x4b1
	.ascii "WGL_SWAP_OVERLAY9 512\0"
	.byte	0x1
	.uleb128 0x4b2
	.ascii "WGL_SWAP_OVERLAY10 1024\0"
	.byte	0x1
	.uleb128 0x4b3
	.ascii "WGL_SWAP_OVERLAY11 2048\0"
	.byte	0x1
	.uleb128 0x4b4
	.ascii "WGL_SWAP_OVERLAY12 4096\0"
	.byte	0x1
	.uleb128 0x4b5
	.ascii "WGL_SWAP_OVERLAY13 8192\0"
	.byte	0x1
	.uleb128 0x4b6
	.ascii "WGL_SWAP_OVERLAY14 16384\0"
	.byte	0x1
	.uleb128 0x4b7
	.ascii "WGL_SWAP_OVERLAY15 32768\0"
	.byte	0x1
	.uleb128 0x4b8
	.ascii "WGL_SWAP_UNDERLAY1 65536\0"
	.byte	0x1
	.uleb128 0x4b9
	.ascii "WGL_SWAP_UNDERLAY2 0x20000\0"
	.byte	0x1
	.uleb128 0x4ba
	.ascii "WGL_SWAP_UNDERLAY3 0x40000\0"
	.byte	0x1
	.uleb128 0x4bb
	.ascii "WGL_SWAP_UNDERLAY4 0x80000\0"
	.byte	0x1
	.uleb128 0x4bc
	.ascii "WGL_SWAP_UNDERLAY5 0x100000\0"
	.byte	0x1
	.uleb128 0x4bd
	.ascii "WGL_SWAP_UNDERLAY6 0x200000\0"
	.byte	0x1
	.uleb128 0x4be
	.ascii "WGL_SWAP_UNDERLAY7 0x400000\0"
	.byte	0x1
	.uleb128 0x4bf
	.ascii "WGL_SWAP_UNDERLAY8 0x800000\0"
	.byte	0x1
	.uleb128 0x4c0
	.ascii "WGL_SWAP_UNDERLAY9 0x1000000\0"
	.byte	0x1
	.uleb128 0x4c1
	.ascii "WGL_SWAP_UNDERLAY10 0x2000000\0"
	.byte	0x1
	.uleb128 0x4c2
	.ascii "WGL_SWAP_UNDERLAY11 0x4000000\0"
	.byte	0x1
	.uleb128 0x4c3
	.ascii "WGL_SWAP_UNDERLAY12 0x8000000\0"
	.byte	0x1
	.uleb128 0x4c4
	.ascii "WGL_SWAP_UNDERLAY13 0x10000000\0"
	.byte	0x1
	.uleb128 0x4c5
	.ascii "WGL_SWAP_UNDERLAY14 0x20000000\0"
	.byte	0x1
	.uleb128 0x4c6
	.ascii "WGL_SWAP_UNDERLAY15 0x40000000\0"
	.byte	0x1
	.uleb128 0x4c7
	.ascii "AC_SRC_OVER 0x00\0"
	.byte	0x1
	.uleb128 0x4c8
	.ascii "AC_SRC_ALPHA 0x01\0"
	.byte	0x1
	.uleb128 0x4c9
	.ascii "AC_SRC_NO_PREMULT_ALPHA 0x01\0"
	.byte	0x1
	.uleb128 0x4ca
	.ascii "AC_SRC_NO_ALPHA 0x02\0"
	.byte	0x1
	.uleb128 0x4cb
	.ascii "AC_DST_NO_PREMULT_ALPHA 0x10\0"
	.byte	0x1
	.uleb128 0x4cc
	.ascii "AC_DST_NO_ALPHA 0x20\0"
	.byte	0x1
	.uleb128 0x4cd
	.ascii "LAYOUT_RTL 1\0"
	.byte	0x1
	.uleb128 0x4ce
	.ascii "LAYOUT_BITMAPORIENTATIONPRESERVED 8\0"
	.byte	0x1
	.uleb128 0x4d0
	.ascii "DISPLAY_DEVICE_ATTACHED_TO_DESKTOP 0x00000001\0"
	.byte	0x1
	.uleb128 0x4d1
	.ascii "DISPLAY_DEVICE_MULTI_DRIVER 0x00000002\0"
	.byte	0x1
	.uleb128 0x4d2
	.ascii "DISPLAY_DEVICE_PRIMARY_DEVICE 0x00000004\0"
	.byte	0x1
	.uleb128 0x4d3
	.ascii "DISPLAY_DEVICE_MIRRORING_DRIVER 0x00000008\0"
	.byte	0x1
	.uleb128 0x4d4
	.ascii "DISPLAY_DEVICE_VGA_COMPATIBLE 0x00000010\0"
	.byte	0x1
	.uleb128 0x4d5
	.ascii "DISPLAY_DEVICE_REMOVABLE 0x00000020\0"
	.byte	0x1
	.uleb128 0x4d6
	.ascii "DISPLAY_DEVICE_MODESPRUNED 0x08000000\0"
	.byte	0x1
	.uleb128 0x4d9
	.ascii "CS_ENABLE 0x00000001\0"
	.byte	0x1
	.uleb128 0x4da
	.ascii "CS_DISABLE 0x00000002\0"
	.byte	0x1
	.uleb128 0x4db
	.ascii "CS_DELETE_TRANSFORM 0x00000003\0"
	.byte	0x1
	.uleb128 0x4de
	.ascii "GRADIENT_FILL_RECT_H 0x00\0"
	.byte	0x1
	.uleb128 0x4df
	.ascii "GRADIENT_FILL_RECT_V 0x01\0"
	.byte	0x1
	.uleb128 0x4e0
	.ascii "GRADIENT_FILL_TRIANGLE 0x02\0"
	.byte	0x1
	.uleb128 0x4e1
	.ascii "GRADIENT_FILL_OP_FLAG 0xFF\0"
	.byte	0x1
	.uleb128 0x4e2
	.ascii "COLORMATCHTOTARGET_EMBEDED 0x00000001\0"
	.byte	0x1
	.uleb128 0x4e3
	.ascii "CREATECOLORSPACE_EMBEDED 0x00000001\0"
	.byte	0x1
	.uleb128 0x4e4
	.ascii "SETICMPROFILE_EMBEDED 0x00000001\0"
	.byte	0x1
	.uleb128 0x4e6
	.ascii "DC_PERSONALITY 25\0"
	.byte	0x1
	.uleb128 0x4e7
	.ascii "DC_PRINTRATE 26\0"
	.byte	0x1
	.uleb128 0x4e8
	.ascii "DC_PRINTRATEUNIT 27\0"
	.byte	0x1
	.uleb128 0x4e9
	.ascii "DC_PRINTERMEM 28\0"
	.byte	0x1
	.uleb128 0x4ea
	.ascii "DC_MEDIAREADY 29\0"
	.byte	0x1
	.uleb128 0x4eb
	.ascii "DC_STAPLE 30\0"
	.byte	0x1
	.uleb128 0x4ec
	.ascii "DC_PRINTRATEPPM 31\0"
	.byte	0x1
	.uleb128 0x4ed
	.ascii "DC_COLORDEVICE 32\0"
	.byte	0x1
	.uleb128 0x4ee
	.ascii "DC_NUP 33\0"
	.byte	0x1
	.uleb128 0x4f0
	.ascii "SHADEBLENDCAPS 120\0"
	.byte	0x1
	.uleb128 0x4f1
	.ascii "SB_NONE 0x00\0"
	.byte	0x1
	.uleb128 0x4f2
	.ascii "SB_CONST_ALPHA 0x01\0"
	.byte	0x1
	.uleb128 0x4f3
	.ascii "SB_PIXEL_ALPHA 0x02\0"
	.byte	0x1
	.uleb128 0x4f4
	.ascii "SB_PREMULT_ALPHA 0x04\0"
	.byte	0x1
	.uleb128 0x4f5
	.ascii "SB_GRAD_RECT 0x10\0"
	.byte	0x1
	.uleb128 0x4f6
	.ascii "SB_GRAD_TRI 0x20\0"
	.byte	0x1
	.uleb128 0x4f7
	.ascii "COLORMGMTCAPS 121\0"
	.byte	0x1
	.uleb128 0x4f8
	.ascii "CM_NONE 0x00\0"
	.byte	0x1
	.uleb128 0x4f9
	.ascii "CM_DEVICE_ICM 0x01\0"
	.byte	0x1
	.uleb128 0x4fa
	.ascii "CM_GAMMA_RAMP 0x02\0"
	.byte	0x1
	.uleb128 0x4fb
	.ascii "CM_CMYK_COLOR 0x04\0"
	.byte	0x1
	.uleb128 0x4fd
	.ascii "GGO_UNHINTED 256\0"
	.byte	0x1
	.uleb128 0x4ff
	.ascii "DMPAPER_DBL_JAPANESE_POSTCARD 69\0"
	.byte	0x1
	.uleb128 0x500
	.ascii "DMPAPER_A6 70\0"
	.byte	0x1
	.uleb128 0x501
	.ascii "DMPAPER_JENV_KAKU2 71\0"
	.byte	0x1
	.uleb128 0x502
	.ascii "DMPAPER_JENV_KAKU3 72\0"
	.byte	0x1
	.uleb128 0x503
	.ascii "DMPAPER_JENV_CHOU3 73\0"
	.byte	0x1
	.uleb128 0x504
	.ascii "DMPAPER_JENV_CHOU4 74\0"
	.byte	0x1
	.uleb128 0x505
	.ascii "DMPAPER_LETTER_ROTATED 75\0"
	.byte	0x1
	.uleb128 0x506
	.ascii "DMPAPER_A3_ROTATED 76\0"
	.byte	0x1
	.uleb128 0x507
	.ascii "DMPAPER_A4_ROTATED 77\0"
	.byte	0x1
	.uleb128 0x508
	.ascii "DMPAPER_A5_ROTATED 78\0"
	.byte	0x1
	.uleb128 0x509
	.ascii "DMPAPER_B4_JIS_ROTATED 79\0"
	.byte	0x1
	.uleb128 0x50a
	.ascii "DMPAPER_B5_JIS_ROTATED 80\0"
	.byte	0x1
	.uleb128 0x50b
	.ascii "DMPAPER_JAPANESE_POSTCARD_ROTATED 81\0"
	.byte	0x1
	.uleb128 0x50c
	.ascii "DMPAPER_DBL_JAPANESE_POSTCARD_ROTATED 82\0"
	.byte	0x1
	.uleb128 0x50d
	.ascii "DMPAPER_A6_ROTATED 83\0"
	.byte	0x1
	.uleb128 0x50e
	.ascii "DMPAPER_JENV_KAKU2_ROTATED 84\0"
	.byte	0x1
	.uleb128 0x50f
	.ascii "DMPAPER_JENV_KAKU3_ROTATED 85\0"
	.byte	0x1
	.uleb128 0x510
	.ascii "DMPAPER_JENV_CHOU3_ROTATED 86\0"
	.byte	0x1
	.uleb128 0x511
	.ascii "DMPAPER_JENV_CHOU4_ROTATED 87\0"
	.byte	0x1
	.uleb128 0x512
	.ascii "DMPAPER_B6_JIS 88\0"
	.byte	0x1
	.uleb128 0x513
	.ascii "DMPAPER_B6_JIS_ROTATED 89\0"
	.byte	0x1
	.uleb128 0x514
	.ascii "DMPAPER_12X11 90\0"
	.byte	0x1
	.uleb128 0x515
	.ascii "DMPAPER_JENV_YOU4 91\0"
	.byte	0x1
	.uleb128 0x516
	.ascii "DMPAPER_JENV_YOU4_ROTATED 92\0"
	.byte	0x1
	.uleb128 0x517
	.ascii "DMPAPER_P16K 93\0"
	.byte	0x1
	.uleb128 0x518
	.ascii "DMPAPER_P32K 94\0"
	.byte	0x1
	.uleb128 0x519
	.ascii "DMPAPER_P32KBIG 95\0"
	.byte	0x1
	.uleb128 0x51a
	.ascii "DMPAPER_PENV_1 96\0"
	.byte	0x1
	.uleb128 0x51b
	.ascii "DMPAPER_PENV_2 97\0"
	.byte	0x1
	.uleb128 0x51c
	.ascii "DMPAPER_PENV_3 98\0"
	.byte	0x1
	.uleb128 0x51d
	.ascii "DMPAPER_PENV_4 99\0"
	.byte	0x1
	.uleb128 0x51e
	.ascii "DMPAPER_PENV_5 100\0"
	.byte	0x1
	.uleb128 0x51f
	.ascii "DMPAPER_PENV_6 101\0"
	.byte	0x1
	.uleb128 0x520
	.ascii "DMPAPER_PENV_7 102\0"
	.byte	0x1
	.uleb128 0x521
	.ascii "DMPAPER_PENV_8 103\0"
	.byte	0x1
	.uleb128 0x522
	.ascii "DMPAPER_PENV_9 104\0"
	.byte	0x1
	.uleb128 0x523
	.ascii "DMPAPER_PENV_10 105\0"
	.byte	0x1
	.uleb128 0x524
	.ascii "DMPAPER_P16K_ROTATED 106\0"
	.byte	0x1
	.uleb128 0x525
	.ascii "DMPAPER_P32K_ROTATED 107\0"
	.byte	0x1
	.uleb128 0x526
	.ascii "DMPAPER_P32KBIG_ROTATED 108\0"
	.byte	0x1
	.uleb128 0x527
	.ascii "DMPAPER_PENV_1_ROTATED 109\0"
	.byte	0x1
	.uleb128 0x528
	.ascii "DMPAPER_PENV_2_ROTATED 110\0"
	.byte	0x1
	.uleb128 0x529
	.ascii "DMPAPER_PENV_3_ROTATED 111\0"
	.byte	0x1
	.uleb128 0x52a
	.ascii "DMPAPER_PENV_4_ROTATED 112\0"
	.byte	0x1
	.uleb128 0x52b
	.ascii "DMPAPER_PENV_5_ROTATED 113\0"
	.byte	0x1
	.uleb128 0x52c
	.ascii "DMPAPER_PENV_6_ROTATED 114\0"
	.byte	0x1
	.uleb128 0x52d
	.ascii "DMPAPER_PENV_7_ROTATED 115\0"
	.byte	0x1
	.uleb128 0x52e
	.ascii "DMPAPER_PENV_8_ROTATED 116\0"
	.byte	0x1
	.uleb128 0x52f
	.ascii "DMPAPER_PENV_9_ROTATED 117\0"
	.byte	0x1
	.uleb128 0x530
	.ascii "DMPAPER_PENV_10_ROTATED 118\0"
	.byte	0x1
	.uleb128 0x531
	.ascii "DMPAPER_LAST 118\0"
	.byte	0x1
	.uleb128 0x533
	.ascii "DM_PANNINGWIDTH 0x08000000\0"
	.byte	0x1
	.uleb128 0x534
	.ascii "DM_PANNINGHEIGHT 0x10000000\0"
	.byte	0x1
	.uleb128 0x54d
	.ascii "ETO_IGNORELANGUAGE 0x1000\0"
	.byte	0x1
	.uleb128 0x550
	.ascii "ETO_PDY 0x2000\0"
	.byte	0x1
	.uleb128 0x552
	.ascii "DC_BRUSH 18\0"
	.byte	0x1
	.uleb128 0x553
	.ascii "DC_PEN 19\0"
	.byte	0x1
	.uleb128 0x555
	.ascii "NTM_NONNEGATIVE_AC 0x00010000\0"
	.byte	0x1
	.uleb128 0x556
	.ascii "NTM_PS_OPENTYPE 0x00020000\0"
	.byte	0x1
	.uleb128 0x557
	.ascii "NTM_TT_OPENTYPE 0x00040000\0"
	.byte	0x1
	.uleb128 0x558
	.ascii "NTM_MULTIPLEMASTER 0x00080000\0"
	.byte	0x1
	.uleb128 0x559
	.ascii "NTM_TYPE1 0x00100000\0"
	.byte	0x1
	.uleb128 0x55a
	.ascii "NTM_DSIG 0x00200000\0"
	.byte	0x1
	.uleb128 0x55c
	.ascii "GGI_MARK_NONEXISTING_GLYPHS 1\0"
	.byte	0x1
	.uleb128 0x55e
	.ascii "FR_PRIVATE 0x10\0"
	.byte	0x1
	.uleb128 0x55f
	.ascii "FR_NOT_ENUM 0x20\0"
	.byte	0x1
	.uleb128 0x561
	.ascii "CLEARTYPE_QUALITY 5\0"
	.byte	0x1
	.uleb128 0x9be
	.ascii "SYSRGN 4\0"
	.byte	0x1
	.uleb128 0xb32
	.ascii "MM_MAX_NUMAXES 16\0"
	.byte	0x1
	.uleb128 0xb71
	.ascii "FONTENUMPROC __AW_SUFFIXED__(FONTENUMPROC)\0"
	.byte	0x1
	.uleb128 0xb75
	.ascii "ICMENUMPROC __AW_SUFFIXED__(ICMENUMPROC)\0"
	.byte	0x1
	.uleb128 0xb80
	.ascii "MAKEPOINTS(l) (*((POINTS *) & (l)))\0"
	.byte	0x1
	.uleb128 0xb81
	.ascii "MAKEROP4(f,b) (DWORD)((((b) << 8) & 0xFF000000) | (f))\0"
	.byte	0x1
	.uleb128 0xb83
	.ascii "CMYK(c,m,y,k) ((COLORREF)((BYTE)(k) | ((BYTE)(y) << 8) | ((BYTE)(m) << 16) | ((BYTE)(c) << 24)) )\0"
	.byte	0x1
	.uleb128 0xb87
	.ascii "GetCValue(cmyk) ((BYTE)(cmyk))\0"
	.byte	0x1
	.uleb128 0xb88
	.ascii "GetMValue(cmyk) ((BYTE)((cmyk) >> 8))\0"
	.byte	0x1
	.uleb128 0xb89
	.ascii "GetYValue(cmyk) ((BYTE)((cmyk) >> 16))\0"
	.byte	0x1
	.uleb128 0xb8a
	.ascii "GetKValue(cmyk) ((BYTE)((cmyk) >> 24))\0"
	.byte	0x1
	.uleb128 0xb8c
	.ascii "RGB(r,g,b) ((COLORREF)((BYTE)(r) | ((BYTE)(g) << 8) | ((BYTE)(b) << 16)))\0"
	.byte	0x1
	.uleb128 0xb8f
	.ascii "GetRValue(rgb) ((BYTE)(rgb))\0"
	.byte	0x1
	.uleb128 0xb90
	.ascii "GetGValue(rgb) ((BYTE)(((WORD)(rgb)) >> 8))\0"
	.byte	0x1
	.uleb128 0xb91
	.ascii "GetBValue(rgb) ((BYTE)((rgb) >> 16))\0"
	.byte	0x1
	.uleb128 0xb93
	.ascii "PALETTEINDEX(i) ((0x01000000 | (COLORREF)(WORD)(i)))\0"
	.byte	0x1
	.uleb128 0xb94
	.ascii "PALETTERGB(r,g,b) (0x02000000 | RGB(r,g,b))\0"
	.byte	0x1
	.uleb128 0xb99
	.ascii "AddFontResource __AW_SUFFIXED__(AddFontResource)\0"
	.byte	0x1
	.uleb128 0xbb6
	.ascii "CopyEnhMetaFile __AW_SUFFIXED__(CopyEnhMetaFile)\0"
	.byte	0x1
	.uleb128 0xbba
	.ascii "CopyMetaFile __AW_SUFFIXED__(CopyMetaFile)\0"
	.byte	0x1
	.uleb128 0xbc2
	.ascii "CreateColorSpace __AW_SUFFIXED__(CreateColorSpace)\0"
	.byte	0x1
	.uleb128 0xbc9
	.ascii "CreateDC __AW_SUFFIXED__(CreateDC)\0"
	.byte	0x1
	.uleb128 0xbda
	.ascii "CreateEnhMetaFile __AW_SUFFIXED__(CreateEnhMetaFile)\0"
	.byte	0x1
	.uleb128 0xbde
	.ascii "CreateFont __AW_SUFFIXED__(CreateFont)\0"
	.byte	0x1
	.uleb128 0xbea
	.ascii "CreateFontIndirect __AW_SUFFIXED__(CreateFontIndirect)\0"
	.byte	0x1
	.uleb128 0xbf1
	.ascii "CreateIC __AW_SUFFIXED__(CreateIC)\0"
	.byte	0x1
	.uleb128 0xbf5
	.ascii "CreateMetaFile __AW_SUFFIXED__(CreateMetaFile)\0"
	.byte	0x1
	.uleb128 0xc06
	.ascii "CreateScalableFontResource __AW_SUFFIXED__(CreateScalableFontResource)\0"
	.byte	0x1
	.uleb128 0xc18
	.ascii "DeviceCapabilities __AW_SUFFIXED__(DeviceCapabilities)\0"
	.byte	0x1
	.uleb128 0xc29
	.ascii "EnumFontFamilies __AW_SUFFIXED__(EnumFontFamilies)\0"
	.byte	0x1
	.uleb128 0xc2d
	.ascii "EnumFontFamiliesEx __AW_SUFFIXED__(EnumFontFamiliesEx)\0"
	.byte	0x1
	.uleb128 0xc34
	.ascii "EnumFonts __AW_SUFFIXED__(EnumFonts)\0"
	.byte	0x1
	.uleb128 0xc38
	.ascii "EnumICMProfiles __AW_SUFFIXED__(EnumICMProfiles)\0"
	.byte	0x1
	.uleb128 0xc4b
	.ascii "ExtTextOut __AW_SUFFIXED__(ExtTextOut)\0"
	.byte	0x1
	.uleb128 0xc65
	.ascii "GetCharABCWidths __AW_SUFFIXED__(GetCharABCWidths)\0"
	.byte	0x1
	.uleb128 0xc69
	.ascii "GetCharABCWidthsFloat __AW_SUFFIXED__(GetCharABCWidthsFloat)\0"
	.byte	0x1
	.uleb128 0xc6d
	.ascii "GetCharacterPlacement __AW_SUFFIXED__(GetCharacterPlacement)\0"
	.byte	0x1
	.uleb128 0xc74
	.ascii "GetCharWidth32 __AW_SUFFIXED__(GetCharWidth32)\0"
	.byte	0x1
	.uleb128 0xc78
	.ascii "GetCharWidth __AW_SUFFIXED__(GetCharWidth)\0"
	.byte	0x1
	.uleb128 0xc7c
	.ascii "GetCharWidthFloat __AW_SUFFIXED__(GetCharWidthFloat)\0"
	.byte	0x1
	.uleb128 0xc90
	.ascii "GetEnhMetaFile __AW_SUFFIXED__(GetEnhMetaFile)\0"
	.byte	0x1
	.uleb128 0xc96
	.ascii "GetEnhMetaFileDescription __AW_SUFFIXED__(GetEnhMetaFileDescription)\0"
	.byte	0x1
	.uleb128 0xca6
	.ascii "GetGlyphOutline __AW_SUFFIXED__(GetGlyphOutline)\0"
	.byte	0x1
	.uleb128 0xcaf
	.ascii "GetICMProfile __AW_SUFFIXED__(GetICMProfile)\0"
	.byte	0x1
	.uleb128 0xcb3
	.ascii "GetKerningPairs __AW_SUFFIXED__(GetKerningPairs)\0"
	.byte	0x1
	.uleb128 0xcb7
	.ascii "GetLogColorSpace __AW_SUFFIXED__(GetLogColorSpace)\0"
	.byte	0x1
	.uleb128 0xcbd
	.ascii "GetMetaFile __AW_SUFFIXED__(GetMetaFile)\0"
	.byte	0x1
	.uleb128 0xcc7
	.ascii "GetObject __AW_SUFFIXED__(GetObject)\0"
	.byte	0x1
	.uleb128 0xccd
	.ascii "GetOutlineTextMetrics __AW_SUFFIXED__(GetOutlineTextMetrics)\0"
	.byte	0x1
	.uleb128 0xce8
	.ascii "GetTextExtentExPoint __AW_SUFFIXED__(GetTextExtentExPoint)\0"
	.byte	0x1
	.uleb128 0xcef
	.ascii "GetTextExtentPoint __AW_SUFFIXED__(GetTextExtentPoint)\0"
	.byte	0x1
	.uleb128 0xcf3
	.ascii "GetTextExtentPoint32 __AW_SUFFIXED__(GetTextExtentPoint32)\0"
	.byte	0x1
	.uleb128 0xcf7
	.ascii "GetTextFace __AW_SUFFIXED__(GetTextFace)\0"
	.byte	0x1
	.uleb128 0xcfb
	.ascii "GetTextMetrics __AW_SUFFIXED__(GetTextMetrics)\0"
	.byte	0x1
	.uleb128 0xd31
	.ascii "PolyTextOut __AW_SUFFIXED__(PolyTextOut)\0"
	.byte	0x1
	.uleb128 0xd3c
	.ascii "RemoveFontResource __AW_SUFFIXED__(RemoveFontResource)\0"
	.byte	0x1
	.uleb128 0xd40
	.ascii "ResetDC __AW_SUFFIXED__(ResetDC)\0"
	.byte	0x1
	.uleb128 0xd68
	.ascii "SetICMProfile __AW_SUFFIXED__(SetICMProfile)\0"
	.byte	0x1
	.uleb128 0xd8b
	.ascii "StartDoc __AW_SUFFIXED__(StartDoc)\0"
	.byte	0x1
	.uleb128 0xd9d
	.ascii "TextOut __AW_SUFFIXED__(TextOut)\0"
	.byte	0x1
	.uleb128 0xda5
	.ascii "UpdateICMRegKey __AW_SUFFIXED__(UpdateICMRegKey)\0"
	.byte	0x1
	.uleb128 0xdc2
	.ascii "wglUseFontBitmaps __AW_SUFFIXED__(wglUseFontBitmaps)\0"
	.byte	0x1
	.uleb128 0xdc6
	.ascii "wglUseFontOutlines __AW_SUFFIXED__(wglUseFontOutlines)\0"
	.byte	0x1
	.uleb128 0xdfc
	.ascii "AddFontResourceEx __AW_SUFFIXED__(AddFontResourceEx)\0"
	.byte	0x1
	.uleb128 0xe05
	.ascii "RemoveFontResourceEx __AW_SUFFIXED__(RemoveFontResourceEx)\0"
	.byte	0x1
	.uleb128 0xe0e
	.ascii "GetGlyphIndices __AW_SUFFIXED__(GetGlyphIndices)\0"
	.byte	0x4
	.file 35 "c:/mingw/include/winuser.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x23
	.byte	0x1
	.uleb128 0x23
	.ascii "_WINUSER_H \0"
	.byte	0x1
	.uleb128 0x28
	.ascii "__WINUSER_H_SOURCED__ \0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "WINUSERAPI \0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "ATF_ONOFFFEEDBACK 2\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "ATF_TIMEOUTON 1\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "MNGO_NOINTERFACE 0x00\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "MNGO_NOERROR 0x01\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "MNGOF_TOPGAP 0x01\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "MNGOF_BOTTOMGAP 0x02\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "WC_DIALOG MAKEINTATOM(0x8002)\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "FALT 16\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "FCONTROL 8\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "FNOINVERT 2\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "FSHIFT 4\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "FVIRTKEY 1\0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "ATF_TIMEOUTON 1\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "ATF_ONOFFFEEDBACK 2\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "ATF_AVAILABLE 4\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "WH_MIN (-1)\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "WH_MSGFILTER (-1)\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "WH_JOURNALRECORD 0\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "WH_JOURNALPLAYBACK 1\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "WH_KEYBOARD 2\0"
	.byte	0x1
	.uleb128 0x55
	.ascii "WH_GETMESSAGE 3\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "WH_CALLWNDPROC 4\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "WH_CBT 5\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "WH_SYSMSGFILTER 6\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "WH_MOUSE 7\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "WH_HARDWARE 8\0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "WH_DEBUG 9\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "WH_SHELL 10\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "WH_FOREGROUNDIDLE 11\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "WH_CALLWNDPROCRET 12\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "WH_KEYBOARD_LL 13\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "WH_MOUSE_LL 14\0"
	.byte	0x1
	.uleb128 0x61
	.ascii "WH_MAX 14\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "WH_MINHOOK WH_MIN\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "WH_MAXHOOK WH_MAX\0"
	.byte	0x1
	.uleb128 0x64
	.ascii "HC_ACTION 0\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "HC_GETNEXT 1\0"
	.byte	0x1
	.uleb128 0x66
	.ascii "HC_SKIP 2\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "HC_NOREMOVE 3\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "HC_NOREM 3\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "HC_SYSMODALON 4\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "HC_SYSMODALOFF 5\0"
	.byte	0x1
	.uleb128 0x6b
	.ascii "HCBT_MOVESIZE 0\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "HCBT_MINMAX 1\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "HCBT_QS 2\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "HCBT_CREATEWND 3\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "HCBT_DESTROYWND 4\0"
	.byte	0x1
	.uleb128 0x70
	.ascii "HCBT_ACTIVATE 5\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "HCBT_CLICKSKIPPED 6\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "HCBT_KEYSKIPPED 7\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "HCBT_SYSCOMMAND 8\0"
	.byte	0x1
	.uleb128 0x74
	.ascii "HCBT_SETFOCUS 9\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "CF_TEXT 1\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "CF_BITMAP 2\0"
	.byte	0x1
	.uleb128 0x77
	.ascii "CF_METAFILEPICT 3\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "CF_SYLK 4\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "CF_DIF 5\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "CF_TIFF 6\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "CF_OEMTEXT 7\0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "CF_DIB 8\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "CF_PALETTE 9\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "CF_PENDATA 10\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "CF_RIFF 11\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "CF_WAVE 12\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "CF_UNICODETEXT 13\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "CF_ENHMETAFILE 14\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "CF_HDROP 15\0"
	.byte	0x1
	.uleb128 0x84
	.ascii "CF_LOCALE 16\0"
	.byte	0x1
	.uleb128 0x86
	.ascii "CF_OWNERDISPLAY 128\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "CF_DSPTEXT 129\0"
	.byte	0x1
	.uleb128 0x88
	.ascii "CF_DSPBITMAP 130\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "CF_DSPMETAFILEPICT 131\0"
	.byte	0x1
	.uleb128 0x8a
	.ascii "CF_DSPENHMETAFILE 142\0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "CF_PRIVATEFIRST 512\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "CF_PRIVATELAST 767\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "CF_GDIOBJFIRST 768\0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "CF_GDIOBJLAST 1023\0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "HKL_NEXT 1\0"
	.byte	0x1
	.uleb128 0x90
	.ascii "HKL_PREV 0\0"
	.byte	0x1
	.uleb128 0x91
	.ascii "KLF_ACTIVATE 1\0"
	.byte	0x1
	.uleb128 0x92
	.ascii "KLF_SUBSTITUTE_OK 2\0"
	.byte	0x1
	.uleb128 0x93
	.ascii "KLF_UNLOADPREVIOUS 4\0"
	.byte	0x1
	.uleb128 0x94
	.ascii "KLF_REORDER 8\0"
	.byte	0x1
	.uleb128 0x95
	.ascii "KLF_REPLACELANG 16\0"
	.byte	0x1
	.uleb128 0x96
	.ascii "KLF_NOTELLSHELL 128\0"
	.byte	0x1
	.uleb128 0x97
	.ascii "KLF_SETFORPROCESS 256\0"
	.byte	0x1
	.uleb128 0x98
	.ascii "KL_NAMELENGTH 9\0"
	.byte	0x1
	.uleb128 0x99
	.ascii "MF_ENABLED 0\0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "MF_GRAYED 1\0"
	.byte	0x1
	.uleb128 0x9b
	.ascii "MF_DISABLED 2\0"
	.byte	0x1
	.uleb128 0x9c
	.ascii "MF_BITMAP 4\0"
	.byte	0x1
	.uleb128 0x9d
	.ascii "MF_CHECKED 8\0"
	.byte	0x1
	.uleb128 0x9e
	.ascii "MF_MENUBARBREAK 32\0"
	.byte	0x1
	.uleb128 0x9f
	.ascii "MF_MENUBREAK 64\0"
	.byte	0x1
	.uleb128 0xa0
	.ascii "MF_OWNERDRAW 256\0"
	.byte	0x1
	.uleb128 0xa1
	.ascii "MF_POPUP 16\0"
	.byte	0x1
	.uleb128 0xa2
	.ascii "MF_SEPARATOR 0x800\0"
	.byte	0x1
	.uleb128 0xa3
	.ascii "MF_STRING 0\0"
	.byte	0x1
	.uleb128 0xa4
	.ascii "MF_UNCHECKED 0\0"
	.byte	0x1
	.uleb128 0xa5
	.ascii "MF_DEFAULT 4096\0"
	.byte	0x1
	.uleb128 0xa6
	.ascii "MF_SYSMENU 0x2000\0"
	.byte	0x1
	.uleb128 0xa7
	.ascii "MF_HELP 0x4000\0"
	.byte	0x1
	.uleb128 0xa8
	.ascii "MF_END 128\0"
	.byte	0x1
	.uleb128 0xa9
	.ascii "MF_RIGHTJUSTIFY 0x4000\0"
	.byte	0x1
	.uleb128 0xaa
	.ascii "MF_MOUSESELECT 0x8000\0"
	.byte	0x1
	.uleb128 0xab
	.ascii "MF_INSERT 0\0"
	.byte	0x1
	.uleb128 0xac
	.ascii "MF_CHANGE 128\0"
	.byte	0x1
	.uleb128 0xad
	.ascii "MF_APPEND 256\0"
	.byte	0x1
	.uleb128 0xae
	.ascii "MF_DELETE 512\0"
	.byte	0x1
	.uleb128 0xaf
	.ascii "MF_REMOVE 4096\0"
	.byte	0x1
	.uleb128 0xb0
	.ascii "MF_USECHECKBITMAPS 512\0"
	.byte	0x1
	.uleb128 0xb1
	.ascii "MF_UNHILITE 0\0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "MF_HILITE 128\0"
	.file 36 "c:/mingw/include/dbt.h"
	.byte	0x3
	.uleb128 0xb7
	.uleb128 0x24
	.byte	0x1
	.uleb128 0x5d
	.ascii "BSM_ALLCOMPONENTS 0\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "BSM_APPLICATIONS 8\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "BSM_ALLDESKTOPS 16\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "BSM_INSTALLABLEDRIVERS 4\0"
	.byte	0x1
	.uleb128 0x61
	.ascii "BSM_NETDRIVER 2\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "BSM_VXDS 1\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "BSF_FLUSHDISK 0x00000004\0"
	.byte	0x1
	.uleb128 0x64
	.ascii "BSF_FORCEIFHUNG 0x00000020\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "BSF_IGNORECURRENTTASK 0x00000002\0"
	.byte	0x1
	.uleb128 0x66
	.ascii "BSF_NOHANG 0x00000008\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "BSF_NOTIMEOUTIFNOTHUNG 0x00000040\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "BSF_POSTMESSAGE 0x00000010\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "BSF_QUERY 0x00000001\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "BSF_ALLOWSFW 0x00000080\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "BSF_SENDNOTIFYMESSAGE 0x00000100\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0xcb
	.ascii "BROADCAST_QUERY_DENY 1112363332\0"
	.byte	0x1
	.uleb128 0xcc
	.ascii "ENUM_CURRENT_SETTINGS ((DWORD)(-1))\0"
	.byte	0x1
	.uleb128 0xcd
	.ascii "ENUM_REGISTRY_SETTINGS ((DWORD)(-2))\0"
	.byte	0x1
	.uleb128 0xce
	.ascii "CDS_UPDATEREGISTRY 1\0"
	.byte	0x1
	.uleb128 0xcf
	.ascii "CDS_TEST 2\0"
	.byte	0x1
	.uleb128 0xd0
	.ascii "CDS_FULLSCREEN 4\0"
	.byte	0x1
	.uleb128 0xd1
	.ascii "CDS_GLOBAL 8\0"
	.byte	0x1
	.uleb128 0xd2
	.ascii "CDS_SET_PRIMARY 16\0"
	.byte	0x1
	.uleb128 0xd3
	.ascii "CDS_RESET 0x40000000\0"
	.byte	0x1
	.uleb128 0xd4
	.ascii "CDS_SETRECT 0x20000000\0"
	.byte	0x1
	.uleb128 0xd5
	.ascii "CDS_NORESET 0x10000000\0"
	.byte	0x1
	.uleb128 0xd6
	.ascii "DISP_CHANGE_SUCCESSFUL 0\0"
	.byte	0x1
	.uleb128 0xd7
	.ascii "DISP_CHANGE_RESTART 1\0"
	.byte	0x1
	.uleb128 0xd8
	.ascii "DISP_CHANGE_FAILED (-1)\0"
	.byte	0x1
	.uleb128 0xd9
	.ascii "DISP_CHANGE_BADMODE (-2)\0"
	.byte	0x1
	.uleb128 0xda
	.ascii "DISP_CHANGE_NOTUPDATED (-3)\0"
	.byte	0x1
	.uleb128 0xdb
	.ascii "DISP_CHANGE_BADFLAGS (-4)\0"
	.byte	0x1
	.uleb128 0xdc
	.ascii "DISP_CHANGE_BADPARAM (-5)\0"
	.byte	0x1
	.uleb128 0xdd
	.ascii "DISP_CHANGE_BADDUALVIEW (-6)\0"
	.byte	0x1
	.uleb128 0xde
	.ascii "BST_CHECKED 1\0"
	.byte	0x1
	.uleb128 0xdf
	.ascii "BST_INDETERMINATE 2\0"
	.byte	0x1
	.uleb128 0xe0
	.ascii "BST_UNCHECKED 0\0"
	.byte	0x1
	.uleb128 0xe1
	.ascii "BST_FOCUS 8\0"
	.byte	0x1
	.uleb128 0xe2
	.ascii "BST_PUSHED 4\0"
	.byte	0x1
	.uleb128 0xe3
	.ascii "MF_BYCOMMAND 0\0"
	.byte	0x1
	.uleb128 0xe4
	.ascii "MF_BYPOSITION 1024\0"
	.byte	0x1
	.uleb128 0xe5
	.ascii "MF_UNCHECKED 0\0"
	.byte	0x1
	.uleb128 0xe6
	.ascii "MF_HILITE 128\0"
	.byte	0x1
	.uleb128 0xe7
	.ascii "MF_UNHILITE 0\0"
	.byte	0x1
	.uleb128 0xe8
	.ascii "CWP_ALL 0\0"
	.byte	0x1
	.uleb128 0xe9
	.ascii "CWP_SKIPINVISIBLE 1\0"
	.byte	0x1
	.uleb128 0xea
	.ascii "CWP_SKIPDISABLED 2\0"
	.byte	0x1
	.uleb128 0xeb
	.ascii "CWP_SKIPTRANSPARENT 4\0"
	.byte	0x1
	.uleb128 0xec
	.ascii "IMAGE_BITMAP 0\0"
	.byte	0x1
	.uleb128 0xed
	.ascii "IMAGE_ICON 1\0"
	.byte	0x1
	.uleb128 0xee
	.ascii "IMAGE_CURSOR 2\0"
	.byte	0x1
	.uleb128 0xef
	.ascii "IMAGE_ENHMETAFILE 3\0"
	.byte	0x1
	.uleb128 0xf0
	.ascii "DF_ALLOWOTHERACCOUNTHOOK 1\0"
	.byte	0x1
	.uleb128 0xf1
	.ascii "DESKTOP_CREATEMENU 4\0"
	.byte	0x1
	.uleb128 0xf2
	.ascii "DESKTOP_CREATEWINDOW 2\0"
	.byte	0x1
	.uleb128 0xf3
	.ascii "DESKTOP_ENUMERATE 64\0"
	.byte	0x1
	.uleb128 0xf4
	.ascii "DESKTOP_HOOKCONTROL 8\0"
	.byte	0x1
	.uleb128 0xf5
	.ascii "DESKTOP_JOURNALPLAYBACK 32\0"
	.byte	0x1
	.uleb128 0xf6
	.ascii "DESKTOP_JOURNALRECORD 16\0"
	.byte	0x1
	.uleb128 0xf7
	.ascii "DESKTOP_READOBJECTS 1\0"
	.byte	0x1
	.uleb128 0xf8
	.ascii "DESKTOP_SWITCHDESKTOP 256\0"
	.byte	0x1
	.uleb128 0xf9
	.ascii "DESKTOP_WRITEOBJECTS 128\0"
	.byte	0x1
	.uleb128 0xfa
	.ascii "CW_USEDEFAULT 0x80000000\0"
	.byte	0x1
	.uleb128 0xfb
	.ascii "WS_BORDER 0x800000\0"
	.byte	0x1
	.uleb128 0xfc
	.ascii "WS_CAPTION 0xC00000\0"
	.byte	0x1
	.uleb128 0xfd
	.ascii "WS_CHILD 0x40000000\0"
	.byte	0x1
	.uleb128 0xfe
	.ascii "WS_CHILDWINDOW 0x40000000\0"
	.byte	0x1
	.uleb128 0xff
	.ascii "WS_CLIPCHILDREN 0x2000000\0"
	.byte	0x1
	.uleb128 0x100
	.ascii "WS_CLIPSIBLINGS 0x4000000\0"
	.byte	0x1
	.uleb128 0x101
	.ascii "WS_DISABLED 0x8000000\0"
	.byte	0x1
	.uleb128 0x102
	.ascii "WS_DLGFRAME 0x400000\0"
	.byte	0x1
	.uleb128 0x103
	.ascii "WS_GROUP 0x20000\0"
	.byte	0x1
	.uleb128 0x104
	.ascii "WS_HSCROLL 0x100000\0"
	.byte	0x1
	.uleb128 0x105
	.ascii "WS_ICONIC 0x20000000\0"
	.byte	0x1
	.uleb128 0x106
	.ascii "WS_MAXIMIZE 0x1000000\0"
	.byte	0x1
	.uleb128 0x107
	.ascii "WS_MAXIMIZEBOX 0x10000\0"
	.byte	0x1
	.uleb128 0x108
	.ascii "WS_MINIMIZE 0x20000000\0"
	.byte	0x1
	.uleb128 0x109
	.ascii "WS_MINIMIZEBOX 0x20000\0"
	.byte	0x1
	.uleb128 0x10a
	.ascii "WS_OVERLAPPED 0\0"
	.byte	0x1
	.uleb128 0x10b
	.ascii "WS_OVERLAPPEDWINDOW 0xCF0000\0"
	.byte	0x1
	.uleb128 0x10c
	.ascii "WS_POPUP 0x80000000\0"
	.byte	0x1
	.uleb128 0x10d
	.ascii "WS_POPUPWINDOW 0x80880000\0"
	.byte	0x1
	.uleb128 0x10e
	.ascii "WS_SIZEBOX 0x40000\0"
	.byte	0x1
	.uleb128 0x10f
	.ascii "WS_SYSMENU 0x80000\0"
	.byte	0x1
	.uleb128 0x110
	.ascii "WS_TABSTOP 0x10000\0"
	.byte	0x1
	.uleb128 0x111
	.ascii "WS_THICKFRAME 0x40000\0"
	.byte	0x1
	.uleb128 0x112
	.ascii "WS_TILED 0\0"
	.byte	0x1
	.uleb128 0x113
	.ascii "WS_TILEDWINDOW 0xCF0000\0"
	.byte	0x1
	.uleb128 0x114
	.ascii "WS_VISIBLE 0x10000000\0"
	.byte	0x1
	.uleb128 0x115
	.ascii "WS_VSCROLL 0x200000\0"
	.byte	0x1
	.uleb128 0x116
	.ascii "MDIS_ALLCHILDSTYLES 1\0"
	.byte	0x1
	.uleb128 0x117
	.ascii "BS_3STATE 5\0"
	.byte	0x1
	.uleb128 0x118
	.ascii "BS_AUTO3STATE 6\0"
	.byte	0x1
	.uleb128 0x119
	.ascii "BS_AUTOCHECKBOX 3\0"
	.byte	0x1
	.uleb128 0x11a
	.ascii "BS_AUTORADIOBUTTON 9\0"
	.byte	0x1
	.uleb128 0x11b
	.ascii "BS_BITMAP 128\0"
	.byte	0x1
	.uleb128 0x11c
	.ascii "BS_BOTTOM 0x800\0"
	.byte	0x1
	.uleb128 0x11d
	.ascii "BS_CENTER 0x300\0"
	.byte	0x1
	.uleb128 0x11e
	.ascii "BS_CHECKBOX 2\0"
	.byte	0x1
	.uleb128 0x11f
	.ascii "BS_DEFPUSHBUTTON 1\0"
	.byte	0x1
	.uleb128 0x120
	.ascii "BS_GROUPBOX 7\0"
	.byte	0x1
	.uleb128 0x121
	.ascii "BS_ICON 64\0"
	.byte	0x1
	.uleb128 0x122
	.ascii "BS_LEFT 256\0"
	.byte	0x1
	.uleb128 0x123
	.ascii "BS_LEFTTEXT 32\0"
	.byte	0x1
	.uleb128 0x124
	.ascii "BS_MULTILINE 0x2000\0"
	.byte	0x1
	.uleb128 0x125
	.ascii "BS_NOTIFY 0x4000\0"
	.byte	0x1
	.uleb128 0x126
	.ascii "BS_OWNERDRAW 0xB\0"
	.byte	0x1
	.uleb128 0x127
	.ascii "BS_PUSHBUTTON 0\0"
	.byte	0x1
	.uleb128 0x128
	.ascii "BS_PUSHLIKE 4096\0"
	.byte	0x1
	.uleb128 0x129
	.ascii "BS_RADIOBUTTON 4\0"
	.byte	0x1
	.uleb128 0x12a
	.ascii "BS_RIGHT 512\0"
	.byte	0x1
	.uleb128 0x12b
	.ascii "BS_RIGHTBUTTON 32\0"
	.byte	0x1
	.uleb128 0x12c
	.ascii "BS_TEXT 0\0"
	.byte	0x1
	.uleb128 0x12d
	.ascii "BS_TOP 0x400\0"
	.byte	0x1
	.uleb128 0x12e
	.ascii "BS_USERBUTTON 8\0"
	.byte	0x1
	.uleb128 0x12f
	.ascii "BS_VCENTER 0xC00\0"
	.byte	0x1
	.uleb128 0x130
	.ascii "BS_FLAT 0x8000\0"
	.byte	0x1
	.uleb128 0x131
	.ascii "CBS_AUTOHSCROLL 64\0"
	.byte	0x1
	.uleb128 0x132
	.ascii "CBS_DISABLENOSCROLL 0x800\0"
	.byte	0x1
	.uleb128 0x133
	.ascii "CBS_DROPDOWN 2\0"
	.byte	0x1
	.uleb128 0x134
	.ascii "CBS_DROPDOWNLIST 3\0"
	.byte	0x1
	.uleb128 0x135
	.ascii "CBS_HASSTRINGS 512\0"
	.byte	0x1
	.uleb128 0x136
	.ascii "CBS_LOWERCASE 0x4000\0"
	.byte	0x1
	.uleb128 0x137
	.ascii "CBS_NOINTEGRALHEIGHT 0x400\0"
	.byte	0x1
	.uleb128 0x138
	.ascii "CBS_OEMCONVERT 128\0"
	.byte	0x1
	.uleb128 0x139
	.ascii "CBS_OWNERDRAWFIXED 16\0"
	.byte	0x1
	.uleb128 0x13a
	.ascii "CBS_OWNERDRAWVARIABLE 32\0"
	.byte	0x1
	.uleb128 0x13b
	.ascii "CBS_SIMPLE 1\0"
	.byte	0x1
	.uleb128 0x13c
	.ascii "CBS_SORT 256\0"
	.byte	0x1
	.uleb128 0x13d
	.ascii "CBS_UPPERCASE 0x2000\0"
	.byte	0x1
	.uleb128 0x13e
	.ascii "ES_AUTOHSCROLL 128\0"
	.byte	0x1
	.uleb128 0x13f
	.ascii "ES_AUTOVSCROLL 64\0"
	.byte	0x1
	.uleb128 0x140
	.ascii "ES_CENTER 1\0"
	.byte	0x1
	.uleb128 0x141
	.ascii "ES_LEFT 0\0"
	.byte	0x1
	.uleb128 0x142
	.ascii "ES_LOWERCASE 16\0"
	.byte	0x1
	.uleb128 0x143
	.ascii "ES_MULTILINE 4\0"
	.byte	0x1
	.uleb128 0x144
	.ascii "ES_NOHIDESEL 256\0"
	.byte	0x1
	.uleb128 0x145
	.ascii "ES_NUMBER 0x2000\0"
	.byte	0x1
	.uleb128 0x146
	.ascii "ES_OEMCONVERT 0x400\0"
	.byte	0x1
	.uleb128 0x147
	.ascii "ES_PASSWORD 32\0"
	.byte	0x1
	.uleb128 0x148
	.ascii "ES_READONLY 0x800\0"
	.byte	0x1
	.uleb128 0x149
	.ascii "ES_RIGHT 2\0"
	.byte	0x1
	.uleb128 0x14a
	.ascii "ES_UPPERCASE 8\0"
	.byte	0x1
	.uleb128 0x14b
	.ascii "ES_WANTRETURN 4096\0"
	.byte	0x1
	.uleb128 0x14c
	.ascii "LBS_DISABLENOSCROLL 4096\0"
	.byte	0x1
	.uleb128 0x14d
	.ascii "LBS_EXTENDEDSEL 0x800\0"
	.byte	0x1
	.uleb128 0x14e
	.ascii "LBS_HASSTRINGS 64\0"
	.byte	0x1
	.uleb128 0x14f
	.ascii "LBS_MULTICOLUMN 512\0"
	.byte	0x1
	.uleb128 0x150
	.ascii "LBS_MULTIPLESEL 8\0"
	.byte	0x1
	.uleb128 0x151
	.ascii "LBS_NODATA 0x2000\0"
	.byte	0x1
	.uleb128 0x152
	.ascii "LBS_NOINTEGRALHEIGHT 256\0"
	.byte	0x1
	.uleb128 0x153
	.ascii "LBS_NOREDRAW 4\0"
	.byte	0x1
	.uleb128 0x154
	.ascii "LBS_NOSEL 0x4000\0"
	.byte	0x1
	.uleb128 0x155
	.ascii "LBS_NOTIFY 1\0"
	.byte	0x1
	.uleb128 0x156
	.ascii "LBS_OWNERDRAWFIXED 16\0"
	.byte	0x1
	.uleb128 0x157
	.ascii "LBS_OWNERDRAWVARIABLE 32\0"
	.byte	0x1
	.uleb128 0x158
	.ascii "LBS_SORT 2\0"
	.byte	0x1
	.uleb128 0x159
	.ascii "LBS_STANDARD 0xA00003\0"
	.byte	0x1
	.uleb128 0x15a
	.ascii "LBS_USETABSTOPS 128\0"
	.byte	0x1
	.uleb128 0x15b
	.ascii "LBS_WANTKEYBOARDINPUT 0x400\0"
	.byte	0x1
	.uleb128 0x15c
	.ascii "SBS_BOTTOMALIGN 4\0"
	.byte	0x1
	.uleb128 0x15d
	.ascii "SBS_HORZ 0\0"
	.byte	0x1
	.uleb128 0x15e
	.ascii "SBS_LEFTALIGN 2\0"
	.byte	0x1
	.uleb128 0x15f
	.ascii "SBS_RIGHTALIGN 4\0"
	.byte	0x1
	.uleb128 0x160
	.ascii "SBS_SIZEBOX 8\0"
	.byte	0x1
	.uleb128 0x161
	.ascii "SBS_SIZEBOXBOTTOMRIGHTALIGN 4\0"
	.byte	0x1
	.uleb128 0x162
	.ascii "SBS_SIZEBOXTOPLEFTALIGN 2\0"
	.byte	0x1
	.uleb128 0x163
	.ascii "SBS_SIZEGRIP 16\0"
	.byte	0x1
	.uleb128 0x164
	.ascii "SBS_TOPALIGN 2\0"
	.byte	0x1
	.uleb128 0x165
	.ascii "SBS_VERT 1\0"
	.byte	0x1
	.uleb128 0x166
	.ascii "SS_BITMAP 14\0"
	.byte	0x1
	.uleb128 0x167
	.ascii "SS_BLACKFRAME 7\0"
	.byte	0x1
	.uleb128 0x168
	.ascii "SS_BLACKRECT 4\0"
	.byte	0x1
	.uleb128 0x169
	.ascii "SS_CENTER 1\0"
	.byte	0x1
	.uleb128 0x16a
	.ascii "SS_CENTERIMAGE 512\0"
	.byte	0x1
	.uleb128 0x16b
	.ascii "SS_ENHMETAFILE 15\0"
	.byte	0x1
	.uleb128 0x16c
	.ascii "SS_ETCHEDFRAME 18\0"
	.byte	0x1
	.uleb128 0x16d
	.ascii "SS_ETCHEDHORZ 16\0"
	.byte	0x1
	.uleb128 0x16e
	.ascii "SS_ETCHEDVERT 17\0"
	.byte	0x1
	.uleb128 0x16f
	.ascii "SS_GRAYFRAME 8\0"
	.byte	0x1
	.uleb128 0x170
	.ascii "SS_GRAYRECT 5\0"
	.byte	0x1
	.uleb128 0x171
	.ascii "SS_ICON 3\0"
	.byte	0x1
	.uleb128 0x172
	.ascii "SS_LEFT 0\0"
	.byte	0x1
	.uleb128 0x173
	.ascii "SS_LEFTNOWORDWRAP 0xC\0"
	.byte	0x1
	.uleb128 0x174
	.ascii "SS_NOPREFIX 128\0"
	.byte	0x1
	.uleb128 0x175
	.ascii "SS_NOTIFY 256\0"
	.byte	0x1
	.uleb128 0x176
	.ascii "SS_OWNERDRAW 0xD\0"
	.byte	0x1
	.uleb128 0x177
	.ascii "SS_REALSIZEIMAGE 0x800\0"
	.byte	0x1
	.uleb128 0x178
	.ascii "SS_RIGHT 2\0"
	.byte	0x1
	.uleb128 0x179
	.ascii "SS_RIGHTJUST 0x400\0"
	.byte	0x1
	.uleb128 0x17a
	.ascii "SS_SIMPLE 11\0"
	.byte	0x1
	.uleb128 0x17b
	.ascii "SS_SUNKEN 4096\0"
	.byte	0x1
	.uleb128 0x17c
	.ascii "SS_WHITEFRAME 9\0"
	.byte	0x1
	.uleb128 0x17d
	.ascii "SS_WHITERECT 6\0"
	.byte	0x1
	.uleb128 0x17e
	.ascii "SS_USERITEM 10\0"
	.byte	0x1
	.uleb128 0x17f
	.ascii "SS_TYPEMASK 0x0000001FL\0"
	.byte	0x1
	.uleb128 0x180
	.ascii "SS_ENDELLIPSIS 0x00004000L\0"
	.byte	0x1
	.uleb128 0x181
	.ascii "SS_PATHELLIPSIS 0x00008000L\0"
	.byte	0x1
	.uleb128 0x182
	.ascii "SS_WORDELLIPSIS 0x0000C000L\0"
	.byte	0x1
	.uleb128 0x183
	.ascii "SS_ELLIPSISMASK 0x0000C000L\0"
	.byte	0x1
	.uleb128 0x184
	.ascii "DS_3DLOOK 4\0"
	.byte	0x1
	.uleb128 0x185
	.ascii "DS_ABSALIGN 1\0"
	.byte	0x1
	.uleb128 0x186
	.ascii "DS_CENTER 0x800\0"
	.byte	0x1
	.uleb128 0x187
	.ascii "DS_CENTERMOUSE 4096\0"
	.byte	0x1
	.uleb128 0x188
	.ascii "DS_CONTEXTHELP 0x2000\0"
	.byte	0x1
	.uleb128 0x189
	.ascii "DS_CONTROL 0x400\0"
	.byte	0x1
	.uleb128 0x18a
	.ascii "DS_FIXEDSYS 8\0"
	.byte	0x1
	.uleb128 0x18b
	.ascii "DS_LOCALEDIT 32\0"
	.byte	0x1
	.uleb128 0x18c
	.ascii "DS_MODALFRAME 128\0"
	.byte	0x1
	.uleb128 0x18d
	.ascii "DS_NOFAILCREATE 16\0"
	.byte	0x1
	.uleb128 0x18e
	.ascii "DS_NOIDLEMSG 256\0"
	.byte	0x1
	.uleb128 0x18f
	.ascii "DS_SETFONT 64\0"
	.byte	0x1
	.uleb128 0x190
	.ascii "DS_SETFOREGROUND 512\0"
	.byte	0x1
	.uleb128 0x191
	.ascii "DS_SYSMODAL 2\0"
	.byte	0x1
	.uleb128 0x192
	.ascii "DS_SHELLFONT (DS_SETFONT | DS_FIXEDSYS)\0"
	.byte	0x1
	.uleb128 0x193
	.ascii "WS_EX_ACCEPTFILES 16\0"
	.byte	0x1
	.uleb128 0x194
	.ascii "WS_EX_APPWINDOW 0x40000\0"
	.byte	0x1
	.uleb128 0x195
	.ascii "WS_EX_CLIENTEDGE 512\0"
	.byte	0x1
	.uleb128 0x196
	.ascii "WS_EX_COMPOSITED 0x2000000\0"
	.byte	0x1
	.uleb128 0x197
	.ascii "WS_EX_CONTEXTHELP 0x400\0"
	.byte	0x1
	.uleb128 0x198
	.ascii "WS_EX_CONTROLPARENT 0x10000\0"
	.byte	0x1
	.uleb128 0x199
	.ascii "WS_EX_DLGMODALFRAME 1\0"
	.byte	0x1
	.uleb128 0x19a
	.ascii "WS_EX_LAYERED 0x80000\0"
	.byte	0x1
	.uleb128 0x19b
	.ascii "WS_EX_LAYOUTRTL 0x400000\0"
	.byte	0x1
	.uleb128 0x19c
	.ascii "WS_EX_LEFT 0\0"
	.byte	0x1
	.uleb128 0x19d
	.ascii "WS_EX_LEFTSCROLLBAR 0x4000\0"
	.byte	0x1
	.uleb128 0x19e
	.ascii "WS_EX_LTRREADING 0\0"
	.byte	0x1
	.uleb128 0x19f
	.ascii "WS_EX_MDICHILD 64\0"
	.byte	0x1
	.uleb128 0x1a0
	.ascii "WS_EX_NOACTIVATE 0x8000000\0"
	.byte	0x1
	.uleb128 0x1a1
	.ascii "WS_EX_NOINHERITLAYOUT 0x100000\0"
	.byte	0x1
	.uleb128 0x1a2
	.ascii "WS_EX_NOPARENTNOTIFY 4\0"
	.byte	0x1
	.uleb128 0x1a3
	.ascii "WS_EX_OVERLAPPEDWINDOW 0x300\0"
	.byte	0x1
	.uleb128 0x1a4
	.ascii "WS_EX_PALETTEWINDOW 0x188\0"
	.byte	0x1
	.uleb128 0x1a5
	.ascii "WS_EX_RIGHT 0x1000\0"
	.byte	0x1
	.uleb128 0x1a6
	.ascii "WS_EX_RIGHTSCROLLBAR 0\0"
	.byte	0x1
	.uleb128 0x1a7
	.ascii "WS_EX_RTLREADING 0x2000\0"
	.byte	0x1
	.uleb128 0x1a8
	.ascii "WS_EX_STATICEDGE 0x20000\0"
	.byte	0x1
	.uleb128 0x1a9
	.ascii "WS_EX_TOOLWINDOW 128\0"
	.byte	0x1
	.uleb128 0x1aa
	.ascii "WS_EX_TOPMOST 8\0"
	.byte	0x1
	.uleb128 0x1ab
	.ascii "WS_EX_TRANSPARENT 32\0"
	.byte	0x1
	.uleb128 0x1ac
	.ascii "WS_EX_WINDOWEDGE 256\0"
	.byte	0x1
	.uleb128 0x1ad
	.ascii "WINSTA_ALL_ACCESS 895\0"
	.byte	0x1
	.uleb128 0x1ae
	.ascii "WINSTA_ACCESSCLIPBOARD 4\0"
	.byte	0x1
	.uleb128 0x1af
	.ascii "WINSTA_ACCESSGLOBALATOMS 32\0"
	.byte	0x1
	.uleb128 0x1b0
	.ascii "WINSTA_CREATEDESKTOP 8\0"
	.byte	0x1
	.uleb128 0x1b1
	.ascii "WINSTA_ENUMDESKTOPS 1\0"
	.byte	0x1
	.uleb128 0x1b2
	.ascii "WINSTA_ENUMERATE 256\0"
	.byte	0x1
	.uleb128 0x1b3
	.ascii "WINSTA_EXITWINDOWS 64\0"
	.byte	0x1
	.uleb128 0x1b4
	.ascii "WINSTA_READATTRIBUTES 2\0"
	.byte	0x1
	.uleb128 0x1b5
	.ascii "WINSTA_READSCREEN 512\0"
	.byte	0x1
	.uleb128 0x1b6
	.ascii "WINSTA_WRITEATTRIBUTES 16\0"
	.byte	0x1
	.uleb128 0x1b7
	.ascii "DDL_READWRITE 0\0"
	.byte	0x1
	.uleb128 0x1b8
	.ascii "DDL_READONLY 1\0"
	.byte	0x1
	.uleb128 0x1b9
	.ascii "DDL_HIDDEN 2\0"
	.byte	0x1
	.uleb128 0x1ba
	.ascii "DDL_SYSTEM 4\0"
	.byte	0x1
	.uleb128 0x1bb
	.ascii "DDL_DIRECTORY 16\0"
	.byte	0x1
	.uleb128 0x1bc
	.ascii "DDL_ARCHIVE 32\0"
	.byte	0x1
	.uleb128 0x1bd
	.ascii "DDL_POSTMSGS 8192\0"
	.byte	0x1
	.uleb128 0x1be
	.ascii "DDL_DRIVES 16384\0"
	.byte	0x1
	.uleb128 0x1bf
	.ascii "DDL_EXCLUSIVE 32768\0"
	.byte	0x1
	.uleb128 0x1c0
	.ascii "DC_ACTIVE 0x00000001\0"
	.byte	0x1
	.uleb128 0x1c1
	.ascii "DC_SMALLCAP 0x00000002\0"
	.byte	0x1
	.uleb128 0x1c2
	.ascii "DC_ICON 0x00000004\0"
	.byte	0x1
	.uleb128 0x1c3
	.ascii "DC_TEXT 0x00000008\0"
	.byte	0x1
	.uleb128 0x1c4
	.ascii "DC_INBUTTON 0x00000010\0"
	.byte	0x1
	.uleb128 0x1c7
	.ascii "DC_CAPTION (DC_ICON | DC_TEXT | DC_BUTTONS)\0"
	.byte	0x1
	.uleb128 0x1c8
	.ascii "DC_NC (DC_CAPTION | DC_FRAME)\0"
	.byte	0x1
	.uleb128 0x1ca
	.ascii "BDR_RAISEDOUTER 1\0"
	.byte	0x1
	.uleb128 0x1cb
	.ascii "BDR_SUNKENOUTER 2\0"
	.byte	0x1
	.uleb128 0x1cc
	.ascii "BDR_RAISEDINNER 4\0"
	.byte	0x1
	.uleb128 0x1cd
	.ascii "BDR_SUNKENINNER 8\0"
	.byte	0x1
	.uleb128 0x1ce
	.ascii "BDR_OUTER 3\0"
	.byte	0x1
	.uleb128 0x1cf
	.ascii "BDR_INNER 0xC\0"
	.byte	0x1
	.uleb128 0x1d0
	.ascii "BDR_RAISED 5\0"
	.byte	0x1
	.uleb128 0x1d1
	.ascii "BDR_SUNKEN 10\0"
	.byte	0x1
	.uleb128 0x1d2
	.ascii "EDGE_RAISED (BDR_RAISEDOUTER | BDR_RAISEDINNER)\0"
	.byte	0x1
	.uleb128 0x1d3
	.ascii "EDGE_SUNKEN (BDR_SUNKENOUTER | BDR_SUNKENINNER)\0"
	.byte	0x1
	.uleb128 0x1d4
	.ascii "EDGE_ETCHED (BDR_SUNKENOUTER | BDR_RAISEDINNER)\0"
	.byte	0x1
	.uleb128 0x1d5
	.ascii "EDGE_BUMP (BDR_RAISEDOUTER | BDR_SUNKENINNER)\0"
	.byte	0x1
	.uleb128 0x1d6
	.ascii "BF_LEFT 1\0"
	.byte	0x1
	.uleb128 0x1d7
	.ascii "BF_TOP 2\0"
	.byte	0x1
	.uleb128 0x1d8
	.ascii "BF_RIGHT 4\0"
	.byte	0x1
	.uleb128 0x1d9
	.ascii "BF_BOTTOM 8\0"
	.byte	0x1
	.uleb128 0x1da
	.ascii "BF_TOPLEFT (BF_TOP | BF_LEFT)\0"
	.byte	0x1
	.uleb128 0x1db
	.ascii "BF_TOPRIGHT (BF_TOP | BF_RIGHT)\0"
	.byte	0x1
	.uleb128 0x1dc
	.ascii "BF_BOTTOMLEFT (BF_BOTTOM | BF_LEFT)\0"
	.byte	0x1
	.uleb128 0x1dd
	.ascii "BF_BOTTOMRIGHT (BF_BOTTOM | BF_RIGHT)\0"
	.byte	0x1
	.uleb128 0x1de
	.ascii "BF_RECT (BF_LEFT | BF_TOP | BF_RIGHT | BF_BOTTOM)\0"
	.byte	0x1
	.uleb128 0x1df
	.ascii "BF_DIAGONAL 16\0"
	.byte	0x1
	.uleb128 0x1e0
	.ascii "BF_DIAGONAL_ENDTOPRIGHT (BF_DIAGONAL | BF_TOP | BF_RIGHT)\0"
	.byte	0x1
	.uleb128 0x1e1
	.ascii "BF_DIAGONAL_ENDTOPLEFT (BF_DIAGONAL | BF_TOP | BF_LEFT)\0"
	.byte	0x1
	.uleb128 0x1e2
	.ascii "BF_DIAGONAL_ENDBOTTOMLEFT (BF_DIAGONAL | BF_BOTTOM | BF_LEFT)\0"
	.byte	0x1
	.uleb128 0x1e3
	.ascii "BF_DIAGONAL_ENDBOTTOMRIGHT (BF_DIAGONAL | BF_BOTTOM | BF_RIGHT)\0"
	.byte	0x1
	.uleb128 0x1e4
	.ascii "BF_MIDDLE 0x800\0"
	.byte	0x1
	.uleb128 0x1e5
	.ascii "BF_SOFT 0x1000\0"
	.byte	0x1
	.uleb128 0x1e6
	.ascii "BF_ADJUST 0x2000\0"
	.byte	0x1
	.uleb128 0x1e7
	.ascii "BF_FLAT 0x4000\0"
	.byte	0x1
	.uleb128 0x1e8
	.ascii "BF_MONO 0x8000\0"
	.byte	0x1
	.uleb128 0x1ea
	.ascii "DFC_CAPTION 1\0"
	.byte	0x1
	.uleb128 0x1eb
	.ascii "DFC_MENU 2\0"
	.byte	0x1
	.uleb128 0x1ec
	.ascii "DFC_SCROLL 3\0"
	.byte	0x1
	.uleb128 0x1ed
	.ascii "DFC_BUTTON 4\0"
	.byte	0x1
	.uleb128 0x1ef
	.ascii "DFCS_CAPTIONCLOSE 0\0"
	.byte	0x1
	.uleb128 0x1f0
	.ascii "DFCS_CAPTIONMIN 1\0"
	.byte	0x1
	.uleb128 0x1f1
	.ascii "DFCS_CAPTIONMAX 2\0"
	.byte	0x1
	.uleb128 0x1f2
	.ascii "DFCS_CAPTIONRESTORE 3\0"
	.byte	0x1
	.uleb128 0x1f3
	.ascii "DFCS_CAPTIONHELP 4\0"
	.byte	0x1
	.uleb128 0x1f4
	.ascii "DFCS_MENUARROW 0\0"
	.byte	0x1
	.uleb128 0x1f5
	.ascii "DFCS_MENUCHECK 1\0"
	.byte	0x1
	.uleb128 0x1f6
	.ascii "DFCS_MENUBULLET 2\0"
	.byte	0x1
	.uleb128 0x1f7
	.ascii "DFCS_MENUARROWRIGHT 4\0"
	.byte	0x1
	.uleb128 0x1f8
	.ascii "DFCS_SCROLLUP 0\0"
	.byte	0x1
	.uleb128 0x1f9
	.ascii "DFCS_SCROLLDOWN 1\0"
	.byte	0x1
	.uleb128 0x1fa
	.ascii "DFCS_SCROLLLEFT 2\0"
	.byte	0x1
	.uleb128 0x1fb
	.ascii "DFCS_SCROLLRIGHT 3\0"
	.byte	0x1
	.uleb128 0x1fc
	.ascii "DFCS_SCROLLCOMBOBOX 5\0"
	.byte	0x1
	.uleb128 0x1fd
	.ascii "DFCS_SCROLLSIZEGRIP 8\0"
	.byte	0x1
	.uleb128 0x1fe
	.ascii "DFCS_SCROLLSIZEGRIPRIGHT 16\0"
	.byte	0x1
	.uleb128 0x1ff
	.ascii "DFCS_BUTTONCHECK 0\0"
	.byte	0x1
	.uleb128 0x200
	.ascii "DFCS_BUTTONRADIOIMAGE 1\0"
	.byte	0x1
	.uleb128 0x201
	.ascii "DFCS_BUTTONRADIOMASK 2\0"
	.byte	0x1
	.uleb128 0x202
	.ascii "DFCS_BUTTONRADIO 4\0"
	.byte	0x1
	.uleb128 0x203
	.ascii "DFCS_BUTTON3STATE 8\0"
	.byte	0x1
	.uleb128 0x204
	.ascii "DFCS_BUTTONPUSH 16\0"
	.byte	0x1
	.uleb128 0x205
	.ascii "DFCS_INACTIVE 256\0"
	.byte	0x1
	.uleb128 0x206
	.ascii "DFCS_PUSHED 512\0"
	.byte	0x1
	.uleb128 0x207
	.ascii "DFCS_CHECKED 1024\0"
	.byte	0x1
	.uleb128 0x209
	.ascii "DFCS_ADJUSTRECT 0x2000\0"
	.byte	0x1
	.uleb128 0x20a
	.ascii "DFCS_FLAT 0x4000\0"
	.byte	0x1
	.uleb128 0x20b
	.ascii "DFCS_MONO 0x8000\0"
	.byte	0x1
	.uleb128 0x20c
	.ascii "DST_COMPLEX 0\0"
	.byte	0x1
	.uleb128 0x20d
	.ascii "DST_TEXT 1\0"
	.byte	0x1
	.uleb128 0x20e
	.ascii "DST_PREFIXTEXT 2\0"
	.byte	0x1
	.uleb128 0x20f
	.ascii "DST_ICON 3\0"
	.byte	0x1
	.uleb128 0x210
	.ascii "DST_BITMAP 4\0"
	.byte	0x1
	.uleb128 0x211
	.ascii "DSS_NORMAL 0\0"
	.byte	0x1
	.uleb128 0x212
	.ascii "DSS_UNION 16\0"
	.byte	0x1
	.uleb128 0x213
	.ascii "DSS_DISABLED 32\0"
	.byte	0x1
	.uleb128 0x214
	.ascii "DSS_MONO 128\0"
	.byte	0x1
	.uleb128 0x215
	.ascii "DSS_RIGHT 0x8000\0"
	.byte	0x1
	.uleb128 0x216
	.ascii "DT_BOTTOM 8\0"
	.byte	0x1
	.uleb128 0x217
	.ascii "DT_CALCRECT 1024\0"
	.byte	0x1
	.uleb128 0x218
	.ascii "DT_CENTER 1\0"
	.byte	0x1
	.uleb128 0x219
	.ascii "DT_EDITCONTROL 8192\0"
	.byte	0x1
	.uleb128 0x21a
	.ascii "DT_END_ELLIPSIS 32768\0"
	.byte	0x1
	.uleb128 0x21b
	.ascii "DT_PATH_ELLIPSIS 16384\0"
	.byte	0x1
	.uleb128 0x21c
	.ascii "DT_WORD_ELLIPSIS 0x40000\0"
	.byte	0x1
	.uleb128 0x21d
	.ascii "DT_EXPANDTABS 64\0"
	.byte	0x1
	.uleb128 0x21e
	.ascii "DT_EXTERNALLEADING 512\0"
	.byte	0x1
	.uleb128 0x21f
	.ascii "DT_LEFT 0\0"
	.byte	0x1
	.uleb128 0x220
	.ascii "DT_MODIFYSTRING 65536\0"
	.byte	0x1
	.uleb128 0x221
	.ascii "DT_NOCLIP 256\0"
	.byte	0x1
	.uleb128 0x222
	.ascii "DT_NOPREFIX 2048\0"
	.byte	0x1
	.uleb128 0x223
	.ascii "DT_RIGHT 2\0"
	.byte	0x1
	.uleb128 0x224
	.ascii "DT_RTLREADING 131072\0"
	.byte	0x1
	.uleb128 0x225
	.ascii "DT_SINGLELINE 32\0"
	.byte	0x1
	.uleb128 0x226
	.ascii "DT_TABSTOP 128\0"
	.byte	0x1
	.uleb128 0x227
	.ascii "DT_TOP 0\0"
	.byte	0x1
	.uleb128 0x228
	.ascii "DT_VCENTER 4\0"
	.byte	0x1
	.uleb128 0x229
	.ascii "DT_WORDBREAK 16\0"
	.byte	0x1
	.uleb128 0x22a
	.ascii "DT_INTERNAL 4096\0"
	.byte	0x1
	.uleb128 0x22b
	.ascii "WB_ISDELIMITER 2\0"
	.byte	0x1
	.uleb128 0x22c
	.ascii "WB_LEFT 0\0"
	.byte	0x1
	.uleb128 0x22d
	.ascii "WB_RIGHT 1\0"
	.byte	0x1
	.uleb128 0x22e
	.ascii "SB_HORZ 0\0"
	.byte	0x1
	.uleb128 0x22f
	.ascii "SB_VERT 1\0"
	.byte	0x1
	.uleb128 0x230
	.ascii "SB_CTL 2\0"
	.byte	0x1
	.uleb128 0x231
	.ascii "SB_BOTH 3\0"
	.byte	0x1
	.uleb128 0x232
	.ascii "ESB_DISABLE_BOTH 3\0"
	.byte	0x1
	.uleb128 0x233
	.ascii "ESB_DISABLE_DOWN 2\0"
	.byte	0x1
	.uleb128 0x234
	.ascii "ESB_DISABLE_LEFT 1\0"
	.byte	0x1
	.uleb128 0x235
	.ascii "ESB_DISABLE_LTUP 1\0"
	.byte	0x1
	.uleb128 0x236
	.ascii "ESB_DISABLE_RIGHT 2\0"
	.byte	0x1
	.uleb128 0x237
	.ascii "ESB_DISABLE_RTDN 2\0"
	.byte	0x1
	.uleb128 0x238
	.ascii "ESB_DISABLE_UP 1\0"
	.byte	0x1
	.uleb128 0x239
	.ascii "ESB_ENABLE_BOTH 0\0"
	.byte	0x1
	.uleb128 0x23a
	.ascii "SB_LINEUP 0\0"
	.byte	0x1
	.uleb128 0x23b
	.ascii "SB_LINEDOWN 1\0"
	.byte	0x1
	.uleb128 0x23c
	.ascii "SB_LINELEFT 0\0"
	.byte	0x1
	.uleb128 0x23d
	.ascii "SB_LINERIGHT 1\0"
	.byte	0x1
	.uleb128 0x23e
	.ascii "SB_PAGEUP 2\0"
	.byte	0x1
	.uleb128 0x23f
	.ascii "SB_PAGEDOWN 3\0"
	.byte	0x1
	.uleb128 0x240
	.ascii "SB_PAGELEFT 2\0"
	.byte	0x1
	.uleb128 0x241
	.ascii "SB_PAGERIGHT 3\0"
	.byte	0x1
	.uleb128 0x242
	.ascii "SB_THUMBPOSITION 4\0"
	.byte	0x1
	.uleb128 0x243
	.ascii "SB_THUMBTRACK 5\0"
	.byte	0x1
	.uleb128 0x244
	.ascii "SB_ENDSCROLL 8\0"
	.byte	0x1
	.uleb128 0x245
	.ascii "SB_LEFT 6\0"
	.byte	0x1
	.uleb128 0x246
	.ascii "SB_RIGHT 7\0"
	.byte	0x1
	.uleb128 0x247
	.ascii "SB_BOTTOM 7\0"
	.byte	0x1
	.uleb128 0x248
	.ascii "SB_TOP 6\0"
	.byte	0x1
	.uleb128 0x249
	.ascii "IS_INTRESOURCE(i) (((ULONG_PTR)(i) >> 16) == 0)\0"
	.byte	0x1
	.uleb128 0x24a
	.ascii "MAKEINTRESOURCEA(i) (LPSTR)((DWORD)((WORD)(i)))\0"
	.byte	0x1
	.uleb128 0x24b
	.ascii "MAKEINTRESOURCEW(i) (LPWSTR)((DWORD)((WORD)(i)))\0"
	.byte	0x1
	.uleb128 0x24e
	.ascii "RT_CURSOR MAKEINTRESOURCE(1)\0"
	.byte	0x1
	.uleb128 0x24f
	.ascii "RT_FONT MAKEINTRESOURCE(8)\0"
	.byte	0x1
	.uleb128 0x252
	.ascii "RT_BITMAP MAKEINTRESOURCE(2)\0"
	.byte	0x1
	.uleb128 0x253
	.ascii "RT_ICON MAKEINTRESOURCE(3)\0"
	.byte	0x1
	.uleb128 0x254
	.ascii "RT_MENU MAKEINTRESOURCE(4)\0"
	.byte	0x1
	.uleb128 0x255
	.ascii "RT_DIALOG MAKEINTRESOURCE(5)\0"
	.byte	0x1
	.uleb128 0x256
	.ascii "RT_STRING MAKEINTRESOURCE(6)\0"
	.byte	0x1
	.uleb128 0x257
	.ascii "RT_FONTDIR MAKEINTRESOURCE(7)\0"
	.byte	0x1
	.uleb128 0x258
	.ascii "RT_ACCELERATOR MAKEINTRESOURCE(9)\0"
	.byte	0x1
	.uleb128 0x259
	.ascii "RT_RCDATA MAKEINTRESOURCE(10)\0"
	.byte	0x1
	.uleb128 0x25a
	.ascii "RT_MESSAGETABLE MAKEINTRESOURCE(11)\0"
	.byte	0x1
	.uleb128 0x25b
	.ascii "DIFFERENCE 11\0"
	.byte	0x1
	.uleb128 0x25c
	.ascii "RT_GROUP_CURSOR MAKEINTRESOURCE((DWORD)RT_CURSOR+DIFFERENCE)\0"
	.byte	0x1
	.uleb128 0x25d
	.ascii "RT_GROUP_ICON MAKEINTRESOURCE((DWORD)RT_ICON+DIFFERENCE)\0"
	.byte	0x1
	.uleb128 0x25e
	.ascii "RT_VERSION MAKEINTRESOURCE(16)\0"
	.byte	0x1
	.uleb128 0x25f
	.ascii "RT_DLGINCLUDE MAKEINTRESOURCE(17)\0"
	.byte	0x1
	.uleb128 0x260
	.ascii "RT_PLUGPLAY MAKEINTRESOURCE(19)\0"
	.byte	0x1
	.uleb128 0x261
	.ascii "RT_VXD MAKEINTRESOURCE(20)\0"
	.byte	0x1
	.uleb128 0x262
	.ascii "RT_ANICURSOR MAKEINTRESOURCE(21)\0"
	.byte	0x1
	.uleb128 0x263
	.ascii "RT_ANIICON MAKEINTRESOURCE(22)\0"
	.byte	0x1
	.uleb128 0x264
	.ascii "RT_HTML MAKEINTRESOURCE(23)\0"
	.byte	0x1
	.uleb128 0x267
	.ascii "RT_MANIFEST MAKEINTRESOURCE(24)\0"
	.byte	0x1
	.uleb128 0x268
	.ascii "CREATEPROCESS_MANIFEST_RESOURCE_ID MAKEINTRESOURCE(1)\0"
	.byte	0x1
	.uleb128 0x269
	.ascii "ISOLATIONAWARE_MANIFEST_RESOURCE_ID MAKEINTRESOURCE(2)\0"
	.byte	0x1
	.uleb128 0x26a
	.ascii "ISOLATIONAWARE_NOSTATICIMPORT_MANIFEST_RESOURCE_ID MAKEINTRESOURCE(3)\0"
	.byte	0x1
	.uleb128 0x273
	.ascii "EWX_FORCE 4\0"
	.byte	0x1
	.uleb128 0x274
	.ascii "EWX_LOGOFF 0\0"
	.byte	0x1
	.uleb128 0x275
	.ascii "EWX_POWEROFF 8\0"
	.byte	0x1
	.uleb128 0x276
	.ascii "EWX_REBOOT 2\0"
	.byte	0x1
	.uleb128 0x277
	.ascii "EWX_SHUTDOWN 1\0"
	.byte	0x1
	.uleb128 0x279
	.ascii "CS_BYTEALIGNCLIENT 4096\0"
	.byte	0x1
	.uleb128 0x27a
	.ascii "CS_BYTEALIGNWINDOW 8192\0"
	.byte	0x1
	.uleb128 0x27b
	.ascii "CS_KEYCVTWINDOW 4\0"
	.byte	0x1
	.uleb128 0x27c
	.ascii "CS_NOKEYCVT 256\0"
	.byte	0x1
	.uleb128 0x27d
	.ascii "CS_CLASSDC 64\0"
	.byte	0x1
	.uleb128 0x27e
	.ascii "CS_DBLCLKS 8\0"
	.byte	0x1
	.uleb128 0x27f
	.ascii "CS_GLOBALCLASS 16384\0"
	.byte	0x1
	.uleb128 0x280
	.ascii "CS_HREDRAW 2\0"
	.byte	0x1
	.uleb128 0x281
	.ascii "CS_NOCLOSE 512\0"
	.byte	0x1
	.uleb128 0x282
	.ascii "CS_OWNDC 32\0"
	.byte	0x1
	.uleb128 0x283
	.ascii "CS_PARENTDC 128\0"
	.byte	0x1
	.uleb128 0x284
	.ascii "CS_SAVEBITS 2048\0"
	.byte	0x1
	.uleb128 0x285
	.ascii "CS_VREDRAW 1\0"
	.byte	0x1
	.uleb128 0x286
	.ascii "CS_IME 0x10000\0"
	.byte	0x1
	.uleb128 0x288
	.ascii "GCW_ATOM (-32)\0"
	.byte	0x1
	.uleb128 0x289
	.ascii "GCL_CBCLSEXTRA (-20)\0"
	.byte	0x1
	.uleb128 0x28a
	.ascii "GCL_CBWNDEXTRA (-18)\0"
	.byte	0x1
	.uleb128 0x28b
	.ascii "GCL_HBRBACKGROUND (-10)\0"
	.byte	0x1
	.uleb128 0x28c
	.ascii "GCL_HCURSOR (-12)\0"
	.byte	0x1
	.uleb128 0x28d
	.ascii "GCL_HICON (-14)\0"
	.byte	0x1
	.uleb128 0x28e
	.ascii "GCL_HICONSM (-34)\0"
	.byte	0x1
	.uleb128 0x28f
	.ascii "GCL_HMODULE (-16)\0"
	.byte	0x1
	.uleb128 0x290
	.ascii "GCL_MENUNAME (-8)\0"
	.byte	0x1
	.uleb128 0x291
	.ascii "GCL_STYLE (-26)\0"
	.byte	0x1
	.uleb128 0x292
	.ascii "GCL_WNDPROC (-24)\0"
	.byte	0x1
	.uleb128 0x293
	.ascii "GCLP_MENUNAME (-8)\0"
	.byte	0x1
	.uleb128 0x294
	.ascii "GCLP_HBRBACKGROUND (-10)\0"
	.byte	0x1
	.uleb128 0x295
	.ascii "GCLP_HCURSOR (-12)\0"
	.byte	0x1
	.uleb128 0x296
	.ascii "GCLP_HICON (-14)\0"
	.byte	0x1
	.uleb128 0x297
	.ascii "GCLP_HMODULE (-16)\0"
	.byte	0x1
	.uleb128 0x298
	.ascii "GCLP_WNDPROC (-24)\0"
	.byte	0x1
	.uleb128 0x299
	.ascii "GCLP_HICONSM (-34)\0"
	.byte	0x1
	.uleb128 0x2a4
	.ascii "IDC_ARROW MAKEINTRESOURCE(32512)\0"
	.byte	0x1
	.uleb128 0x2a5
	.ascii "IDC_IBEAM MAKEINTRESOURCE(32513)\0"
	.byte	0x1
	.uleb128 0x2a6
	.ascii "IDC_WAIT MAKEINTRESOURCE(32514)\0"
	.byte	0x1
	.uleb128 0x2a7
	.ascii "IDC_CROSS MAKEINTRESOURCE(32515)\0"
	.byte	0x1
	.uleb128 0x2a8
	.ascii "IDC_UPARROW MAKEINTRESOURCE(32516)\0"
	.byte	0x1
	.uleb128 0x2a9
	.ascii "IDC_SIZENWSE MAKEINTRESOURCE(32642)\0"
	.byte	0x1
	.uleb128 0x2aa
	.ascii "IDC_SIZENESW MAKEINTRESOURCE(32643)\0"
	.byte	0x1
	.uleb128 0x2ab
	.ascii "IDC_SIZEWE MAKEINTRESOURCE(32644)\0"
	.byte	0x1
	.uleb128 0x2ac
	.ascii "IDC_SIZENS MAKEINTRESOURCE(32645)\0"
	.byte	0x1
	.uleb128 0x2ad
	.ascii "IDC_SIZEALL MAKEINTRESOURCE(32646)\0"
	.byte	0x1
	.uleb128 0x2ae
	.ascii "IDC_NO MAKEINTRESOURCE(32648)\0"
	.byte	0x1
	.uleb128 0x2af
	.ascii "IDC_HAND MAKEINTRESOURCE(32649)\0"
	.byte	0x1
	.uleb128 0x2b0
	.ascii "IDC_APPSTARTING MAKEINTRESOURCE(32650)\0"
	.byte	0x1
	.uleb128 0x2b1
	.ascii "IDC_HELP MAKEINTRESOURCE(32651)\0"
	.byte	0x1
	.uleb128 0x2b2
	.ascii "IDC_ICON MAKEINTRESOURCE(32641)\0"
	.byte	0x1
	.uleb128 0x2b3
	.ascii "IDC_SIZE MAKEINTRESOURCE(32640)\0"
	.byte	0x1
	.uleb128 0x2b6
	.ascii "IDI_APPLICATION MAKEINTRESOURCE(32512)\0"
	.byte	0x1
	.uleb128 0x2b7
	.ascii "IDI_HAND MAKEINTRESOURCE(32513)\0"
	.byte	0x1
	.uleb128 0x2b8
	.ascii "IDI_QUESTION MAKEINTRESOURCE(32514)\0"
	.byte	0x1
	.uleb128 0x2b9
	.ascii "IDI_EXCLAMATION MAKEINTRESOURCE(32515)\0"
	.byte	0x1
	.uleb128 0x2ba
	.ascii "IDI_ASTERISK MAKEINTRESOURCE(32516)\0"
	.byte	0x1
	.uleb128 0x2bb
	.ascii "IDI_WINLOGO MAKEINTRESOURCE(32517)\0"
	.byte	0x1
	.uleb128 0x2c6
	.ascii "IDI_WARNING IDI_EXCLAMATION\0"
	.byte	0x1
	.uleb128 0x2c7
	.ascii "IDI_ERROR IDI_HAND\0"
	.byte	0x1
	.uleb128 0x2c8
	.ascii "IDI_INFORMATION IDI_ASTERISK\0"
	.byte	0x1
	.uleb128 0x2c9
	.ascii "MIIM_STATE 1\0"
	.byte	0x1
	.uleb128 0x2ca
	.ascii "MIIM_ID 2\0"
	.byte	0x1
	.uleb128 0x2cb
	.ascii "MIIM_SUBMENU 4\0"
	.byte	0x1
	.uleb128 0x2cc
	.ascii "MIIM_CHECKMARKS 8\0"
	.byte	0x1
	.uleb128 0x2cd
	.ascii "MIIM_TYPE 16\0"
	.byte	0x1
	.uleb128 0x2ce
	.ascii "MIIM_DATA 32\0"
	.byte	0x1
	.uleb128 0x2cf
	.ascii "MIIM_STRING 64\0"
	.byte	0x1
	.uleb128 0x2d0
	.ascii "MIIM_BITMAP 128\0"
	.byte	0x1
	.uleb128 0x2d1
	.ascii "MIIM_FTYPE 256\0"
	.byte	0x1
	.uleb128 0x2d3
	.ascii "MFT_BITMAP 4\0"
	.byte	0x1
	.uleb128 0x2d4
	.ascii "MFT_MENUBARBREAK 32\0"
	.byte	0x1
	.uleb128 0x2d5
	.ascii "MFT_MENUBREAK 64\0"
	.byte	0x1
	.uleb128 0x2d6
	.ascii "MFT_OWNERDRAW 256\0"
	.byte	0x1
	.uleb128 0x2d7
	.ascii "MFT_RADIOCHECK 512\0"
	.byte	0x1
	.uleb128 0x2d8
	.ascii "MFT_RIGHTJUSTIFY 0x4000\0"
	.byte	0x1
	.uleb128 0x2d9
	.ascii "MFT_SEPARATOR 0x800\0"
	.byte	0x1
	.uleb128 0x2da
	.ascii "MFT_RIGHTORDER 0x2000L\0"
	.byte	0x1
	.uleb128 0x2db
	.ascii "MFT_STRING 0\0"
	.byte	0x1
	.uleb128 0x2dc
	.ascii "MFS_CHECKED 8\0"
	.byte	0x1
	.uleb128 0x2dd
	.ascii "MFS_DEFAULT 4096\0"
	.byte	0x1
	.uleb128 0x2de
	.ascii "MFS_DISABLED 3\0"
	.byte	0x1
	.uleb128 0x2df
	.ascii "MFS_ENABLED 0\0"
	.byte	0x1
	.uleb128 0x2e0
	.ascii "MFS_GRAYED 3\0"
	.byte	0x1
	.uleb128 0x2e1
	.ascii "MFS_HILITE 128\0"
	.byte	0x1
	.uleb128 0x2e2
	.ascii "MFS_UNCHECKED 0\0"
	.byte	0x1
	.uleb128 0x2e3
	.ascii "MFS_UNHILITE 0\0"
	.byte	0x1
	.uleb128 0x2e4
	.ascii "GW_HWNDNEXT 2\0"
	.byte	0x1
	.uleb128 0x2e5
	.ascii "GW_HWNDPREV 3\0"
	.byte	0x1
	.uleb128 0x2e6
	.ascii "GW_CHILD 5\0"
	.byte	0x1
	.uleb128 0x2e7
	.ascii "GW_HWNDFIRST 0\0"
	.byte	0x1
	.uleb128 0x2e8
	.ascii "GW_HWNDLAST 1\0"
	.byte	0x1
	.uleb128 0x2e9
	.ascii "GW_OWNER 4\0"
	.byte	0x1
	.uleb128 0x2ea
	.ascii "SW_HIDE 0\0"
	.byte	0x1
	.uleb128 0x2eb
	.ascii "SW_NORMAL 1\0"
	.byte	0x1
	.uleb128 0x2ec
	.ascii "SW_SHOWNORMAL 1\0"
	.byte	0x1
	.uleb128 0x2ed
	.ascii "SW_SHOWMINIMIZED 2\0"
	.byte	0x1
	.uleb128 0x2ee
	.ascii "SW_MAXIMIZE 3\0"
	.byte	0x1
	.uleb128 0x2ef
	.ascii "SW_SHOWMAXIMIZED 3\0"
	.byte	0x1
	.uleb128 0x2f0
	.ascii "SW_SHOWNOACTIVATE 4\0"
	.byte	0x1
	.uleb128 0x2f1
	.ascii "SW_SHOW 5\0"
	.byte	0x1
	.uleb128 0x2f2
	.ascii "SW_MINIMIZE 6\0"
	.byte	0x1
	.uleb128 0x2f3
	.ascii "SW_SHOWMINNOACTIVE 7\0"
	.byte	0x1
	.uleb128 0x2f4
	.ascii "SW_SHOWNA 8\0"
	.byte	0x1
	.uleb128 0x2f5
	.ascii "SW_RESTORE 9\0"
	.byte	0x1
	.uleb128 0x2f6
	.ascii "SW_SHOWDEFAULT 10\0"
	.byte	0x1
	.uleb128 0x2f7
	.ascii "SW_FORCEMINIMIZE 11\0"
	.byte	0x1
	.uleb128 0x2f8
	.ascii "SW_MAX 11\0"
	.byte	0x1
	.uleb128 0x2f9
	.ascii "MB_USERICON 128\0"
	.byte	0x1
	.uleb128 0x2fa
	.ascii "MB_ICONASTERISK 64\0"
	.byte	0x1
	.uleb128 0x2fb
	.ascii "MB_ICONEXCLAMATION 0x30\0"
	.byte	0x1
	.uleb128 0x2fc
	.ascii "MB_ICONWARNING 0x30\0"
	.byte	0x1
	.uleb128 0x2fd
	.ascii "MB_ICONERROR 16\0"
	.byte	0x1
	.uleb128 0x2fe
	.ascii "MB_ICONHAND 16\0"
	.byte	0x1
	.uleb128 0x2ff
	.ascii "MB_ICONQUESTION 32\0"
	.byte	0x1
	.uleb128 0x300
	.ascii "MB_OK 0\0"
	.byte	0x1
	.uleb128 0x301
	.ascii "MB_ABORTRETRYIGNORE 2\0"
	.byte	0x1
	.uleb128 0x302
	.ascii "MB_APPLMODAL 0\0"
	.byte	0x1
	.uleb128 0x303
	.ascii "MB_DEFAULT_DESKTOP_ONLY 0x20000\0"
	.byte	0x1
	.uleb128 0x304
	.ascii "MB_HELP 0x4000\0"
	.byte	0x1
	.uleb128 0x305
	.ascii "MB_RIGHT 0x80000\0"
	.byte	0x1
	.uleb128 0x306
	.ascii "MB_RTLREADING 0x100000\0"
	.byte	0x1
	.uleb128 0x307
	.ascii "MB_TOPMOST 0x40000\0"
	.byte	0x1
	.uleb128 0x308
	.ascii "MB_DEFBUTTON1 0\0"
	.byte	0x1
	.uleb128 0x309
	.ascii "MB_DEFBUTTON2 256\0"
	.byte	0x1
	.uleb128 0x30a
	.ascii "MB_DEFBUTTON3 512\0"
	.byte	0x1
	.uleb128 0x30b
	.ascii "MB_DEFBUTTON4 0x300\0"
	.byte	0x1
	.uleb128 0x30c
	.ascii "MB_ICONINFORMATION 64\0"
	.byte	0x1
	.uleb128 0x30d
	.ascii "MB_ICONSTOP 16\0"
	.byte	0x1
	.uleb128 0x30e
	.ascii "MB_OKCANCEL 1\0"
	.byte	0x1
	.uleb128 0x30f
	.ascii "MB_RETRYCANCEL 5\0"
	.byte	0x1
	.uleb128 0x311
	.ascii "MB_SETFOREGROUND 0x10000\0"
	.byte	0x1
	.uleb128 0x312
	.ascii "MB_SYSTEMMODAL 4096\0"
	.byte	0x1
	.uleb128 0x313
	.ascii "MB_TASKMODAL 0x2000\0"
	.byte	0x1
	.uleb128 0x314
	.ascii "MB_YESNO 4\0"
	.byte	0x1
	.uleb128 0x315
	.ascii "MB_YESNOCANCEL 3\0"
	.byte	0x1
	.uleb128 0x316
	.ascii "MB_ICONMASK 240\0"
	.byte	0x1
	.uleb128 0x317
	.ascii "MB_DEFMASK 3840\0"
	.byte	0x1
	.uleb128 0x318
	.ascii "MB_MODEMASK 0x00003000\0"
	.byte	0x1
	.uleb128 0x319
	.ascii "MB_MISCMASK 0x0000C000\0"
	.byte	0x1
	.uleb128 0x31a
	.ascii "MB_NOFOCUS 0x00008000\0"
	.byte	0x1
	.uleb128 0x31b
	.ascii "MB_TYPEMASK 15\0"
	.byte	0x1
	.uleb128 0x31c
	.ascii "MB_TOPMOST 0x40000\0"
	.byte	0x1
	.uleb128 0x31e
	.ascii "IDOK 1\0"
	.byte	0x1
	.uleb128 0x31f
	.ascii "IDCANCEL 2\0"
	.byte	0x1
	.uleb128 0x320
	.ascii "IDABORT 3\0"
	.byte	0x1
	.uleb128 0x321
	.ascii "IDRETRY 4\0"
	.byte	0x1
	.uleb128 0x322
	.ascii "IDIGNORE 5\0"
	.byte	0x1
	.uleb128 0x323
	.ascii "IDYES 6\0"
	.byte	0x1
	.uleb128 0x324
	.ascii "IDNO 7\0"
	.byte	0x1
	.uleb128 0x326
	.ascii "GWL_EXSTYLE (-20)\0"
	.byte	0x1
	.uleb128 0x327
	.ascii "GWL_STYLE (-16)\0"
	.byte	0x1
	.uleb128 0x328
	.ascii "GWL_WNDPROC (-4)\0"
	.byte	0x1
	.uleb128 0x329
	.ascii "GWLP_WNDPROC (-4)\0"
	.byte	0x1
	.uleb128 0x32a
	.ascii "GWL_HINSTANCE (-6)\0"
	.byte	0x1
	.uleb128 0x32b
	.ascii "GWLP_HINSTANCE (-6)\0"
	.byte	0x1
	.uleb128 0x32c
	.ascii "GWL_HWNDPARENT (-8)\0"
	.byte	0x1
	.uleb128 0x32d
	.ascii "GWLP_HWNDPARENT (-8)\0"
	.byte	0x1
	.uleb128 0x32e
	.ascii "GWL_ID (-12)\0"
	.byte	0x1
	.uleb128 0x32f
	.ascii "GWLP_ID (-12)\0"
	.byte	0x1
	.uleb128 0x330
	.ascii "GWL_USERDATA (-21)\0"
	.byte	0x1
	.uleb128 0x331
	.ascii "GWLP_USERDATA (-21)\0"
	.byte	0x1
	.uleb128 0x332
	.ascii "DWL_DLGPROC 4\0"
	.byte	0x1
	.uleb128 0x333
	.ascii "DWLP_DLGPROC 4\0"
	.byte	0x1
	.uleb128 0x334
	.ascii "DWL_MSGRESULT 0\0"
	.byte	0x1
	.uleb128 0x335
	.ascii "DWLP_MSGRESULT 0\0"
	.byte	0x1
	.uleb128 0x336
	.ascii "DWL_USER 8\0"
	.byte	0x1
	.uleb128 0x337
	.ascii "DWLP_USER 8\0"
	.byte	0x1
	.uleb128 0x339
	.ascii "QS_ALLPOSTMESSAGE 256\0"
	.byte	0x1
	.uleb128 0x33a
	.ascii "QS_HOTKEY 128\0"
	.byte	0x1
	.uleb128 0x33c
	.ascii "QS_KEY 1\0"
	.byte	0x1
	.uleb128 0x33d
	.ascii "QS_MOUSE 6\0"
	.byte	0x1
	.uleb128 0x33e
	.ascii "QS_MOUSEBUTTON 4\0"
	.byte	0x1
	.uleb128 0x33f
	.ascii "QS_MOUSEMOVE 2\0"
	.byte	0x1
	.uleb128 0x340
	.ascii "QS_PAINT 32\0"
	.byte	0x1
	.uleb128 0x341
	.ascii "QS_POSTMESSAGE 8\0"
	.byte	0x1
	.uleb128 0x342
	.ascii "QS_SENDMESSAGE 64\0"
	.byte	0x1
	.uleb128 0x343
	.ascii "QS_TIMER 16\0"
	.byte	0x1
	.uleb128 0x344
	.ascii "MWMO_WAITALL 1\0"
	.byte	0x1
	.uleb128 0x345
	.ascii "MWMO_ALERTABLE 2\0"
	.byte	0x1
	.uleb128 0x346
	.ascii "MWMO_INPUTAVAILABLE 4\0"
	.byte	0x1
	.uleb128 0x347
	.ascii "COLOR_3DDKSHADOW 21\0"
	.byte	0x1
	.uleb128 0x348
	.ascii "COLOR_3DFACE 15\0"
	.byte	0x1
	.uleb128 0x349
	.ascii "COLOR_3DHILIGHT 20\0"
	.byte	0x1
	.uleb128 0x34a
	.ascii "COLOR_3DHIGHLIGHT 20\0"
	.byte	0x1
	.uleb128 0x34b
	.ascii "COLOR_3DLIGHT 22\0"
	.byte	0x1
	.uleb128 0x34c
	.ascii "COLOR_BTNHILIGHT 20\0"
	.byte	0x1
	.uleb128 0x34d
	.ascii "COLOR_3DSHADOW 16\0"
	.byte	0x1
	.uleb128 0x34e
	.ascii "COLOR_ACTIVEBORDER 10\0"
	.byte	0x1
	.uleb128 0x34f
	.ascii "COLOR_ACTIVECAPTION 2\0"
	.byte	0x1
	.uleb128 0x350
	.ascii "COLOR_APPWORKSPACE 12\0"
	.byte	0x1
	.uleb128 0x351
	.ascii "COLOR_BACKGROUND 1\0"
	.byte	0x1
	.uleb128 0x352
	.ascii "COLOR_DESKTOP 1\0"
	.byte	0x1
	.uleb128 0x353
	.ascii "COLOR_BTNFACE 15\0"
	.byte	0x1
	.uleb128 0x354
	.ascii "COLOR_BTNHIGHLIGHT 20\0"
	.byte	0x1
	.uleb128 0x355
	.ascii "COLOR_BTNSHADOW 16\0"
	.byte	0x1
	.uleb128 0x356
	.ascii "COLOR_BTNTEXT 18\0"
	.byte	0x1
	.uleb128 0x357
	.ascii "COLOR_CAPTIONTEXT 9\0"
	.byte	0x1
	.uleb128 0x358
	.ascii "COLOR_GRAYTEXT 17\0"
	.byte	0x1
	.uleb128 0x359
	.ascii "COLOR_HIGHLIGHT 13\0"
	.byte	0x1
	.uleb128 0x35a
	.ascii "COLOR_HIGHLIGHTTEXT 14\0"
	.byte	0x1
	.uleb128 0x35b
	.ascii "COLOR_INACTIVEBORDER 11\0"
	.byte	0x1
	.uleb128 0x35c
	.ascii "COLOR_INACTIVECAPTION 3\0"
	.byte	0x1
	.uleb128 0x35d
	.ascii "COLOR_INACTIVECAPTIONTEXT 19\0"
	.byte	0x1
	.uleb128 0x35e
	.ascii "COLOR_INFOBK 24\0"
	.byte	0x1
	.uleb128 0x35f
	.ascii "COLOR_INFOTEXT 23\0"
	.byte	0x1
	.uleb128 0x360
	.ascii "COLOR_MENU 4\0"
	.byte	0x1
	.uleb128 0x361
	.ascii "COLOR_MENUTEXT 7\0"
	.byte	0x1
	.uleb128 0x362
	.ascii "COLOR_SCROLLBAR 0\0"
	.byte	0x1
	.uleb128 0x363
	.ascii "COLOR_WINDOW 5\0"
	.byte	0x1
	.uleb128 0x364
	.ascii "COLOR_WINDOWFRAME 6\0"
	.byte	0x1
	.uleb128 0x365
	.ascii "COLOR_WINDOWTEXT 8\0"
	.byte	0x1
	.uleb128 0x366
	.ascii "COLOR_HOTLIGHT 26\0"
	.byte	0x1
	.uleb128 0x367
	.ascii "COLOR_GRADIENTACTIVECAPTION 27\0"
	.byte	0x1
	.uleb128 0x368
	.ascii "COLOR_GRADIENTINACTIVECAPTION 28\0"
	.byte	0x1
	.uleb128 0x369
	.ascii "CTLCOLOR_MSGBOX 0\0"
	.byte	0x1
	.uleb128 0x36a
	.ascii "CTLCOLOR_EDIT 1\0"
	.byte	0x1
	.uleb128 0x36b
	.ascii "CTLCOLOR_LISTBOX 2\0"
	.byte	0x1
	.uleb128 0x36c
	.ascii "CTLCOLOR_BTN 3\0"
	.byte	0x1
	.uleb128 0x36d
	.ascii "CTLCOLOR_DLG 4\0"
	.byte	0x1
	.uleb128 0x36e
	.ascii "CTLCOLOR_SCROLLBAR 5\0"
	.byte	0x1
	.uleb128 0x36f
	.ascii "CTLCOLOR_STATIC 6\0"
	.byte	0x1
	.uleb128 0x370
	.ascii "CTLCOLOR_MAX 7\0"
	.byte	0x1
	.uleb128 0x371
	.ascii "SM_CXSCREEN 0\0"
	.byte	0x1
	.uleb128 0x372
	.ascii "SM_CYSCREEN 1\0"
	.byte	0x1
	.uleb128 0x373
	.ascii "SM_CXVSCROLL 2\0"
	.byte	0x1
	.uleb128 0x374
	.ascii "SM_CYHSCROLL 3\0"
	.byte	0x1
	.uleb128 0x375
	.ascii "SM_CYCAPTION 4\0"
	.byte	0x1
	.uleb128 0x376
	.ascii "SM_CXBORDER 5\0"
	.byte	0x1
	.uleb128 0x377
	.ascii "SM_CYBORDER 6\0"
	.byte	0x1
	.uleb128 0x378
	.ascii "SM_CXDLGFRAME 7\0"
	.byte	0x1
	.uleb128 0x379
	.ascii "SM_CXFIXEDFRAME 7\0"
	.byte	0x1
	.uleb128 0x37a
	.ascii "SM_CYDLGFRAME 8\0"
	.byte	0x1
	.uleb128 0x37b
	.ascii "SM_CYFIXEDFRAME 8\0"
	.byte	0x1
	.uleb128 0x37c
	.ascii "SM_CYVTHUMB 9\0"
	.byte	0x1
	.uleb128 0x37d
	.ascii "SM_CXHTHUMB 10\0"
	.byte	0x1
	.uleb128 0x37e
	.ascii "SM_CXICON 11\0"
	.byte	0x1
	.uleb128 0x37f
	.ascii "SM_CYICON 12\0"
	.byte	0x1
	.uleb128 0x380
	.ascii "SM_CXCURSOR 13\0"
	.byte	0x1
	.uleb128 0x381
	.ascii "SM_CYCURSOR 14\0"
	.byte	0x1
	.uleb128 0x382
	.ascii "SM_CYMENU 15\0"
	.byte	0x1
	.uleb128 0x383
	.ascii "SM_CXFULLSCREEN 16\0"
	.byte	0x1
	.uleb128 0x384
	.ascii "SM_CYFULLSCREEN 17\0"
	.byte	0x1
	.uleb128 0x385
	.ascii "SM_CYKANJIWINDOW 18\0"
	.byte	0x1
	.uleb128 0x386
	.ascii "SM_MOUSEPRESENT 19\0"
	.byte	0x1
	.uleb128 0x387
	.ascii "SM_CYVSCROLL 20\0"
	.byte	0x1
	.uleb128 0x388
	.ascii "SM_CXHSCROLL 21\0"
	.byte	0x1
	.uleb128 0x389
	.ascii "SM_DEBUG 22\0"
	.byte	0x1
	.uleb128 0x38a
	.ascii "SM_SWAPBUTTON 23\0"
	.byte	0x1
	.uleb128 0x38b
	.ascii "SM_RESERVED1 24\0"
	.byte	0x1
	.uleb128 0x38c
	.ascii "SM_RESERVED2 25\0"
	.byte	0x1
	.uleb128 0x38d
	.ascii "SM_RESERVED3 26\0"
	.byte	0x1
	.uleb128 0x38e
	.ascii "SM_RESERVED4 27\0"
	.byte	0x1
	.uleb128 0x38f
	.ascii "SM_CXMIN 28\0"
	.byte	0x1
	.uleb128 0x390
	.ascii "SM_CYMIN 29\0"
	.byte	0x1
	.uleb128 0x391
	.ascii "SM_CXSIZE 30\0"
	.byte	0x1
	.uleb128 0x392
	.ascii "SM_CYSIZE 31\0"
	.byte	0x1
	.uleb128 0x393
	.ascii "SM_CXSIZEFRAME 32\0"
	.byte	0x1
	.uleb128 0x394
	.ascii "SM_CXFRAME 32\0"
	.byte	0x1
	.uleb128 0x395
	.ascii "SM_CYSIZEFRAME 33\0"
	.byte	0x1
	.uleb128 0x396
	.ascii "SM_CYFRAME 33\0"
	.byte	0x1
	.uleb128 0x397
	.ascii "SM_CXMINTRACK 34\0"
	.byte	0x1
	.uleb128 0x398
	.ascii "SM_CYMINTRACK 35\0"
	.byte	0x1
	.uleb128 0x399
	.ascii "SM_CXDOUBLECLK 36\0"
	.byte	0x1
	.uleb128 0x39a
	.ascii "SM_CYDOUBLECLK 37\0"
	.byte	0x1
	.uleb128 0x39b
	.ascii "SM_CXICONSPACING 38\0"
	.byte	0x1
	.uleb128 0x39c
	.ascii "SM_CYICONSPACING 39\0"
	.byte	0x1
	.uleb128 0x39d
	.ascii "SM_MENUDROPALIGNMENT 40\0"
	.byte	0x1
	.uleb128 0x39e
	.ascii "SM_PENWINDOWS 41\0"
	.byte	0x1
	.uleb128 0x39f
	.ascii "SM_DBCSENABLED 42\0"
	.byte	0x1
	.uleb128 0x3a0
	.ascii "SM_CMOUSEBUTTONS 43\0"
	.byte	0x1
	.uleb128 0x3a1
	.ascii "SM_SECURE 44\0"
	.byte	0x1
	.uleb128 0x3a2
	.ascii "SM_CXEDGE 45\0"
	.byte	0x1
	.uleb128 0x3a3
	.ascii "SM_CYEDGE 46\0"
	.byte	0x1
	.uleb128 0x3a4
	.ascii "SM_CXMINSPACING 47\0"
	.byte	0x1
	.uleb128 0x3a5
	.ascii "SM_CYMINSPACING 48\0"
	.byte	0x1
	.uleb128 0x3a6
	.ascii "SM_CXSMICON 49\0"
	.byte	0x1
	.uleb128 0x3a7
	.ascii "SM_CYSMICON 50\0"
	.byte	0x1
	.uleb128 0x3a8
	.ascii "SM_CYSMCAPTION 51\0"
	.byte	0x1
	.uleb128 0x3a9
	.ascii "SM_CXSMSIZE 52\0"
	.byte	0x1
	.uleb128 0x3aa
	.ascii "SM_CYSMSIZE 53\0"
	.byte	0x1
	.uleb128 0x3ab
	.ascii "SM_CXMENUSIZE 54\0"
	.byte	0x1
	.uleb128 0x3ac
	.ascii "SM_CYMENUSIZE 55\0"
	.byte	0x1
	.uleb128 0x3ad
	.ascii "SM_ARRANGE 56\0"
	.byte	0x1
	.uleb128 0x3ae
	.ascii "SM_CXMINIMIZED 57\0"
	.byte	0x1
	.uleb128 0x3af
	.ascii "SM_CYMINIMIZED 58\0"
	.byte	0x1
	.uleb128 0x3b0
	.ascii "SM_CXMAXTRACK 59\0"
	.byte	0x1
	.uleb128 0x3b1
	.ascii "SM_CYMAXTRACK 60\0"
	.byte	0x1
	.uleb128 0x3b2
	.ascii "SM_CXMAXIMIZED 61\0"
	.byte	0x1
	.uleb128 0x3b3
	.ascii "SM_CYMAXIMIZED 62\0"
	.byte	0x1
	.uleb128 0x3b4
	.ascii "SM_NETWORK 63\0"
	.byte	0x1
	.uleb128 0x3b5
	.ascii "SM_CLEANBOOT 67\0"
	.byte	0x1
	.uleb128 0x3b6
	.ascii "SM_CXDRAG 68\0"
	.byte	0x1
	.uleb128 0x3b7
	.ascii "SM_CYDRAG 69\0"
	.byte	0x1
	.uleb128 0x3b8
	.ascii "SM_SHOWSOUNDS 70\0"
	.byte	0x1
	.uleb128 0x3b9
	.ascii "SM_CXMENUCHECK 71\0"
	.byte	0x1
	.uleb128 0x3ba
	.ascii "SM_CYMENUCHECK 72\0"
	.byte	0x1
	.uleb128 0x3bb
	.ascii "SM_SLOWMACHINE 73\0"
	.byte	0x1
	.uleb128 0x3bc
	.ascii "SM_MIDEASTENABLED 74\0"
	.byte	0x1
	.uleb128 0x3bd
	.ascii "SM_MOUSEWHEELPRESENT 75\0"
	.byte	0x1
	.uleb128 0x3be
	.ascii "SM_XVIRTUALSCREEN 76\0"
	.byte	0x1
	.uleb128 0x3bf
	.ascii "SM_YVIRTUALSCREEN 77\0"
	.byte	0x1
	.uleb128 0x3c0
	.ascii "SM_CXVIRTUALSCREEN 78\0"
	.byte	0x1
	.uleb128 0x3c1
	.ascii "SM_CYVIRTUALSCREEN 79\0"
	.byte	0x1
	.uleb128 0x3c2
	.ascii "SM_CMONITORS 80\0"
	.byte	0x1
	.uleb128 0x3c3
	.ascii "SM_SAMEDISPLAYFORMAT 81\0"
	.byte	0x1
	.uleb128 0x3c4
	.ascii "SM_IMMENABLED 82\0"
	.byte	0x1
	.uleb128 0x3c5
	.ascii "SM_CXFOCUSBORDER 83\0"
	.byte	0x1
	.uleb128 0x3c6
	.ascii "SM_CYFOCUSBORDER 84\0"
	.byte	0x1
	.uleb128 0x3c7
	.ascii "SM_TABLETPC 86\0"
	.byte	0x1
	.uleb128 0x3c8
	.ascii "SM_MEDIACENTER 87\0"
	.byte	0x1
	.uleb128 0x3c9
	.ascii "SM_STARTER 88\0"
	.byte	0x1
	.uleb128 0x3ca
	.ascii "SM_SERVERR2 89\0"
	.byte	0x1
	.uleb128 0x3cc
	.ascii "SM_REMOTESESSION 0x1000\0"
	.byte	0x1
	.uleb128 0x3cd
	.ascii "ARW_BOTTOMLEFT 0\0"
	.byte	0x1
	.uleb128 0x3ce
	.ascii "ARW_BOTTOMRIGHT 1\0"
	.byte	0x1
	.uleb128 0x3cf
	.ascii "ARW_HIDE 8\0"
	.byte	0x1
	.uleb128 0x3d0
	.ascii "ARW_TOPLEFT 2\0"
	.byte	0x1
	.uleb128 0x3d1
	.ascii "ARW_TOPRIGHT 3\0"
	.byte	0x1
	.uleb128 0x3d2
	.ascii "ARW_DOWN 4\0"
	.byte	0x1
	.uleb128 0x3d3
	.ascii "ARW_LEFT 0\0"
	.byte	0x1
	.uleb128 0x3d4
	.ascii "ARW_RIGHT 0\0"
	.byte	0x1
	.uleb128 0x3d5
	.ascii "ARW_UP 4\0"
	.byte	0x1
	.uleb128 0x3d6
	.ascii "UOI_FLAGS 1\0"
	.byte	0x1
	.uleb128 0x3d7
	.ascii "UOI_NAME 2\0"
	.byte	0x1
	.uleb128 0x3d8
	.ascii "UOI_TYPE 3\0"
	.byte	0x1
	.uleb128 0x3d9
	.ascii "UOI_USER_SID 4\0"
	.byte	0x1
	.uleb128 0x3da
	.ascii "LR_DEFAULTCOLOR 0\0"
	.byte	0x1
	.uleb128 0x3db
	.ascii "LR_MONOCHROME 1\0"
	.byte	0x1
	.uleb128 0x3dc
	.ascii "LR_COLOR 2\0"
	.byte	0x1
	.uleb128 0x3dd
	.ascii "LR_COPYRETURNORG 4\0"
	.byte	0x1
	.uleb128 0x3de
	.ascii "LR_COPYDELETEORG 8\0"
	.byte	0x1
	.uleb128 0x3df
	.ascii "LR_LOADFROMFILE 16\0"
	.byte	0x1
	.uleb128 0x3e0
	.ascii "LR_LOADTRANSPARENT 32\0"
	.byte	0x1
	.uleb128 0x3e1
	.ascii "LR_LOADREALSIZE 128\0"
	.byte	0x1
	.uleb128 0x3e2
	.ascii "LR_DEFAULTSIZE 0x0040\0"
	.byte	0x1
	.uleb128 0x3e3
	.ascii "LR_VGACOLOR 0x0080\0"
	.byte	0x1
	.uleb128 0x3e4
	.ascii "LR_LOADMAP3DCOLORS 4096\0"
	.byte	0x1
	.uleb128 0x3e5
	.ascii "LR_CREATEDIBSECTION 8192\0"
	.byte	0x1
	.uleb128 0x3e6
	.ascii "LR_COPYFROMRESOURCE 0x4000\0"
	.byte	0x1
	.uleb128 0x3e7
	.ascii "LR_SHARED 32768\0"
	.byte	0x1
	.uleb128 0x3e8
	.ascii "KEYEVENTF_EXTENDEDKEY 0x00000001\0"
	.byte	0x1
	.uleb128 0x3e9
	.ascii "KEYEVENTF_KEYUP 0x00000002\0"
	.byte	0x1
	.uleb128 0x3eb
	.ascii "OBM_BTNCORNERS 32758\0"
	.byte	0x1
	.uleb128 0x3ec
	.ascii "OBM_BTSIZE 32761\0"
	.byte	0x1
	.uleb128 0x3ed
	.ascii "OBM_CHECK 32760\0"
	.byte	0x1
	.uleb128 0x3ee
	.ascii "OBM_CHECKBOXES 32759\0"
	.byte	0x1
	.uleb128 0x3ef
	.ascii "OBM_CLOSE 32754\0"
	.byte	0x1
	.uleb128 0x3f0
	.ascii "OBM_COMBO 32738\0"
	.byte	0x1
	.uleb128 0x3f1
	.ascii "OBM_DNARROW 32752\0"
	.byte	0x1
	.uleb128 0x3f2
	.ascii "OBM_DNARROWD 32742\0"
	.byte	0x1
	.uleb128 0x3f3
	.ascii "OBM_DNARROWI 32736\0"
	.byte	0x1
	.uleb128 0x3f4
	.ascii "OBM_LFARROW 32750\0"
	.byte	0x1
	.uleb128 0x3f5
	.ascii "OBM_LFARROWI 32734\0"
	.byte	0x1
	.uleb128 0x3f6
	.ascii "OBM_LFARROWD 32740\0"
	.byte	0x1
	.uleb128 0x3f7
	.ascii "OBM_MNARROW 32739\0"
	.byte	0x1
	.uleb128 0x3f8
	.ascii "OBM_OLD_CLOSE 32767\0"
	.byte	0x1
	.uleb128 0x3f9
	.ascii "OBM_OLD_DNARROW 32764\0"
	.byte	0x1
	.uleb128 0x3fa
	.ascii "OBM_OLD_LFARROW 32762\0"
	.byte	0x1
	.uleb128 0x3fb
	.ascii "OBM_OLD_REDUCE 32757\0"
	.byte	0x1
	.uleb128 0x3fc
	.ascii "OBM_OLD_RESTORE 32755\0"
	.byte	0x1
	.uleb128 0x3fd
	.ascii "OBM_OLD_RGARROW 32763\0"
	.byte	0x1
	.uleb128 0x3fe
	.ascii "OBM_OLD_UPARROW 32765\0"
	.byte	0x1
	.uleb128 0x3ff
	.ascii "OBM_OLD_ZOOM 32756\0"
	.byte	0x1
	.uleb128 0x400
	.ascii "OBM_REDUCE 32749\0"
	.byte	0x1
	.uleb128 0x401
	.ascii "OBM_REDUCED 32746\0"
	.byte	0x1
	.uleb128 0x402
	.ascii "OBM_RESTORE 32747\0"
	.byte	0x1
	.uleb128 0x403
	.ascii "OBM_RESTORED 32744\0"
	.byte	0x1
	.uleb128 0x404
	.ascii "OBM_RGARROW 32751\0"
	.byte	0x1
	.uleb128 0x405
	.ascii "OBM_RGARROWD 32741\0"
	.byte	0x1
	.uleb128 0x406
	.ascii "OBM_RGARROWI 32735\0"
	.byte	0x1
	.uleb128 0x407
	.ascii "OBM_SIZE 32766\0"
	.byte	0x1
	.uleb128 0x408
	.ascii "OBM_UPARROW 32753\0"
	.byte	0x1
	.uleb128 0x409
	.ascii "OBM_UPARROWD 32743\0"
	.byte	0x1
	.uleb128 0x40a
	.ascii "OBM_UPARROWI 32737\0"
	.byte	0x1
	.uleb128 0x40b
	.ascii "OBM_ZOOM 32748\0"
	.byte	0x1
	.uleb128 0x40c
	.ascii "OBM_ZOOMD 32745\0"
	.byte	0x1
	.uleb128 0x40d
	.ascii "OCR_NORMAL 32512\0"
	.byte	0x1
	.uleb128 0x40e
	.ascii "OCR_IBEAM 32513\0"
	.byte	0x1
	.uleb128 0x40f
	.ascii "OCR_WAIT 32514\0"
	.byte	0x1
	.uleb128 0x410
	.ascii "OCR_CROSS 32515\0"
	.byte	0x1
	.uleb128 0x411
	.ascii "OCR_UP 32516\0"
	.byte	0x1
	.uleb128 0x412
	.ascii "OCR_SIZE 32640\0"
	.byte	0x1
	.uleb128 0x413
	.ascii "OCR_ICON 32641\0"
	.byte	0x1
	.uleb128 0x414
	.ascii "OCR_SIZENWSE 32642\0"
	.byte	0x1
	.uleb128 0x415
	.ascii "OCR_SIZENESW 32643\0"
	.byte	0x1
	.uleb128 0x416
	.ascii "OCR_SIZEWE 32644\0"
	.byte	0x1
	.uleb128 0x417
	.ascii "OCR_SIZENS 32645\0"
	.byte	0x1
	.uleb128 0x418
	.ascii "OCR_SIZEALL 32646\0"
	.byte	0x1
	.uleb128 0x419
	.ascii "OCR_NO 32648\0"
	.byte	0x1
	.uleb128 0x41a
	.ascii "OCR_APPSTARTING 32650\0"
	.byte	0x1
	.uleb128 0x41b
	.ascii "OIC_SAMPLE 32512\0"
	.byte	0x1
	.uleb128 0x41c
	.ascii "OIC_HAND 32513\0"
	.byte	0x1
	.uleb128 0x41d
	.ascii "OIC_QUES 32514\0"
	.byte	0x1
	.uleb128 0x41e
	.ascii "OIC_BANG 32515\0"
	.byte	0x1
	.uleb128 0x41f
	.ascii "OIC_NOTE 32516\0"
	.byte	0x1
	.uleb128 0x420
	.ascii "OIC_WINLOGO 32517\0"
	.byte	0x1
	.uleb128 0x421
	.ascii "OIC_WARNING OIC_BANG\0"
	.byte	0x1
	.uleb128 0x422
	.ascii "OIC_ERROR OIC_HAND\0"
	.byte	0x1
	.uleb128 0x423
	.ascii "OIC_INFORMATION OIC_NOTE\0"
	.byte	0x1
	.uleb128 0x424
	.ascii "HELPINFO_MENUITEM 2\0"
	.byte	0x1
	.uleb128 0x425
	.ascii "HELPINFO_WINDOW 1\0"
	.byte	0x1
	.uleb128 0x426
	.ascii "MSGF_DIALOGBOX 0\0"
	.byte	0x1
	.uleb128 0x427
	.ascii "MSGF_MESSAGEBOX 1\0"
	.byte	0x1
	.uleb128 0x428
	.ascii "MSGF_MENU 2\0"
	.byte	0x1
	.uleb128 0x429
	.ascii "MSGF_MOVE 3\0"
	.byte	0x1
	.uleb128 0x42a
	.ascii "MSGF_SIZE 4\0"
	.byte	0x1
	.uleb128 0x42b
	.ascii "MSGF_SCROLLBAR 5\0"
	.byte	0x1
	.uleb128 0x42c
	.ascii "MSGF_NEXTWINDOW 6\0"
	.byte	0x1
	.uleb128 0x42d
	.ascii "MSGF_MAINLOOP 8\0"
	.byte	0x1
	.uleb128 0x42e
	.ascii "MSGF_USER 4096\0"
	.byte	0x1
	.uleb128 0x42f
	.ascii "MOUSEEVENTF_MOVE 0x00000001\0"
	.byte	0x1
	.uleb128 0x430
	.ascii "MOUSEEVENTF_LEFTDOWN 0x00000002\0"
	.byte	0x1
	.uleb128 0x431
	.ascii "MOUSEEVENTF_LEFTUP 0x00000004\0"
	.byte	0x1
	.uleb128 0x432
	.ascii "MOUSEEVENTF_RIGHTDOWN 0x00000008\0"
	.byte	0x1
	.uleb128 0x433
	.ascii "MOUSEEVENTF_RIGHTUP 0x00000010\0"
	.byte	0x1
	.uleb128 0x434
	.ascii "MOUSEEVENTF_MIDDLEDOWN 0x00000020\0"
	.byte	0x1
	.uleb128 0x435
	.ascii "MOUSEEVENTF_MIDDLEUP 0x00000040\0"
	.byte	0x1
	.uleb128 0x436
	.ascii "MOUSEEVENTF_ABSOLUTE 0x00008000\0"
	.byte	0x1
	.uleb128 0x438
	.ascii "PM_NOREMOVE 0\0"
	.byte	0x1
	.uleb128 0x439
	.ascii "PM_REMOVE 1\0"
	.byte	0x1
	.uleb128 0x43a
	.ascii "PM_NOYIELD 2\0"
	.byte	0x1
	.uleb128 0x43c
	.ascii "HWND_BROADCAST ((HWND)(0xFFFF))\0"
	.byte	0x1
	.uleb128 0x43d
	.ascii "HWND_BOTTOM ((HWND)(1))\0"
	.byte	0x1
	.uleb128 0x43e
	.ascii "HWND_NOTOPMOST ((HWND)(-2))\0"
	.byte	0x1
	.uleb128 0x43f
	.ascii "HWND_TOP ((HWND)(0))\0"
	.byte	0x1
	.uleb128 0x440
	.ascii "HWND_TOPMOST ((HWND)(-1))\0"
	.byte	0x1
	.uleb128 0x441
	.ascii "HWND_DESKTOP ((HWND)(0))\0"
	.byte	0x1
	.uleb128 0x443
	.ascii "RDW_ERASE 4\0"
	.byte	0x1
	.uleb128 0x444
	.ascii "RDW_FRAME 1024\0"
	.byte	0x1
	.uleb128 0x445
	.ascii "RDW_INTERNALPAINT 2\0"
	.byte	0x1
	.uleb128 0x446
	.ascii "RDW_INVALIDATE 1\0"
	.byte	0x1
	.uleb128 0x447
	.ascii "RDW_NOERASE 32\0"
	.byte	0x1
	.uleb128 0x448
	.ascii "RDW_NOFRAME 2048\0"
	.byte	0x1
	.uleb128 0x449
	.ascii "RDW_NOINTERNALPAINT 16\0"
	.byte	0x1
	.uleb128 0x44a
	.ascii "RDW_VALIDATE 8\0"
	.byte	0x1
	.uleb128 0x44b
	.ascii "RDW_ERASENOW 512\0"
	.byte	0x1
	.uleb128 0x44c
	.ascii "RDW_UPDATENOW 256\0"
	.byte	0x1
	.uleb128 0x44d
	.ascii "RDW_ALLCHILDREN 128\0"
	.byte	0x1
	.uleb128 0x44e
	.ascii "RDW_NOCHILDREN 64\0"
	.byte	0x1
	.uleb128 0x44f
	.ascii "SMTO_ABORTIFHUNG 0x0002\0"
	.byte	0x1
	.uleb128 0x450
	.ascii "SMTO_BLOCK 0x0001\0"
	.byte	0x1
	.uleb128 0x451
	.ascii "SMTO_NORMAL 0x0000\0"
	.byte	0x1
	.uleb128 0x453
	.ascii "SIF_DISABLENOSCROLL 0x0008\0"
	.byte	0x1
	.uleb128 0x454
	.ascii "SIF_PAGE 0x0002\0"
	.byte	0x1
	.uleb128 0x455
	.ascii "SIF_POS 0x0004\0"
	.byte	0x1
	.uleb128 0x456
	.ascii "SIF_RANGE 0x0001\0"
	.byte	0x1
	.uleb128 0x457
	.ascii "SIF_TRACKPOS 0x0010\0"
	.byte	0x1
	.uleb128 0x458
	.ascii "SIF_ALL (SIF_PAGE | SIF_POS | SIF_RANGE | SIF_TRACKPOS)\0"
	.byte	0x1
	.uleb128 0x459
	.ascii "SWP_DRAWFRAME 0x0020\0"
	.byte	0x1
	.uleb128 0x45a
	.ascii "SWP_FRAMECHANGED 0x0020\0"
	.byte	0x1
	.uleb128 0x45b
	.ascii "SWP_HIDEWINDOW 0x0080\0"
	.byte	0x1
	.uleb128 0x45c
	.ascii "SWP_NOACTIVATE 0x0010\0"
	.byte	0x1
	.uleb128 0x45d
	.ascii "SWP_NOCOPYBITS 0x0100\0"
	.byte	0x1
	.uleb128 0x45e
	.ascii "SWP_NOMOVE 0x0002\0"
	.byte	0x1
	.uleb128 0x45f
	.ascii "SWP_NOSIZE 0x0001\0"
	.byte	0x1
	.uleb128 0x460
	.ascii "SWP_NOREDRAW 0x0008\0"
	.byte	0x1
	.uleb128 0x461
	.ascii "SWP_NOZORDER 0x0004\0"
	.byte	0x1
	.uleb128 0x462
	.ascii "SWP_SHOWWINDOW 0x0040\0"
	.byte	0x1
	.uleb128 0x463
	.ascii "SWP_NOOWNERZORDER 0x0200\0"
	.byte	0x1
	.uleb128 0x464
	.ascii "SWP_NOREPOSITION SWP_NOOWNERZORDER\0"
	.byte	0x1
	.uleb128 0x465
	.ascii "SWP_NOSENDCHANGING 0x0400\0"
	.byte	0x1
	.uleb128 0x466
	.ascii "SWP_DEFERERASE 0x2000\0"
	.byte	0x1
	.uleb128 0x467
	.ascii "SWP_ASYNCWINDOWPOS 0x4000\0"
	.byte	0x1
	.uleb128 0x468
	.ascii "HSHELL_ACTIVATESHELLWINDOW 3\0"
	.byte	0x1
	.uleb128 0x469
	.ascii "HSHELL_ENDTASK 10\0"
	.byte	0x1
	.uleb128 0x46a
	.ascii "HSHELL_GETMINRECT 5\0"
	.byte	0x1
	.uleb128 0x46b
	.ascii "HSHELL_LANGUAGE 8\0"
	.byte	0x1
	.uleb128 0x46c
	.ascii "HSHELL_REDRAW 6\0"
	.byte	0x1
	.uleb128 0x46d
	.ascii "HSHELL_TASKMAN 7\0"
	.byte	0x1
	.uleb128 0x46e
	.ascii "HSHELL_WINDOWACTIVATED 4\0"
	.byte	0x1
	.uleb128 0x46f
	.ascii "HSHELL_WINDOWCREATED 1\0"
	.byte	0x1
	.uleb128 0x470
	.ascii "HSHELL_WINDOWDESTROYED 2\0"
	.byte	0x1
	.uleb128 0x472
	.ascii "SPI_GETACCESSTIMEOUT 0x003C\0"
	.byte	0x1
	.uleb128 0x473
	.ascii "SPI_GETACTIVEWINDOWTRACKING 0x1000\0"
	.byte	0x1
	.uleb128 0x474
	.ascii "SPI_GETACTIVEWNDTRKTIMEOUT 8194\0"
	.byte	0x1
	.uleb128 0x475
	.ascii "SPI_GETACTIVEWNDTRKZORDER 0x100C\0"
	.byte	0x1
	.uleb128 0x476
	.ascii "SPI_GETANIMATION 0x0048\0"
	.byte	0x1
	.uleb128 0x477
	.ascii "SPI_GETBEEP 0x0001\0"
	.byte	0x1
	.uleb128 0x478
	.ascii "SPI_GETBLOCKSENDINPUTRESETS 0x1026\0"
	.byte	0x1
	.uleb128 0x479
	.ascii "SPI_GETBORDER 0x0005\0"
	.byte	0x1
	.uleb128 0x47a
	.ascii "SPI_GETCARETWIDTH 0x2006\0"
	.byte	0x1
	.uleb128 0x47b
	.ascii "SPI_GETCOMBOBOXANIMATION 0x1004\0"
	.byte	0x1
	.uleb128 0x47c
	.ascii "SPI_GETCURSORSHADOW 0x101A\0"
	.byte	0x1
	.uleb128 0x47d
	.ascii "SPI_GETDEFAULTINPUTLANG 0x0059\0"
	.byte	0x1
	.uleb128 0x47e
	.ascii "SPI_GETDESKWALLPAPER 0x0073\0"
	.byte	0x1
	.uleb128 0x47f
	.ascii "SPI_GETDRAGFULLWINDOWS 0x0026\0"
	.byte	0x1
	.uleb128 0x480
	.ascii "SPI_GETFASTTASKSWITCH 0x0023\0"
	.byte	0x1
	.uleb128 0x481
	.ascii "SPI_GETFILTERKEYS 0x0032\0"
	.byte	0x1
	.uleb128 0x482
	.ascii "SPI_GETFONTSMOOTHING 0x004A\0"
	.byte	0x1
	.uleb128 0x483
	.ascii "SPI_GETFOREGROUNDFLASHCOUNT 0x2004\0"
	.byte	0x1
	.uleb128 0x484
	.ascii "SPI_GETFOREGROUNDLOCKTIMEOUT 0x2000\0"
	.byte	0x1
	.uleb128 0x485
	.ascii "SPI_GETGRADIENTCAPTIONS 0x1008\0"
	.byte	0x1
	.uleb128 0x486
	.ascii "SPI_GETGRIDGRANULARITY 0x0012\0"
	.byte	0x1
	.uleb128 0x487
	.ascii "SPI_GETHIGHCONTRAST 0x0042\0"
	.byte	0x1
	.uleb128 0x488
	.ascii "SPI_GETHOTTRACKING 0x100E\0"
	.byte	0x1
	.uleb128 0x489
	.ascii "SPI_GETICONMETRICS 0x002D\0"
	.byte	0x1
	.uleb128 0x48a
	.ascii "SPI_GETICONTITLELOGFONT 0x001F\0"
	.byte	0x1
	.uleb128 0x48b
	.ascii "SPI_GETICONTITLEWRAP 0x0019\0"
	.byte	0x1
	.uleb128 0x48c
	.ascii "SPI_GETKEYBOARDCUES 0x100A\0"
	.byte	0x1
	.uleb128 0x48d
	.ascii "SPI_GETKEYBOARDDELAY 0x0016\0"
	.byte	0x1
	.uleb128 0x48e
	.ascii "SPI_GETKEYBOARDPREF 0x0044\0"
	.byte	0x1
	.uleb128 0x48f
	.ascii "SPI_GETKEYBOARDSPEED 0x000A\0"
	.byte	0x1
	.uleb128 0x490
	.ascii "SPI_GETLISTBOXSMOOTHSCROLLING 0x1006\0"
	.byte	0x1
	.uleb128 0x491
	.ascii "SPI_GETLOWPOWERACTIVE 0x0053\0"
	.byte	0x1
	.uleb128 0x492
	.ascii "SPI_GETLOWPOWERTIMEOUT 0x004F\0"
	.byte	0x1
	.uleb128 0x493
	.ascii "SPI_GETMENUANIMATION 0x1002\0"
	.byte	0x1
	.uleb128 0x494
	.ascii "SPI_GETMENUDROPALIGNMENT 0x001B\0"
	.byte	0x1
	.uleb128 0x495
	.ascii "SPI_GETMENUFADE 0x1012\0"
	.byte	0x1
	.uleb128 0x496
	.ascii "SPI_GETMENUSHOWDELAY 0x006A\0"
	.byte	0x1
	.uleb128 0x497
	.ascii "SPI_GETMENUUNDERLINES SPI_GETKEYBOARDCUES\0"
	.byte	0x1
	.uleb128 0x498
	.ascii "SPI_GETMINIMIZEDMETRICS 0x002B\0"
	.byte	0x1
	.uleb128 0x499
	.ascii "SPI_GETMOUSE 0x0003\0"
	.byte	0x1
	.uleb128 0x49a
	.ascii "SPI_GETMOUSEHOVERHEIGHT 0x0064\0"
	.byte	0x1
	.uleb128 0x49b
	.ascii "SPI_GETMOUSEHOVERTIME 0x0066\0"
	.byte	0x1
	.uleb128 0x49c
	.ascii "SPI_GETMOUSEHOVERWIDTH 0x0062\0"
	.byte	0x1
	.uleb128 0x49d
	.ascii "SPI_GETMOUSEKEYS 0x0036\0"
	.byte	0x1
	.uleb128 0x49e
	.ascii "SPI_GETMOUSESPEED 0x0070\0"
	.byte	0x1
	.uleb128 0x49f
	.ascii "SPI_GETMOUSETRAILS 0x005E\0"
	.byte	0x1
	.uleb128 0x4a0
	.ascii "SPI_GETNONCLIENTMETRICS 0x0029\0"
	.byte	0x1
	.uleb128 0x4a1
	.ascii "SPI_GETPOWEROFFACTIVE 0x0054\0"
	.byte	0x1
	.uleb128 0x4a2
	.ascii "SPI_GETPOWEROFFTIMEOUT 0x0050\0"
	.byte	0x1
	.uleb128 0x4a3
	.ascii "SPI_GETSCREENREADER 0x0046\0"
	.byte	0x1
	.uleb128 0x4a4
	.ascii "SPI_GETSCREENSAVEACTIVE 0x0010\0"
	.byte	0x1
	.uleb128 0x4a5
	.ascii "SPI_GETSCREENSAVERRUNNING 0x0072\0"
	.byte	0x1
	.uleb128 0x4a6
	.ascii "SPI_GETSCREENSAVETIMEOUT 0x000E\0"
	.byte	0x1
	.uleb128 0x4a7
	.ascii "SPI_GETSELECTIONFADE 0x1014\0"
	.byte	0x1
	.uleb128 0x4a8
	.ascii "SPI_GETSERIALKEYS 0x003E\0"
	.byte	0x1
	.uleb128 0x4a9
	.ascii "SPI_GETSHOWIMEUI 0x006E\0"
	.byte	0x1
	.uleb128 0x4aa
	.ascii "SPI_GETSHOWSOUNDS 0x0038\0"
	.byte	0x1
	.uleb128 0x4ab
	.ascii "SPI_GETSNAPTODEFBUTTON 0x005F\0"
	.byte	0x1
	.uleb128 0x4ac
	.ascii "SPI_GETSOUNDSENTRY 0x0040\0"
	.byte	0x1
	.uleb128 0x4ad
	.ascii "SPI_GETSTICKYKEYS 0x003A\0"
	.byte	0x1
	.uleb128 0x4ae
	.ascii "SPI_GETTOGGLEKEYS 0x0034\0"
	.byte	0x1
	.uleb128 0x4af
	.ascii "SPI_GETTOOLTIPANIMATION 0x1016\0"
	.byte	0x1
	.uleb128 0x4b0
	.ascii "SPI_GETTOOLTIPFADE 0x1018\0"
	.byte	0x1
	.uleb128 0x4b1
	.ascii "SPI_GETUIEFFECTS 0x103E\0"
	.byte	0x1
	.uleb128 0x4b2
	.ascii "SPI_GETWHEELSCROLLLINES 0x0068\0"
	.byte	0x1
	.uleb128 0x4b3
	.ascii "SPI_GETWINDOWSEXTENSION 0x005C\0"
	.byte	0x1
	.uleb128 0x4b4
	.ascii "SPI_GETWORKAREA 0x0030\0"
	.byte	0x1
	.uleb128 0x4b5
	.ascii "SPI_ICONHORIZONTALSPACING 0x000D\0"
	.byte	0x1
	.uleb128 0x4b6
	.ascii "SPI_ICONVERTICALSPACING 0x0018\0"
	.byte	0x1
	.uleb128 0x4b7
	.ascii "SPI_LANGDRIVER 0x000C\0"
	.byte	0x1
	.uleb128 0x4b8
	.ascii "SPI_SETACCESSTIMEOUT 0x003D\0"
	.byte	0x1
	.uleb128 0x4b9
	.ascii "SPI_SETACTIVEWINDOWTRACKING 0x1001\0"
	.byte	0x1
	.uleb128 0x4ba
	.ascii "SPI_SETACTIVEWNDTRKTIMEOUT 8195\0"
	.byte	0x1
	.uleb128 0x4bb
	.ascii "SPI_SETACTIVEWNDTRKZORDER 0x100D\0"
	.byte	0x1
	.uleb128 0x4bc
	.ascii "SPI_SETANIMATION 0x0049\0"
	.byte	0x1
	.uleb128 0x4bd
	.ascii "SPI_SETBEEP 0x0002\0"
	.byte	0x1
	.uleb128 0x4be
	.ascii "SPI_SETBLOCKSENDINPUTRESETS 0x1027\0"
	.byte	0x1
	.uleb128 0x4bf
	.ascii "SPI_SETBORDER 0x0006\0"
	.byte	0x1
	.uleb128 0x4c0
	.ascii "SPI_SETCARETWIDTH 0x2007\0"
	.byte	0x1
	.uleb128 0x4c1
	.ascii "SPI_SETCOMBOBOXANIMATION 0x1005\0"
	.byte	0x1
	.uleb128 0x4c2
	.ascii "SPI_SETCURSORS 0x0057\0"
	.byte	0x1
	.uleb128 0x4c3
	.ascii "SPI_SETCURSORSHADOW 0x101B\0"
	.byte	0x1
	.uleb128 0x4c4
	.ascii "SPI_SETDEFAULTINPUTLANG 0x005A\0"
	.byte	0x1
	.uleb128 0x4c5
	.ascii "SPI_SETDESKPATTERN 0x0015\0"
	.byte	0x1
	.uleb128 0x4c6
	.ascii "SPI_SETDESKWALLPAPER 0x0014\0"
	.byte	0x1
	.uleb128 0x4c7
	.ascii "SPI_SETDOUBLECLICKTIME 0x0020\0"
	.byte	0x1
	.uleb128 0x4c8
	.ascii "SPI_SETDOUBLECLKHEIGHT 0x001E\0"
	.byte	0x1
	.uleb128 0x4c9
	.ascii "SPI_SETDOUBLECLKWIDTH 0x001D\0"
	.byte	0x1
	.uleb128 0x4ca
	.ascii "SPI_SETDRAGFULLWINDOWS 0x0025\0"
	.byte	0x1
	.uleb128 0x4cb
	.ascii "SPI_SETDRAGHEIGHT 0x004D\0"
	.byte	0x1
	.uleb128 0x4cc
	.ascii "SPI_SETDRAGWIDTH 0x004C\0"
	.byte	0x1
	.uleb128 0x4cd
	.ascii "SPI_SETFASTTASKSWITCH 0x0024\0"
	.byte	0x1
	.uleb128 0x4ce
	.ascii "SPI_SETFILTERKEYS 0x0033\0"
	.byte	0x1
	.uleb128 0x4cf
	.ascii "SPI_SETFONTSMOOTHING 0x004B\0"
	.byte	0x1
	.uleb128 0x4d0
	.ascii "SPI_SETFOREGROUNDFLASHCOUNT 0x2005\0"
	.byte	0x1
	.uleb128 0x4d1
	.ascii "SPI_SETFOREGROUNDLOCKTIMEOUT 0x2001\0"
	.byte	0x1
	.uleb128 0x4d2
	.ascii "SPI_SETGRADIENTCAPTIONS 0x1009\0"
	.byte	0x1
	.uleb128 0x4d3
	.ascii "SPI_SETGRIDGRANULARITY 0x0013\0"
	.byte	0x1
	.uleb128 0x4d4
	.ascii "SPI_SETHANDHELD 0x004E\0"
	.byte	0x1
	.uleb128 0x4d5
	.ascii "SPI_SETHIGHCONTRAST 0x0043\0"
	.byte	0x1
	.uleb128 0x4d6
	.ascii "SPI_SETHOTTRACKING 0x100F\0"
	.byte	0x1
	.uleb128 0x4d7
	.ascii "SPI_SETICONMETRICS 0x002E\0"
	.byte	0x1
	.uleb128 0x4d8
	.ascii "SPI_SETICONS 0x0058\0"
	.byte	0x1
	.uleb128 0x4d9
	.ascii "SPI_SETICONTITLELOGFONT 0x0022\0"
	.byte	0x1
	.uleb128 0x4da
	.ascii "SPI_SETICONTITLEWRAP 0x001A\0"
	.byte	0x1
	.uleb128 0x4db
	.ascii "SPI_SETKEYBOARDCUES 0x100B\0"
	.byte	0x1
	.uleb128 0x4dc
	.ascii "SPI_SETKEYBOARDDELAY 0x0017\0"
	.byte	0x1
	.uleb128 0x4dd
	.ascii "SPI_SETKEYBOARDPREF 0x0045\0"
	.byte	0x1
	.uleb128 0x4de
	.ascii "SPI_SETKEYBOARDSPEED 0x000B\0"
	.byte	0x1
	.uleb128 0x4df
	.ascii "SPI_SETLANGTOGGLE 0x005B\0"
	.byte	0x1
	.uleb128 0x4e0
	.ascii "SPI_SETLISTBOXSMOOTHSCROLLING 0x1007\0"
	.byte	0x1
	.uleb128 0x4e1
	.ascii "SPI_SETLOWPOWERACTIVE 0x0055\0"
	.byte	0x1
	.uleb128 0x4e2
	.ascii "SPI_SETLOWPOWERTIMEOUT 0x0051\0"
	.byte	0x1
	.uleb128 0x4e3
	.ascii "SPI_SETMENUANIMATION 0x1003\0"
	.byte	0x1
	.uleb128 0x4e4
	.ascii "SPI_SETMENUDROPALIGNMENT 0x001C\0"
	.byte	0x1
	.uleb128 0x4e5
	.ascii "SPI_SETMENUFADE 0x1013\0"
	.byte	0x1
	.uleb128 0x4e6
	.ascii "SPI_SETMENUSHOWDELAY 0x006B\0"
	.byte	0x1
	.uleb128 0x4e7
	.ascii "SPI_SETMENUUNDERLINES SPI_SETKEYBOARDCUES\0"
	.byte	0x1
	.uleb128 0x4e8
	.ascii "SPI_SETMINIMIZEDMETRICS 0x002C\0"
	.byte	0x1
	.uleb128 0x4e9
	.ascii "SPI_SETMOUSE 0x0004\0"
	.byte	0x1
	.uleb128 0x4ea
	.ascii "SPI_SETMOUSEBUTTONSWAP 0x0021\0"
	.byte	0x1
	.uleb128 0x4eb
	.ascii "SPI_SETMOUSEHOVERHEIGHT 0x0065\0"
	.byte	0x1
	.uleb128 0x4ec
	.ascii "SPI_SETMOUSEHOVERTIME 0x0067\0"
	.byte	0x1
	.uleb128 0x4ed
	.ascii "SPI_SETMOUSEHOVERWIDTH 0x0063\0"
	.byte	0x1
	.uleb128 0x4ee
	.ascii "SPI_SETMOUSEKEYS 0x0037\0"
	.byte	0x1
	.uleb128 0x4ef
	.ascii "SPI_SETMOUSESPEED 0x0071\0"
	.byte	0x1
	.uleb128 0x4f0
	.ascii "SPI_SETMOUSETRAILS 0x005D\0"
	.byte	0x1
	.uleb128 0x4f1
	.ascii "SPI_SETNONCLIENTMETRICS 0x002A\0"
	.byte	0x1
	.uleb128 0x4f2
	.ascii "SPI_SETPENWINDOWS 0x0031\0"
	.byte	0x1
	.uleb128 0x4f3
	.ascii "SPI_SETPOWEROFFACTIVE 0x0056\0"
	.byte	0x1
	.uleb128 0x4f4
	.ascii "SPI_SETPOWEROFFTIMEOUT 0x0052\0"
	.byte	0x1
	.uleb128 0x4f5
	.ascii "SPI_SETSCREENREADER 0x0047\0"
	.byte	0x1
	.uleb128 0x4f6
	.ascii "SPI_SETSCREENSAVEACTIVE 0x0011\0"
	.byte	0x1
	.uleb128 0x4f7
	.ascii "SPI_SETSCREENSAVERRUNNING 0x0061\0"
	.byte	0x1
	.uleb128 0x4f8
	.ascii "SPI_SETSCREENSAVETIMEOUT 0x000F\0"
	.byte	0x1
	.uleb128 0x4f9
	.ascii "SPI_SETSELECTIONFADE 0x1015\0"
	.byte	0x1
	.uleb128 0x4fa
	.ascii "SPI_SETSERIALKEYS 0x003F\0"
	.byte	0x1
	.uleb128 0x4fb
	.ascii "SPI_SETSHOWIMEUI 0x006F\0"
	.byte	0x1
	.uleb128 0x4fc
	.ascii "SPI_SETSHOWSOUNDS 0x0039\0"
	.byte	0x1
	.uleb128 0x4fd
	.ascii "SPI_SETSNAPTODEFBUTTON 0x0060\0"
	.byte	0x1
	.uleb128 0x4fe
	.ascii "SPI_SETSOUNDSENTRY 0x0041\0"
	.byte	0x1
	.uleb128 0x4ff
	.ascii "SPI_SETSTICKYKEYS 0x003B\0"
	.byte	0x1
	.uleb128 0x500
	.ascii "SPI_SETTOGGLEKEYS 0x0035\0"
	.byte	0x1
	.uleb128 0x501
	.ascii "SPI_SETTOOLTIPANIMATION 0x1017\0"
	.byte	0x1
	.uleb128 0x502
	.ascii "SPI_SETTOOLTIPFADE 0x1019\0"
	.byte	0x1
	.uleb128 0x503
	.ascii "SPI_SETUIEFFECTS 0x103F\0"
	.byte	0x1
	.uleb128 0x504
	.ascii "SPI_SETWHEELSCROLLLINES 0x0069\0"
	.byte	0x1
	.uleb128 0x505
	.ascii "SPI_SETWORKAREA 0x002F\0"
	.byte	0x1
	.uleb128 0x507
	.ascii "SPIF_UPDATEINIFILE 0x0001\0"
	.byte	0x1
	.uleb128 0x508
	.ascii "SPIF_SENDCHANGE 0x0002\0"
	.byte	0x1
	.uleb128 0x509
	.ascii "SPIF_SENDWININICHANGE SPIF_SENDCHANGE\0"
	.byte	0x1
	.uleb128 0x50b
	.ascii "WM_APP 32768\0"
	.byte	0x1
	.uleb128 0x50c
	.ascii "WM_ACTIVATE 6\0"
	.byte	0x1
	.uleb128 0x50d
	.ascii "WM_ACTIVATEAPP 28\0"
	.byte	0x1
	.uleb128 0x511
	.ascii "WM_AFXFIRST 864\0"
	.byte	0x1
	.uleb128 0x512
	.ascii "WM_AFXLAST 895\0"
	.byte	0x1
	.uleb128 0x513
	.ascii "WM_ASKCBFORMATNAME 780\0"
	.byte	0x1
	.uleb128 0x514
	.ascii "WM_CANCELJOURNAL 75\0"
	.byte	0x1
	.uleb128 0x515
	.ascii "WM_CANCELMODE 31\0"
	.byte	0x1
	.uleb128 0x516
	.ascii "WM_CAPTURECHANGED 533\0"
	.byte	0x1
	.uleb128 0x517
	.ascii "WM_CHANGECBCHAIN 781\0"
	.byte	0x1
	.uleb128 0x518
	.ascii "WM_CHAR 258\0"
	.byte	0x1
	.uleb128 0x519
	.ascii "WM_CHARTOITEM 47\0"
	.byte	0x1
	.uleb128 0x51a
	.ascii "WM_CHILDACTIVATE 34\0"
	.byte	0x1
	.uleb128 0x51b
	.ascii "WM_CLEAR 771\0"
	.byte	0x1
	.uleb128 0x51c
	.ascii "WM_CLOSE 16\0"
	.byte	0x1
	.uleb128 0x51d
	.ascii "WM_COMMAND 273\0"
	.byte	0x1
	.uleb128 0x51e
	.ascii "WM_COMMNOTIFY 68\0"
	.byte	0x1
	.uleb128 0x51f
	.ascii "WM_COMPACTING 65\0"
	.byte	0x1
	.uleb128 0x520
	.ascii "WM_COMPAREITEM 57\0"
	.byte	0x1
	.uleb128 0x521
	.ascii "WM_CONTEXTMENU 123\0"
	.byte	0x1
	.uleb128 0x522
	.ascii "WM_COPY 769\0"
	.byte	0x1
	.uleb128 0x523
	.ascii "WM_COPYDATA 74\0"
	.byte	0x1
	.uleb128 0x524
	.ascii "WM_CREATE 1\0"
	.byte	0x1
	.uleb128 0x525
	.ascii "WM_CTLCOLORBTN 309\0"
	.byte	0x1
	.uleb128 0x526
	.ascii "WM_CTLCOLORDLG 310\0"
	.byte	0x1
	.uleb128 0x527
	.ascii "WM_CTLCOLOREDIT 307\0"
	.byte	0x1
	.uleb128 0x528
	.ascii "WM_CTLCOLORLISTBOX 308\0"
	.byte	0x1
	.uleb128 0x529
	.ascii "WM_CTLCOLORMSGBOX 306\0"
	.byte	0x1
	.uleb128 0x52a
	.ascii "WM_CTLCOLORSCROLLBAR 311\0"
	.byte	0x1
	.uleb128 0x52b
	.ascii "WM_CTLCOLORSTATIC 312\0"
	.byte	0x1
	.uleb128 0x52c
	.ascii "WM_CUT 768\0"
	.byte	0x1
	.uleb128 0x52d
	.ascii "WM_DEADCHAR 259\0"
	.byte	0x1
	.uleb128 0x52e
	.ascii "WM_DELETEITEM 45\0"
	.byte	0x1
	.uleb128 0x52f
	.ascii "WM_DESTROY 2\0"
	.byte	0x1
	.uleb128 0x530
	.ascii "WM_DESTROYCLIPBOARD 775\0"
	.byte	0x1
	.uleb128 0x531
	.ascii "WM_DEVICECHANGE 537\0"
	.byte	0x1
	.uleb128 0x532
	.ascii "WM_DEVMODECHANGE 27\0"
	.byte	0x1
	.uleb128 0x533
	.ascii "WM_DISPLAYCHANGE 126\0"
	.byte	0x1
	.uleb128 0x534
	.ascii "WM_DRAWCLIPBOARD 776\0"
	.byte	0x1
	.uleb128 0x535
	.ascii "WM_DRAWITEM 43\0"
	.byte	0x1
	.uleb128 0x536
	.ascii "WM_DROPFILES 563\0"
	.byte	0x1
	.uleb128 0x537
	.ascii "WM_ENABLE 10\0"
	.byte	0x1
	.uleb128 0x538
	.ascii "WM_ENDSESSION 22\0"
	.byte	0x1
	.uleb128 0x539
	.ascii "WM_ENTERIDLE 289\0"
	.byte	0x1
	.uleb128 0x53a
	.ascii "WM_ENTERMENULOOP 529\0"
	.byte	0x1
	.uleb128 0x53b
	.ascii "WM_ENTERSIZEMOVE 561\0"
	.byte	0x1
	.uleb128 0x53c
	.ascii "WM_ERASEBKGND 20\0"
	.byte	0x1
	.uleb128 0x53d
	.ascii "WM_EXITMENULOOP 530\0"
	.byte	0x1
	.uleb128 0x53e
	.ascii "WM_EXITSIZEMOVE 562\0"
	.byte	0x1
	.uleb128 0x53f
	.ascii "WM_FONTCHANGE 29\0"
	.byte	0x1
	.uleb128 0x540
	.ascii "WM_GETDLGCODE 135\0"
	.byte	0x1
	.uleb128 0x541
	.ascii "WM_GETFONT 49\0"
	.byte	0x1
	.uleb128 0x542
	.ascii "WM_GETHOTKEY 51\0"
	.byte	0x1
	.uleb128 0x543
	.ascii "WM_GETICON 127\0"
	.byte	0x1
	.uleb128 0x544
	.ascii "WM_GETMINMAXINFO 36\0"
	.byte	0x1
	.uleb128 0x545
	.ascii "WM_GETTEXT 13\0"
	.byte	0x1
	.uleb128 0x546
	.ascii "WM_GETTEXTLENGTH 14\0"
	.byte	0x1
	.uleb128 0x54a
	.ascii "WM_HANDHELDFIRST 856\0"
	.byte	0x1
	.uleb128 0x54b
	.ascii "WM_HANDHELDLAST 863\0"
	.byte	0x1
	.uleb128 0x54c
	.ascii "WM_HELP 83\0"
	.byte	0x1
	.uleb128 0x54d
	.ascii "WM_HOTKEY 786\0"
	.byte	0x1
	.uleb128 0x54e
	.ascii "WM_HSCROLL 276\0"
	.byte	0x1
	.uleb128 0x54f
	.ascii "WM_HSCROLLCLIPBOARD 782\0"
	.byte	0x1
	.uleb128 0x550
	.ascii "WM_ICONERASEBKGND 39\0"
	.byte	0x1
	.uleb128 0x551
	.ascii "WM_INITDIALOG 272\0"
	.byte	0x1
	.uleb128 0x552
	.ascii "WM_INITMENU 278\0"
	.byte	0x1
	.uleb128 0x553
	.ascii "WM_INITMENUPOPUP 279\0"
	.byte	0x1
	.uleb128 0x555
	.ascii "WM_INPUTLANGCHANGE 81\0"
	.byte	0x1
	.uleb128 0x556
	.ascii "WM_INPUTLANGCHANGEREQUEST 80\0"
	.byte	0x1
	.uleb128 0x557
	.ascii "WM_KEYDOWN 256\0"
	.byte	0x1
	.uleb128 0x558
	.ascii "WM_KEYUP 257\0"
	.byte	0x1
	.uleb128 0x559
	.ascii "WM_KILLFOCUS 8\0"
	.byte	0x1
	.uleb128 0x55a
	.ascii "WM_MDIACTIVATE 546\0"
	.byte	0x1
	.uleb128 0x55b
	.ascii "WM_MDICASCADE 551\0"
	.byte	0x1
	.uleb128 0x55c
	.ascii "WM_MDICREATE 544\0"
	.byte	0x1
	.uleb128 0x55d
	.ascii "WM_MDIDESTROY 545\0"
	.byte	0x1
	.uleb128 0x55e
	.ascii "WM_MDIGETACTIVE 553\0"
	.byte	0x1
	.uleb128 0x55f
	.ascii "WM_MDIICONARRANGE 552\0"
	.byte	0x1
	.uleb128 0x560
	.ascii "WM_MDIMAXIMIZE 549\0"
	.byte	0x1
	.uleb128 0x561
	.ascii "WM_MDINEXT 548\0"
	.byte	0x1
	.uleb128 0x562
	.ascii "WM_MDIREFRESHMENU 564\0"
	.byte	0x1
	.uleb128 0x563
	.ascii "WM_MDIRESTORE 547\0"
	.byte	0x1
	.uleb128 0x564
	.ascii "WM_MDISETMENU 560\0"
	.byte	0x1
	.uleb128 0x565
	.ascii "WM_MDITILE 550\0"
	.byte	0x1
	.uleb128 0x566
	.ascii "WM_MEASUREITEM 44\0"
	.byte	0x1
	.uleb128 0x568
	.ascii "WM_MENUCHAR 288\0"
	.byte	0x1
	.uleb128 0x569
	.ascii "WM_MENUSELECT 287\0"
	.byte	0x1
	.uleb128 0x56a
	.ascii "WM_NEXTMENU 531\0"
	.byte	0x1
	.uleb128 0x56b
	.ascii "WM_MOVE 3\0"
	.byte	0x1
	.uleb128 0x56c
	.ascii "WM_MOVING 534\0"
	.byte	0x1
	.uleb128 0x56d
	.ascii "WM_NCACTIVATE 134\0"
	.byte	0x1
	.uleb128 0x56e
	.ascii "WM_NCCALCSIZE 131\0"
	.byte	0x1
	.uleb128 0x56f
	.ascii "WM_NCCREATE 129\0"
	.byte	0x1
	.uleb128 0x570
	.ascii "WM_NCDESTROY 130\0"
	.byte	0x1
	.uleb128 0x571
	.ascii "WM_NCHITTEST 132\0"
	.byte	0x1
	.uleb128 0x572
	.ascii "WM_NCLBUTTONDBLCLK 163\0"
	.byte	0x1
	.uleb128 0x573
	.ascii "WM_NCLBUTTONDOWN 161\0"
	.byte	0x1
	.uleb128 0x574
	.ascii "WM_NCLBUTTONUP 162\0"
	.byte	0x1
	.uleb128 0x575
	.ascii "WM_NCMBUTTONDBLCLK 169\0"
	.byte	0x1
	.uleb128 0x576
	.ascii "WM_NCMBUTTONDOWN 167\0"
	.byte	0x1
	.uleb128 0x577
	.ascii "WM_NCMBUTTONUP 168\0"
	.byte	0x1
	.uleb128 0x579
	.ascii "WM_NCMOUSEMOVE 160\0"
	.byte	0x1
	.uleb128 0x57a
	.ascii "WM_NCPAINT 133\0"
	.byte	0x1
	.uleb128 0x57b
	.ascii "WM_NCRBUTTONDBLCLK 166\0"
	.byte	0x1
	.uleb128 0x57c
	.ascii "WM_NCRBUTTONDOWN 164\0"
	.byte	0x1
	.uleb128 0x57d
	.ascii "WM_NCRBUTTONUP 165\0"
	.byte	0x1
	.uleb128 0x57e
	.ascii "WM_NEXTDLGCTL 40\0"
	.byte	0x1
	.uleb128 0x57f
	.ascii "WM_NEXTMENU 531\0"
	.byte	0x1
	.uleb128 0x580
	.ascii "WM_NOTIFY 78\0"
	.byte	0x1
	.uleb128 0x581
	.ascii "WM_NOTIFYFORMAT 85\0"
	.byte	0x1
	.uleb128 0x582
	.ascii "WM_NULL 0\0"
	.byte	0x1
	.uleb128 0x583
	.ascii "WM_PAINT 15\0"
	.byte	0x1
	.uleb128 0x584
	.ascii "WM_PAINTCLIPBOARD 777\0"
	.byte	0x1
	.uleb128 0x585
	.ascii "WM_PAINTICON 38\0"
	.byte	0x1
	.uleb128 0x586
	.ascii "WM_PALETTECHANGED 785\0"
	.byte	0x1
	.uleb128 0x587
	.ascii "WM_PALETTEISCHANGING 784\0"
	.byte	0x1
	.uleb128 0x588
	.ascii "WM_PARENTNOTIFY 528\0"
	.byte	0x1
	.uleb128 0x589
	.ascii "WM_PASTE 770\0"
	.byte	0x1
	.uleb128 0x58a
	.ascii "WM_PENWINFIRST 896\0"
	.byte	0x1
	.uleb128 0x58b
	.ascii "WM_PENWINLAST 911\0"
	.byte	0x1
	.uleb128 0x58c
	.ascii "WM_POWER 72\0"
	.byte	0x1
	.uleb128 0x58d
	.ascii "WM_POWERBROADCAST 536\0"
	.byte	0x1
	.uleb128 0x58e
	.ascii "WM_PRINT 791\0"
	.byte	0x1
	.uleb128 0x58f
	.ascii "WM_PRINTCLIENT 792\0"
	.byte	0x1
	.uleb128 0x590
	.ascii "WM_QUERYDRAGICON 55\0"
	.byte	0x1
	.uleb128 0x591
	.ascii "WM_QUERYENDSESSION 17\0"
	.byte	0x1
	.uleb128 0x592
	.ascii "WM_QUERYNEWPALETTE 783\0"
	.byte	0x1
	.uleb128 0x593
	.ascii "WM_QUERYOPEN 19\0"
	.byte	0x1
	.uleb128 0x594
	.ascii "WM_QUEUESYNC 35\0"
	.byte	0x1
	.uleb128 0x595
	.ascii "WM_QUIT 18\0"
	.byte	0x1
	.uleb128 0x596
	.ascii "WM_RENDERALLFORMATS 774\0"
	.byte	0x1
	.uleb128 0x597
	.ascii "WM_RENDERFORMAT 773\0"
	.byte	0x1
	.uleb128 0x598
	.ascii "WM_SETCURSOR 32\0"
	.byte	0x1
	.uleb128 0x599
	.ascii "WM_SETFOCUS 7\0"
	.byte	0x1
	.uleb128 0x59a
	.ascii "WM_SETFONT 48\0"
	.byte	0x1
	.uleb128 0x59b
	.ascii "WM_SETHOTKEY 50\0"
	.byte	0x1
	.uleb128 0x59c
	.ascii "WM_SETICON 128\0"
	.byte	0x1
	.uleb128 0x59d
	.ascii "WM_SETREDRAW 11\0"
	.byte	0x1
	.uleb128 0x59e
	.ascii "WM_SETTEXT 12\0"
	.byte	0x1
	.uleb128 0x59f
	.ascii "WM_SETTINGCHANGE 26\0"
	.byte	0x1
	.uleb128 0x5a0
	.ascii "WM_SHOWWINDOW 24\0"
	.byte	0x1
	.uleb128 0x5a1
	.ascii "WM_SIZE 5\0"
	.byte	0x1
	.uleb128 0x5a2
	.ascii "WM_SIZECLIPBOARD 779\0"
	.byte	0x1
	.uleb128 0x5a3
	.ascii "WM_SIZING 532\0"
	.byte	0x1
	.uleb128 0x5a4
	.ascii "WM_SPOOLERSTATUS 42\0"
	.byte	0x1
	.uleb128 0x5a5
	.ascii "WM_STYLECHANGED 125\0"
	.byte	0x1
	.uleb128 0x5a6
	.ascii "WM_STYLECHANGING 124\0"
	.byte	0x1
	.uleb128 0x5a7
	.ascii "WM_SYSCHAR 262\0"
	.byte	0x1
	.uleb128 0x5a8
	.ascii "WM_SYSCOLORCHANGE 21\0"
	.byte	0x1
	.uleb128 0x5a9
	.ascii "WM_SYSCOMMAND 274\0"
	.byte	0x1
	.uleb128 0x5aa
	.ascii "WM_SYSDEADCHAR 263\0"
	.byte	0x1
	.uleb128 0x5ab
	.ascii "WM_SYSKEYDOWN 260\0"
	.byte	0x1
	.uleb128 0x5ac
	.ascii "WM_SYSKEYUP 261\0"
	.byte	0x1
	.uleb128 0x5ad
	.ascii "WM_TCARD 82\0"
	.byte	0x1
	.uleb128 0x5ae
	.ascii "WM_THEMECHANGED 794\0"
	.byte	0x1
	.uleb128 0x5af
	.ascii "WM_TIMECHANGE 30\0"
	.byte	0x1
	.uleb128 0x5b0
	.ascii "WM_TIMER 275\0"
	.byte	0x1
	.uleb128 0x5b1
	.ascii "WM_UNDO 772\0"
	.byte	0x1
	.uleb128 0x5b2
	.ascii "WM_USER 1024\0"
	.byte	0x1
	.uleb128 0x5b3
	.ascii "WM_USERCHANGED 84\0"
	.byte	0x1
	.uleb128 0x5b4
	.ascii "WM_VKEYTOITEM 46\0"
	.byte	0x1
	.uleb128 0x5b5
	.ascii "WM_VSCROLL 277\0"
	.byte	0x1
	.uleb128 0x5b6
	.ascii "WM_VSCROLLCLIPBOARD 778\0"
	.byte	0x1
	.uleb128 0x5b7
	.ascii "WM_WINDOWPOSCHANGED 71\0"
	.byte	0x1
	.uleb128 0x5b8
	.ascii "WM_WINDOWPOSCHANGING 70\0"
	.byte	0x1
	.uleb128 0x5b9
	.ascii "WM_WININICHANGE 26\0"
	.byte	0x1
	.uleb128 0x5ba
	.ascii "WM_KEYFIRST 256\0"
	.byte	0x1
	.uleb128 0x5bc
	.ascii "WM_SYNCPAINT 136\0"
	.byte	0x1
	.uleb128 0x5bd
	.ascii "WM_MOUSEACTIVATE 33\0"
	.byte	0x1
	.uleb128 0x5be
	.ascii "WM_MOUSEMOVE 512\0"
	.byte	0x1
	.uleb128 0x5bf
	.ascii "WM_LBUTTONDOWN 513\0"
	.byte	0x1
	.uleb128 0x5c0
	.ascii "WM_LBUTTONUP 514\0"
	.byte	0x1
	.uleb128 0x5c1
	.ascii "WM_LBUTTONDBLCLK 515\0"
	.byte	0x1
	.uleb128 0x5c2
	.ascii "WM_RBUTTONDOWN 516\0"
	.byte	0x1
	.uleb128 0x5c3
	.ascii "WM_RBUTTONUP 517\0"
	.byte	0x1
	.uleb128 0x5c4
	.ascii "WM_RBUTTONDBLCLK 518\0"
	.byte	0x1
	.uleb128 0x5c5
	.ascii "WM_MBUTTONDOWN 519\0"
	.byte	0x1
	.uleb128 0x5c6
	.ascii "WM_MBUTTONUP 520\0"
	.byte	0x1
	.uleb128 0x5c7
	.ascii "WM_MBUTTONDBLCLK 521\0"
	.byte	0x1
	.uleb128 0x5c8
	.ascii "WM_MOUSEWHEEL 522\0"
	.byte	0x1
	.uleb128 0x5c9
	.ascii "WM_MOUSEFIRST 512\0"
	.byte	0x1
	.uleb128 0x5cb
	.ascii "WM_MOUSEHOVER 0x2A1\0"
	.byte	0x1
	.uleb128 0x5cc
	.ascii "WM_MOUSELEAVE 0x2A3\0"
	.byte	0x1
	.uleb128 0x5ce
	.ascii "BM_CLICK 245\0"
	.byte	0x1
	.uleb128 0x5cf
	.ascii "BM_GETCHECK 240\0"
	.byte	0x1
	.uleb128 0x5d0
	.ascii "BM_GETIMAGE 246\0"
	.byte	0x1
	.uleb128 0x5d1
	.ascii "BM_GETSTATE 242\0"
	.byte	0x1
	.uleb128 0x5d2
	.ascii "BM_SETCHECK 241\0"
	.byte	0x1
	.uleb128 0x5d3
	.ascii "BM_SETIMAGE 247\0"
	.byte	0x1
	.uleb128 0x5d4
	.ascii "BM_SETSTATE 243\0"
	.byte	0x1
	.uleb128 0x5d5
	.ascii "BM_SETSTYLE 244\0"
	.byte	0x1
	.uleb128 0x5d6
	.ascii "BN_CLICKED 0\0"
	.byte	0x1
	.uleb128 0x5d7
	.ascii "BN_DBLCLK 5\0"
	.byte	0x1
	.uleb128 0x5d8
	.ascii "BN_DISABLE 4\0"
	.byte	0x1
	.uleb128 0x5d9
	.ascii "BN_DOUBLECLICKED 5\0"
	.byte	0x1
	.uleb128 0x5da
	.ascii "BN_HILITE 2\0"
	.byte	0x1
	.uleb128 0x5db
	.ascii "BN_KILLFOCUS 7\0"
	.byte	0x1
	.uleb128 0x5dc
	.ascii "BN_PAINT 1\0"
	.byte	0x1
	.uleb128 0x5dd
	.ascii "BN_PUSHED 2\0"
	.byte	0x1
	.uleb128 0x5de
	.ascii "BN_SETFOCUS 6\0"
	.byte	0x1
	.uleb128 0x5df
	.ascii "BN_UNHILITE 3\0"
	.byte	0x1
	.uleb128 0x5e0
	.ascii "BN_UNPUSHED 3\0"
	.byte	0x1
	.uleb128 0x5e1
	.ascii "CB_ADDSTRING 323\0"
	.byte	0x1
	.uleb128 0x5e2
	.ascii "CB_DELETESTRING 324\0"
	.byte	0x1
	.uleb128 0x5e3
	.ascii "CB_DIR 325\0"
	.byte	0x1
	.uleb128 0x5e4
	.ascii "CB_FINDSTRING 332\0"
	.byte	0x1
	.uleb128 0x5e5
	.ascii "CB_FINDSTRINGEXACT 344\0"
	.byte	0x1
	.uleb128 0x5e6
	.ascii "CB_GETCOUNT 326\0"
	.byte	0x1
	.uleb128 0x5e7
	.ascii "CB_GETCURSEL 327\0"
	.byte	0x1
	.uleb128 0x5e8
	.ascii "CB_GETDROPPEDCONTROLRECT 338\0"
	.byte	0x1
	.uleb128 0x5e9
	.ascii "CB_GETDROPPEDSTATE 343\0"
	.byte	0x1
	.uleb128 0x5ea
	.ascii "CB_GETDROPPEDWIDTH 351\0"
	.byte	0x1
	.uleb128 0x5eb
	.ascii "CB_GETEDITSEL 320\0"
	.byte	0x1
	.uleb128 0x5ec
	.ascii "CB_GETEXTENDEDUI 342\0"
	.byte	0x1
	.uleb128 0x5ed
	.ascii "CB_GETHORIZONTALEXTENT 349\0"
	.byte	0x1
	.uleb128 0x5ee
	.ascii "CB_GETITEMDATA 336\0"
	.byte	0x1
	.uleb128 0x5ef
	.ascii "CB_GETITEMHEIGHT 340\0"
	.byte	0x1
	.uleb128 0x5f0
	.ascii "CB_GETLBTEXT 328\0"
	.byte	0x1
	.uleb128 0x5f1
	.ascii "CB_GETLBTEXTLEN 329\0"
	.byte	0x1
	.uleb128 0x5f2
	.ascii "CB_GETLOCALE 346\0"
	.byte	0x1
	.uleb128 0x5f3
	.ascii "CB_GETTOPINDEX 347\0"
	.byte	0x1
	.uleb128 0x5f4
	.ascii "CB_INITSTORAGE 353\0"
	.byte	0x1
	.uleb128 0x5f5
	.ascii "CB_INSERTSTRING 330\0"
	.byte	0x1
	.uleb128 0x5f6
	.ascii "CB_LIMITTEXT 321\0"
	.byte	0x1
	.uleb128 0x5f7
	.ascii "CB_RESETCONTENT 331\0"
	.byte	0x1
	.uleb128 0x5f8
	.ascii "CB_SELECTSTRING 333\0"
	.byte	0x1
	.uleb128 0x5f9
	.ascii "CB_SETCURSEL 334\0"
	.byte	0x1
	.uleb128 0x5fa
	.ascii "CB_SETDROPPEDWIDTH 352\0"
	.byte	0x1
	.uleb128 0x5fb
	.ascii "CB_SETEDITSEL 322\0"
	.byte	0x1
	.uleb128 0x5fc
	.ascii "CB_SETEXTENDEDUI 341\0"
	.byte	0x1
	.uleb128 0x5fd
	.ascii "CB_SETHORIZONTALEXTENT 350\0"
	.byte	0x1
	.uleb128 0x5fe
	.ascii "CB_SETITEMDATA 337\0"
	.byte	0x1
	.uleb128 0x5ff
	.ascii "CB_SETITEMHEIGHT 339\0"
	.byte	0x1
	.uleb128 0x600
	.ascii "CB_SETLOCALE 345\0"
	.byte	0x1
	.uleb128 0x601
	.ascii "CB_SETTOPINDEX 348\0"
	.byte	0x1
	.uleb128 0x602
	.ascii "CB_SHOWDROPDOWN 335\0"
	.byte	0x1
	.uleb128 0x604
	.ascii "CBN_CLOSEUP 8\0"
	.byte	0x1
	.uleb128 0x605
	.ascii "CBN_DBLCLK 2\0"
	.byte	0x1
	.uleb128 0x606
	.ascii "CBN_DROPDOWN 7\0"
	.byte	0x1
	.uleb128 0x607
	.ascii "CBN_EDITCHANGE 5\0"
	.byte	0x1
	.uleb128 0x608
	.ascii "CBN_EDITUPDATE 6\0"
	.byte	0x1
	.uleb128 0x609
	.ascii "CBN_ERRSPACE (-1)\0"
	.byte	0x1
	.uleb128 0x60a
	.ascii "CBN_KILLFOCUS 4\0"
	.byte	0x1
	.uleb128 0x60b
	.ascii "CBN_SELCHANGE 1\0"
	.byte	0x1
	.uleb128 0x60c
	.ascii "CBN_SELENDCANCEL 10\0"
	.byte	0x1
	.uleb128 0x60d
	.ascii "CBN_SELENDOK 9\0"
	.byte	0x1
	.uleb128 0x60e
	.ascii "CBN_SETFOCUS 3\0"
	.byte	0x1
	.uleb128 0x60f
	.ascii "EM_CANUNDO 198\0"
	.byte	0x1
	.uleb128 0x610
	.ascii "EM_CHARFROMPOS 215\0"
	.byte	0x1
	.uleb128 0x611
	.ascii "EM_EMPTYUNDOBUFFER 205\0"
	.byte	0x1
	.uleb128 0x612
	.ascii "EM_FMTLINES 200\0"
	.byte	0x1
	.uleb128 0x613
	.ascii "EM_GETFIRSTVISIBLELINE 206\0"
	.byte	0x1
	.uleb128 0x614
	.ascii "EM_GETHANDLE 189\0"
	.byte	0x1
	.uleb128 0x615
	.ascii "EM_GETLIMITTEXT 213\0"
	.byte	0x1
	.uleb128 0x616
	.ascii "EM_GETLINE 196\0"
	.byte	0x1
	.uleb128 0x617
	.ascii "EM_GETLINECOUNT 186\0"
	.byte	0x1
	.uleb128 0x618
	.ascii "EM_GETMARGINS 212\0"
	.byte	0x1
	.uleb128 0x619
	.ascii "EM_GETMODIFY 184\0"
	.byte	0x1
	.uleb128 0x61a
	.ascii "EM_GETPASSWORDCHAR 210\0"
	.byte	0x1
	.uleb128 0x61b
	.ascii "EM_GETRECT 178\0"
	.byte	0x1
	.uleb128 0x61c
	.ascii "EM_GETSEL 176\0"
	.byte	0x1
	.uleb128 0x61d
	.ascii "EM_GETTHUMB 190\0"
	.byte	0x1
	.uleb128 0x61e
	.ascii "EM_GETWORDBREAKPROC 209\0"
	.byte	0x1
	.uleb128 0x61f
	.ascii "EM_LIMITTEXT 197\0"
	.byte	0x1
	.uleb128 0x620
	.ascii "EM_LINEFROMCHAR 201\0"
	.byte	0x1
	.uleb128 0x621
	.ascii "EM_LINEINDEX 187\0"
	.byte	0x1
	.uleb128 0x622
	.ascii "EM_LINELENGTH 193\0"
	.byte	0x1
	.uleb128 0x623
	.ascii "EM_LINESCROLL 182\0"
	.byte	0x1
	.uleb128 0x624
	.ascii "EM_POSFROMCHAR 214\0"
	.byte	0x1
	.uleb128 0x625
	.ascii "EM_REPLACESEL 194\0"
	.byte	0x1
	.uleb128 0x626
	.ascii "EM_SCROLL 181\0"
	.byte	0x1
	.uleb128 0x627
	.ascii "EM_SCROLLCARET 183\0"
	.byte	0x1
	.uleb128 0x628
	.ascii "EM_SETHANDLE 188\0"
	.byte	0x1
	.uleb128 0x629
	.ascii "EM_SETLIMITTEXT 197\0"
	.byte	0x1
	.uleb128 0x62a
	.ascii "EM_SETMARGINS 211\0"
	.byte	0x1
	.uleb128 0x62b
	.ascii "EM_SETMODIFY 185\0"
	.byte	0x1
	.uleb128 0x62c
	.ascii "EM_SETPASSWORDCHAR 204\0"
	.byte	0x1
	.uleb128 0x62d
	.ascii "EM_SETREADONLY 207\0"
	.byte	0x1
	.uleb128 0x62e
	.ascii "EM_SETRECT 179\0"
	.byte	0x1
	.uleb128 0x62f
	.ascii "EM_SETRECTNP 180\0"
	.byte	0x1
	.uleb128 0x630
	.ascii "EM_SETSEL 177\0"
	.byte	0x1
	.uleb128 0x631
	.ascii "EM_SETTABSTOPS 203\0"
	.byte	0x1
	.uleb128 0x632
	.ascii "EM_SETWORDBREAKPROC 208\0"
	.byte	0x1
	.uleb128 0x633
	.ascii "EM_UNDO 199\0"
	.byte	0x1
	.uleb128 0x635
	.ascii "EN_CHANGE 768\0"
	.byte	0x1
	.uleb128 0x636
	.ascii "EN_ERRSPACE 1280\0"
	.byte	0x1
	.uleb128 0x637
	.ascii "EN_HSCROLL 1537\0"
	.byte	0x1
	.uleb128 0x638
	.ascii "EN_KILLFOCUS 512\0"
	.byte	0x1
	.uleb128 0x639
	.ascii "EN_MAXTEXT 1281\0"
	.byte	0x1
	.uleb128 0x63a
	.ascii "EN_SETFOCUS 256\0"
	.byte	0x1
	.uleb128 0x63b
	.ascii "EN_UPDATE 1024\0"
	.byte	0x1
	.uleb128 0x63c
	.ascii "EN_VSCROLL 1538\0"
	.byte	0x1
	.uleb128 0x63d
	.ascii "LB_ADDFILE 406\0"
	.byte	0x1
	.uleb128 0x63e
	.ascii "LB_ADDSTRING 384\0"
	.byte	0x1
	.uleb128 0x63f
	.ascii "LB_DELETESTRING 386\0"
	.byte	0x1
	.uleb128 0x640
	.ascii "LB_DIR 397\0"
	.byte	0x1
	.uleb128 0x641
	.ascii "LB_FINDSTRING 399\0"
	.byte	0x1
	.uleb128 0x642
	.ascii "LB_FINDSTRINGEXACT 418\0"
	.byte	0x1
	.uleb128 0x643
	.ascii "LB_GETANCHORINDEX 413\0"
	.byte	0x1
	.uleb128 0x644
	.ascii "LB_GETCARETINDEX 415\0"
	.byte	0x1
	.uleb128 0x645
	.ascii "LB_GETCOUNT 395\0"
	.byte	0x1
	.uleb128 0x646
	.ascii "LB_GETCURSEL 392\0"
	.byte	0x1
	.uleb128 0x647
	.ascii "LB_GETHORIZONTALEXTENT 403\0"
	.byte	0x1
	.uleb128 0x648
	.ascii "LB_GETITEMDATA 409\0"
	.byte	0x1
	.uleb128 0x649
	.ascii "LB_GETITEMHEIGHT 417\0"
	.byte	0x1
	.uleb128 0x64a
	.ascii "LB_GETITEMRECT 408\0"
	.byte	0x1
	.uleb128 0x64b
	.ascii "LB_GETLOCALE 422\0"
	.byte	0x1
	.uleb128 0x64c
	.ascii "LB_GETSEL 391\0"
	.byte	0x1
	.uleb128 0x64d
	.ascii "LB_GETSELCOUNT 400\0"
	.byte	0x1
	.uleb128 0x64e
	.ascii "LB_GETSELITEMS 401\0"
	.byte	0x1
	.uleb128 0x64f
	.ascii "LB_GETTEXT 393\0"
	.byte	0x1
	.uleb128 0x650
	.ascii "LB_GETTEXTLEN 394\0"
	.byte	0x1
	.uleb128 0x651
	.ascii "LB_GETTOPINDEX 398\0"
	.byte	0x1
	.uleb128 0x652
	.ascii "LB_INITSTORAGE 424\0"
	.byte	0x1
	.uleb128 0x653
	.ascii "LB_INSERTSTRING 385\0"
	.byte	0x1
	.uleb128 0x654
	.ascii "LB_ITEMFROMPOINT 425\0"
	.byte	0x1
	.uleb128 0x655
	.ascii "LB_RESETCONTENT 388\0"
	.byte	0x1
	.uleb128 0x656
	.ascii "LB_SELECTSTRING 396\0"
	.byte	0x1
	.uleb128 0x657
	.ascii "LB_SELITEMRANGE 411\0"
	.byte	0x1
	.uleb128 0x658
	.ascii "LB_SELITEMRANGEEX 387\0"
	.byte	0x1
	.uleb128 0x659
	.ascii "LB_SETANCHORINDEX 412\0"
	.byte	0x1
	.uleb128 0x65a
	.ascii "LB_SETCARETINDEX 414\0"
	.byte	0x1
	.uleb128 0x65b
	.ascii "LB_SETCOLUMNWIDTH 405\0"
	.byte	0x1
	.uleb128 0x65c
	.ascii "LB_SETCOUNT 423\0"
	.byte	0x1
	.uleb128 0x65d
	.ascii "LB_SETCURSEL 390\0"
	.byte	0x1
	.uleb128 0x65e
	.ascii "LB_SETHORIZONTALEXTENT 404\0"
	.byte	0x1
	.uleb128 0x65f
	.ascii "LB_SETITEMDATA 410\0"
	.byte	0x1
	.uleb128 0x660
	.ascii "LB_SETITEMHEIGHT 416\0"
	.byte	0x1
	.uleb128 0x661
	.ascii "LB_SETLOCALE 421\0"
	.byte	0x1
	.uleb128 0x662
	.ascii "LB_SETSEL 389\0"
	.byte	0x1
	.uleb128 0x663
	.ascii "LB_SETTABSTOPS 402\0"
	.byte	0x1
	.uleb128 0x664
	.ascii "LB_SETTOPINDEX 407\0"
	.byte	0x1
	.uleb128 0x665
	.ascii "LBN_DBLCLK 2\0"
	.byte	0x1
	.uleb128 0x666
	.ascii "LBN_ERRSPACE (-2)\0"
	.byte	0x1
	.uleb128 0x667
	.ascii "LBN_KILLFOCUS 5\0"
	.byte	0x1
	.uleb128 0x668
	.ascii "LBN_SELCANCEL 3\0"
	.byte	0x1
	.uleb128 0x669
	.ascii "LBN_SELCHANGE 1\0"
	.byte	0x1
	.uleb128 0x66a
	.ascii "LBN_SETFOCUS 4\0"
	.byte	0x1
	.uleb128 0x66b
	.ascii "SBM_ENABLE_ARROWS 228\0"
	.byte	0x1
	.uleb128 0x66c
	.ascii "SBM_GETPOS 225\0"
	.byte	0x1
	.uleb128 0x66d
	.ascii "SBM_GETRANGE 227\0"
	.byte	0x1
	.uleb128 0x66e
	.ascii "SBM_GETSCROLLINFO 234\0"
	.byte	0x1
	.uleb128 0x66f
	.ascii "SBM_SETPOS 224\0"
	.byte	0x1
	.uleb128 0x670
	.ascii "SBM_SETRANGE 226\0"
	.byte	0x1
	.uleb128 0x671
	.ascii "SBM_SETRANGEREDRAW 230\0"
	.byte	0x1
	.uleb128 0x672
	.ascii "SBM_SETSCROLLINFO 233\0"
	.byte	0x1
	.uleb128 0x673
	.ascii "STM_GETICON 369\0"
	.byte	0x1
	.uleb128 0x674
	.ascii "STM_GETIMAGE 371\0"
	.byte	0x1
	.uleb128 0x675
	.ascii "STM_SETICON 368\0"
	.byte	0x1
	.uleb128 0x676
	.ascii "STM_SETIMAGE 370\0"
	.byte	0x1
	.uleb128 0x677
	.ascii "STN_CLICKED 0\0"
	.byte	0x1
	.uleb128 0x678
	.ascii "STN_DBLCLK 1\0"
	.byte	0x1
	.uleb128 0x679
	.ascii "STN_DISABLE 3\0"
	.byte	0x1
	.uleb128 0x67a
	.ascii "STN_ENABLE 2\0"
	.byte	0x1
	.uleb128 0x67b
	.ascii "DM_GETDEFID WM_USER\0"
	.byte	0x1
	.uleb128 0x67c
	.ascii "DM_SETDEFID (WM_USER+1)\0"
	.byte	0x1
	.uleb128 0x67d
	.ascii "DM_REPOSITION (WM_USER+2)\0"
	.byte	0x1
	.uleb128 0x67e
	.ascii "PSM_PAGEINFO (WM_USER+100)\0"
	.byte	0x1
	.uleb128 0x67f
	.ascii "PSM_SHEETINFO (WM_USER+101)\0"
	.byte	0x1
	.uleb128 0x680
	.ascii "PSI_SETACTIVE 1\0"
	.byte	0x1
	.uleb128 0x681
	.ascii "PSI_KILLACTIVE 2\0"
	.byte	0x1
	.uleb128 0x682
	.ascii "PSI_APPLY 3\0"
	.byte	0x1
	.uleb128 0x683
	.ascii "PSI_RESET 4\0"
	.byte	0x1
	.uleb128 0x684
	.ascii "PSI_HASHELP 5\0"
	.byte	0x1
	.uleb128 0x685
	.ascii "PSI_HELP 6\0"
	.byte	0x1
	.uleb128 0x686
	.ascii "PSI_CHANGED 1\0"
	.byte	0x1
	.uleb128 0x687
	.ascii "PSI_GUISTART 2\0"
	.byte	0x1
	.uleb128 0x688
	.ascii "PSI_REBOOT 3\0"
	.byte	0x1
	.uleb128 0x689
	.ascii "PSI_GETSIBLINGS 4\0"
	.byte	0x1
	.uleb128 0x68a
	.ascii "DCX_WINDOW 1\0"
	.byte	0x1
	.uleb128 0x68b
	.ascii "DCX_CACHE 2\0"
	.byte	0x1
	.uleb128 0x68c
	.ascii "DCX_PARENTCLIP 32\0"
	.byte	0x1
	.uleb128 0x68d
	.ascii "DCX_CLIPSIBLINGS 16\0"
	.byte	0x1
	.uleb128 0x68e
	.ascii "DCX_CLIPCHILDREN 8\0"
	.byte	0x1
	.uleb128 0x68f
	.ascii "DCX_NORESETATTRS 4\0"
	.byte	0x1
	.uleb128 0x690
	.ascii "DCX_INTERSECTUPDATE 0x200\0"
	.byte	0x1
	.uleb128 0x691
	.ascii "DCX_LOCKWINDOWUPDATE 0x400\0"
	.byte	0x1
	.uleb128 0x692
	.ascii "DCX_EXCLUDERGN 64\0"
	.byte	0x1
	.uleb128 0x693
	.ascii "DCX_INTERSECTRGN 128\0"
	.byte	0x1
	.uleb128 0x694
	.ascii "DCX_VALIDATE 0x200000\0"
	.byte	0x1
	.uleb128 0x695
	.ascii "GMDI_GOINTOPOPUPS 2\0"
	.byte	0x1
	.uleb128 0x696
	.ascii "GMDI_USEDISABLED 1\0"
	.byte	0x1
	.uleb128 0x697
	.ascii "FKF_AVAILABLE 2\0"
	.byte	0x1
	.uleb128 0x698
	.ascii "FKF_CLICKON 64\0"
	.byte	0x1
	.uleb128 0x699
	.ascii "FKF_FILTERKEYSON 1\0"
	.byte	0x1
	.uleb128 0x69a
	.ascii "FKF_HOTKEYACTIVE 4\0"
	.byte	0x1
	.uleb128 0x69b
	.ascii "FKF_HOTKEYSOUND 16\0"
	.byte	0x1
	.uleb128 0x69c
	.ascii "FKF_CONFIRMHOTKEY 8\0"
	.byte	0x1
	.uleb128 0x69d
	.ascii "FKF_INDICATOR 32\0"
	.byte	0x1
	.uleb128 0x69e
	.ascii "HCF_HIGHCONTRASTON 1\0"
	.byte	0x1
	.uleb128 0x69f
	.ascii "HCF_AVAILABLE 2\0"
	.byte	0x1
	.uleb128 0x6a0
	.ascii "HCF_HOTKEYACTIVE 4\0"
	.byte	0x1
	.uleb128 0x6a1
	.ascii "HCF_CONFIRMHOTKEY 8\0"
	.byte	0x1
	.uleb128 0x6a2
	.ascii "HCF_HOTKEYSOUND 16\0"
	.byte	0x1
	.uleb128 0x6a3
	.ascii "HCF_INDICATOR 32\0"
	.byte	0x1
	.uleb128 0x6a4
	.ascii "HCF_HOTKEYAVAILABLE 64\0"
	.byte	0x1
	.uleb128 0x6a5
	.ascii "MKF_AVAILABLE 2\0"
	.byte	0x1
	.uleb128 0x6a6
	.ascii "MKF_CONFIRMHOTKEY 8\0"
	.byte	0x1
	.uleb128 0x6a7
	.ascii "MKF_HOTKEYACTIVE 4\0"
	.byte	0x1
	.uleb128 0x6a8
	.ascii "MKF_HOTKEYSOUND 16\0"
	.byte	0x1
	.uleb128 0x6a9
	.ascii "MKF_INDICATOR 32\0"
	.byte	0x1
	.uleb128 0x6aa
	.ascii "MKF_MOUSEKEYSON 1\0"
	.byte	0x1
	.uleb128 0x6ab
	.ascii "MKF_MODIFIERS 64\0"
	.byte	0x1
	.uleb128 0x6ac
	.ascii "MKF_REPLACENUMBERS 128\0"
	.byte	0x1
	.uleb128 0x6ad
	.ascii "SERKF_ACTIVE 8\0"
	.byte	0x1
	.uleb128 0x6ae
	.ascii "SERKF_AVAILABLE 2\0"
	.byte	0x1
	.uleb128 0x6af
	.ascii "SERKF_INDICATOR 4\0"
	.byte	0x1
	.uleb128 0x6b0
	.ascii "SERKF_SERIALKEYSON 1\0"
	.byte	0x1
	.uleb128 0x6b1
	.ascii "SSF_AVAILABLE 2\0"
	.byte	0x1
	.uleb128 0x6b2
	.ascii "SSF_SOUNDSENTRYON 1\0"
	.byte	0x1
	.uleb128 0x6b3
	.ascii "SSTF_BORDER 2\0"
	.byte	0x1
	.uleb128 0x6b4
	.ascii "SSTF_CHARS 1\0"
	.byte	0x1
	.uleb128 0x6b5
	.ascii "SSTF_DISPLAY 3\0"
	.byte	0x1
	.uleb128 0x6b6
	.ascii "SSTF_NONE 0\0"
	.byte	0x1
	.uleb128 0x6b7
	.ascii "SSGF_DISPLAY 3\0"
	.byte	0x1
	.uleb128 0x6b8
	.ascii "SSGF_NONE 0\0"
	.byte	0x1
	.uleb128 0x6b9
	.ascii "SSWF_CUSTOM 4\0"
	.byte	0x1
	.uleb128 0x6ba
	.ascii "SSWF_DISPLAY 3\0"
	.byte	0x1
	.uleb128 0x6bb
	.ascii "SSWF_NONE 0\0"
	.byte	0x1
	.uleb128 0x6bc
	.ascii "SSWF_TITLE 1\0"
	.byte	0x1
	.uleb128 0x6bd
	.ascii "SSWF_WINDOW 2\0"
	.byte	0x1
	.uleb128 0x6be
	.ascii "SKF_AUDIBLEFEEDBACK 64\0"
	.byte	0x1
	.uleb128 0x6bf
	.ascii "SKF_AVAILABLE 2\0"
	.byte	0x1
	.uleb128 0x6c0
	.ascii "SKF_CONFIRMHOTKEY 8\0"
	.byte	0x1
	.uleb128 0x6c1
	.ascii "SKF_HOTKEYACTIVE 4\0"
	.byte	0x1
	.uleb128 0x6c2
	.ascii "SKF_HOTKEYSOUND 16\0"
	.byte	0x1
	.uleb128 0x6c3
	.ascii "SKF_INDICATOR 32\0"
	.byte	0x1
	.uleb128 0x6c4
	.ascii "SKF_STICKYKEYSON 1\0"
	.byte	0x1
	.uleb128 0x6c5
	.ascii "SKF_TRISTATE 128\0"
	.byte	0x1
	.uleb128 0x6c6
	.ascii "SKF_TWOKEYSOFF 256\0"
	.byte	0x1
	.uleb128 0x6c7
	.ascii "TKF_AVAILABLE 2\0"
	.byte	0x1
	.uleb128 0x6c8
	.ascii "TKF_CONFIRMHOTKEY 8\0"
	.byte	0x1
	.uleb128 0x6c9
	.ascii "TKF_HOTKEYACTIVE 4\0"
	.byte	0x1
	.uleb128 0x6ca
	.ascii "TKF_HOTKEYSOUND 16\0"
	.byte	0x1
	.uleb128 0x6cb
	.ascii "TKF_TOGGLEKEYSON 1\0"
	.byte	0x1
	.uleb128 0x6cc
	.ascii "MDITILE_SKIPDISABLED 2\0"
	.byte	0x1
	.uleb128 0x6cd
	.ascii "MDITILE_HORIZONTAL 1\0"
	.byte	0x1
	.uleb128 0x6ce
	.ascii "MDITILE_VERTICAL 0\0"
	.byte	0x1
	.uleb128 0x6cf
	.ascii "VK_LBUTTON 1\0"
	.byte	0x1
	.uleb128 0x6d0
	.ascii "VK_RBUTTON 2\0"
	.byte	0x1
	.uleb128 0x6d1
	.ascii "VK_CANCEL 3\0"
	.byte	0x1
	.uleb128 0x6d2
	.ascii "VK_MBUTTON 4\0"
	.byte	0x1
	.uleb128 0x6d4
	.ascii "VK_BACK 8\0"
	.byte	0x1
	.uleb128 0x6d5
	.ascii "VK_TAB 9\0"
	.byte	0x1
	.uleb128 0x6d6
	.ascii "VK_CLEAR 12\0"
	.byte	0x1
	.uleb128 0x6d7
	.ascii "VK_RETURN 13\0"
	.byte	0x1
	.uleb128 0x6d8
	.ascii "VK_SHIFT 16\0"
	.byte	0x1
	.uleb128 0x6d9
	.ascii "VK_CONTROL 17\0"
	.byte	0x1
	.uleb128 0x6da
	.ascii "VK_MENU 18\0"
	.byte	0x1
	.uleb128 0x6db
	.ascii "VK_PAUSE 19\0"
	.byte	0x1
	.uleb128 0x6dc
	.ascii "VK_CAPITAL 20\0"
	.byte	0x1
	.uleb128 0x6dd
	.ascii "VK_KANA 0x15\0"
	.byte	0x1
	.uleb128 0x6de
	.ascii "VK_HANGEUL 0x15\0"
	.byte	0x1
	.uleb128 0x6df
	.ascii "VK_HANGUL 0x15\0"
	.byte	0x1
	.uleb128 0x6e0
	.ascii "VK_JUNJA 0x17\0"
	.byte	0x1
	.uleb128 0x6e1
	.ascii "VK_FINAL 0x18\0"
	.byte	0x1
	.uleb128 0x6e2
	.ascii "VK_HANJA 0x19\0"
	.byte	0x1
	.uleb128 0x6e3
	.ascii "VK_KANJI 0x19\0"
	.byte	0x1
	.uleb128 0x6e4
	.ascii "VK_ESCAPE 0x1B\0"
	.byte	0x1
	.uleb128 0x6e5
	.ascii "VK_CONVERT 0x1C\0"
	.byte	0x1
	.uleb128 0x6e6
	.ascii "VK_NONCONVERT 0x1D\0"
	.byte	0x1
	.uleb128 0x6e7
	.ascii "VK_ACCEPT 0x1E\0"
	.byte	0x1
	.uleb128 0x6e8
	.ascii "VK_MODECHANGE 0x1F\0"
	.byte	0x1
	.uleb128 0x6e9
	.ascii "VK_SPACE 32\0"
	.byte	0x1
	.uleb128 0x6ea
	.ascii "VK_PRIOR 33\0"
	.byte	0x1
	.uleb128 0x6eb
	.ascii "VK_NEXT 34\0"
	.byte	0x1
	.uleb128 0x6ec
	.ascii "VK_END 35\0"
	.byte	0x1
	.uleb128 0x6ed
	.ascii "VK_HOME 36\0"
	.byte	0x1
	.uleb128 0x6ee
	.ascii "VK_LEFT 37\0"
	.byte	0x1
	.uleb128 0x6ef
	.ascii "VK_UP 38\0"
	.byte	0x1
	.uleb128 0x6f0
	.ascii "VK_RIGHT 39\0"
	.byte	0x1
	.uleb128 0x6f1
	.ascii "VK_DOWN 40\0"
	.byte	0x1
	.uleb128 0x6f2
	.ascii "VK_SELECT 41\0"
	.byte	0x1
	.uleb128 0x6f3
	.ascii "VK_PRINT 42\0"
	.byte	0x1
	.uleb128 0x6f4
	.ascii "VK_EXECUTE 43\0"
	.byte	0x1
	.uleb128 0x6f5
	.ascii "VK_SNAPSHOT 44\0"
	.byte	0x1
	.uleb128 0x6f6
	.ascii "VK_INSERT 45\0"
	.byte	0x1
	.uleb128 0x6f7
	.ascii "VK_DELETE 46\0"
	.byte	0x1
	.uleb128 0x6f8
	.ascii "VK_HELP 47\0"
	.byte	0x1
	.uleb128 0x6f9
	.ascii "VK_LWIN 0x5B\0"
	.byte	0x1
	.uleb128 0x6fa
	.ascii "VK_RWIN 0x5C\0"
	.byte	0x1
	.uleb128 0x6fb
	.ascii "VK_APPS 0x5D\0"
	.byte	0x1
	.uleb128 0x6fc
	.ascii "VK_SLEEP 0x5F\0"
	.byte	0x1
	.uleb128 0x6fd
	.ascii "VK_NUMPAD0 0x60\0"
	.byte	0x1
	.uleb128 0x6fe
	.ascii "VK_NUMPAD1 0x61\0"
	.byte	0x1
	.uleb128 0x6ff
	.ascii "VK_NUMPAD2 0x62\0"
	.byte	0x1
	.uleb128 0x700
	.ascii "VK_NUMPAD3 0x63\0"
	.byte	0x1
	.uleb128 0x701
	.ascii "VK_NUMPAD4 0x64\0"
	.byte	0x1
	.uleb128 0x702
	.ascii "VK_NUMPAD5 0x65\0"
	.byte	0x1
	.uleb128 0x703
	.ascii "VK_NUMPAD6 0x66\0"
	.byte	0x1
	.uleb128 0x704
	.ascii "VK_NUMPAD7 0x67\0"
	.byte	0x1
	.uleb128 0x705
	.ascii "VK_NUMPAD8 0x68\0"
	.byte	0x1
	.uleb128 0x706
	.ascii "VK_NUMPAD9 0x69\0"
	.byte	0x1
	.uleb128 0x707
	.ascii "VK_MULTIPLY 0x6A\0"
	.byte	0x1
	.uleb128 0x708
	.ascii "VK_ADD 0x6B\0"
	.byte	0x1
	.uleb128 0x709
	.ascii "VK_SEPARATOR 0x6C\0"
	.byte	0x1
	.uleb128 0x70a
	.ascii "VK_SUBTRACT 0x6D\0"
	.byte	0x1
	.uleb128 0x70b
	.ascii "VK_DECIMAL 0x6E\0"
	.byte	0x1
	.uleb128 0x70c
	.ascii "VK_DIVIDE 0x6F\0"
	.byte	0x1
	.uleb128 0x70d
	.ascii "VK_F1 0x70\0"
	.byte	0x1
	.uleb128 0x70e
	.ascii "VK_F2 0x71\0"
	.byte	0x1
	.uleb128 0x70f
	.ascii "VK_F3 0x72\0"
	.byte	0x1
	.uleb128 0x710
	.ascii "VK_F4 0x73\0"
	.byte	0x1
	.uleb128 0x711
	.ascii "VK_F5 0x74\0"
	.byte	0x1
	.uleb128 0x712
	.ascii "VK_F6 0x75\0"
	.byte	0x1
	.uleb128 0x713
	.ascii "VK_F7 0x76\0"
	.byte	0x1
	.uleb128 0x714
	.ascii "VK_F8 0x77\0"
	.byte	0x1
	.uleb128 0x715
	.ascii "VK_F9 0x78\0"
	.byte	0x1
	.uleb128 0x716
	.ascii "VK_F10 0x79\0"
	.byte	0x1
	.uleb128 0x717
	.ascii "VK_F11 0x7A\0"
	.byte	0x1
	.uleb128 0x718
	.ascii "VK_F12 0x7B\0"
	.byte	0x1
	.uleb128 0x719
	.ascii "VK_F13 0x7C\0"
	.byte	0x1
	.uleb128 0x71a
	.ascii "VK_F14 0x7D\0"
	.byte	0x1
	.uleb128 0x71b
	.ascii "VK_F15 0x7E\0"
	.byte	0x1
	.uleb128 0x71c
	.ascii "VK_F16 0x7F\0"
	.byte	0x1
	.uleb128 0x71d
	.ascii "VK_F17 0x80\0"
	.byte	0x1
	.uleb128 0x71e
	.ascii "VK_F18 0x81\0"
	.byte	0x1
	.uleb128 0x71f
	.ascii "VK_F19 0x82\0"
	.byte	0x1
	.uleb128 0x720
	.ascii "VK_F20 0x83\0"
	.byte	0x1
	.uleb128 0x721
	.ascii "VK_F21 0x84\0"
	.byte	0x1
	.uleb128 0x722
	.ascii "VK_F22 0x85\0"
	.byte	0x1
	.uleb128 0x723
	.ascii "VK_F23 0x86\0"
	.byte	0x1
	.uleb128 0x724
	.ascii "VK_F24 0x87\0"
	.byte	0x1
	.uleb128 0x725
	.ascii "VK_NUMLOCK 0x90\0"
	.byte	0x1
	.uleb128 0x726
	.ascii "VK_SCROLL 0x91\0"
	.byte	0x1
	.uleb128 0x727
	.ascii "VK_LSHIFT 0xA0\0"
	.byte	0x1
	.uleb128 0x728
	.ascii "VK_RSHIFT 0xA1\0"
	.byte	0x1
	.uleb128 0x729
	.ascii "VK_LCONTROL 0xA2\0"
	.byte	0x1
	.uleb128 0x72a
	.ascii "VK_RCONTROL 0xA3\0"
	.byte	0x1
	.uleb128 0x72b
	.ascii "VK_LMENU 0xA4\0"
	.byte	0x1
	.uleb128 0x72c
	.ascii "VK_RMENU 0xA5\0"
	.byte	0x1
	.uleb128 0x72e
	.ascii "VK_OEM_1 0xBA\0"
	.byte	0x1
	.uleb128 0x72f
	.ascii "VK_OEM_2 0xBF\0"
	.byte	0x1
	.uleb128 0x730
	.ascii "VK_OEM_3 0xC0\0"
	.byte	0x1
	.uleb128 0x731
	.ascii "VK_OEM_4 0xDB\0"
	.byte	0x1
	.uleb128 0x732
	.ascii "VK_OEM_5 0xDC\0"
	.byte	0x1
	.uleb128 0x733
	.ascii "VK_OEM_6 0xDD\0"
	.byte	0x1
	.uleb128 0x734
	.ascii "VK_OEM_7 0xDE\0"
	.byte	0x1
	.uleb128 0x735
	.ascii "VK_OEM_8 0xDF\0"
	.byte	0x1
	.uleb128 0x737
	.ascii "VK_PROCESSKEY 0xE5\0"
	.byte	0x1
	.uleb128 0x739
	.ascii "VK_ATTN 0xF6\0"
	.byte	0x1
	.uleb128 0x73a
	.ascii "VK_CRSEL 0xF7\0"
	.byte	0x1
	.uleb128 0x73b
	.ascii "VK_EXSEL 0xF8\0"
	.byte	0x1
	.uleb128 0x73c
	.ascii "VK_EREOF 0xF9\0"
	.byte	0x1
	.uleb128 0x73d
	.ascii "VK_PLAY 0xFA\0"
	.byte	0x1
	.uleb128 0x73e
	.ascii "VK_ZOOM 0xFB\0"
	.byte	0x1
	.uleb128 0x73f
	.ascii "VK_NONAME 0xFC\0"
	.byte	0x1
	.uleb128 0x740
	.ascii "VK_PA1 0xFD\0"
	.byte	0x1
	.uleb128 0x741
	.ascii "VK_OEM_CLEAR 0xFE\0"
	.byte	0x1
	.uleb128 0x742
	.ascii "TME_HOVER 1\0"
	.byte	0x1
	.uleb128 0x743
	.ascii "TME_LEAVE 2\0"
	.byte	0x1
	.uleb128 0x744
	.ascii "TME_QUERY 0x40000000\0"
	.byte	0x1
	.uleb128 0x745
	.ascii "TME_CANCEL 0x80000000\0"
	.byte	0x1
	.uleb128 0x746
	.ascii "HOVER_DEFAULT 0xFFFFFFFF\0"
	.byte	0x1
	.uleb128 0x747
	.ascii "MK_LBUTTON 1\0"
	.byte	0x1
	.uleb128 0x748
	.ascii "MK_RBUTTON 2\0"
	.byte	0x1
	.uleb128 0x749
	.ascii "MK_SHIFT 4\0"
	.byte	0x1
	.uleb128 0x74a
	.ascii "MK_CONTROL 8\0"
	.byte	0x1
	.uleb128 0x74b
	.ascii "MK_MBUTTON 16\0"
	.byte	0x1
	.uleb128 0x74d
	.ascii "TPM_CENTERALIGN 4\0"
	.byte	0x1
	.uleb128 0x74e
	.ascii "TPM_LEFTALIGN 0\0"
	.byte	0x1
	.uleb128 0x74f
	.ascii "TPM_RIGHTALIGN 8\0"
	.byte	0x1
	.uleb128 0x750
	.ascii "TPM_LEFTBUTTON 0\0"
	.byte	0x1
	.uleb128 0x751
	.ascii "TPM_RIGHTBUTTON 2\0"
	.byte	0x1
	.uleb128 0x752
	.ascii "TPM_HORIZONTAL 0\0"
	.byte	0x1
	.uleb128 0x753
	.ascii "TPM_VERTICAL 64\0"
	.byte	0x1
	.uleb128 0x754
	.ascii "TPM_TOPALIGN 0\0"
	.byte	0x1
	.uleb128 0x755
	.ascii "TPM_VCENTERALIGN 16\0"
	.byte	0x1
	.uleb128 0x756
	.ascii "TPM_BOTTOMALIGN 32\0"
	.byte	0x1
	.uleb128 0x757
	.ascii "TPM_NONOTIFY 128\0"
	.byte	0x1
	.uleb128 0x758
	.ascii "TPM_RETURNCMD 256\0"
	.byte	0x1
	.uleb128 0x75a
	.ascii "HELP_COMMAND 0x102\0"
	.byte	0x1
	.uleb128 0x75b
	.ascii "HELP_CONTENTS 3\0"
	.byte	0x1
	.uleb128 0x75c
	.ascii "HELP_CONTEXT 1\0"
	.byte	0x1
	.uleb128 0x75d
	.ascii "HELP_CONTEXTPOPUP 8\0"
	.byte	0x1
	.uleb128 0x75e
	.ascii "HELP_FORCEFILE 9\0"
	.byte	0x1
	.uleb128 0x75f
	.ascii "HELP_HELPONHELP 4\0"
	.byte	0x1
	.uleb128 0x760
	.ascii "HELP_INDEX 3\0"
	.byte	0x1
	.uleb128 0x761
	.ascii "HELP_KEY 0x101\0"
	.byte	0x1
	.uleb128 0x762
	.ascii "HELP_MULTIKEY 0x201\0"
	.byte	0x1
	.uleb128 0x763
	.ascii "HELP_PARTIALKEY 0x105\0"
	.byte	0x1
	.uleb128 0x764
	.ascii "HELP_QUIT 2\0"
	.byte	0x1
	.uleb128 0x765
	.ascii "HELP_SETCONTENTS 5\0"
	.byte	0x1
	.uleb128 0x766
	.ascii "HELP_SETINDEX 5\0"
	.byte	0x1
	.uleb128 0x767
	.ascii "HELP_SETWINPOS 0x203\0"
	.byte	0x1
	.uleb128 0x768
	.ascii "HELP_CONTEXTMENU 0xA\0"
	.byte	0x1
	.uleb128 0x769
	.ascii "HELP_FINDER 0xB\0"
	.byte	0x1
	.uleb128 0x76a
	.ascii "HELP_WM_HELP 0xC\0"
	.byte	0x1
	.uleb128 0x76b
	.ascii "HELP_TCARD 0x8000\0"
	.byte	0x1
	.uleb128 0x76c
	.ascii "HELP_TCARD_DATA 16\0"
	.byte	0x1
	.uleb128 0x76d
	.ascii "HELP_TCARD_OTHER_CALLER 0x11\0"
	.byte	0x1
	.uleb128 0x76e
	.ascii "IDH_NO_HELP 28440\0"
	.byte	0x1
	.uleb128 0x76f
	.ascii "IDH_MISSING_CONTEXT 28441\0"
	.byte	0x1
	.uleb128 0x770
	.ascii "IDH_GENERIC_HELP_BUTTON 28442\0"
	.byte	0x1
	.uleb128 0x771
	.ascii "IDH_OK 28443\0"
	.byte	0x1
	.uleb128 0x772
	.ascii "IDH_CANCEL 28444\0"
	.byte	0x1
	.uleb128 0x773
	.ascii "IDH_HELP 28445\0"
	.byte	0x1
	.uleb128 0x774
	.ascii "LB_CTLCODE 0\0"
	.byte	0x1
	.uleb128 0x775
	.ascii "LB_OKAY 0\0"
	.byte	0x1
	.uleb128 0x776
	.ascii "LB_ERR (-1)\0"
	.byte	0x1
	.uleb128 0x777
	.ascii "LB_ERRSPACE (-2)\0"
	.byte	0x1
	.uleb128 0x778
	.ascii "CB_OKAY 0\0"
	.byte	0x1
	.uleb128 0x779
	.ascii "CB_ERR (-1)\0"
	.byte	0x1
	.uleb128 0x77a
	.ascii "CB_ERRSPACE (-2)\0"
	.byte	0x1
	.uleb128 0x77b
	.ascii "HIDE_WINDOW 0\0"
	.byte	0x1
	.uleb128 0x77c
	.ascii "SHOW_OPENWINDOW 1\0"
	.byte	0x1
	.uleb128 0x77d
	.ascii "SHOW_ICONWINDOW 2\0"
	.byte	0x1
	.uleb128 0x77e
	.ascii "SHOW_FULLSCREEN 3\0"
	.byte	0x1
	.uleb128 0x77f
	.ascii "SHOW_OPENNOACTIVATE 4\0"
	.byte	0x1
	.uleb128 0x780
	.ascii "SW_PARENTCLOSING 1\0"
	.byte	0x1
	.uleb128 0x781
	.ascii "SW_OTHERZOOM 2\0"
	.byte	0x1
	.uleb128 0x782
	.ascii "SW_PARENTOPENING 3\0"
	.byte	0x1
	.uleb128 0x783
	.ascii "SW_OTHERUNZOOM 4\0"
	.byte	0x1
	.uleb128 0x784
	.ascii "KF_EXTENDED 256\0"
	.byte	0x1
	.uleb128 0x785
	.ascii "KF_DLGMODE 2048\0"
	.byte	0x1
	.uleb128 0x786
	.ascii "KF_MENUMODE 4096\0"
	.byte	0x1
	.uleb128 0x787
	.ascii "KF_ALTDOWN 8192\0"
	.byte	0x1
	.uleb128 0x788
	.ascii "KF_REPEAT 16384\0"
	.byte	0x1
	.uleb128 0x789
	.ascii "KF_UP 32768\0"
	.byte	0x1
	.uleb128 0x78a
	.ascii "WSF_VISIBLE 1\0"
	.byte	0x1
	.uleb128 0x78b
	.ascii "PWR_OK 1\0"
	.byte	0x1
	.uleb128 0x78c
	.ascii "PWR_FAIL (-1)\0"
	.byte	0x1
	.uleb128 0x78d
	.ascii "PWR_SUSPENDREQUEST 1\0"
	.byte	0x1
	.uleb128 0x78e
	.ascii "PWR_SUSPENDRESUME 2\0"
	.byte	0x1
	.uleb128 0x78f
	.ascii "PWR_CRITICALRESUME 3\0"
	.byte	0x1
	.uleb128 0x790
	.ascii "NFR_ANSI 1\0"
	.byte	0x1
	.uleb128 0x791
	.ascii "NFR_UNICODE 2\0"
	.byte	0x1
	.uleb128 0x792
	.ascii "NF_QUERY 3\0"
	.byte	0x1
	.uleb128 0x793
	.ascii "NF_REQUERY 4\0"
	.byte	0x1
	.uleb128 0x794
	.ascii "MENULOOP_WINDOW 0\0"
	.byte	0x1
	.uleb128 0x795
	.ascii "MENULOOP_POPUP 1\0"
	.byte	0x1
	.uleb128 0x796
	.ascii "WMSZ_LEFT 1\0"
	.byte	0x1
	.uleb128 0x797
	.ascii "WMSZ_RIGHT 2\0"
	.byte	0x1
	.uleb128 0x798
	.ascii "WMSZ_TOP 3\0"
	.byte	0x1
	.uleb128 0x799
	.ascii "WMSZ_TOPLEFT 4\0"
	.byte	0x1
	.uleb128 0x79a
	.ascii "WMSZ_TOPRIGHT 5\0"
	.byte	0x1
	.uleb128 0x79b
	.ascii "WMSZ_BOTTOM 6\0"
	.byte	0x1
	.uleb128 0x79c
	.ascii "WMSZ_BOTTOMLEFT 7\0"
	.byte	0x1
	.uleb128 0x79d
	.ascii "WMSZ_BOTTOMRIGHT 8\0"
	.byte	0x1
	.uleb128 0x79e
	.ascii "HTERROR (-2)\0"
	.byte	0x1
	.uleb128 0x79f
	.ascii "HTTRANSPARENT (-1)\0"
	.byte	0x1
	.uleb128 0x7a0
	.ascii "HTNOWHERE 0\0"
	.byte	0x1
	.uleb128 0x7a1
	.ascii "HTCLIENT 1\0"
	.byte	0x1
	.uleb128 0x7a2
	.ascii "HTCAPTION 2\0"
	.byte	0x1
	.uleb128 0x7a3
	.ascii "HTSYSMENU 3\0"
	.byte	0x1
	.uleb128 0x7a4
	.ascii "HTGROWBOX 4\0"
	.byte	0x1
	.uleb128 0x7a5
	.ascii "HTSIZE 4\0"
	.byte	0x1
	.uleb128 0x7a6
	.ascii "HTMENU 5\0"
	.byte	0x1
	.uleb128 0x7a7
	.ascii "HTHSCROLL 6\0"
	.byte	0x1
	.uleb128 0x7a8
	.ascii "HTVSCROLL 7\0"
	.byte	0x1
	.uleb128 0x7a9
	.ascii "HTMINBUTTON 8\0"
	.byte	0x1
	.uleb128 0x7aa
	.ascii "HTMAXBUTTON 9\0"
	.byte	0x1
	.uleb128 0x7ab
	.ascii "HTREDUCE 8\0"
	.byte	0x1
	.uleb128 0x7ac
	.ascii "HTZOOM 9\0"
	.byte	0x1
	.uleb128 0x7ad
	.ascii "HTLEFT 10\0"
	.byte	0x1
	.uleb128 0x7ae
	.ascii "HTSIZEFIRST 10\0"
	.byte	0x1
	.uleb128 0x7af
	.ascii "HTRIGHT 11\0"
	.byte	0x1
	.uleb128 0x7b0
	.ascii "HTTOP 12\0"
	.byte	0x1
	.uleb128 0x7b1
	.ascii "HTTOPLEFT 13\0"
	.byte	0x1
	.uleb128 0x7b2
	.ascii "HTTOPRIGHT 14\0"
	.byte	0x1
	.uleb128 0x7b3
	.ascii "HTBOTTOM 15\0"
	.byte	0x1
	.uleb128 0x7b4
	.ascii "HTBOTTOMLEFT 16\0"
	.byte	0x1
	.uleb128 0x7b5
	.ascii "HTBOTTOMRIGHT 17\0"
	.byte	0x1
	.uleb128 0x7b6
	.ascii "HTSIZELAST 17\0"
	.byte	0x1
	.uleb128 0x7b7
	.ascii "HTBORDER 18\0"
	.byte	0x1
	.uleb128 0x7b8
	.ascii "HTOBJECT 19\0"
	.byte	0x1
	.uleb128 0x7b9
	.ascii "HTCLOSE 20\0"
	.byte	0x1
	.uleb128 0x7ba
	.ascii "HTHELP 21\0"
	.byte	0x1
	.uleb128 0x7bb
	.ascii "MA_ACTIVATE 1\0"
	.byte	0x1
	.uleb128 0x7bc
	.ascii "MA_ACTIVATEANDEAT 2\0"
	.byte	0x1
	.uleb128 0x7bd
	.ascii "MA_NOACTIVATE 3\0"
	.byte	0x1
	.uleb128 0x7be
	.ascii "MA_NOACTIVATEANDEAT 4\0"
	.byte	0x1
	.uleb128 0x7bf
	.ascii "SIZE_RESTORED 0\0"
	.byte	0x1
	.uleb128 0x7c0
	.ascii "SIZE_MINIMIZED 1\0"
	.byte	0x1
	.uleb128 0x7c1
	.ascii "SIZE_MAXIMIZED 2\0"
	.byte	0x1
	.uleb128 0x7c2
	.ascii "SIZE_MAXSHOW 3\0"
	.byte	0x1
	.uleb128 0x7c3
	.ascii "SIZE_MAXHIDE 4\0"
	.byte	0x1
	.uleb128 0x7c4
	.ascii "SIZENORMAL 0\0"
	.byte	0x1
	.uleb128 0x7c5
	.ascii "SIZEICONIC 1\0"
	.byte	0x1
	.uleb128 0x7c6
	.ascii "SIZEFULLSCREEN 2\0"
	.byte	0x1
	.uleb128 0x7c7
	.ascii "SIZEZOOMSHOW 3\0"
	.byte	0x1
	.uleb128 0x7c8
	.ascii "SIZEZOOMHIDE 4\0"
	.byte	0x1
	.uleb128 0x7c9
	.ascii "WVR_ALIGNTOP 16\0"
	.byte	0x1
	.uleb128 0x7ca
	.ascii "WVR_ALIGNLEFT 32\0"
	.byte	0x1
	.uleb128 0x7cb
	.ascii "WVR_ALIGNBOTTOM 64\0"
	.byte	0x1
	.uleb128 0x7cc
	.ascii "WVR_ALIGNRIGHT 128\0"
	.byte	0x1
	.uleb128 0x7cd
	.ascii "WVR_HREDRAW 256\0"
	.byte	0x1
	.uleb128 0x7ce
	.ascii "WVR_VREDRAW 512\0"
	.byte	0x1
	.uleb128 0x7cf
	.ascii "WVR_REDRAW (WVR_HREDRAW | WVR_VREDRAW)\0"
	.byte	0x1
	.uleb128 0x7d0
	.ascii "WVR_VALIDRECTS 1024\0"
	.byte	0x1
	.uleb128 0x7d1
	.ascii "PRF_CHECKVISIBLE 1\0"
	.byte	0x1
	.uleb128 0x7d2
	.ascii "PRF_NONCLIENT 2\0"
	.byte	0x1
	.uleb128 0x7d3
	.ascii "PRF_CLIENT 4\0"
	.byte	0x1
	.uleb128 0x7d4
	.ascii "PRF_ERASEBKGND 8\0"
	.byte	0x1
	.uleb128 0x7d5
	.ascii "PRF_CHILDREN 16\0"
	.byte	0x1
	.uleb128 0x7d6
	.ascii "PRF_OWNED 32\0"
	.byte	0x1
	.uleb128 0x7d7
	.ascii "IDANI_OPEN 1\0"
	.byte	0x1
	.uleb128 0x7d8
	.ascii "IDANI_CLOSE 2\0"
	.byte	0x1
	.uleb128 0x7d9
	.ascii "IDANI_CAPTION 3\0"
	.byte	0x1
	.uleb128 0x7da
	.ascii "WPF_RESTORETOMAXIMIZED 2\0"
	.byte	0x1
	.uleb128 0x7db
	.ascii "WPF_SETMINPOSITION 1\0"
	.byte	0x1
	.uleb128 0x7dc
	.ascii "ODT_MENU 1\0"
	.byte	0x1
	.uleb128 0x7dd
	.ascii "ODT_LISTBOX 2\0"
	.byte	0x1
	.uleb128 0x7de
	.ascii "ODT_COMBOBOX 3\0"
	.byte	0x1
	.uleb128 0x7df
	.ascii "ODT_BUTTON 4\0"
	.byte	0x1
	.uleb128 0x7e0
	.ascii "ODT_STATIC 5\0"
	.byte	0x1
	.uleb128 0x7e1
	.ascii "ODA_DRAWENTIRE 1\0"
	.byte	0x1
	.uleb128 0x7e2
	.ascii "ODA_SELECT 2\0"
	.byte	0x1
	.uleb128 0x7e3
	.ascii "ODA_FOCUS 4\0"
	.byte	0x1
	.uleb128 0x7e4
	.ascii "ODS_SELECTED 1\0"
	.byte	0x1
	.uleb128 0x7e5
	.ascii "ODS_GRAYED 2\0"
	.byte	0x1
	.uleb128 0x7e6
	.ascii "ODS_DISABLED 4\0"
	.byte	0x1
	.uleb128 0x7e7
	.ascii "ODS_CHECKED 8\0"
	.byte	0x1
	.uleb128 0x7e8
	.ascii "ODS_FOCUS 16\0"
	.byte	0x1
	.uleb128 0x7e9
	.ascii "ODS_DEFAULT 32\0"
	.byte	0x1
	.uleb128 0x7ea
	.ascii "ODS_COMBOBOXEDIT 4096\0"
	.byte	0x1
	.uleb128 0x7eb
	.ascii "IDHOT_SNAPWINDOW (-1)\0"
	.byte	0x1
	.uleb128 0x7ec
	.ascii "IDHOT_SNAPDESKTOP (-2)\0"
	.byte	0x1
	.uleb128 0x7ed
	.ascii "DBWF_LPARAMPOINTER 0x8000\0"
	.byte	0x1
	.uleb128 0x7ee
	.ascii "DLGWINDOWEXTRA 30\0"
	.byte	0x1
	.uleb128 0x7ef
	.ascii "MNC_IGNORE 0\0"
	.byte	0x1
	.uleb128 0x7f0
	.ascii "MNC_CLOSE 1\0"
	.byte	0x1
	.uleb128 0x7f1
	.ascii "MNC_EXECUTE 2\0"
	.byte	0x1
	.uleb128 0x7f2
	.ascii "MNC_SELECT 3\0"
	.byte	0x1
	.uleb128 0x7f3
	.ascii "DOF_EXECUTABLE 0x8001\0"
	.byte	0x1
	.uleb128 0x7f4
	.ascii "DOF_DOCUMENT 0x8002\0"
	.byte	0x1
	.uleb128 0x7f5
	.ascii "DOF_DIRECTORY 0x8003\0"
	.byte	0x1
	.uleb128 0x7f6
	.ascii "DOF_MULTIPLE 0x8004\0"
	.byte	0x1
	.uleb128 0x7f7
	.ascii "DOF_PROGMAN 1\0"
	.byte	0x1
	.uleb128 0x7f8
	.ascii "DOF_SHELLDATA 2\0"
	.byte	0x1
	.uleb128 0x7f9
	.ascii "DO_DROPFILE 0x454C4946\0"
	.byte	0x1
	.uleb128 0x7fa
	.ascii "DO_PRINTFILE 0x544E5250\0"
	.byte	0x1
	.uleb128 0x7fb
	.ascii "SW_SCROLLCHILDREN 1\0"
	.byte	0x1
	.uleb128 0x7fc
	.ascii "SW_INVALIDATE 2\0"
	.byte	0x1
	.uleb128 0x7fd
	.ascii "SW_ERASE 4\0"
	.byte	0x1
	.uleb128 0x7ff
	.ascii "SC_SIZE 0xF000\0"
	.byte	0x1
	.uleb128 0x800
	.ascii "SC_MOVE 0xF010\0"
	.byte	0x1
	.uleb128 0x801
	.ascii "SC_MINIMIZE 0xF020\0"
	.byte	0x1
	.uleb128 0x802
	.ascii "SC_ICON 0xf020\0"
	.byte	0x1
	.uleb128 0x803
	.ascii "SC_MAXIMIZE 0xF030\0"
	.byte	0x1
	.uleb128 0x804
	.ascii "SC_ZOOM 0xF030\0"
	.byte	0x1
	.uleb128 0x805
	.ascii "SC_NEXTWINDOW 0xF040\0"
	.byte	0x1
	.uleb128 0x806
	.ascii "SC_PREVWINDOW 0xF050\0"
	.byte	0x1
	.uleb128 0x807
	.ascii "SC_CLOSE 0xF060\0"
	.byte	0x1
	.uleb128 0x808
	.ascii "SC_VSCROLL 0xF070\0"
	.byte	0x1
	.uleb128 0x809
	.ascii "SC_HSCROLL 0xF080\0"
	.byte	0x1
	.uleb128 0x80a
	.ascii "SC_MOUSEMENU 0xF090\0"
	.byte	0x1
	.uleb128 0x80b
	.ascii "SC_KEYMENU 0xF100\0"
	.byte	0x1
	.uleb128 0x80c
	.ascii "SC_ARRANGE 0xF110\0"
	.byte	0x1
	.uleb128 0x80d
	.ascii "SC_RESTORE 0xF120\0"
	.byte	0x1
	.uleb128 0x80e
	.ascii "SC_TASKLIST 0xF130\0"
	.byte	0x1
	.uleb128 0x80f
	.ascii "SC_SCREENSAVE 0xF140\0"
	.byte	0x1
	.uleb128 0x810
	.ascii "SC_HOTKEY 0xF150\0"
	.byte	0x1
	.uleb128 0x811
	.ascii "SC_DEFAULT 0xF160\0"
	.byte	0x1
	.uleb128 0x812
	.ascii "SC_MONITORPOWER 0xF170\0"
	.byte	0x1
	.uleb128 0x813
	.ascii "SC_CONTEXTHELP 0xF180\0"
	.byte	0x1
	.uleb128 0x814
	.ascii "SC_SEPARATOR 0xF00F\0"
	.byte	0x1
	.uleb128 0x815
	.ascii "EC_LEFTMARGIN 1\0"
	.byte	0x1
	.uleb128 0x816
	.ascii "EC_RIGHTMARGIN 2\0"
	.byte	0x1
	.uleb128 0x817
	.ascii "EC_USEFONTINFO 0xFFFF\0"
	.byte	0x1
	.uleb128 0x818
	.ascii "DC_HASDEFID 0x534B\0"
	.byte	0x1
	.uleb128 0x819
	.ascii "DLGC_WANTARROWS 1\0"
	.byte	0x1
	.uleb128 0x81a
	.ascii "DLGC_WANTTAB 2\0"
	.byte	0x1
	.uleb128 0x81b
	.ascii "DLGC_WANTALLKEYS 4\0"
	.byte	0x1
	.uleb128 0x81c
	.ascii "DLGC_WANTMESSAGE 4\0"
	.byte	0x1
	.uleb128 0x81d
	.ascii "DLGC_HASSETSEL 8\0"
	.byte	0x1
	.uleb128 0x81e
	.ascii "DLGC_DEFPUSHBUTTON 16\0"
	.byte	0x1
	.uleb128 0x81f
	.ascii "DLGC_UNDEFPUSHBUTTON 32\0"
	.byte	0x1
	.uleb128 0x820
	.ascii "DLGC_RADIOBUTTON 64\0"
	.byte	0x1
	.uleb128 0x821
	.ascii "DLGC_WANTCHARS 128\0"
	.byte	0x1
	.uleb128 0x822
	.ascii "DLGC_STATIC 256\0"
	.byte	0x1
	.uleb128 0x823
	.ascii "DLGC_BUTTON 0x2000\0"
	.byte	0x1
	.uleb128 0x824
	.ascii "LB_CTLCODE 0\0"
	.byte	0x1
	.uleb128 0x825
	.ascii "WA_INACTIVE 0\0"
	.byte	0x1
	.uleb128 0x826
	.ascii "WA_ACTIVE 1\0"
	.byte	0x1
	.uleb128 0x827
	.ascii "WA_CLICKACTIVE 2\0"
	.byte	0x1
	.uleb128 0x828
	.ascii "ICON_SMALL 0\0"
	.byte	0x1
	.uleb128 0x829
	.ascii "ICON_BIG 1\0"
	.byte	0x1
	.uleb128 0x82b
	.ascii "HBMMENU_CALLBACK ((HBITMAP)(-1))\0"
	.byte	0x1
	.uleb128 0x82c
	.ascii "HBMMENU_SYSTEM ((HBITMAP)(1))\0"
	.byte	0x1
	.uleb128 0x82d
	.ascii "HBMMENU_MBAR_RESTORE ((HBITMAP)(2))\0"
	.byte	0x1
	.uleb128 0x82e
	.ascii "HBMMENU_MBAR_MINIMIZE ((HBITMAP)(3))\0"
	.byte	0x1
	.uleb128 0x82f
	.ascii "HBMMENU_MBAR_CLOSE ((HBITMAP)(5))\0"
	.byte	0x1
	.uleb128 0x830
	.ascii "HBMMENU_MBAR_CLOSE_D ((HBITMAP)(6))\0"
	.byte	0x1
	.uleb128 0x831
	.ascii "HBMMENU_MBAR_MINIMIZE_D ((HBITMAP)(7))\0"
	.byte	0x1
	.uleb128 0x832
	.ascii "HBMMENU_POPUP_CLOSE ((HBITMAP)(8))\0"
	.byte	0x1
	.uleb128 0x833
	.ascii "HBMMENU_POPUP_RESTORE ((HBITMAP)(9))\0"
	.byte	0x1
	.uleb128 0x834
	.ascii "HBMMENU_POPUP_MAXIMIZE ((HBITMAP)(10))\0"
	.byte	0x1
	.uleb128 0x835
	.ascii "HBMMENU_POPUP_MINIMIZE ((HBITMAP)(11))\0"
	.byte	0x1
	.uleb128 0x836
	.ascii "MOD_ALT 1\0"
	.byte	0x1
	.uleb128 0x837
	.ascii "MOD_CONTROL 2\0"
	.byte	0x1
	.uleb128 0x838
	.ascii "MOD_SHIFT 4\0"
	.byte	0x1
	.uleb128 0x839
	.ascii "MOD_WIN 8\0"
	.byte	0x1
	.uleb128 0x83a
	.ascii "MOD_IGNORE_ALL_MODIFIER 1024\0"
	.byte	0x1
	.uleb128 0x83b
	.ascii "MOD_ON_KEYUP 2048\0"
	.byte	0x1
	.uleb128 0x83c
	.ascii "MOD_RIGHT 16384\0"
	.byte	0x1
	.uleb128 0x83d
	.ascii "MOD_LEFT 32768\0"
	.byte	0x1
	.uleb128 0x83e
	.ascii "LLKHF_EXTENDED (KF_EXTENDED >> 8)\0"
	.byte	0x1
	.uleb128 0x83f
	.ascii "LLKHF_INJECTED 0x00000010\0"
	.byte	0x1
	.uleb128 0x840
	.ascii "LLKHF_ALTDOWN (KF_ALTDOWN >> 8)\0"
	.byte	0x1
	.uleb128 0x841
	.ascii "LLKHF_UP (KF_UP >> 8)\0"
	.byte	0x1
	.uleb128 0x843
	.ascii "CURSOR_SHOWING 0x00000001\0"
	.byte	0x1
	.uleb128 0x844
	.ascii "WS_ACTIVECAPTION 0x00000001\0"
	.byte	0x1
	.uleb128 0x846
	.ascii "GA_PARENT 1\0"
	.byte	0x1
	.uleb128 0x847
	.ascii "GA_ROOT 2\0"
	.byte	0x1
	.uleb128 0x848
	.ascii "GA_ROOTOWNER 3\0"
	.byte	0x1
	.uleb128 0x84a
	.ascii "MAPVK_VK_TO_VSC 0\0"
	.byte	0x1
	.uleb128 0x84b
	.ascii "MAPVK_VSC_TO_VK 1\0"
	.byte	0x1
	.uleb128 0x84c
	.ascii "MAPVK_VK_TO_CHAR 2\0"
	.byte	0x1
	.uleb128 0x84d
	.ascii "MAPVK_VSC_TO_VK_EX 3\0"
	.byte	0x1
	.uleb128 0x84e
	.ascii "MAPVK_VK_TO_VSC_EX 4\0"
	.byte	0x1
	.uleb128 0x852
	.ascii "ENDSESSION_LOGOFF 0x80000000\0"
	.byte	0x1
	.uleb128 0x854
	.ascii "IDCLOSE 8\0"
	.byte	0x1
	.uleb128 0x855
	.ascii "IDHELP 9\0"
	.byte	0x1
	.uleb128 0x85a
	.ascii "GET_WHEEL_DELTA_WPARAM(wparam) ((short)(HIWORD(wparam)))\0"
	.byte	0x1
	.uleb128 0x85c
	.ascii "MB_SERVICE_NOTIFICATION 0x00200000\0"
	.byte	0x1
	.uleb128 0x85d
	.ascii "MOUSEEVENTF_WHEEL 0x00000800\0"
	.byte	0x1
	.uleb128 0x862
	.ascii "PBT_APMQUERYSUSPEND 0\0"
	.byte	0x1
	.uleb128 0x863
	.ascii "PBT_APMQUERYSTANDBY 1\0"
	.byte	0x1
	.uleb128 0x864
	.ascii "PBT_APMQUERYSUSPENDFAILED 2\0"
	.byte	0x1
	.uleb128 0x865
	.ascii "PBT_APMQUERYSTANDBYFAILED 3\0"
	.byte	0x1
	.uleb128 0x866
	.ascii "PBT_APMSUSPEND 4\0"
	.byte	0x1
	.uleb128 0x867
	.ascii "PBT_APMSTANDBY 5\0"
	.byte	0x1
	.uleb128 0x868
	.ascii "PBT_APMRESUMECRITICAL 6\0"
	.byte	0x1
	.uleb128 0x869
	.ascii "PBT_APMRESUMESUSPEND 7\0"
	.byte	0x1
	.uleb128 0x86a
	.ascii "PBT_APMRESUMESTANDBY 8\0"
	.byte	0x1
	.uleb128 0x86b
	.ascii "PBT_APMBATTERYLOW 9\0"
	.byte	0x1
	.uleb128 0x86c
	.ascii "PBT_APMPOWERSTATUSCHANGE 10\0"
	.byte	0x1
	.uleb128 0x86d
	.ascii "PBT_APMOEMEVENT 11\0"
	.byte	0x1
	.uleb128 0x86e
	.ascii "PBT_APMRESUMEAUTOMATIC 18\0"
	.byte	0x1
	.uleb128 0x86f
	.ascii "PBTF_APMRESUMEFROMFAILURE 1\0"
	.byte	0x1
	.uleb128 0x872
	.ascii "SM_CMETRICS 88\0"
	.byte	0x1
	.uleb128 0x874
	.ascii "WHEEL_DELTA 120\0"
	.byte	0x1
	.uleb128 0x875
	.ascii "WHEEL_PAGESCROLL UINT_MAX\0"
	.byte	0x1
	.uleb128 0x882
	.ascii "MB_SERVICE_NOTIFICATION_NT3X 0x00040000\0"
	.byte	0x1
	.uleb128 0x897
	.ascii "QS_INPUT 7\0"
	.byte	0x1
	.uleb128 0x898
	.ascii "QS_ALLEVENTS 191\0"
	.byte	0x1
	.uleb128 0x899
	.ascii "QS_ALLINPUT 255\0"
	.byte	0x1
	.uleb128 0x89b
	.ascii "WM_KEYLAST 264\0"
	.byte	0x1
	.uleb128 0x8a0
	.ascii "INPUT_MOUSE 0x00000000\0"
	.byte	0x1
	.uleb128 0x8a1
	.ascii "INPUT_KEYBOARD 0x00000001\0"
	.byte	0x1
	.uleb128 0x8a2
	.ascii "INPUT_HARDWARE 0x00000002\0"
	.byte	0x1
	.uleb128 0x8a9
	.ascii "DC_GRADIENT 0x00000020\0"
	.byte	0x1
	.uleb128 0x8ab
	.ascii "EDS_RAWMODE 0x00000002\0"
	.byte	0x1
	.uleb128 0x8ad
	.ascii "ISMEX_NOSEND 0x00000000\0"
	.byte	0x1
	.uleb128 0x8ae
	.ascii "ISMEX_CALLBACK 0x00000004\0"
	.byte	0x1
	.uleb128 0x8af
	.ascii "ISMEX_NOTIFY 0x00000002\0"
	.byte	0x1
	.uleb128 0x8b0
	.ascii "ISMEX_REPLIED 0x00000008\0"
	.byte	0x1
	.uleb128 0x8b1
	.ascii "ISMEX_SEND 0x00000001\0"
	.byte	0x1
	.uleb128 0x8b3
	.ascii "MONITOR_DEFAULTTONULL 0\0"
	.byte	0x1
	.uleb128 0x8b4
	.ascii "MONITOR_DEFAULTTOPRIMARY 1\0"
	.byte	0x1
	.uleb128 0x8b5
	.ascii "MONITOR_DEFAULTTONEAREST 2\0"
	.byte	0x1
	.uleb128 0x8b6
	.ascii "MONITORINFOF_PRIMARY 1\0"
	.byte	0x1
	.uleb128 0x8b8
	.ascii "SW_SMOOTHSCROLL 0x0010\0"
	.byte	0x1
	.uleb128 0x8b9
	.ascii "TPM_RECURSE 1\0"
	.byte	0x1
	.uleb128 0x8bd
	.ascii "ASFW_ANY ((DWORD)(-1))\0"
	.byte	0x1
	.uleb128 0x8bf
	.ascii "GMMP_USE_DISPLAY_POINTS 1\0"
	.byte	0x1
	.uleb128 0x8c0
	.ascii "GMMP_USE_HIGH_RESOLUTION_POINTS 2\0"
	.byte	0x1
	.uleb128 0x8c2
	.ascii "LSFW_LOCK 1\0"
	.byte	0x1
	.uleb128 0x8c3
	.ascii "LSFW_UNLOCK 2\0"
	.byte	0x1
	.uleb128 0x8c7
	.ascii "AW_HOR_POSITIVE 0x00000001\0"
	.byte	0x1
	.uleb128 0x8c8
	.ascii "AW_HOR_NEGATIVE 0x00000002\0"
	.byte	0x1
	.uleb128 0x8c9
	.ascii "AW_VER_POSITIVE 0x00000004\0"
	.byte	0x1
	.uleb128 0x8ca
	.ascii "AW_VER_NEGATIVE 0x00000008\0"
	.byte	0x1
	.uleb128 0x8cb
	.ascii "AW_CENTER 0x00000010\0"
	.byte	0x1
	.uleb128 0x8cc
	.ascii "AW_HIDE 0x00010000\0"
	.byte	0x1
	.uleb128 0x8cd
	.ascii "AW_ACTIVATE 0x00020000\0"
	.byte	0x1
	.uleb128 0x8ce
	.ascii "AW_SLIDE 0x00040000\0"
	.byte	0x1
	.uleb128 0x8cf
	.ascii "AW_BLEND 0x00080000\0"
	.byte	0x1
	.uleb128 0x8d1
	.ascii "CF_DIBV5 17\0"
	.byte	0x1
	.uleb128 0x8d2
	.ascii "CF_MAX 18\0"
	.byte	0x1
	.uleb128 0x8d4
	.ascii "CHILDID_SELF 0\0"
	.byte	0x1
	.uleb128 0x8d6
	.ascii "DC_BUTTONS 0x00001000\0"
	.byte	0x1
	.uleb128 0x8d8
	.ascii "DEVICE_NOTIFY_WINDOW_HANDLE 0x00000000\0"
	.byte	0x1
	.uleb128 0x8d9
	.ascii "DEVICE_NOTIFY_SERVICE_HANDLE 0x00000001\0"
	.byte	0x1
	.uleb128 0x8db
	.ascii "DFC_POPUPMENU 5\0"
	.byte	0x1
	.uleb128 0x8dd
	.ascii "DFCS_TRANSPARENT 0x800\0"
	.byte	0x1
	.uleb128 0x8de
	.ascii "DFCS_HOT 0x1000\0"
	.byte	0x1
	.uleb128 0x8e0
	.ascii "EM_GETIMESTATUS 217\0"
	.byte	0x1
	.uleb128 0x8e1
	.ascii "EM_SETIMESTATUS 216\0"
	.byte	0x1
	.uleb128 0x8e3
	.ascii "EVENT_MIN 0x00000001\0"
	.byte	0x1
	.uleb128 0x8e4
	.ascii "EVENT_SYSTEM_SOUND 0x00000001\0"
	.byte	0x1
	.uleb128 0x8e5
	.ascii "EVENT_SYSTEM_ALERT 0x00000002\0"
	.byte	0x1
	.uleb128 0x8e6
	.ascii "EVENT_SYSTEM_FOREGROUND 0x00000003\0"
	.byte	0x1
	.uleb128 0x8e7
	.ascii "EVENT_SYSTEM_MENUSTART 0x00000004\0"
	.byte	0x1
	.uleb128 0x8e8
	.ascii "EVENT_SYSTEM_MENUEND 0x00000005\0"
	.byte	0x1
	.uleb128 0x8e9
	.ascii "EVENT_SYSTEM_MENUPOPUPSTART 0x00000006\0"
	.byte	0x1
	.uleb128 0x8ea
	.ascii "EVENT_SYSTEM_MENUPOPUPEND 0x00000007\0"
	.byte	0x1
	.uleb128 0x8eb
	.ascii "EVENT_SYSTEM_CAPTURESTART 0x00000008\0"
	.byte	0x1
	.uleb128 0x8ec
	.ascii "EVENT_SYSTEM_CAPTUREEND 0x00000009\0"
	.byte	0x1
	.uleb128 0x8ed
	.ascii "EVENT_SYSTEM_MOVESIZESTART 0x0000000A\0"
	.byte	0x1
	.uleb128 0x8ee
	.ascii "EVENT_SYSTEM_MOVESIZEEND 0x0000000B\0"
	.byte	0x1
	.uleb128 0x8ef
	.ascii "EVENT_SYSTEM_CONTEXTHELPSTART 0x0000000C\0"
	.byte	0x1
	.uleb128 0x8f0
	.ascii "EVENT_SYSTEM_CONTEXTHELPEND 0x0000000D\0"
	.byte	0x1
	.uleb128 0x8f1
	.ascii "EVENT_SYSTEM_DRAGDROPSTART 0x0000000E\0"
	.byte	0x1
	.uleb128 0x8f2
	.ascii "EVENT_SYSTEM_DRAGDROPEND 0x0000000F\0"
	.byte	0x1
	.uleb128 0x8f3
	.ascii "EVENT_SYSTEM_DIALOGSTART 0x00000010\0"
	.byte	0x1
	.uleb128 0x8f4
	.ascii "EVENT_SYSTEM_DIALOGEND 0x00000011\0"
	.byte	0x1
	.uleb128 0x8f5
	.ascii "EVENT_SYSTEM_SCROLLINGSTART 0x00000012\0"
	.byte	0x1
	.uleb128 0x8f6
	.ascii "EVENT_SYSTEM_SCROLLINGEND 0x00000013\0"
	.byte	0x1
	.uleb128 0x8f7
	.ascii "EVENT_SYSTEM_SWITCHSTART 0x00000014\0"
	.byte	0x1
	.uleb128 0x8f8
	.ascii "EVENT_SYSTEM_SWITCHEND 0x00000015\0"
	.byte	0x1
	.uleb128 0x8f9
	.ascii "EVENT_SYSTEM_MINIMIZESTART 0x00000016\0"
	.byte	0x1
	.uleb128 0x8fa
	.ascii "EVENT_SYSTEM_MINIMIZEEND 0x00000017\0"
	.byte	0x1
	.uleb128 0x8fb
	.ascii "EVENT_OBJECT_CREATE 0x00008000\0"
	.byte	0x1
	.uleb128 0x8fc
	.ascii "EVENT_OBJECT_DESTROY 0x00008001\0"
	.byte	0x1
	.uleb128 0x8fd
	.ascii "EVENT_OBJECT_SHOW 0x00008002\0"
	.byte	0x1
	.uleb128 0x8fe
	.ascii "EVENT_OBJECT_HIDE 0x00008003\0"
	.byte	0x1
	.uleb128 0x8ff
	.ascii "EVENT_OBJECT_REORDER 0x00008004\0"
	.byte	0x1
	.uleb128 0x900
	.ascii "EVENT_OBJECT_FOCUS 0x00008005\0"
	.byte	0x1
	.uleb128 0x901
	.ascii "EVENT_OBJECT_SELECTION 0x00008006\0"
	.byte	0x1
	.uleb128 0x902
	.ascii "EVENT_OBJECT_SELECTIONADD 0x00008007\0"
	.byte	0x1
	.uleb128 0x903
	.ascii "EVENT_OBJECT_SELECTIONREMOVE 0x00008008\0"
	.byte	0x1
	.uleb128 0x904
	.ascii "EVENT_OBJECT_SELECTIONWITHIN 0x00008009\0"
	.byte	0x1
	.uleb128 0x905
	.ascii "EVENT_OBJECT_STATECHANGE 0x0000800A\0"
	.byte	0x1
	.uleb128 0x906
	.ascii "EVENT_OBJECT_LOCATIONCHANGE 0x0000800B\0"
	.byte	0x1
	.uleb128 0x907
	.ascii "EVENT_OBJECT_NAMECHANGE 0x0000800C\0"
	.byte	0x1
	.uleb128 0x908
	.ascii "EVENT_OBJECT_DESCRIPTIONCHANGE 0x0000800D\0"
	.byte	0x1
	.uleb128 0x909
	.ascii "EVENT_OBJECT_VALUECHANGE 0x0000800E\0"
	.byte	0x1
	.uleb128 0x90a
	.ascii "EVENT_OBJECT_PARENTCHANGE 0x0000800F\0"
	.byte	0x1
	.uleb128 0x90b
	.ascii "EVENT_OBJECT_HELPCHANGE 0x00008010\0"
	.byte	0x1
	.uleb128 0x90c
	.ascii "EVENT_OBJECT_DEFACTIONCHANGE 0x00008011\0"
	.byte	0x1
	.uleb128 0x90d
	.ascii "EVENT_OBJECT_ACCELERATORCHANGE 0x00008012\0"
	.byte	0x1
	.uleb128 0x90e
	.ascii "EVENT_MAX 0x7FFFFFFF\0"
	.byte	0x1
	.uleb128 0x910
	.ascii "EWX_FORCEIFHUNG 16\0"
	.byte	0x1
	.uleb128 0x912
	.ascii "FLASHW_STOP 0\0"
	.byte	0x1
	.uleb128 0x913
	.ascii "FLASHW_CAPTION 1\0"
	.byte	0x1
	.uleb128 0x914
	.ascii "FLASHW_TRAY 2\0"
	.byte	0x1
	.uleb128 0x915
	.ascii "FLASHW_ALL (FLASHW_CAPTION | FLASHW_TRAY)\0"
	.byte	0x1
	.uleb128 0x916
	.ascii "FLASHW_TIMER 4\0"
	.byte	0x1
	.uleb128 0x917
	.ascii "FLASHW_TIMERNOFG 12\0"
	.byte	0x1
	.uleb128 0x919
	.ascii "GR_GDIOBJECTS 0\0"
	.byte	0x1
	.uleb128 0x91a
	.ascii "GR_USEROBJECTS 1\0"
	.byte	0x1
	.uleb128 0x91c
	.ascii "GUI_CARETBLINKING 0x00000001\0"
	.byte	0x1
	.uleb128 0x91d
	.ascii "GUI_INMOVESIZE 0x00000002\0"
	.byte	0x1
	.uleb128 0x91e
	.ascii "GUI_INMENUMODE 0x00000004\0"
	.byte	0x1
	.uleb128 0x91f
	.ascii "GUI_SYSTEMMENUMODE 0x00000008\0"
	.byte	0x1
	.uleb128 0x920
	.ascii "GUI_POPUPMENUMODE 0x00000010\0"
	.byte	0x1
	.uleb128 0x922
	.ascii "HSHELL_ACCESSIBILITYSTATE 11\0"
	.byte	0x1
	.uleb128 0x923
	.ascii "HSHELL_APPCOMMAND 12\0"
	.byte	0x1
	.uleb128 0x924
	.ascii "HSHELL_RUDEAPPACTIVATED 32772\0"
	.byte	0x1
	.uleb128 0x925
	.ascii "HSHELL_FLASH 32774\0"
	.byte	0x1
	.uleb128 0x927
	.ascii "HWND_MESSAGE ((HWND)(-3))\0"
	.byte	0x1
	.uleb128 0x929
	.ascii "IDTRYAGAIN 10\0"
	.byte	0x1
	.uleb128 0x92a
	.ascii "IDCONTINUE 11\0"
	.byte	0x1
	.uleb128 0x92c
	.ascii "KEYEVENTF_UNICODE 0x00000004\0"
	.byte	0x1
	.uleb128 0x92d
	.ascii "KEYEVENTF_SCANCODE 0x00000008\0"
	.byte	0x1
	.uleb128 0x92f
	.ascii "LWA_COLORKEY 0x01\0"
	.byte	0x1
	.uleb128 0x930
	.ascii "LWA_ALPHA 0x02\0"
	.byte	0x1
	.uleb128 0x932
	.ascii "MB_CANCELTRYCONTINUE 6\0"
	.byte	0x1
	.uleb128 0x934
	.ascii "MIM_MAXHEIGHT 1\0"
	.byte	0x1
	.uleb128 0x935
	.ascii "MIM_BACKGROUND 2\0"
	.byte	0x1
	.uleb128 0x936
	.ascii "MIM_HELPID 4\0"
	.byte	0x1
	.uleb128 0x937
	.ascii "MIM_MENUDATA 8\0"
	.byte	0x1
	.uleb128 0x938
	.ascii "MIM_STYLE 16\0"
	.byte	0x1
	.uleb128 0x939
	.ascii "MIM_APPLYTOSUBMENUS 0x80000000L\0"
	.byte	0x1
	.uleb128 0x93b
	.ascii "MNS_NOCHECK 0x80000000\0"
	.byte	0x1
	.uleb128 0x93c
	.ascii "MNS_MODELESS 0x40000000\0"
	.byte	0x1
	.uleb128 0x93d
	.ascii "MNS_DRAGDROP 0x20000000\0"
	.byte	0x1
	.uleb128 0x93e
	.ascii "MNS_AUTODISMISS 0x10000000\0"
	.byte	0x1
	.uleb128 0x93f
	.ascii "MNS_NOTIFYBYPOS 0x08000000\0"
	.byte	0x1
	.uleb128 0x940
	.ascii "MNS_CHECKORBMP 0x04000000\0"
	.byte	0x1
	.uleb128 0x942
	.ascii "MK_XBUTTON1 32\0"
	.byte	0x1
	.uleb128 0x943
	.ascii "MK_XBUTTON2 64\0"
	.byte	0x1
	.uleb128 0x945
	.ascii "MOUSEEVENTF_XDOWN 0x00000080\0"
	.byte	0x1
	.uleb128 0x946
	.ascii "MOUSEEVENTF_XUP 0x00000100\0"
	.byte	0x1
	.uleb128 0x948
	.ascii "OBJID_WINDOW 0x00000000\0"
	.byte	0x1
	.uleb128 0x949
	.ascii "OBJID_SYSMENU 0xFFFFFFFF\0"
	.byte	0x1
	.uleb128 0x94a
	.ascii "OBJID_TITLEBAR 0xFFFFFFFE\0"
	.byte	0x1
	.uleb128 0x94b
	.ascii "OBJID_MENU 0xFFFFFFFD\0"
	.byte	0x1
	.uleb128 0x94c
	.ascii "OBJID_CLIENT 0xFFFFFFFC\0"
	.byte	0x1
	.uleb128 0x94d
	.ascii "OBJID_VSCROLL 0xFFFFFFFB\0"
	.byte	0x1
	.uleb128 0x94e
	.ascii "OBJID_HSCROLL 0xFFFFFFFA\0"
	.byte	0x1
	.uleb128 0x94f
	.ascii "OBJID_SIZEGRIP 0xFFFFFFF9\0"
	.byte	0x1
	.uleb128 0x950
	.ascii "OBJID_CARET 0xFFFFFFF8\0"
	.byte	0x1
	.uleb128 0x951
	.ascii "OBJID_CURSOR 0xFFFFFFF7\0"
	.byte	0x1
	.uleb128 0x952
	.ascii "OBJID_ALERT 0xFFFFFFF6\0"
	.byte	0x1
	.uleb128 0x953
	.ascii "OBJID_SOUND 0xFFFFFFF5\0"
	.byte	0x1
	.uleb128 0x955
	.ascii "PM_QS_INPUT (QS_INPUT << 16)\0"
	.byte	0x1
	.uleb128 0x956
	.ascii "PM_QS_POSTMESSAGE ((QS_POSTMESSAGE | QS_HOTKEY | QS_TIMER) << 16)\0"
	.byte	0x1
	.uleb128 0x957
	.ascii "PM_QS_PAINT (QS_PAINT << 16)\0"
	.byte	0x1
	.uleb128 0x958
	.ascii "PM_QS_SENDMESSAGE (QS_SENDMESSAGE << 16)\0"
	.byte	0x1
	.uleb128 0x95a
	.ascii "SMTO_NOTIMEOUTIFNOTHUNG 0x0008\0"
	.byte	0x1
	.uleb128 0x95c
	.ascii "ULW_COLORKEY 0x01\0"
	.byte	0x1
	.uleb128 0x95d
	.ascii "ULW_ALPHA 0x02\0"
	.byte	0x1
	.uleb128 0x95e
	.ascii "ULW_OPAQUE 0x04\0"
	.byte	0x1
	.uleb128 0x960
	.ascii "VK_XBUTTON1 5\0"
	.byte	0x1
	.uleb128 0x961
	.ascii "VK_XBUTTON2 6\0"
	.byte	0x1
	.uleb128 0x962
	.ascii "VK_BROWSER_BACK 0xA6\0"
	.byte	0x1
	.uleb128 0x963
	.ascii "VK_BROWSER_FORWARD 0xA7\0"
	.byte	0x1
	.uleb128 0x964
	.ascii "VK_BROWSER_REFRESH 0xA8\0"
	.byte	0x1
	.uleb128 0x965
	.ascii "VK_BROWSER_STOP 0xA9\0"
	.byte	0x1
	.uleb128 0x966
	.ascii "VK_BROWSER_SEARCH 0xAA\0"
	.byte	0x1
	.uleb128 0x967
	.ascii "VK_BROWSER_FAVORITES 0xAB\0"
	.byte	0x1
	.uleb128 0x968
	.ascii "VK_BROWSER_HOME 0xAC\0"
	.byte	0x1
	.uleb128 0x969
	.ascii "VK_VOLUME_MUTE 0xAD\0"
	.byte	0x1
	.uleb128 0x96a
	.ascii "VK_VOLUME_DOWN 0xAE\0"
	.byte	0x1
	.uleb128 0x96b
	.ascii "VK_VOLUME_UP 0xAF\0"
	.byte	0x1
	.uleb128 0x96c
	.ascii "VK_MEDIA_NEXT_TRACK 0xB0\0"
	.byte	0x1
	.uleb128 0x96d
	.ascii "VK_MEDIA_PREV_TRACK 0xB1\0"
	.byte	0x1
	.uleb128 0x96e
	.ascii "VK_MEDIA_STOP 0xB2\0"
	.byte	0x1
	.uleb128 0x96f
	.ascii "VK_MEDIA_PLAY_PAUSE 0xB3\0"
	.byte	0x1
	.uleb128 0x970
	.ascii "VK_LAUNCH_MAIL 0xB4\0"
	.byte	0x1
	.uleb128 0x971
	.ascii "VK_LAUNCH_MEDIA_SELECT 0xB5\0"
	.byte	0x1
	.uleb128 0x972
	.ascii "VK_LAUNCH_APP1 0xB6\0"
	.byte	0x1
	.uleb128 0x973
	.ascii "VK_LAUNCH_APP2 0xB7\0"
	.byte	0x1
	.uleb128 0x974
	.ascii "VK_OEM_PLUS 0xBB\0"
	.byte	0x1
	.uleb128 0x975
	.ascii "VK_OEM_COMMA 0xBC\0"
	.byte	0x1
	.uleb128 0x976
	.ascii "VK_OEM_MINUS 0xBD\0"
	.byte	0x1
	.uleb128 0x977
	.ascii "VK_OEM_PERIOD 0xBE\0"
	.byte	0x1
	.uleb128 0x978
	.ascii "VK_OEM_102 0xE2\0"
	.byte	0x1
	.uleb128 0x979
	.ascii "VK_PACKET 0xE7\0"
	.byte	0x1
	.uleb128 0x97b
	.ascii "WINEVENT_OUTOFCONTEXT 0x0000\0"
	.byte	0x1
	.uleb128 0x97c
	.ascii "WINEVENT_SKIPOWNTHREAD 0x0001\0"
	.byte	0x1
	.uleb128 0x97d
	.ascii "WINEVENT_SKIPOWNPROCESS 0x0002\0"
	.byte	0x1
	.uleb128 0x97e
	.ascii "WINEVENT_INCONTEXT 0x0004\0"
	.byte	0x1
	.uleb128 0x980
	.ascii "WM_GETOBJECT 0x003D\0"
	.byte	0x1
	.uleb128 0x981
	.ascii "WM_CHANGEUISTATE 0x0127\0"
	.byte	0x1
	.uleb128 0x982
	.ascii "WM_UPDATEUISTATE 0x0128\0"
	.byte	0x1
	.uleb128 0x983
	.ascii "WM_QUERYUISTATE 0x0129\0"
	.byte	0x1
	.uleb128 0x984
	.ascii "WM_UNINITMENUPOPUP 0x0125\0"
	.byte	0x1
	.uleb128 0x985
	.ascii "WM_MENURBUTTONUP 290\0"
	.byte	0x1
	.uleb128 0x986
	.ascii "WM_MENUCOMMAND 0x0126\0"
	.byte	0x1
	.uleb128 0x987
	.ascii "WM_MENUGETOBJECT 0x0124\0"
	.byte	0x1
	.uleb128 0x988
	.ascii "WM_MENUDRAG 0x0123\0"
	.byte	0x1
	.uleb128 0x989
	.ascii "WM_APPCOMMAND 0x0319\0"
	.byte	0x1
	.uleb128 0x98a
	.ascii "WM_NCXBUTTONDOWN 171\0"
	.byte	0x1
	.uleb128 0x98b
	.ascii "WM_NCXBUTTONUP 172\0"
	.byte	0x1
	.uleb128 0x98c
	.ascii "WM_NCXBUTTONDBLCLK 173\0"
	.byte	0x1
	.uleb128 0x98d
	.ascii "WM_NCMOUSEHOVER 0x02A0\0"
	.byte	0x1
	.uleb128 0x98e
	.ascii "WM_NCMOUSELEAVE 0x02A2\0"
	.byte	0x1
	.uleb128 0x990
	.ascii "WM_XBUTTONDOWN 523\0"
	.byte	0x1
	.uleb128 0x991
	.ascii "WM_XBUTTONUP 524\0"
	.byte	0x1
	.uleb128 0x992
	.ascii "WM_XBUTTONDBLCLK 525\0"
	.byte	0x1
	.uleb128 0x993
	.ascii "WM_MOUSELAST 525\0"
	.byte	0x1
	.uleb128 0x995
	.ascii "XBUTTON1 0x0001\0"
	.byte	0x1
	.uleb128 0x996
	.ascii "XBUTTON2 0x0002\0"
	.byte	0x1
	.uleb128 0xa2a
	.ascii "DEKSTOPENUMPROC __AW_SUFFIXED__(DEKSTOPENUMPROC)\0"
	.byte	0x1
	.uleb128 0xa2b
	.ascii "WINSTAENUMPROC __AW_SUFFIXED__(WINSTAENUMPROC)\0"
	.byte	0x1
	.uleb128 0xa2c
	.ascii "MAKEINTRESOURCE __AW_SUFFIXED__(MAKEINTRESOURCE)\0"
	.byte	0x1
	.uleb128 0xa33
	.ascii "PROPENUMPROC __AW_SUFFIXED__(PROPENUMPROC)\0"
	.byte	0x1
	.uleb128 0xa37
	.ascii "PROPENUMPROCEX __AW_SUFFIXED__(PROPENUMPROCEX)\0"
	.byte	0x1
	.uleb128 0xa3b
	.ascii "EDITWORDBREAKPROC __AW_SUFFIXED__(EDITWORDBREAKPROC)\0"
	.byte	0x1
	.uleb128 0xd03
	.ascii "CCHILDREN_SCROLLBAR 5\0"
	.byte	0x1
	.uleb128 0xd28
	.ascii "CCHDEVICENAME 32\0"
	.byte	0x1
	.uleb128 0xd57
	.ascii "AnsiToOem CharToOemA\0"
	.byte	0x1
	.uleb128 0xd58
	.ascii "OemToAnsi OemToCharA\0"
	.byte	0x1
	.uleb128 0xd59
	.ascii "AnsiToOemBuff CharToOemBuffA\0"
	.byte	0x1
	.uleb128 0xd5a
	.ascii "OemToAnsiBuff OemToCharBuffA\0"
	.byte	0x1
	.uleb128 0xd5b
	.ascii "AnsiUpper CharUpperA\0"
	.byte	0x1
	.uleb128 0xd5c
	.ascii "AnsiUpperBuff CharUpperBuffA\0"
	.byte	0x1
	.uleb128 0xd5d
	.ascii "AnsiLower CharLowerA\0"
	.byte	0x1
	.uleb128 0xd5e
	.ascii "AnsiLowerBuff CharLowerBuffA\0"
	.byte	0x1
	.uleb128 0xd5f
	.ascii "AnsiNext CharNextA\0"
	.byte	0x1
	.uleb128 0xd60
	.ascii "AnsiPrev CharPrevA\0"
	.byte	0x1
	.uleb128 0xd61
	.ascii "MAKELPARAM(l,h) ((LPARAM)(MAKELONG(l, h)))\0"
	.byte	0x1
	.uleb128 0xd62
	.ascii "MAKEWPARAM(l,h) ((WPARAM)(MAKELONG(l, h)))\0"
	.byte	0x1
	.uleb128 0xd63
	.ascii "MAKELRESULT(l,h) ((LRESULT)(MAKELONG(l, h)))\0"
	.byte	0x1
	.uleb128 0xd65
	.ascii "POINTSTOPOINT(p,ps) { (p).x=LOWORD(*(DWORD *)(&ps)); (p).y=HIWORD(*(DWORD *)(&ps)); }\0"
	.byte	0x1
	.uleb128 0xd69
	.ascii "POINTTOPOINTS(p) ((POINTS)(MAKELONG((p).x,(p).y)))\0"
	.byte	0x1
	.uleb128 0xd6c
	.ascii "_LPCGUID_DEFINED \0"
	.byte	0x1
	.uleb128 0xd76
	.ascii "AppendMenu __AW_SUFFIXED__(AppendMenu)\0"
	.byte	0x1
	.uleb128 0xd81
	.ascii "CallMsgFilter __AW_SUFFIXED__(CallMsgFilter)\0"
	.byte	0x1
	.uleb128 0xd85
	.ascii "CallWindowProc __AW_SUFFIXED__(CallWindowProc)\0"
	.byte	0x1
	.uleb128 0xd8c
	.ascii "DefHookProc(c,p,lp,h) CallNextHookEx ((HHOOK)(*(h)), c, p, lp)\0"
	.byte	0x1
	.uleb128 0xd8f
	.ascii "ChangeMenu __AW_SUFFIXED__(ChangeMenu)\0"
	.byte	0x1
	.uleb128 0xd93
	.ascii "CharLower __AW_SUFFIXED__(CharLower)\0"
	.byte	0x1
	.uleb128 0xd97
	.ascii "CharLowerBuff __AW_SUFFIXED__(CharLowerBuff)\0"
	.byte	0x1
	.uleb128 0xd9b
	.ascii "CharNext __AW_SUFFIXED__(CharNext)\0"
	.byte	0x1
	.uleb128 0xda0
	.ascii "CharPrev __AW_SUFFIXED__(CharPrev)\0"
	.byte	0x1
	.uleb128 0xda5
	.ascii "CharToOem __AW_SUFFIXED__(CharToOem)\0"
	.byte	0x1
	.uleb128 0xda9
	.ascii "CharToOemBuff __AW_SUFFIXED__(CharToOemBuff)\0"
	.byte	0x1
	.uleb128 0xdad
	.ascii "CharUpper __AW_SUFFIXED__(CharUpper)\0"
	.byte	0x1
	.uleb128 0xdb1
	.ascii "CharUpperBuff __AW_SUFFIXED__(CharUpperBuff)\0"
	.byte	0x1
	.uleb128 0xdc2
	.ascii "CopyAcceleratorTable __AW_SUFFIXED__(CopyAcceleratorTable)\0"
	.byte	0x1
	.uleb128 0xdc6
	.ascii "CopyCursor(c) ((HCURSOR)(CopyIcon ((HICON)(c))))\0"
	.byte	0x1
	.uleb128 0xdcc
	.ascii "CreateAcceleratorTable __AW_SUFFIXED__(CreateAcceleratorTable)\0"
	.byte	0x1
	.uleb128 0xdd3
	.ascii "CreateDialog __AW_SUFFIXED__(CreateDialog)\0"
	.byte	0x1
	.uleb128 0xdd4
	.ascii "CreateDialogA(h,n,w,f) CreateDialogParamA (h, n, w, f, 0)\0"
	.byte	0x1
	.uleb128 0xdd5
	.ascii "CreateDialogW(h,n,w,f) CreateDialogParamW (h, n, w, f, 0)\0"
	.byte	0x1
	.uleb128 0xdd7
	.ascii "CreateDialogIndirect __AW_SUFFIXED__(CreateDialogIndirect)\0"
	.byte	0x1
	.uleb128 0xdd8
	.ascii "CreateDialogIndirectA(h,t,w,f) CreateDialogIndirectParamA (h, t, w, f, 0)\0"
	.byte	0x1
	.uleb128 0xdd9
	.ascii "CreateDialogIndirectW(h,t,w,f) CreateDialogIndirectParamW (h, t, w, f, 0)\0"
	.byte	0x1
	.uleb128 0xddb
	.ascii "CreateDialogIndirectParam __AW_SUFFIXED__(CreateDialogIndirectParam)\0"
	.byte	0x1
	.uleb128 0xde1
	.ascii "CreateDialogParam __AW_SUFFIXED__(CreateDialogParam)\0"
	.byte	0x1
	.uleb128 0xdea
	.ascii "CreateMDIWindow __AW_SUFFIXED__(CreateMDIWindow)\0"
	.byte	0x1
	.uleb128 0xdf0
	.ascii "CreateWindow __AW_SUFFIXED__(CreateWindow)\0"
	.byte	0x1
	.uleb128 0xdf1
	.ascii "CreateWindowA(a,b,c,d,e,f,g,h,i,j,k) CreateWindowExA (0, a, b, c, d, e, f, g, h, i, j, k)\0"
	.byte	0x1
	.uleb128 0xdf3
	.ascii "CreateWindowW(a,b,c,d,e,f,g,h,i,j,k) CreateWindowExW (0, a, b, c, d, e, f, g, h, i, j, k)\0"
	.byte	0x1
	.uleb128 0xdf6
	.ascii "CreateWindowEx __AW_SUFFIXED__(CreateWindowEx)\0"
	.byte	0x1
	.uleb128 0xdfc
	.ascii "CreateWindowStation __AW_SUFFIXED__(CreateWindowStation)\0"
	.byte	0x1
	.uleb128 0xe02
	.ascii "DefDlgProc __AW_SUFFIXED__(DefDlgProc)\0"
	.byte	0x1
	.uleb128 0xe06
	.ascii "DefFrameProc __AW_SUFFIXED__(DefFrameProc)\0"
	.byte	0x1
	.uleb128 0xe0a
	.ascii "DefMDIChildProc __AW_SUFFIXED__(DefMDIChildProc)\0"
	.byte	0x1
	.uleb128 0xe0e
	.ascii "DefWindowProc __AW_SUFFIXED__(DefWindowProc)\0"
	.byte	0x1
	.uleb128 0xe1b
	.ascii "DialogBox __AW_SUFFIXED__(DialogBox)\0"
	.byte	0x1
	.uleb128 0xe1c
	.ascii "DialogBoxA(i,t,p,f) DialogBoxParamA (i, t, p, f, 0)\0"
	.byte	0x1
	.uleb128 0xe1d
	.ascii "DialogBoxW(i,t,p,f) DialogBoxParamW (i, t, p, f, 0)\0"
	.byte	0x1
	.uleb128 0xe1f
	.ascii "DialogBoxIndirect __AW_SUFFIXED__(DialogBoxIndirect)\0"
	.byte	0x1
	.uleb128 0xe20
	.ascii "DialogBoxIndirectA(i,t,p,f) DialogBoxIndirectParamA (i, t, p, f, 0)\0"
	.byte	0x1
	.uleb128 0xe21
	.ascii "DialogBoxIndirectW(i,t,p,f) DialogBoxIndirectParamW (i, t, p, f, 0)\0"
	.byte	0x1
	.uleb128 0xe23
	.ascii "DialogBoxIndirectParam __AW_SUFFIXED__(DialogBoxIndirectParam)\0"
	.byte	0x1
	.uleb128 0xe27
	.ascii "DialogBoxParam __AW_SUFFIXED__(DialogBoxParam)\0"
	.byte	0x1
	.uleb128 0xe31
	.ascii "DispatchMessage __AW_SUFFIXED__(DispatchMessage)\0"
	.byte	0x1
	.uleb128 0xe35
	.ascii "DlgDirList __AW_SUFFIXED__(DlgDirList)\0"
	.byte	0x1
	.uleb128 0xe39
	.ascii "DlgDirListComboBox __AW_SUFFIXED__(DlgDirListComboBox)\0"
	.byte	0x1
	.uleb128 0xe3d
	.ascii "DlgDirSelectComboBoxEx __AW_SUFFIXED__(DlgDirSelectComboBoxEx)\0"
	.byte	0x1
	.uleb128 0xe41
	.ascii "DlgDirSelectEx __AW_SUFFIXED__(DlgDirSelectEx)\0"
	.byte	0x1
	.uleb128 0xe50
	.ascii "DrawState __AW_SUFFIXED__(DrawState)\0"
	.byte	0x1
	.uleb128 0xe56
	.ascii "DrawText __AW_SUFFIXED__(DrawText)\0"
	.byte	0x1
	.uleb128 0xe5a
	.ascii "DrawTextEx __AW_SUFFIXED__(DrawTextEx)\0"
	.byte	0x1
	.uleb128 0xe6a
	.ascii "EnumDesktops __AW_SUFFIXED__(EnumDesktops)\0"
	.byte	0x1
	.uleb128 0xe71
	.ascii "EnumProps __AW_SUFFIXED__(EnumProps)\0"
	.byte	0x1
	.uleb128 0xe75
	.ascii "EnumPropsEx __AW_SUFFIXED__(EnumPropsEx)\0"
	.byte	0x1
	.uleb128 0xe79
	.ascii "EnumTaskWindows(h,f,p) EnumThreadWindows ((DWORD)(h), f, p)\0"
	.byte	0x1
	.uleb128 0xe7d
	.ascii "EnumWindowStations __AW_SUFFIXED__(EnumWindowStations)\0"
	.byte	0x1
	.uleb128 0xe83
	.ascii "ExitWindows(r,c) ExitWindowsEx (EWX_LOGOFF, 0)\0"
	.byte	0x1
	.uleb128 0xe86
	.ascii "FindWindow __AW_SUFFIXED__(FindWindow)\0"
	.byte	0x1
	.uleb128 0xe8a
	.ascii "FindWindowEx __AW_SUFFIXED__(FindWindowEx)\0"
	.byte	0x1
	.uleb128 0xe99
	.ascii "GetClassInfo __AW_SUFFIXED__(GetClassInfo)\0"
	.byte	0x1
	.uleb128 0xe9d
	.ascii "GetClassInfoEx __AW_SUFFIXED__(GetClassInfoEx)\0"
	.byte	0x1
	.uleb128 0xea1
	.ascii "GetClassLong __AW_SUFFIXED__(GetClassLong)\0"
	.byte	0x1
	.uleb128 0xeaa
	.ascii "GetClassLongPtr GetClassLong\0"
	.byte	0x1
	.uleb128 0xeab
	.ascii "GetClassLongPtrA GetClassLongA\0"
	.byte	0x1
	.uleb128 0xeac
	.ascii "GetClassLongPtrW GetClassLongW\0"
	.byte	0x1
	.uleb128 0xeaf
	.ascii "GetClassName __AW_SUFFIXED__(GetClassName)\0"
	.byte	0x1
	.uleb128 0xeb6
	.ascii "GetClipboardFormatName __AW_SUFFIXED__(GetClipboardFormatName)\0"
	.byte	0x1
	.uleb128 0xec8
	.ascii "GetDlgItemText __AW_SUFFIXED__(GetDlgItemText)\0"
	.byte	0x1
	.uleb128 0xed5
	.ascii "GetKeyboardLayoutName __AW_SUFFIXED__(GetKeyboardLayoutName)\0"
	.byte	0x1
	.uleb128 0xedc
	.ascii "GetKeyNameText __AW_SUFFIXED__(GetKeyNameText)\0"
	.byte	0x1
	.uleb128 0xee9
	.ascii "GetMenuItemInfo __AW_SUFFIXED__(GetMenuItemInfo)\0"
	.byte	0x1
	.uleb128 0xef0
	.ascii "GetMenuString __AW_SUFFIXED__(GetMenuString)\0"
	.byte	0x1
	.uleb128 0xef4
	.ascii "GetMessage __AW_SUFFIXED__(GetMessage)\0"
	.byte	0x1
	.uleb128 0xf02
	.ascii "GetProp __AW_SUFFIXED__(GetProp)\0"
	.byte	0x1
	.uleb128 0xf0f
	.ascii "GetSysModalWindow() (NULL)\0"
	.byte	0x1
	.uleb128 0xf11
	.ascii "GetTabbedTextExtent __AW_SUFFIXED__(GetTabbedTextExtent)\0"
	.byte	0x1
	.uleb128 0xf15
	.ascii "GetWindowLong __AW_SUFFIXED__(GetWindowLong)\0"
	.byte	0x1
	.uleb128 0xf1e
	.ascii "GetWindowLongPtr GetWindowLong\0"
	.byte	0x1
	.uleb128 0xf1f
	.ascii "GetWindowLongPtrA GetWindowLongA\0"
	.byte	0x1
	.uleb128 0xf20
	.ascii "GetWindowLongPtrW GetWindowLongW\0"
	.byte	0x1
	.uleb128 0xf28
	.ascii "GetUserObjectInformation __AW_SUFFIXED__(GetUserObjectInformation)\0"
	.byte	0x1
	.uleb128 0xf30
	.ascii "GetNextWindow(h,c) GetWindow(h, c)\0"
	.byte	0x1
	.uleb128 0xf39
	.ascii "GetWindowTask(hWnd) ((HANDLE)(GetWindowThreadProcessId(hWnd, NULL)))\0"
	.byte	0x1
	.uleb128 0xf3b
	.ascii "GetWindowText __AW_SUFFIXED__(GetWindowText)\0"
	.byte	0x1
	.uleb128 0xf3f
	.ascii "GetWindowTextLength __AW_SUFFIXED__(GetWindowTextLength)\0"
	.byte	0x1
	.uleb128 0xf43
	.ascii "GetAltTabInfo __AW_SUFFIXED__(GetAltTabInfo)\0"
	.byte	0x1
	.uleb128 0xf52
	.ascii "GetMonitorInfo __AW_SUFFIXED__(GetMonitorInfo)\0"
	.byte	0x1
	.uleb128 0xf56
	.ascii "GetWindowModuleFileName __AW_SUFFIXED__(GetWindowModuleFileName)\0"
	.byte	0x1
	.uleb128 0xf5a
	.ascii "GrayString __AW_SUFFIXED__(GrayString)\0"
	.byte	0x1
	.uleb128 0xf63
	.ascii "InsertMenu __AW_SUFFIXED__(InsertMenu)\0"
	.byte	0x1
	.uleb128 0xf67
	.ascii "InsertMenuItem __AW_SUFFIXED__(InsertMenuItem)\0"
	.byte	0x1
	.uleb128 0xf71
	.ascii "IsCharAlpha __AW_SUFFIXED__(IsCharAlpha)\0"
	.byte	0x1
	.uleb128 0xf75
	.ascii "IsCharAlphaNumeric __AW_SUFFIXED__(IsCharAlphaNumeric)\0"
	.byte	0x1
	.uleb128 0xf79
	.ascii "IsCharLower __AW_SUFFIXED__(IsCharLower)\0"
	.byte	0x1
	.uleb128 0xf7d
	.ascii "IsCharUpper __AW_SUFFIXED__(IsCharUpper)\0"
	.byte	0x1
	.uleb128 0xf85
	.ascii "IsDialogMessage __AW_SUFFIXED__(IsDialogMessage)\0"
	.byte	0x1
	.uleb128 0xf95
	.ascii "LoadAccelerators __AW_SUFFIXED__(LoadAccelerators)\0"
	.byte	0x1
	.uleb128 0xf99
	.ascii "LoadBitmap __AW_SUFFIXED__(LoadBitmap)\0"
	.byte	0x1
	.uleb128 0xf9d
	.ascii "LoadCursor __AW_SUFFIXED__(LoadCursor)\0"
	.byte	0x1
	.uleb128 0xfa1
	.ascii "LoadCursorFromFile __AW_SUFFIXED__(LoadCursorFromFile)\0"
	.byte	0x1
	.uleb128 0xfa5
	.ascii "LoadIcon __AW_SUFFIXED__(LoadIcon)\0"
	.byte	0x1
	.uleb128 0xfa9
	.ascii "LoadImage __AW_SUFFIXED__(LoadImage)\0"
	.byte	0x1
	.uleb128 0xfad
	.ascii "LoadKeyboardLayout __AW_SUFFIXED__(LoadKeyboardLayout)\0"
	.byte	0x1
	.uleb128 0xfb1
	.ascii "LoadMenu __AW_SUFFIXED__(LoadMenu)\0"
	.byte	0x1
	.uleb128 0xfb5
	.ascii "LoadMenuIndirect __AW_SUFFIXED__(LoadMenuIndirect)\0"
	.byte	0x1
	.uleb128 0xfb9
	.ascii "LoadString __AW_SUFFIXED__(LoadString)\0"
	.byte	0x1
	.uleb128 0xfc3
	.ascii "MapVirtualKey __AW_SUFFIXED__(MapVirtualKey)\0"
	.byte	0x1
	.uleb128 0xfc7
	.ascii "MapVirtualKeyEx __AW_SUFFIXED__(MapVirtualKeyEx)\0"
	.byte	0x1
	.uleb128 0xfcf
	.ascii "MessageBox __AW_SUFFIXED__(MessageBox)\0"
	.byte	0x1
	.uleb128 0xfd3
	.ascii "MessageBoxEx __AW_SUFFIXED__(MessageBoxEx)\0"
	.byte	0x1
	.uleb128 0xfd7
	.ascii "MessageBoxIndirect __AW_SUFFIXED__(MessageBoxIndirect)\0"
	.byte	0x1
	.uleb128 0xfdb
	.ascii "ModifyMenu __AW_SUFFIXED__(ModifyMenu)\0"
	.byte	0x1
	.uleb128 0xfe6
	.ascii "OemToChar __AW_SUFFIXED__(OemToChar)\0"
	.byte	0x1
	.uleb128 0xfea
	.ascii "OemToCharBuff __AW_SUFFIXED__(OemToCharBuff)\0"
	.byte	0x1
	.uleb128 0xff1
	.ascii "OpenDesktop __AW_SUFFIXED__(OpenDesktop)\0"
	.byte	0x1
	.uleb128 0xff8
	.ascii "OpenWindowStation __AW_SUFFIXED__(OpenWindowStation)\0"
	.byte	0x1
	.uleb128 0xffe
	.ascii "PeekMessage __AW_SUFFIXED__(PeekMessage)\0"
	.byte	0x1
	.uleb128 0x1002
	.ascii "PostAppMessage __AW_SUFFIXED__(PostAppMessage)\0"
	.byte	0x1
	.uleb128 0x1003
	.ascii "PostAppMessageA(t,m,w,l) PostThreadMessageA ((DWORD)(t), m, w, l)\0"
	.byte	0x1
	.uleb128 0x1004
	.ascii "PostAppMessageW(t,m,w,l) PostThreadMessageW ((DWORD)(t), m, w, l)\0"
	.byte	0x1
	.uleb128 0x1006
	.ascii "PostMessage __AW_SUFFIXED__(PostMessage)\0"
	.byte	0x1
	.uleb128 0x100a
	.ascii "PostThreadMessage __AW_SUFFIXED__(PostThreadMessage)\0"
	.byte	0x1
	.uleb128 0x1014
	.ascii "RealGetWindowClass __AW_SUFFIXED__(RealGetWindowClass)\0"
	.byte	0x1
	.uleb128 0x1018
	.ascii "RegisterClass __AW_SUFFIXED__(RegisterClass)\0"
	.byte	0x1
	.uleb128 0x101c
	.ascii "RegisterClassEx __AW_SUFFIXED__(RegisterClassEx)\0"
	.byte	0x1
	.uleb128 0x1020
	.ascii "RegisterClipboardFormat __AW_SUFFIXED__(RegisterClipboardFormat)\0"
	.byte	0x1
	.uleb128 0x1026
	.ascii "RegisterWindowMessage __AW_SUFFIXED__(RegisterWindowMessage)\0"
	.byte	0x1
	.uleb128 0x102e
	.ascii "RemoveProp __AW_SUFFIXED__(RemoveProp)\0"
	.byte	0x1
	.uleb128 0x1038
	.ascii "SendDlgItemMessage __AW_SUFFIXED__(SendDlgItemMessage)\0"
	.byte	0x1
	.uleb128 0x103c
	.ascii "SendMessage __AW_SUFFIXED__(SendMessage)\0"
	.byte	0x1
	.uleb128 0x1040
	.ascii "SendMessageCallback __AW_SUFFIXED__(SendMessageCallback)\0"
	.byte	0x1
	.uleb128 0x1044
	.ascii "SendMessageTimeout __AW_SUFFIXED__(SendMessageTimeout)\0"
	.byte	0x1
	.uleb128 0x1048
	.ascii "SendNotifyMessage __AW_SUFFIXED__(SendNotifyMessage)\0"
	.byte	0x1
	.uleb128 0x1051
	.ascii "SetClassLong __AW_SUFFIXED__(SetClassLong)\0"
	.byte	0x1
	.uleb128 0x105a
	.ascii "SetClassLongPtr SetClassLong\0"
	.byte	0x1
	.uleb128 0x105b
	.ascii "SetClassLongPtrA SetClassLongA\0"
	.byte	0x1
	.uleb128 0x105c
	.ascii "SetClassLongPtrW SetClassLongW\0"
	.byte	0x1
	.uleb128 0x1067
	.ascii "SetDlgItemText __AW_SUFFIXED__(SetDlgItemText)\0"
	.byte	0x1
	.uleb128 0x1075
	.ascii "SetMenuItemInfo __AW_SUFFIXED__(SetMenuItemInfo)\0"
	.byte	0x1
	.uleb128 0x107e
	.ascii "SetProp __AW_SUFFIXED__(SetProp)\0"
	.byte	0x1
	.uleb128 0x1089
	.ascii "SetSysModalWindow(h) (NULL)\0"
	.byte	0x1
	.uleb128 0x108f
	.ascii "SetUserObjectInformation __AW_SUFFIXED__(SetUserObjectInformation)\0"
	.byte	0x1
	.uleb128 0x1098
	.ascii "SetWindowLong __AW_SUFFIXED__(SetWindowLong)\0"
	.byte	0x1
	.uleb128 0x10a1
	.ascii "SetWindowLongPtr SetWindowLong\0"
	.byte	0x1
	.uleb128 0x10a2
	.ascii "SetWindowLongPtrA SetWindowLongA\0"
	.byte	0x1
	.uleb128 0x10a3
	.ascii "SetWindowLongPtrW SetWindowLongW\0"
	.byte	0x1
	.uleb128 0x10aa
	.ascii "SetWindowsHook __AW_SUFFIXED__(SetWindowsHook)\0"
	.byte	0x1
	.uleb128 0x10ae
	.ascii "SetWindowsHookEx __AW_SUFFIXED__(SetWindowsHookEx)\0"
	.byte	0x1
	.uleb128 0x10b2
	.ascii "SetWindowText __AW_SUFFIXED__(SetWindowText)\0"
	.byte	0x1
	.uleb128 0x10c1
	.ascii "SystemParametersInfo __AW_SUFFIXED__(SystemParametersInfo)\0"
	.byte	0x1
	.uleb128 0x10c5
	.ascii "TabbedTextOut __AW_SUFFIXED__(TabbedTextOut)\0"
	.byte	0x1
	.uleb128 0x10d2
	.ascii "TranslateAccelerator __AW_SUFFIXED__(TranslateAccelerator)\0"
	.byte	0x1
	.uleb128 0x10de
	.ascii "UnregisterClass __AW_SUFFIXED__(UnregisterClass)\0"
	.byte	0x1
	.uleb128 0x10e8
	.ascii "VkKeyScan __AW_SUFFIXED__(VkKeyScan)\0"
	.byte	0x1
	.uleb128 0x10ec
	.ascii "VkKeyScanEx __AW_SUFFIXED__(VkKeyScanEx)\0"
	.byte	0x1
	.uleb128 0x10f6
	.ascii "WinHelp __AW_SUFFIXED__(WinHelp)\0"
	.byte	0x1
	.uleb128 0x10fa
	.ascii "wsprintf __AW_SUFFIXED__(wsprintf)\0"
	.byte	0x1
	.uleb128 0x10fe
	.ascii "wvsprintf __AW_SUFFIXED__(wvsprintf)\0"
	.byte	0x1
	.uleb128 0x1103
	.ascii "BroadcastSystemMessage __AW_SUFFIXED__(BroadcastSystemMessage)\0"
	.byte	0x1
	.uleb128 0x1136
	.ascii "CCHILDREN_TITLEBAR 5\0"
	.byte	0x1
	.uleb128 0x1173
	.ascii "RegisterDeviceNotification __AW_SUFFIXED__(RegisterDeviceNotification)\0"
	.byte	0x1
	.uleb128 0x126c
	.ascii "ChangeDisplaySettings __AW_SUFFIXED__(ChangeDisplaySettings)\0"
	.byte	0x1
	.uleb128 0x1270
	.ascii "ChangeDisplaySettingsEx __AW_SUFFIXED__(ChangeDisplaySettingsEx)\0"
	.byte	0x1
	.uleb128 0x1274
	.ascii "CreateDesktop __AW_SUFFIXED__(CreateDesktop)\0"
	.byte	0x1
	.uleb128 0x127a
	.ascii "EnumDisplayDevices __AW_SUFFIXED__(EnumDisplayDevices)\0"
	.byte	0x1
	.uleb128 0x127e
	.ascii "EnumDisplaySettings __AW_SUFFIXED__(EnumDisplaySettings)\0"
	.byte	0x1
	.uleb128 0x1285
	.ascii "EnumDisplaySettingsEx __AW_SUFFIXED__(EnumDisplaySettingsEx)\0"
	.byte	0x2
	.uleb128 0x1296
	.ascii "__WINUSER_H_SOURCED__\0"
	.byte	0x4
	.file 37 "c:/mingw/include/winnls.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x25
	.byte	0x1
	.uleb128 0x2
	.ascii "_WINNLS_H \0"
	.byte	0x1
	.uleb128 0x13
	.ascii "MAX_LEADBYTES 12\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "MAX_DEFAULTCHAR 2\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "LOCALE_NOUSEROVERRIDE 0x80000000\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "LOCALE_USE_CP_ACP 0x40000000\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "LOCALE_RETURN_NUMBER 0x20000000\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "LOCALE_ILANGUAGE 1\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "LOCALE_SLANGUAGE 2\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "LOCALE_SENGLANGUAGE 0x1001\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "LOCALE_SABBREVLANGNAME 3\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "LOCALE_SNATIVELANGNAME 4\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "LOCALE_ICOUNTRY 5\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "LOCALE_SCOUNTRY 6\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "LOCALE_SENGCOUNTRY 0x1002\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "LOCALE_SABBREVCTRYNAME 7\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "LOCALE_SNATIVECTRYNAME 8\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "LOCALE_IDEFAULTLANGUAGE 9\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "LOCALE_IDEFAULTCOUNTRY 10\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "LOCALE_IDEFAULTCODEPAGE 11\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "LOCALE_IDEFAULTANSICODEPAGE 0x1004\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "LOCALE_SLIST 12\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "LOCALE_IMEASURE 13\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "LOCALE_SDECIMAL 14\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "LOCALE_STHOUSAND 15\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "LOCALE_SGROUPING 16\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "LOCALE_IDIGITS 17\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "LOCALE_ILZERO 18\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "LOCALE_INEGNUMBER 0x1010\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "LOCALE_SNATIVEDIGITS 19\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "LOCALE_SCURRENCY 20\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "LOCALE_SINTLSYMBOL 21\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "LOCALE_SMONDECIMALSEP 22\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "LOCALE_SMONTHOUSANDSEP 23\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "LOCALE_SMONGROUPING 24\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "LOCALE_ICURRDIGITS 25\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "LOCALE_IINTLCURRDIGITS 26\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "LOCALE_ICURRENCY 27\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "LOCALE_INEGCURR 28\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "LOCALE_SDATE 29\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "LOCALE_STIME 30\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "LOCALE_SSHORTDATE 31\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "LOCALE_SLONGDATE 32\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "LOCALE_STIMEFORMAT 0x1003\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "LOCALE_IDATE 33\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "LOCALE_ILDATE 34\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "LOCALE_ITIME 35\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "LOCALE_ITIMEMARKPOSN 0x1005\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "LOCALE_ICENTURY 36\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "LOCALE_ITLZERO 37\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "LOCALE_IDAYLZERO 38\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "LOCALE_IMONLZERO 39\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "LOCALE_S1159 40\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "LOCALE_S2359 41\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "LOCALE_ICALENDARTYPE 0x1009\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "LOCALE_IOPTIONALCALENDAR 0x100B\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "LOCALE_IFIRSTDAYOFWEEK 0x100C\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "LOCALE_IFIRSTWEEKOFYEAR 0x100D\0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "LOCALE_SDAYNAME1 42\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "LOCALE_SDAYNAME2 43\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "LOCALE_SDAYNAME3 44\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "LOCALE_SDAYNAME4 45\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "LOCALE_SDAYNAME5 46\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "LOCALE_SDAYNAME6 47\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "LOCALE_SDAYNAME7 48\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "LOCALE_SABBREVDAYNAME1 49\0"
	.byte	0x1
	.uleb128 0x55
	.ascii "LOCALE_SABBREVDAYNAME2 50\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "LOCALE_SABBREVDAYNAME3 51\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "LOCALE_SABBREVDAYNAME4 52\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "LOCALE_SABBREVDAYNAME5 53\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "LOCALE_SABBREVDAYNAME6 54\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "LOCALE_SABBREVDAYNAME7 55\0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "LOCALE_SMONTHNAME1 56\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "LOCALE_SMONTHNAME2 57\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "LOCALE_SMONTHNAME3 58\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "LOCALE_SMONTHNAME4 59\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "LOCALE_SMONTHNAME5 60\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "LOCALE_SMONTHNAME6 61\0"
	.byte	0x1
	.uleb128 0x61
	.ascii "LOCALE_SMONTHNAME7 62\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "LOCALE_SMONTHNAME8 63\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "LOCALE_SMONTHNAME9 64\0"
	.byte	0x1
	.uleb128 0x64
	.ascii "LOCALE_SMONTHNAME10 65\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "LOCALE_SMONTHNAME11 66\0"
	.byte	0x1
	.uleb128 0x66
	.ascii "LOCALE_SMONTHNAME12 67\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "LOCALE_SMONTHNAME13 0x100E\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "LOCALE_SABBREVMONTHNAME1 68\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "LOCALE_SABBREVMONTHNAME2 69\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "LOCALE_SABBREVMONTHNAME3 70\0"
	.byte	0x1
	.uleb128 0x6b
	.ascii "LOCALE_SABBREVMONTHNAME4 71\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "LOCALE_SABBREVMONTHNAME5 72\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "LOCALE_SABBREVMONTHNAME6 73\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "LOCALE_SABBREVMONTHNAME7 74\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "LOCALE_SABBREVMONTHNAME8 75\0"
	.byte	0x1
	.uleb128 0x70
	.ascii "LOCALE_SABBREVMONTHNAME9 76\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "LOCALE_SABBREVMONTHNAME10 77\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "LOCALE_SABBREVMONTHNAME11 78\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "LOCALE_SABBREVMONTHNAME12 79\0"
	.byte	0x1
	.uleb128 0x74
	.ascii "LOCALE_SABBREVMONTHNAME13 0x100F\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "LOCALE_SPOSITIVESIGN 80\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "LOCALE_SNEGATIVESIGN 81\0"
	.byte	0x1
	.uleb128 0x77
	.ascii "LOCALE_IPOSSIGNPOSN 82\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "LOCALE_INEGSIGNPOSN 83\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "LOCALE_IPOSSYMPRECEDES 84\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "LOCALE_IPOSSEPBYSPACE 85\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "LOCALE_INEGSYMPRECEDES 86\0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "LOCALE_INEGSEPBYSPACE 87\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "LOCALE_FONTSIGNATURE 88\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "LOCALE_SISO639LANGNAME 89\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "LOCALE_SISO3166CTRYNAME 90\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "LOCALE_SYSTEM_DEFAULT 0x800\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "LOCALE_USER_DEFAULT 0x400\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "NORM_IGNORECASE 1\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "NORM_IGNOREKANATYPE 65536\0"
	.byte	0x1
	.uleb128 0x84
	.ascii "NORM_IGNORENONSPACE 2\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "NORM_IGNORESYMBOLS 4\0"
	.byte	0x1
	.uleb128 0x86
	.ascii "NORM_IGNOREWIDTH 131072\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "SORT_STRINGSORT 4096\0"
	.byte	0x1
	.uleb128 0x88
	.ascii "LCMAP_LOWERCASE 0x00000100\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "LCMAP_UPPERCASE 0x00000200\0"
	.byte	0x1
	.uleb128 0x8a
	.ascii "LCMAP_SORTKEY 0x00000400\0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "LCMAP_BYTEREV 0x00000800\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "LCMAP_HIRAGANA 0x00100000\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "LCMAP_KATAKANA 0x00200000\0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "LCMAP_HALFWIDTH 0x00400000\0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "LCMAP_FULLWIDTH 0x00800000\0"
	.byte	0x1
	.uleb128 0x90
	.ascii "LCMAP_LINGUISTIC_CASING 0x01000000\0"
	.byte	0x1
	.uleb128 0x91
	.ascii "LCMAP_SIMPLIFIED_CHINESE 0x02000000\0"
	.byte	0x1
	.uleb128 0x92
	.ascii "LCMAP_TRADITIONAL_CHINESE 0x04000000\0"
	.byte	0x1
	.uleb128 0x93
	.ascii "ENUM_ALL_CALENDARS (-1)\0"
	.byte	0x1
	.uleb128 0x94
	.ascii "DATE_SHORTDATE 1\0"
	.byte	0x1
	.uleb128 0x95
	.ascii "DATE_LONGDATE 2\0"
	.byte	0x1
	.uleb128 0x96
	.ascii "DATE_USE_ALT_CALENDAR 4\0"
	.byte	0x1
	.uleb128 0x97
	.ascii "CP_INSTALLED 1\0"
	.byte	0x1
	.uleb128 0x98
	.ascii "CP_SUPPORTED 2\0"
	.byte	0x1
	.uleb128 0x99
	.ascii "LCID_INSTALLED 1\0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "LCID_SUPPORTED 2\0"
	.byte	0x1
	.uleb128 0x9b
	.ascii "LCID_ALTERNATE_SORTS 4\0"
	.byte	0x1
	.uleb128 0x9c
	.ascii "MAP_FOLDCZONE 16\0"
	.byte	0x1
	.uleb128 0x9d
	.ascii "MAP_FOLDDIGITS 128\0"
	.byte	0x1
	.uleb128 0x9e
	.ascii "MAP_PRECOMPOSED 32\0"
	.byte	0x1
	.uleb128 0x9f
	.ascii "MAP_COMPOSITE 64\0"
	.byte	0x1
	.uleb128 0xa0
	.ascii "CP_ACP 0\0"
	.byte	0x1
	.uleb128 0xa1
	.ascii "CP_OEMCP 1\0"
	.byte	0x1
	.uleb128 0xa2
	.ascii "CP_MACCP 2\0"
	.byte	0x1
	.uleb128 0xa3
	.ascii "CP_THREAD_ACP 3\0"
	.byte	0x1
	.uleb128 0xa4
	.ascii "CP_SYMBOL 42\0"
	.byte	0x1
	.uleb128 0xa5
	.ascii "CP_UTF7 65000\0"
	.byte	0x1
	.uleb128 0xa6
	.ascii "CP_UTF8 65001\0"
	.byte	0x1
	.uleb128 0xa7
	.ascii "CT_CTYPE1 1\0"
	.byte	0x1
	.uleb128 0xa8
	.ascii "CT_CTYPE2 2\0"
	.byte	0x1
	.uleb128 0xa9
	.ascii "CT_CTYPE3 4\0"
	.byte	0x1
	.uleb128 0xaa
	.ascii "C1_UPPER 1\0"
	.byte	0x1
	.uleb128 0xab
	.ascii "C1_LOWER 2\0"
	.byte	0x1
	.uleb128 0xac
	.ascii "C1_DIGIT 4\0"
	.byte	0x1
	.uleb128 0xad
	.ascii "C1_SPACE 8\0"
	.byte	0x1
	.uleb128 0xae
	.ascii "C1_PUNCT 16\0"
	.byte	0x1
	.uleb128 0xaf
	.ascii "C1_CNTRL 32\0"
	.byte	0x1
	.uleb128 0xb0
	.ascii "C1_BLANK 64\0"
	.byte	0x1
	.uleb128 0xb1
	.ascii "C1_XDIGIT 128\0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "C1_ALPHA 256\0"
	.byte	0x1
	.uleb128 0xb3
	.ascii "C2_LEFTTORIGHT 1\0"
	.byte	0x1
	.uleb128 0xb4
	.ascii "C2_RIGHTTOLEFT 2\0"
	.byte	0x1
	.uleb128 0xb5
	.ascii "C2_EUROPENUMBER 3\0"
	.byte	0x1
	.uleb128 0xb6
	.ascii "C2_EUROPESEPARATOR 4\0"
	.byte	0x1
	.uleb128 0xb7
	.ascii "C2_EUROPETERMINATOR 5\0"
	.byte	0x1
	.uleb128 0xb8
	.ascii "C2_ARABICNUMBER 6\0"
	.byte	0x1
	.uleb128 0xb9
	.ascii "C2_COMMONSEPARATOR 7\0"
	.byte	0x1
	.uleb128 0xba
	.ascii "C2_BLOCKSEPARATOR 8\0"
	.byte	0x1
	.uleb128 0xbb
	.ascii "C2_SEGMENTSEPARATOR 9\0"
	.byte	0x1
	.uleb128 0xbc
	.ascii "C2_WHITESPACE 10\0"
	.byte	0x1
	.uleb128 0xbd
	.ascii "C2_OTHERNEUTRAL 11\0"
	.byte	0x1
	.uleb128 0xbe
	.ascii "C2_NOTAPPLICABLE 0\0"
	.byte	0x1
	.uleb128 0xbf
	.ascii "C3_NONSPACING 1\0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "C3_DIACRITIC 2\0"
	.byte	0x1
	.uleb128 0xc1
	.ascii "C3_VOWELMARK 4\0"
	.byte	0x1
	.uleb128 0xc2
	.ascii "C3_SYMBOL 8\0"
	.byte	0x1
	.uleb128 0xc3
	.ascii "C3_KATAKANA 16\0"
	.byte	0x1
	.uleb128 0xc4
	.ascii "C3_HIRAGANA 32\0"
	.byte	0x1
	.uleb128 0xc5
	.ascii "C3_HALFWIDTH 64\0"
	.byte	0x1
	.uleb128 0xc6
	.ascii "C3_FULLWIDTH 128\0"
	.byte	0x1
	.uleb128 0xc7
	.ascii "C3_IDEOGRAPH 256\0"
	.byte	0x1
	.uleb128 0xc8
	.ascii "C3_KASHIDA 512\0"
	.byte	0x1
	.uleb128 0xc9
	.ascii "C3_LEXICAL 1024\0"
	.byte	0x1
	.uleb128 0xca
	.ascii "C3_ALPHA 32768\0"
	.byte	0x1
	.uleb128 0xcb
	.ascii "C3_NOTAPPLICABLE 0\0"
	.byte	0x1
	.uleb128 0xcc
	.ascii "TIME_NOMINUTESORSECONDS 1\0"
	.byte	0x1
	.uleb128 0xcd
	.ascii "TIME_NOSECONDS 2\0"
	.byte	0x1
	.uleb128 0xce
	.ascii "TIME_NOTIMEMARKER 4\0"
	.byte	0x1
	.uleb128 0xcf
	.ascii "TIME_FORCE24HOURFORMAT 8\0"
	.byte	0x1
	.uleb128 0xd0
	.ascii "MB_PRECOMPOSED 1\0"
	.byte	0x1
	.uleb128 0xd1
	.ascii "MB_COMPOSITE 2\0"
	.byte	0x1
	.uleb128 0xd2
	.ascii "MB_ERR_INVALID_CHARS 8\0"
	.byte	0x1
	.uleb128 0xd3
	.ascii "MB_USEGLYPHCHARS 4\0"
	.byte	0x1
	.uleb128 0xd4
	.ascii "WC_COMPOSITECHECK 512\0"
	.byte	0x1
	.uleb128 0xd5
	.ascii "WC_DISCARDNS 16\0"
	.byte	0x1
	.uleb128 0xd6
	.ascii "WC_SEPCHARS 32\0"
	.byte	0x1
	.uleb128 0xd7
	.ascii "WC_DEFAULTCHAR 64\0"
	.byte	0x1
	.uleb128 0xd8
	.ascii "CTRY_DEFAULT 0\0"
	.byte	0x1
	.uleb128 0xd9
	.ascii "CTRY_ALBANIA 355\0"
	.byte	0x1
	.uleb128 0xda
	.ascii "CTRY_ALGERIA 213\0"
	.byte	0x1
	.uleb128 0xdb
	.ascii "CTRY_ARGENTINA 54\0"
	.byte	0x1
	.uleb128 0xdc
	.ascii "CTRY_ARMENIA 374\0"
	.byte	0x1
	.uleb128 0xdd
	.ascii "CTRY_AUSTRALIA 61\0"
	.byte	0x1
	.uleb128 0xde
	.ascii "CTRY_AUSTRIA 43\0"
	.byte	0x1
	.uleb128 0xdf
	.ascii "CTRY_AZERBAIJAN 994\0"
	.byte	0x1
	.uleb128 0xe0
	.ascii "CTRY_BAHRAIN 973\0"
	.byte	0x1
	.uleb128 0xe1
	.ascii "CTRY_BELARUS 375\0"
	.byte	0x1
	.uleb128 0xe2
	.ascii "CTRY_BELGIUM 32\0"
	.byte	0x1
	.uleb128 0xe3
	.ascii "CTRY_BELIZE 501\0"
	.byte	0x1
	.uleb128 0xe4
	.ascii "CTRY_BOLIVIA 591\0"
	.byte	0x1
	.uleb128 0xe5
	.ascii "CTRY_BRAZIL 55\0"
	.byte	0x1
	.uleb128 0xe6
	.ascii "CTRY_BRUNEI_DARUSSALAM 673\0"
	.byte	0x1
	.uleb128 0xe7
	.ascii "CTRY_BULGARIA 359\0"
	.byte	0x1
	.uleb128 0xe8
	.ascii "CTRY_CANADA 2\0"
	.byte	0x1
	.uleb128 0xe9
	.ascii "CTRY_CARIBBEAN 1\0"
	.byte	0x1
	.uleb128 0xea
	.ascii "CTRY_CHILE 56\0"
	.byte	0x1
	.uleb128 0xeb
	.ascii "CTRY_COLOMBIA 57\0"
	.byte	0x1
	.uleb128 0xec
	.ascii "CTRY_COSTA_RICA 506\0"
	.byte	0x1
	.uleb128 0xed
	.ascii "CTRY_CROATIA 385\0"
	.byte	0x1
	.uleb128 0xee
	.ascii "CTRY_CZECH 420\0"
	.byte	0x1
	.uleb128 0xef
	.ascii "CTRY_DENMARK 45\0"
	.byte	0x1
	.uleb128 0xf0
	.ascii "CTRY_DOMINICAN_REPUBLIC 1\0"
	.byte	0x1
	.uleb128 0xf1
	.ascii "CTRY_ECUADOR 593\0"
	.byte	0x1
	.uleb128 0xf2
	.ascii "CTRY_EGYPT 20\0"
	.byte	0x1
	.uleb128 0xf3
	.ascii "CTRY_EL_SALVADOR 503\0"
	.byte	0x1
	.uleb128 0xf4
	.ascii "CTRY_ESTONIA 372\0"
	.byte	0x1
	.uleb128 0xf5
	.ascii "CTRY_FAEROE_ISLANDS 298\0"
	.byte	0x1
	.uleb128 0xf6
	.ascii "CTRY_FINLAND 358\0"
	.byte	0x1
	.uleb128 0xf7
	.ascii "CTRY_FRANCE 33\0"
	.byte	0x1
	.uleb128 0xf8
	.ascii "CTRY_GEORGIA 995\0"
	.byte	0x1
	.uleb128 0xf9
	.ascii "CTRY_GERMANY 49\0"
	.byte	0x1
	.uleb128 0xfa
	.ascii "CTRY_GREECE 30\0"
	.byte	0x1
	.uleb128 0xfb
	.ascii "CTRY_GUATEMALA 502\0"
	.byte	0x1
	.uleb128 0xfc
	.ascii "CTRY_HONDURAS 504\0"
	.byte	0x1
	.uleb128 0xfd
	.ascii "CTRY_HONG_KONG 852\0"
	.byte	0x1
	.uleb128 0xfe
	.ascii "CTRY_HUNGARY 36\0"
	.byte	0x1
	.uleb128 0xff
	.ascii "CTRY_ICELAND 354\0"
	.byte	0x1
	.uleb128 0x100
	.ascii "CTRY_INDIA 91\0"
	.byte	0x1
	.uleb128 0x101
	.ascii "CTRY_INDONESIA 62\0"
	.byte	0x1
	.uleb128 0x102
	.ascii "CTRY_IRAN 981\0"
	.byte	0x1
	.uleb128 0x103
	.ascii "CTRY_IRAQ 964\0"
	.byte	0x1
	.uleb128 0x104
	.ascii "CTRY_IRELAND 353\0"
	.byte	0x1
	.uleb128 0x105
	.ascii "CTRY_ISRAEL 972\0"
	.byte	0x1
	.uleb128 0x106
	.ascii "CTRY_ITALY 39\0"
	.byte	0x1
	.uleb128 0x107
	.ascii "CTRY_JAMAICA 1\0"
	.byte	0x1
	.uleb128 0x108
	.ascii "CTRY_JAPAN 81\0"
	.byte	0x1
	.uleb128 0x109
	.ascii "CTRY_JORDAN 962\0"
	.byte	0x1
	.uleb128 0x10a
	.ascii "CTRY_KAZAKSTAN 7\0"
	.byte	0x1
	.uleb128 0x10b
	.ascii "CTRY_KENYA 254\0"
	.byte	0x1
	.uleb128 0x10c
	.ascii "CTRY_KUWAIT 965\0"
	.byte	0x1
	.uleb128 0x10d
	.ascii "CTRY_KYRGYZSTAN 996\0"
	.byte	0x1
	.uleb128 0x10e
	.ascii "CTRY_LATVIA 371\0"
	.byte	0x1
	.uleb128 0x10f
	.ascii "CTRY_LEBANON 961\0"
	.byte	0x1
	.uleb128 0x110
	.ascii "CTRY_LIBYA 218\0"
	.byte	0x1
	.uleb128 0x111
	.ascii "CTRY_LIECHTENSTEIN 41\0"
	.byte	0x1
	.uleb128 0x112
	.ascii "CTRY_LITHUANIA 370\0"
	.byte	0x1
	.uleb128 0x113
	.ascii "CTRY_LUXEMBOURG 352\0"
	.byte	0x1
	.uleb128 0x114
	.ascii "CTRY_MACAU 853\0"
	.byte	0x1
	.uleb128 0x115
	.ascii "CTRY_MACEDONIA 389\0"
	.byte	0x1
	.uleb128 0x116
	.ascii "CTRY_MALAYSIA 60\0"
	.byte	0x1
	.uleb128 0x117
	.ascii "CTRY_MALDIVES 960\0"
	.byte	0x1
	.uleb128 0x118
	.ascii "CTRY_MEXICO 52\0"
	.byte	0x1
	.uleb128 0x119
	.ascii "CTRY_MONACO 33\0"
	.byte	0x1
	.uleb128 0x11a
	.ascii "CTRY_MONGOLIA 976\0"
	.byte	0x1
	.uleb128 0x11b
	.ascii "CTRY_MOROCCO 212\0"
	.byte	0x1
	.uleb128 0x11c
	.ascii "CTRY_NETHERLANDS 31\0"
	.byte	0x1
	.uleb128 0x11d
	.ascii "CTRY_NEW_ZEALAND 64\0"
	.byte	0x1
	.uleb128 0x11e
	.ascii "CTRY_NICARAGUA 505\0"
	.byte	0x1
	.uleb128 0x11f
	.ascii "CTRY_NORWAY 47\0"
	.byte	0x1
	.uleb128 0x120
	.ascii "CTRY_OMAN 968\0"
	.byte	0x1
	.uleb128 0x121
	.ascii "CTRY_PAKISTAN 92\0"
	.byte	0x1
	.uleb128 0x122
	.ascii "CTRY_PANAMA 507\0"
	.byte	0x1
	.uleb128 0x123
	.ascii "CTRY_PARAGUAY 595\0"
	.byte	0x1
	.uleb128 0x124
	.ascii "CTRY_PERU 51\0"
	.byte	0x1
	.uleb128 0x125
	.ascii "CTRY_PHILIPPINES 63\0"
	.byte	0x1
	.uleb128 0x126
	.ascii "CTRY_POLAND 48\0"
	.byte	0x1
	.uleb128 0x127
	.ascii "CTRY_PORTUGAL 351\0"
	.byte	0x1
	.uleb128 0x128
	.ascii "CTRY_PRCHINA 86\0"
	.byte	0x1
	.uleb128 0x129
	.ascii "CTRY_PUERTO_RICO 1\0"
	.byte	0x1
	.uleb128 0x12a
	.ascii "CTRY_QATAR 974\0"
	.byte	0x1
	.uleb128 0x12b
	.ascii "CTRY_ROMANIA 40\0"
	.byte	0x1
	.uleb128 0x12c
	.ascii "CTRY_RUSSIA 7\0"
	.byte	0x1
	.uleb128 0x12d
	.ascii "CTRY_SAUDI_ARABIA 966\0"
	.byte	0x1
	.uleb128 0x12e
	.ascii "CTRY_SERBIA 381\0"
	.byte	0x1
	.uleb128 0x12f
	.ascii "CTRY_SINGAPORE 65\0"
	.byte	0x1
	.uleb128 0x130
	.ascii "CTRY_SLOVAK 421\0"
	.byte	0x1
	.uleb128 0x131
	.ascii "CTRY_SLOVENIA 386\0"
	.byte	0x1
	.uleb128 0x132
	.ascii "CTRY_SOUTH_AFRICA 27\0"
	.byte	0x1
	.uleb128 0x133
	.ascii "CTRY_SOUTH_KOREA 82\0"
	.byte	0x1
	.uleb128 0x134
	.ascii "CTRY_SPAIN 34\0"
	.byte	0x1
	.uleb128 0x135
	.ascii "CTRY_SWEDEN 46\0"
	.byte	0x1
	.uleb128 0x136
	.ascii "CTRY_SWITZERLAND 41\0"
	.byte	0x1
	.uleb128 0x137
	.ascii "CTRY_SYRIA 963\0"
	.byte	0x1
	.uleb128 0x138
	.ascii "CTRY_TAIWAN 886\0"
	.byte	0x1
	.uleb128 0x139
	.ascii "CTRY_TATARSTAN 7\0"
	.byte	0x1
	.uleb128 0x13a
	.ascii "CTRY_THAILAND 66\0"
	.byte	0x1
	.uleb128 0x13b
	.ascii "CTRY_TRINIDAD_Y_TOBAGO 1\0"
	.byte	0x1
	.uleb128 0x13c
	.ascii "CTRY_TUNISIA 216\0"
	.byte	0x1
	.uleb128 0x13d
	.ascii "CTRY_TURKEY 90\0"
	.byte	0x1
	.uleb128 0x13e
	.ascii "CTRY_UAE 971\0"
	.byte	0x1
	.uleb128 0x13f
	.ascii "CTRY_UKRAINE 380\0"
	.byte	0x1
	.uleb128 0x140
	.ascii "CTRY_UNITED_KINGDOM 44\0"
	.byte	0x1
	.uleb128 0x141
	.ascii "CTRY_UNITED_STATES 1\0"
	.byte	0x1
	.uleb128 0x142
	.ascii "CTRY_URUGUAY 598\0"
	.byte	0x1
	.uleb128 0x143
	.ascii "CTRY_UZBEKISTAN 7\0"
	.byte	0x1
	.uleb128 0x144
	.ascii "CTRY_VENEZUELA 58\0"
	.byte	0x1
	.uleb128 0x145
	.ascii "CTRY_VIET_NAM 84\0"
	.byte	0x1
	.uleb128 0x146
	.ascii "CTRY_YEMEN 967\0"
	.byte	0x1
	.uleb128 0x147
	.ascii "CTRY_ZIMBABWE 263\0"
	.byte	0x1
	.uleb128 0x148
	.ascii "CAL_ICALINTVALUE 1\0"
	.byte	0x1
	.uleb128 0x149
	.ascii "CAL_SCALNAME 2\0"
	.byte	0x1
	.uleb128 0x14a
	.ascii "CAL_IYEAROFFSETRANGE 3\0"
	.byte	0x1
	.uleb128 0x14b
	.ascii "CAL_SERASTRING 4\0"
	.byte	0x1
	.uleb128 0x14c
	.ascii "CAL_SSHORTDATE 5\0"
	.byte	0x1
	.uleb128 0x14d
	.ascii "CAL_SLONGDATE 6\0"
	.byte	0x1
	.uleb128 0x14e
	.ascii "CAL_SDAYNAME1 7\0"
	.byte	0x1
	.uleb128 0x14f
	.ascii "CAL_SDAYNAME2 8\0"
	.byte	0x1
	.uleb128 0x150
	.ascii "CAL_SDAYNAME3 9\0"
	.byte	0x1
	.uleb128 0x151
	.ascii "CAL_SDAYNAME4 10\0"
	.byte	0x1
	.uleb128 0x152
	.ascii "CAL_SDAYNAME5 11\0"
	.byte	0x1
	.uleb128 0x153
	.ascii "CAL_SDAYNAME6 12\0"
	.byte	0x1
	.uleb128 0x154
	.ascii "CAL_SDAYNAME7 13\0"
	.byte	0x1
	.uleb128 0x155
	.ascii "CAL_SABBREVDAYNAME1 14\0"
	.byte	0x1
	.uleb128 0x156
	.ascii "CAL_SABBREVDAYNAME2 15\0"
	.byte	0x1
	.uleb128 0x157
	.ascii "CAL_SABBREVDAYNAME3 16\0"
	.byte	0x1
	.uleb128 0x158
	.ascii "CAL_SABBREVDAYNAME4 17\0"
	.byte	0x1
	.uleb128 0x159
	.ascii "CAL_SABBREVDAYNAME5 18\0"
	.byte	0x1
	.uleb128 0x15a
	.ascii "CAL_SABBREVDAYNAME6 19\0"
	.byte	0x1
	.uleb128 0x15b
	.ascii "CAL_SABBREVDAYNAME7 20\0"
	.byte	0x1
	.uleb128 0x15c
	.ascii "CAL_SMONTHNAME1 21\0"
	.byte	0x1
	.uleb128 0x15d
	.ascii "CAL_SMONTHNAME2 22\0"
	.byte	0x1
	.uleb128 0x15e
	.ascii "CAL_SMONTHNAME3 23\0"
	.byte	0x1
	.uleb128 0x15f
	.ascii "CAL_SMONTHNAME4 24\0"
	.byte	0x1
	.uleb128 0x160
	.ascii "CAL_SMONTHNAME5 25\0"
	.byte	0x1
	.uleb128 0x161
	.ascii "CAL_SMONTHNAME6 26\0"
	.byte	0x1
	.uleb128 0x162
	.ascii "CAL_SMONTHNAME7 27\0"
	.byte	0x1
	.uleb128 0x163
	.ascii "CAL_SMONTHNAME8 28\0"
	.byte	0x1
	.uleb128 0x164
	.ascii "CAL_SMONTHNAME9 29\0"
	.byte	0x1
	.uleb128 0x165
	.ascii "CAL_SMONTHNAME10 30\0"
	.byte	0x1
	.uleb128 0x166
	.ascii "CAL_SMONTHNAME11 31\0"
	.byte	0x1
	.uleb128 0x167
	.ascii "CAL_SMONTHNAME12 32\0"
	.byte	0x1
	.uleb128 0x168
	.ascii "CAL_SMONTHNAME13 33\0"
	.byte	0x1
	.uleb128 0x169
	.ascii "CAL_SABBREVMONTHNAME1 34\0"
	.byte	0x1
	.uleb128 0x16a
	.ascii "CAL_SABBREVMONTHNAME2 35\0"
	.byte	0x1
	.uleb128 0x16b
	.ascii "CAL_SABBREVMONTHNAME3 36\0"
	.byte	0x1
	.uleb128 0x16c
	.ascii "CAL_SABBREVMONTHNAME4 37\0"
	.byte	0x1
	.uleb128 0x16d
	.ascii "CAL_SABBREVMONTHNAME5 38\0"
	.byte	0x1
	.uleb128 0x16e
	.ascii "CAL_SABBREVMONTHNAME6 39\0"
	.byte	0x1
	.uleb128 0x16f
	.ascii "CAL_SABBREVMONTHNAME7 40\0"
	.byte	0x1
	.uleb128 0x170
	.ascii "CAL_SABBREVMONTHNAME8 41\0"
	.byte	0x1
	.uleb128 0x171
	.ascii "CAL_SABBREVMONTHNAME9 42\0"
	.byte	0x1
	.uleb128 0x172
	.ascii "CAL_SABBREVMONTHNAME10 43\0"
	.byte	0x1
	.uleb128 0x173
	.ascii "CAL_SABBREVMONTHNAME11 44\0"
	.byte	0x1
	.uleb128 0x174
	.ascii "CAL_SABBREVMONTHNAME12 45\0"
	.byte	0x1
	.uleb128 0x175
	.ascii "CAL_SABBREVMONTHNAME13 46\0"
	.byte	0x1
	.uleb128 0x176
	.ascii "CAL_GREGORIAN 1\0"
	.byte	0x1
	.uleb128 0x177
	.ascii "CAL_GREGORIAN_US 2\0"
	.byte	0x1
	.uleb128 0x178
	.ascii "CAL_JAPAN 3\0"
	.byte	0x1
	.uleb128 0x179
	.ascii "CAL_TAIWAN 4\0"
	.byte	0x1
	.uleb128 0x17a
	.ascii "CAL_KOREA 5\0"
	.byte	0x1
	.uleb128 0x17b
	.ascii "CAL_HIJRI 6\0"
	.byte	0x1
	.uleb128 0x17c
	.ascii "CAL_THAI 7\0"
	.byte	0x1
	.uleb128 0x17d
	.ascii "CAL_HEBREW 8\0"
	.byte	0x1
	.uleb128 0x17e
	.ascii "CAL_GREGORIAN_ME_FRENCH 9\0"
	.byte	0x1
	.uleb128 0x17f
	.ascii "CAL_GREGORIAN_ARABIC 10\0"
	.byte	0x1
	.uleb128 0x180
	.ascii "CAL_GREGORIAN_XLIT_ENGLISH 11\0"
	.byte	0x1
	.uleb128 0x181
	.ascii "CAL_GREGORIAN_XLIT_FRENCH 12\0"
	.byte	0x1
	.uleb128 0x182
	.ascii "CSTR_LESS_THAN 1\0"
	.byte	0x1
	.uleb128 0x183
	.ascii "CSTR_EQUAL 2\0"
	.byte	0x1
	.uleb128 0x184
	.ascii "CSTR_GREATER_THAN 3\0"
	.byte	0x1
	.uleb128 0x185
	.ascii "LGRPID_INSTALLED 1\0"
	.byte	0x1
	.uleb128 0x186
	.ascii "LGRPID_SUPPORTED 2\0"
	.byte	0x1
	.uleb128 0x187
	.ascii "LGRPID_WESTERN_EUROPE 1\0"
	.byte	0x1
	.uleb128 0x188
	.ascii "LGRPID_CENTRAL_EUROPE 2\0"
	.byte	0x1
	.uleb128 0x189
	.ascii "LGRPID_BALTIC 3\0"
	.byte	0x1
	.uleb128 0x18a
	.ascii "LGRPID_GREEK 4\0"
	.byte	0x1
	.uleb128 0x18b
	.ascii "LGRPID_CYRILLIC 5\0"
	.byte	0x1
	.uleb128 0x18c
	.ascii "LGRPID_TURKISH 6\0"
	.byte	0x1
	.uleb128 0x18d
	.ascii "LGRPID_JAPANESE 7\0"
	.byte	0x1
	.uleb128 0x18e
	.ascii "LGRPID_KOREAN 8\0"
	.byte	0x1
	.uleb128 0x18f
	.ascii "LGRPID_TRADITIONAL_CHINESE 9\0"
	.byte	0x1
	.uleb128 0x190
	.ascii "LGRPID_SIMPLIFIED_CHINESE 10\0"
	.byte	0x1
	.uleb128 0x191
	.ascii "LGRPID_THAI 11\0"
	.byte	0x1
	.uleb128 0x192
	.ascii "LGRPID_HEBREW 12\0"
	.byte	0x1
	.uleb128 0x193
	.ascii "LGRPID_ARABIC 13\0"
	.byte	0x1
	.uleb128 0x194
	.ascii "LGRPID_VIETNAMESE 14\0"
	.byte	0x1
	.uleb128 0x195
	.ascii "LGRPID_INDIC 15\0"
	.byte	0x1
	.uleb128 0x196
	.ascii "LGRPID_GEORGIAN 16\0"
	.byte	0x1
	.uleb128 0x197
	.ascii "LGRPID_ARMENIAN 17\0"
	.byte	0x1
	.uleb128 0x198
	.ascii "IS_HIGH_SURROGATE(c) (((c) & 0xFC00) == 0xD800)\0"
	.byte	0x1
	.uleb128 0x199
	.ascii "IS_LOW_SURROGATE(c) (((c) & 0xFC00) == 0xDC00)\0"
	.byte	0x1
	.uleb128 0x19a
	.ascii "IS_SURROGATE_PAIR(hc,lc) (IS_HIGH_SURROGATE(hc) && IS_LOW_SURROGATE(lc))\0"
	.byte	0x1
	.uleb128 0x19c
	.ascii "CAL_SYEARMONTH 47\0"
	.byte	0x1
	.uleb128 0x19d
	.ascii "CAL_ITWODIGITYEARMAX 48\0"
	.byte	0x1
	.uleb128 0x19e
	.ascii "CAL_NOUSEROVERRIDE LOCALE_NOUSEROVERRIDE\0"
	.byte	0x1
	.uleb128 0x19f
	.ascii "CAL_RETURN_NUMBER LOCALE_RETURN_NUMBER\0"
	.byte	0x1
	.uleb128 0x1a0
	.ascii "CAL_USE_CP_ACP LOCALE_USE_CP_ACP\0"
	.byte	0x1
	.uleb128 0x1a1
	.ascii "LOCALE_SYEARMONTH 0x1006\0"
	.byte	0x1
	.uleb128 0x1a2
	.ascii "LOCALE_SENGCURRNAME 0x1007\0"
	.byte	0x1
	.uleb128 0x1a3
	.ascii "LOCALE_SNATIVECURRNAME 0x1008\0"
	.byte	0x1
	.uleb128 0x1a4
	.ascii "LOCALE_SSORTNAME 0x1013\0"
	.byte	0x1
	.uleb128 0x1a7
	.ascii "LOCALE_IDEFAULTEBCDICCODEPAGE 0x1012\0"
	.byte	0x1
	.uleb128 0x1a8
	.ascii "LOCALE_IDIGITSUBSTITUTION 0x1014\0"
	.byte	0x1
	.uleb128 0x1a9
	.ascii "LOCALE_IPAPERSIZE 0x100A\0"
	.byte	0x1
	.uleb128 0x1aa
	.ascii "DATE_YEARMONTH 8\0"
	.byte	0x1
	.uleb128 0x1ab
	.ascii "DATE_LTRREADING 16\0"
	.byte	0x1
	.uleb128 0x1ac
	.ascii "DATE_RTLREADING 32\0"
	.byte	0x1
	.uleb128 0x1ad
	.ascii "MAP_EXPAND_LIGATURES 0x2000\0"
	.byte	0x1
	.uleb128 0x1ae
	.ascii "WC_NO_BEST_FIT_CHARS 1024\0"
	.byte	0x1
	.uleb128 0x2b3
	.ascii "CALINFO_ENUMPROC CALINFO_ENUMPROCA\0"
	.byte	0x1
	.uleb128 0x2b4
	.ascii "CALINFO_ENUMPROCEX CALINFO_ENUMPROCEXA\0"
	.byte	0x1
	.uleb128 0x2b5
	.ascii "LOCALE_ENUMPROC LOCALE_ENUMPROCA\0"
	.byte	0x1
	.uleb128 0x2b6
	.ascii "CODEPAGE_ENUMPROC CODEPAGE_ENUMPROCA\0"
	.byte	0x1
	.uleb128 0x2b7
	.ascii "DATEFMT_ENUMPROC DATEFMT_ENUMPROCA\0"
	.byte	0x1
	.uleb128 0x2b8
	.ascii "DATEFMT_ENUMPROCEX DATEFMT_ENUMPROCEXA\0"
	.byte	0x1
	.uleb128 0x2b9
	.ascii "TIMEFMT_ENUMPROC TIMEFMT_ENUMPROCA\0"
	.byte	0x1
	.uleb128 0x2ba
	.ascii "LANGUAGEGROUP_ENUMPROC LANGUAGEGROUP_ENUMPROCA\0"
	.byte	0x1
	.uleb128 0x2bb
	.ascii "LANGGROUPLOCALE_ENUMPROC LANGGROUPLOCALE_ENUMPROCA\0"
	.byte	0x1
	.uleb128 0x2bc
	.ascii "UILANGUAGE_ENUMPROC UILANGUAGE_ENUMPROCA\0"
	.byte	0x1
	.uleb128 0x2c3
	.ascii "CompareString CompareStringA\0"
	.byte	0x1
	.uleb128 0x2c4
	.ascii "EnumCalendarInfo EnumCalendarInfoA\0"
	.byte	0x1
	.uleb128 0x2c5
	.ascii "EnumSystemCodePages EnumSystemCodePagesA\0"
	.byte	0x1
	.uleb128 0x2c6
	.ascii "EnumSystemLocales EnumSystemLocalesA\0"
	.byte	0x1
	.uleb128 0x2c7
	.ascii "EnumTimeFormats EnumTimeFormatsA\0"
	.byte	0x1
	.uleb128 0x2c8
	.ascii "FoldString FoldStringA\0"
	.byte	0x1
	.uleb128 0x2c9
	.ascii "GetCalendarInfo GetCalendarInfoA\0"
	.byte	0x1
	.uleb128 0x2ca
	.ascii "GetCPInfoEx GetCPInfoExA\0"
	.byte	0x1
	.uleb128 0x2cb
	.ascii "GetCurrencyFormat GetCurrencyFormatA\0"
	.byte	0x1
	.uleb128 0x2cc
	.ascii "GetDateFormat GetDateFormatA\0"
	.byte	0x1
	.uleb128 0x2cd
	.ascii "GetGeoInfo GetGeoInfoA\0"
	.byte	0x1
	.uleb128 0x2ce
	.ascii "GetLocaleInfo GetLocaleInfoA\0"
	.byte	0x1
	.uleb128 0x2cf
	.ascii "GetNumberFormat GetNumberFormatA\0"
	.byte	0x1
	.uleb128 0x2d0
	.ascii "GetStringTypeEx GetStringTypeExA\0"
	.byte	0x1
	.uleb128 0x2d1
	.ascii "GetTimeFormat GetTimeFormatA\0"
	.byte	0x1
	.uleb128 0x2d2
	.ascii "LCMapString LCMapStringA\0"
	.byte	0x1
	.uleb128 0x2d3
	.ascii "SetCalendarInfo SetCalendarInfoA\0"
	.byte	0x1
	.uleb128 0x2d4
	.ascii "SetLocaleInfo SetLocaleInfoA\0"
	.byte	0x1
	.uleb128 0x2d6
	.ascii "EnumCalendarInfoEx EnumCalendarInfoExA\0"
	.byte	0x1
	.uleb128 0x2d7
	.ascii "EnumDateFormatsEx EnumDateFormatsExA\0"
	.byte	0x1
	.uleb128 0x2d8
	.ascii "EnumSystemLanguageGroups EnumSystemLanguageGroupsA\0"
	.byte	0x1
	.uleb128 0x2d9
	.ascii "EnumLanguageGroupLocales EnumLanguageGroupLocalesA\0"
	.byte	0x1
	.uleb128 0x2da
	.ascii "EnumUILanguages EnumUILanguagesA\0"
	.byte	0x4
	.file 38 "c:/mingw/include/winver.h"
	.byte	0x3
	.uleb128 0x32
	.uleb128 0x26
	.byte	0x1
	.uleb128 0x22
	.ascii "_WINVER_H \0"
	.byte	0x1
	.uleb128 0x25
	.ascii "VS_FILE_INFO RT_VERSION\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "VS_VERSION_INFO 1\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "VS_USER_DEFINED 100\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "VS_FFI_SIGNATURE 0xFEEF04BD\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "VS_FFI_STRUCVERSION 0x10000\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "VS_FFI_FILEFLAGSMASK 0x3F\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "VS_FF_DEBUG 1\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "VS_FF_PRERELEASE 2\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "VS_FF_PATCHED 4\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "VS_FF_PRIVATEBUILD 8\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "VS_FF_INFOINFERRED 16\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "VS_FF_SPECIALBUILD 32\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "VOS_UNKNOWN 0\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "VOS_DOS 0x10000\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "VOS_OS216 0x20000\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "VOS_OS232 0x30000\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "VOS_NT 0x40000\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "VOS__BASE 0\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "VOS__WINDOWS16 1\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "VOS__PM16 2\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "VOS__PM32 3\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "VOS__WINDOWS32 4\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "VOS_DOS_WINDOWS16 0x10001\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "VOS_DOS_WINDOWS32 0x10004\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "VOS_OS216_PM16 0x20002\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "VOS_OS232_PM32 0x30003\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "VOS_NT_WINDOWS32 0x40004\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "VFT_UNKNOWN 0\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "VFT_APP 1\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "VFT_DLL 2\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "VFT_DRV 3\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "VFT_FONT 4\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "VFT_VXD 5\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "VFT_STATIC_LIB 7\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "VFT2_UNKNOWN 0\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "VFT2_DRV_PRINTER 1\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "VFT2_DRV_KEYBOARD 2\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "VFT2_DRV_LANGUAGE 3\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "VFT2_DRV_DISPLAY 4\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "VFT2_DRV_MOUSE 5\0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "VFT2_DRV_NETWORK 6\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "VFT2_DRV_SYSTEM 7\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "VFT2_DRV_INSTALLABLE 8\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "VFT2_DRV_SOUND 9\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "VFT2_DRV_COMM 10\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "VFT2_DRV_INPUTMETHOD 11\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "VFT2_FONT_RASTER 1\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "VFT2_FONT_VECTOR 2\0"
	.byte	0x1
	.uleb128 0x55
	.ascii "VFT2_FONT_TRUETYPE 3\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "VFFF_ISSHAREDFILE 1\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "VFF_CURNEDEST 1\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "VFF_FILEINUSE 2\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "VFF_BUFFTOOSMALL 4\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "VIFF_FORCEINSTALL 1\0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "VIFF_DONTDELETEOLD 2\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "VIF_TEMPFILE 1\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "VIF_MISMATCH 2\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "VIF_SRCOLD 4\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "VIF_DIFFLANG 8\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "VIF_DIFFCODEPG 16\0"
	.byte	0x1
	.uleb128 0x61
	.ascii "VIF_DIFFTYPE 32\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "VIF_WRITEPROT 64\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "VIF_FILEINUSE 128\0"
	.byte	0x1
	.uleb128 0x64
	.ascii "VIF_OUTOFSPACE 256\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "VIF_ACCESSVIOLATION 512\0"
	.byte	0x1
	.uleb128 0x66
	.ascii "VIF_SHARINGVIOLATION 1024\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "VIF_CANNOTCREATE 2048\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "VIF_CANNOTDELETE 4096\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "VIF_CANNOTRENAME 8192\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "VIF_CANNOTDELETECUR 16384\0"
	.byte	0x1
	.uleb128 0x6b
	.ascii "VIF_OUTOFMEMORY 32768\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "VIF_CANNOTREADSRC 65536\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "VIF_CANNOTREADDST 0x20000\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "VIF_BUFFTOOSMALL 0x40000\0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "VerFindFile __AW_SUFFIXED__( VerFindFile )\0"
	.byte	0x1
	.uleb128 0x92
	.ascii "VerInstallFile __AW_SUFFIXED__( VerInstallFile )\0"
	.byte	0x1
	.uleb128 0x96
	.ascii "GetFileVersionInfoSize __AW_SUFFIXED__( GetFileVersionInfoSize )\0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "GetFileVersionInfo __AW_SUFFIXED__( GetFileVersionInfo )\0"
	.byte	0x1
	.uleb128 0xbf
	.ascii "VerLanguageName __AW_SUFFIXED__( VerLanguageName )\0"
	.byte	0x1
	.uleb128 0xc3
	.ascii "VerQueryValue __AW_SUFFIXED__( VerQueryValue )\0"
	.byte	0x4
	.file 39 "c:/mingw/include/winnetwk.h"
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x27
	.byte	0x1
	.uleb128 0x2
	.ascii "_WINNETWK_H \0"
	.byte	0x1
	.uleb128 0xa
	.ascii "WNNC_NET_MSNET 0x00010000\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "WNNC_NET_LANMAN 0x00020000\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "WNNC_NET_NETWARE 0x00030000\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "WNNC_NET_VINES 0x00040000\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "WNNC_NET_10NET 0x00050000\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "WNNC_NET_LOCUS 0x00060000\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "WNNC_NET_SUN_PC_NFS 0x00070000\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "WNNC_NET_LANSTEP 0x00080000\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "WNNC_NET_9TILES 0x00090000\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "WNNC_NET_LANTASTIC 0x000A0000\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "WNNC_NET_AS400 0x000B0000\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "WNNC_NET_FTP_NFS 0x000C0000\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "WNNC_NET_PATHWORKS 0x000D0000\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "WNNC_NET_LIFENET 0x000E0000\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "WNNC_NET_POWERLAN 0x000F0000\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "WNNC_NET_BWNFS 0x00100000\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "WNNC_NET_COGENT 0x00110000\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "WNNC_NET_FARALLON 0x00120000\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "WNNC_NET_APPLETALK 0x00130000\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "WNNC_NET_INTERGRAPH 0x00140000\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "WNNC_NET_SYMFONET 0x00150000\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "WNNC_NET_CLEARCASE 0x00160000\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "WNNC_NET_FRONTIER 0x00170000\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "WNNC_NET_BMC 0x00180000\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "WNNC_NET_DCE 0x00190000\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "WNNC_NET_AVID 0x001A0000\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "WNNC_NET_DOCUSPACE 0x001B0000\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "WNNC_NET_MANGOSOFT 0x001C0000\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "WNNC_NET_SERNET 0x001D0000\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "WNNC_NET_DECORB 0x00200000\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "WNNC_NET_PROTSTOR 0x00210000\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "WNNC_NET_FJ_REDIR 0x00220000\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "WNNC_NET_DISTINCT 0x00230000\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "WNNC_NET_TWINS 0x00240000\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "WNNC_NET_RDR2SAMPLE 0x00250000\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "WNNC_NET_CSC 0x00260000\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "WNNC_NET_3IN1 0x00270000\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "WNNC_NET_EXTENDNET 0x00290000\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "WNNC_NET_OBJECT_DIRE 0x00300000\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "WNNC_NET_MASFAX 0x00310000\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "WNNC_NET_HOB_NFS 0x00320000\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "WNNC_NET_SHIVA 0x00330000\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "WNNC_NET_IBMAL 0x00340000\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "WNNC_CRED_MANAGER 0xFFFF0000\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "RESOURCE_CONNECTED 1\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "RESOURCE_GLOBALNET 2\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "RESOURCE_REMEMBERED 3\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "RESOURCE_RECENT 4\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "RESOURCE_CONTEXT 5\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "RESOURCETYPE_ANY 0\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "RESOURCETYPE_DISK 1\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "RESOURCETYPE_PRINT 2\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "RESOURCETYPE_RESERVED 8\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "RESOURCETYPE_UNKNOWN 0xFFFFFFFF\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "RESOURCEUSAGE_CONNECTABLE 0x00000001\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "RESOURCEUSAGE_CONTAINER 0x00000002\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "RESOURCEUSAGE_NOLOCALDEVICE 0x00000004\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "RESOURCEUSAGE_SIBLING 0x00000008\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "RESOURCEUSAGE_ATTACHED 0x00000010\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "RESOURCEUSAGE_ALL (RESOURCEUSAGE_CONNECTABLE | RESOURCEUSAGE_CONTAINER | RESOURCEUSAGE_ATTACHED)\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "RESOURCEUSAGE_RESERVED 0x80000000\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "RESOURCEDISPLAYTYPE_GENERIC 0\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "RESOURCEDISPLAYTYPE_DOMAIN 1\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "RESOURCEDISPLAYTYPE_SERVER 2\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "RESOURCEDISPLAYTYPE_SHARE 3\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "RESOURCEDISPLAYTYPE_FILE 4\0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "RESOURCEDISPLAYTYPE_GROUP 5\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "RESOURCEDISPLAYTYPE_NETWORK 6\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "RESOURCEDISPLAYTYPE_ROOT 7\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "RESOURCEDISPLAYTYPE_SHAREADMIN 8\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "RESOURCEDISPLAYTYPE_DIRECTORY 9\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "RESOURCEDISPLAYTYPE_TREE 10\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "NETPROPERTY_PERSISTENT 1\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "CONNECT_UPDATE_PROFILE 1\0"
	.byte	0x1
	.uleb128 0x55
	.ascii "CONNECT_UPDATE_RECENT 2\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "CONNECT_TEMPORARY 4\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "CONNECT_INTERACTIVE 8\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "CONNECT_PROMPT 16\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "CONNECT_NEED_DRIVE 32\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "CONNECT_REFCOUNT 64\0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "CONNECT_REDIRECT 128\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "CONNECT_LOCALDRIVE 256\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "CONNECT_CURRENT_MEDIA 512\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "CONNDLG_RO_PATH 1\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "CONNDLG_CONN_POINT 2\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "CONNDLG_USE_MRU 4\0"
	.byte	0x1
	.uleb128 0x61
	.ascii "CONNDLG_HIDE_BOX 8\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "CONNDLG_PERSIST 16\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "CONNDLG_NOT_PERSIST 32\0"
	.byte	0x1
	.uleb128 0x64
	.ascii "DISC_UPDATE_PROFILE 1\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "DISC_NO_FORCE 64\0"
	.byte	0x1
	.uleb128 0x66
	.ascii "WNFMT_MULTILINE 1\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "WNFMT_ABBREVIATED 2\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "WNFMT_INENUM 16\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "WNFMT_CONNECTION 32\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "WN_SUCCESS NO_ERROR\0"
	.byte	0x1
	.uleb128 0x6b
	.ascii "WN_NO_ERROR NO_ERROR\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "WN_NOT_SUPPORTED ERROR_NOT_SUPPORTED\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "WN_CANCEL ERROR_CANCELLED\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "WN_RETRY ERROR_RETRY\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "WN_NET_ERROR ERROR_UNEXP_NET_ERR\0"
	.byte	0x1
	.uleb128 0x70
	.ascii "WN_MORE_DATA ERROR_MORE_DATA\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "WN_BAD_POINTER ERROR_INVALID_ADDRESS\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "WN_BAD_VALUE ERROR_INVALID_PARAMETER\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "WN_BAD_USER ERROR_BAD_USERNAME\0"
	.byte	0x1
	.uleb128 0x74
	.ascii "WN_BAD_PASSWORD ERROR_INVALID_PASSWORD\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "WN_ACCESS_DENIED ERROR_ACCESS_DENIED\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "WN_FUNCTION_BUSY ERROR_BUSY\0"
	.byte	0x1
	.uleb128 0x77
	.ascii "WN_WINDOWS_ERROR ERROR_UNEXP_NET_ERR\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "WN_OUT_OF_MEMORY ERROR_NOT_ENOUGH_MEMORY\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "WN_NO_NETWORK ERROR_NO_NETWORK\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "WN_EXTENDED_ERROR ERROR_EXTENDED_ERROR\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "WN_BAD_LEVEL ERROR_INVALID_LEVEL\0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "WN_BAD_HANDLE ERROR_INVALID_HANDLE\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "WN_NOT_INITIALIZING ERROR_ALREADY_INITIALIZED\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "WN_NO_MORE_DEVICES ERROR_NO_MORE_DEVICES\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "WN_NOT_CONNECTED ERROR_NOT_CONNECTED\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "WN_OPEN_FILES ERROR_OPEN_FILES\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "WN_DEVICE_IN_USE ERROR_DEVICE_IN_USE\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "WN_BAD_NETNAME ERROR_BAD_NET_NAME\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "WN_BAD_LOCALNAME ERROR_BAD_DEVICE\0"
	.byte	0x1
	.uleb128 0x84
	.ascii "WN_ALREADY_CONNECTED ERROR_ALREADY_ASSIGNED\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "WN_DEVICE_ERROR ERROR_GEN_FAILURE\0"
	.byte	0x1
	.uleb128 0x86
	.ascii "WN_CONNECTION_CLOSED ERROR_CONNECTION_UNAVAIL\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "WN_NO_NET_OR_BAD_PATH ERROR_NO_NET_OR_BAD_PATH\0"
	.byte	0x1
	.uleb128 0x88
	.ascii "WN_BAD_PROVIDER ERROR_BAD_PROVIDER\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "WN_CANNOT_OPEN_PROFILE ERROR_CANNOT_OPEN_PROFILE\0"
	.byte	0x1
	.uleb128 0x8a
	.ascii "WN_BAD_PROFILE ERROR_BAD_PROFILE\0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "WN_BAD_DEV_TYPE ERROR_BAD_DEV_TYPE\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "WN_DEVICE_ALREADY_REMEMBERED ERROR_DEVICE_ALREADY_REMEMBERED\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "WN_NO_MORE_ENTRIES ERROR_NO_MORE_ITEMS\0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "WN_NOT_CONTAINER ERROR_NOT_CONTAINER\0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "WN_NOT_AUTHENTICATED ERROR_NOT_AUTHENTICATED\0"
	.byte	0x1
	.uleb128 0x90
	.ascii "WN_NOT_LOGGED_ON ERROR_NOT_LOGGED_ON\0"
	.byte	0x1
	.uleb128 0x91
	.ascii "WN_NOT_VALIDATED ERROR_NO_LOGON_SERVERS\0"
	.byte	0x1
	.uleb128 0x92
	.ascii "UNIVERSAL_NAME_INFO_LEVEL 1\0"
	.byte	0x1
	.uleb128 0x93
	.ascii "REMOTE_NAME_INFO_LEVEL 2\0"
	.byte	0x1
	.uleb128 0x94
	.ascii "NETINFO_DLL16 1\0"
	.byte	0x1
	.uleb128 0x95
	.ascii "NETINFO_DISKRED 4\0"
	.byte	0x1
	.uleb128 0x96
	.ascii "NETINFO_PRINTERRED 8\0"
	.byte	0x1
	.uleb128 0x97
	.ascii "RP_LOGON 1\0"
	.byte	0x1
	.uleb128 0x98
	.ascii "RP_INIFILE 2\0"
	.byte	0x1
	.uleb128 0x99
	.ascii "PP_DISPLAYERRORS 1\0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "WNCON_FORNETCARD 1\0"
	.byte	0x1
	.uleb128 0x9b
	.ascii "WNCON_NOTROUTED 2\0"
	.byte	0x1
	.uleb128 0x9c
	.ascii "WNCON_SLOWLINK 4\0"
	.byte	0x1
	.uleb128 0x9d
	.ascii "WNCON_DYNAMIC 8\0"
	.byte	0x1
	.uleb128 0x13d
	.ascii "PFNGETPROFILEPATH PFNGETPROFILEPATHA\0"
	.byte	0x1
	.uleb128 0x13e
	.ascii "PFNRECONCILEPROFILE PFNRECONCILEPROFILEA\0"
	.byte	0x1
	.uleb128 0x13f
	.ascii "PFNPROCESSPOLICIES PFNPROCESSPOLICIESA\0"
	.byte	0x1
	.uleb128 0x145
	.ascii "WNetOpenEnum WNetOpenEnumA\0"
	.byte	0x1
	.uleb128 0x146
	.ascii "WNetEnumResource WNetEnumResourceA\0"
	.byte	0x1
	.uleb128 0x147
	.ascii "WNetGetResourceInformation WNetGetResourceInformationA\0"
	.byte	0x1
	.uleb128 0x148
	.ascii "WNetGetResourceParent WNetGetResourceParentA\0"
	.byte	0x1
	.uleb128 0x149
	.ascii "WNetGetUniversalName WNetGetUniversalNameA\0"
	.byte	0x1
	.uleb128 0x14a
	.ascii "WNetConnectionDialog1 WNetConnectionDialog1A\0"
	.byte	0x1
	.uleb128 0x14b
	.ascii "WNetDisconnectDialog1 WNetDisconnectDialog1A\0"
	.byte	0x1
	.uleb128 0x14c
	.ascii "WNetAddConnection2 WNetAddConnection2A\0"
	.byte	0x1
	.uleb128 0x14d
	.ascii "WNetAddConnection3 WNetAddConnection3A\0"
	.byte	0x1
	.uleb128 0x14e
	.ascii "WNetCancelConnection WNetCancelConnectionA\0"
	.byte	0x1
	.uleb128 0x14f
	.ascii "WNetCancelConnection2 WNetCancelConnection2A\0"
	.byte	0x1
	.uleb128 0x150
	.ascii "WNetGetConnection WNetGetConnectionA\0"
	.byte	0x1
	.uleb128 0x151
	.ascii "WNetUseConnection WNetUseConnectionA\0"
	.byte	0x1
	.uleb128 0x152
	.ascii "WNetSetConnection WNetSetConnectionA\0"
	.byte	0x1
	.uleb128 0x153
	.ascii "WNetAddConnection WNetAddConnectionA\0"
	.byte	0x1
	.uleb128 0x154
	.ascii "WNetGetUser WNetGetUserA\0"
	.byte	0x1
	.uleb128 0x155
	.ascii "WNetGetProviderName WNetGetProviderNameA\0"
	.byte	0x1
	.uleb128 0x156
	.ascii "WNetGetNetworkInformation WNetGetNetworkInformationA\0"
	.byte	0x1
	.uleb128 0x157
	.ascii "WNetGetLastError WNetGetLastErrorA\0"
	.byte	0x1
	.uleb128 0x158
	.ascii "MultinetGetConnectionPerformance MultinetGetConnectionPerformanceA\0"
	.byte	0x4
	.file 40 "c:/mingw/include/winreg.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x28
	.byte	0x1
	.uleb128 0x2
	.ascii "_WINREG_H \0"
	.byte	0x1
	.uleb128 0xe
	.ascii "HKEY_CLASSES_ROOT ((HKEY)0x80000000)\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "HKEY_CURRENT_USER ((HKEY)0x80000001)\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "HKEY_LOCAL_MACHINE ((HKEY)0x80000002)\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "HKEY_USERS ((HKEY)0x80000003)\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "HKEY_PERFORMANCE_DATA ((HKEY)0x80000004)\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "HKEY_CURRENT_CONFIG ((HKEY)0x80000005)\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "HKEY_DYN_DATA ((HKEY)0x80000006)\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "REG_OPTION_VOLATILE 1\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "REG_OPTION_NON_VOLATILE 0\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "REG_CREATED_NEW_KEY 1\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "REG_OPENED_EXISTING_KEY 2\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "REG_NONE 0\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "REG_SZ 1\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "REG_EXPAND_SZ 2\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "REG_BINARY 3\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "REG_DWORD_LITTLE_ENDIAN 4\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "REG_DWORD 4\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "REG_DWORD_BIG_ENDIAN 5\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "REG_LINK 6\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "REG_MULTI_SZ 7\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "REG_RESOURCE_LIST 8\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "REG_FULL_RESOURCE_DESCRIPTOR 9\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "REG_RESOURCE_REQUIREMENTS_LIST 10\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "REG_QWORD_LITTLE_ENDIAN 11\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "REG_QWORD 11\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "REG_NOTIFY_CHANGE_NAME 1\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "REG_NOTIFY_CHANGE_ATTRIBUTES 2\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "REG_NOTIFY_CHANGE_LAST_SET 4\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "REG_NOTIFY_CHANGE_SECURITY 8\0"
	.byte	0x1
	.uleb128 0x90
	.ascii "AbortSystemShutdown AbortSystemShutdownA\0"
	.byte	0x1
	.uleb128 0x91
	.ascii "InitiateSystemShutdown InitiateSystemShutdownA\0"
	.byte	0x1
	.uleb128 0x92
	.ascii "RegConnectRegistry RegConnectRegistryA\0"
	.byte	0x1
	.uleb128 0x93
	.ascii "RegCreateKey RegCreateKeyA\0"
	.byte	0x1
	.uleb128 0x94
	.ascii "RegCreateKeyEx RegCreateKeyExA\0"
	.byte	0x1
	.uleb128 0x95
	.ascii "RegDeleteKey RegDeleteKeyA\0"
	.byte	0x1
	.uleb128 0x99
	.ascii "RegDeleteValue RegDeleteValueA\0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "RegEnumKey RegEnumKeyA\0"
	.byte	0x1
	.uleb128 0x9b
	.ascii "RegEnumKeyEx RegEnumKeyExA\0"
	.byte	0x1
	.uleb128 0x9c
	.ascii "RegEnumValue RegEnumValueA\0"
	.byte	0x1
	.uleb128 0x9d
	.ascii "RegLoadKey RegLoadKeyA\0"
	.byte	0x1
	.uleb128 0x9e
	.ascii "RegOpenKey RegOpenKeyA\0"
	.byte	0x1
	.uleb128 0x9f
	.ascii "RegOpenKeyEx RegOpenKeyExA\0"
	.byte	0x1
	.uleb128 0xa0
	.ascii "RegQueryInfoKey RegQueryInfoKeyA\0"
	.byte	0x1
	.uleb128 0xa1
	.ascii "RegQueryMultipleValues RegQueryMultipleValuesA\0"
	.byte	0x1
	.uleb128 0xa2
	.ascii "RegQueryValue RegQueryValueA\0"
	.byte	0x1
	.uleb128 0xa3
	.ascii "RegQueryValueEx RegQueryValueExA\0"
	.byte	0x1
	.uleb128 0xa4
	.ascii "RegReplaceKey RegReplaceKeyA\0"
	.byte	0x1
	.uleb128 0xa5
	.ascii "RegRestoreKey RegRestoreKeyA\0"
	.byte	0x1
	.uleb128 0xa6
	.ascii "RegSaveKey RegSaveKeyA\0"
	.byte	0x1
	.uleb128 0xa7
	.ascii "RegSetValue RegSetValueA\0"
	.byte	0x1
	.uleb128 0xa8
	.ascii "RegSetValueEx RegSetValueExA\0"
	.byte	0x1
	.uleb128 0xa9
	.ascii "RegUnLoadKey RegUnLoadKeyA\0"
	.byte	0x4
	.file 41 "c:/mingw/include/winsvc.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x29
	.byte	0x1
	.uleb128 0x2
	.ascii "_WINSVC_H \0"
	.byte	0x1
	.uleb128 0xe
	.ascii "SERVICES_ACTIVE_DATABASEA \"ServicesActive\"\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "SERVICES_ACTIVE_DATABASEW L\"ServicesActive\"\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "SERVICES_FAILED_DATABASEA \"ServicesFailed\"\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "SERVICES_FAILED_DATABASEW L\"ServicesFailed\"\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "SC_GROUP_IDENTIFIERA '+'\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "SC_GROUP_IDENTIFIERW L'+'\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "SC_MANAGER_ALL_ACCESS 0xf003f\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "SC_MANAGER_CONNECT 1\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "SC_MANAGER_CREATE_SERVICE 2\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "SC_MANAGER_ENUMERATE_SERVICE 4\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "SC_MANAGER_LOCK 8\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "SC_MANAGER_QUERY_LOCK_STATUS 16\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "SC_MANAGER_MODIFY_BOOT_CONFIG 32\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "SERVICE_NO_CHANGE 0xffffffff\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "SERVICE_STOPPED 1\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "SERVICE_START_PENDING 2\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "SERVICE_STOP_PENDING 3\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "SERVICE_RUNNING 4\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "SERVICE_CONTINUE_PENDING 5\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "SERVICE_PAUSE_PENDING 6\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "SERVICE_PAUSED 7\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "SERVICE_ACCEPT_STOP 1\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "SERVICE_ACCEPT_PAUSE_CONTINUE 2\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "SERVICE_ACCEPT_SHUTDOWN 4\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "SERVICE_ACCEPT_PARAMCHANGE 8\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "SERVICE_ACCEPT_NETBINDCHANGE 16\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "SERVICE_ACCEPT_HARDWAREPROFILECHANGE 32\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "SERVICE_ACCEPT_POWEREVENT 64\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "SERVICE_ACCEPT_SESSIONCHANGE 128\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "SERVICE_CONTROL_STOP 1\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "SERVICE_CONTROL_PAUSE 2\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "SERVICE_CONTROL_CONTINUE 3\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "SERVICE_CONTROL_INTERROGATE 4\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "SERVICE_CONTROL_SHUTDOWN 5\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "SERVICE_CONTROL_PARAMCHANGE 6\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "SERVICE_CONTROL_NETBINDADD 7\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "SERVICE_CONTROL_NETBINDREMOVE 8\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "SERVICE_CONTROL_NETBINDENABLE 9\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "SERVICE_CONTROL_NETBINDDISABLE 10\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "SERVICE_CONTROL_DEVICEEVENT 11\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "SERVICE_CONTROL_HARDWAREPROFILECHANGE 12\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "SERVICE_CONTROL_POWEREVENT 13\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "SERVICE_CONTROL_SESSIONCHANGE 14\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "SERVICE_ACTIVE 1\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "SERVICE_INACTIVE 2\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "SERVICE_STATE_ALL 3\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "SERVICE_QUERY_CONFIG 1\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "SERVICE_CHANGE_CONFIG 2\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "SERVICE_QUERY_STATUS 4\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "SERVICE_ENUMERATE_DEPENDENTS 8\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "SERVICE_START 16\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "SERVICE_STOP 32\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "SERVICE_PAUSE_CONTINUE 64\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "SERVICE_INTERROGATE 128\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "SERVICE_USER_DEFINED_CONTROL 256\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "SERVICE_ALL_ACCESS (STANDARD_RIGHTS_REQUIRED|SERVICE_QUERY_CONFIG|SERVICE_CHANGE_CONFIG|SERVICE_QUERY_STATUS|SERVICE_ENUMERATE_DEPENDENTS|SERVICE_START|SERVICE_STOP|SERVICE_PAUSE_CONTINUE|SERVICE_INTERROGATE|SERVICE_USER_DEFINED_CONTROL)\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "SERVICE_RUNS_IN_SYSTEM_PROCESS 1\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "SERVICE_CONFIG_DESCRIPTION 1\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "SERVICE_CONFIG_FAILURE_ACTIONS 2\0"
	.byte	0x1
	.uleb128 0x121
	.ascii "SERVICES_ACTIVE_DATABASE SERVICES_ACTIVE_DATABASEA\0"
	.byte	0x1
	.uleb128 0x122
	.ascii "SERVICES_FAILED_DATABASE SERVICES_FAILED_DATABASEA\0"
	.byte	0x1
	.uleb128 0x123
	.ascii "SC_GROUP_IDENTIFIER SC_GROUP_IDENTIFIERA\0"
	.byte	0x1
	.uleb128 0x124
	.ascii "ChangeServiceConfig ChangeServiceConfigA\0"
	.byte	0x1
	.uleb128 0x125
	.ascii "ChangeServiceConfig2 ChangeServiceConfig2A\0"
	.byte	0x1
	.uleb128 0x126
	.ascii "CreateService CreateServiceA\0"
	.byte	0x1
	.uleb128 0x127
	.ascii "EnumDependentServices EnumDependentServicesA\0"
	.byte	0x1
	.uleb128 0x128
	.ascii "EnumServicesStatus EnumServicesStatusA\0"
	.byte	0x1
	.uleb128 0x129
	.ascii "EnumServicesStatusEx EnumServicesStatusExA\0"
	.byte	0x1
	.uleb128 0x12a
	.ascii "GetServiceDisplayName GetServiceDisplayNameA\0"
	.byte	0x1
	.uleb128 0x12b
	.ascii "GetServiceKeyName GetServiceKeyNameA\0"
	.byte	0x1
	.uleb128 0x12c
	.ascii "OpenSCManager OpenSCManagerA\0"
	.byte	0x1
	.uleb128 0x12d
	.ascii "OpenService OpenServiceA\0"
	.byte	0x1
	.uleb128 0x12e
	.ascii "QueryServiceConfig QueryServiceConfigA\0"
	.byte	0x1
	.uleb128 0x12f
	.ascii "QueryServiceConfig2 QueryServiceConfig2A\0"
	.byte	0x1
	.uleb128 0x130
	.ascii "QueryServiceLockStatus QueryServiceLockStatusA\0"
	.byte	0x1
	.uleb128 0x131
	.ascii "RegisterServiceCtrlHandler RegisterServiceCtrlHandlerA\0"
	.byte	0x1
	.uleb128 0x132
	.ascii "RegisterServiceCtrlHandlerEx RegisterServiceCtrlHandlerExA\0"
	.byte	0x1
	.uleb128 0x133
	.ascii "StartService StartServiceA\0"
	.byte	0x1
	.uleb128 0x134
	.ascii "StartServiceCtrlDispatcher StartServiceCtrlDispatcherA\0"
	.byte	0x4
	.file 42 "c:/mingw/include/cderr.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x2a
	.byte	0x1
	.uleb128 0x2
	.ascii "_CDERR_H \0"
	.byte	0x1
	.uleb128 0x7
	.ascii "CDERR_DIALOGFAILURE 0xFFFF\0"
	.byte	0x1
	.uleb128 0x8
	.ascii "CDERR_GENERALCODES 0x0000\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "CDERR_STRUCTSIZE 0x0001\0"
	.byte	0x1
	.uleb128 0xa
	.ascii "CDERR_INITIALIZATION 0x0002\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "CDERR_NOTEMPLATE 0x0003\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "CDERR_NOHINSTANCE 0x0004\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "CDERR_LOADSTRFAILURE 0x0005\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "CDERR_FINDRESFAILURE 0x0006\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "CDERR_LOADRESFAILURE 0x0007\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "CDERR_LOCKRESFAILURE 0x0008\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "CDERR_MEMALLOCFAILURE 0x0009\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "CDERR_MEMLOCKFAILURE 0x000A\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "CDERR_NOHOOK 0x000B\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "CDERR_REGISTERMSGFAIL 0x000C\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "PDERR_PRINTERCODES 0x1000\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "PDERR_SETUPFAILURE 0x1001\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "PDERR_PARSEFAILURE 0x1002\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "PDERR_RETDEFFAILURE 0x1003\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "PDERR_LOADDRVFAILURE 0x1004\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "PDERR_GETDEVMODEFAIL 0x1005\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "PDERR_INITFAILURE 0x1006\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "PDERR_NODEVICES 0x1007\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "PDERR_NODEFAULTPRN 0x1008\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "PDERR_DNDMMISMATCH 0x1009\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "PDERR_CREATEICFAILURE 0x100A\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "PDERR_PRINTERNOTFOUND 0x100B\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "PDERR_DEFAULTDIFFERENT 0x100C\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "CFERR_CHOOSEFONTCODES 0x2000\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "CFERR_NOFONTS 0x2001\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "CFERR_MAXLESSTHANMIN 0x2002\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "FNERR_FILENAMECODES 0x3000\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "FNERR_SUBCLASSFAILURE 0x3001\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "FNERR_INVALIDFILENAME 0x3002\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "FNERR_BUFFERTOOSMALL 0x3003\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "FRERR_FINDREPLACECODES 0x4000\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "FRERR_BUFFERLENGTHZERO 0x4001\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "CCERR_CHOOSECOLORCODES 0x5000\0"
	.byte	0x4
	.file 43 "c:/mingw/include/dde.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x2b
	.byte	0x1
	.uleb128 0x2
	.ascii "_DDE_H \0"
	.byte	0x1
	.uleb128 0xa
	.ascii "WM_DDE_FIRST 0x03E0\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "WM_DDE_INITIATE (WM_DDE_FIRST)\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "WM_DDE_TERMINATE (WM_DDE_FIRST+1)\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "WM_DDE_ADVISE (WM_DDE_FIRST+2)\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "WM_DDE_UNADVISE (WM_DDE_FIRST+3)\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "WM_DDE_ACK (WM_DDE_FIRST+4)\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "WM_DDE_DATA (WM_DDE_FIRST+5)\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "WM_DDE_REQUEST (WM_DDE_FIRST+6)\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "WM_DDE_POKE (WM_DDE_FIRST+7)\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "WM_DDE_EXECUTE (WM_DDE_FIRST+8)\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "WM_DDE_LAST (WM_DDE_FIRST+8)\0"
	.byte	0x4
	.file 44 "c:/mingw/include/ddeml.h"
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0x2c
	.byte	0x1
	.uleb128 0x2
	.ascii "_DDEML_H \0"
	.byte	0x1
	.uleb128 0xb
	.ascii "EXPENTRY CALLBACK\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "CP_WINANSI 1004\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "CP_WINUNICODE 1200\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "XTYPF_NOBLOCK 2\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "XTYPF_NODATA 4\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "XTYPF_ACKREQ 8\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "XCLASS_MASK 0xFC00\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "XCLASS_BOOL 0x1000\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "XCLASS_DATA 0x2000\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "XCLASS_FLAGS 0x4000\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "XCLASS_NOTIFICATION 0x8000\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "XST_NULL 0\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "XST_INCOMPLETE 1\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "XST_CONNECTED 2\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "XST_INIT1 3\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "XST_INIT2 4\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "XST_REQSENT 5\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "XST_DATARCVD 6\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "XST_POKESENT 7\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "XST_POKEACKRCVD 8\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "XST_EXECSENT 9\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "XST_EXECACKRCVD 10\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "XST_ADVSENT 11\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "XST_UNADVSENT 12\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "XST_ADVACKRCVD 13\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "XST_UNADVACKRCVD 14\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "XST_ADVDATASENT 15\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "XST_ADVDATAACKRCVD 16\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "XTYP_ERROR (XCLASS_NOTIFICATION|XTYPF_NOBLOCK)\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "XTYP_ADVDATA (16|XCLASS_FLAGS)\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "XTYP_ADVREQ (32|XCLASS_DATA|XTYPF_NOBLOCK)\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "XTYP_ADVSTART (0x30|XCLASS_BOOL)\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "XTYP_ADVSTOP (0x0040|XCLASS_NOTIFICATION)\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "XTYP_EXECUTE (0x0050|XCLASS_FLAGS)\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "XTYP_CONNECT (0x0060|XCLASS_BOOL|XTYPF_NOBLOCK)\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "XTYP_CONNECT_CONFIRM (0x0070|XCLASS_NOTIFICATION|XTYPF_NOBLOCK)\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "XTYP_XACT_COMPLETE (0x0080|XCLASS_NOTIFICATION)\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "XTYP_POKE (0x0090|XCLASS_FLAGS)\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "XTYP_REGISTER (0x00A0|XCLASS_NOTIFICATION|XTYPF_NOBLOCK)\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "XTYP_REQUEST (0x00B0|XCLASS_DATA)\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "XTYP_DISCONNECT (0x00C0|XCLASS_NOTIFICATION|XTYPF_NOBLOCK)\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "XTYP_UNREGISTER (0x00D0|XCLASS_NOTIFICATION|XTYPF_NOBLOCK)\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "XTYP_WILDCONNECT (0x00E0|XCLASS_DATA|XTYPF_NOBLOCK)\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "XTYP_MASK 0xF0\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "XTYP_SHIFT 4\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "TIMEOUT_ASYNC 0xFFFFFFFF\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "QID_SYNC 0xFFFFFFFF\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "ST_CONNECTED 1\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "ST_ADVISE 2\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "ST_ISLOCAL 4\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "ST_BLOCKED 8\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "ST_CLIENT 16\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "ST_TERMINATED 32\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "ST_INLIST 64\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "ST_BLOCKNEXT 128\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "ST_ISSELF 256\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "CADV_LATEACK 0xFFFF\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "DMLERR_NO_ERROR 0\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "DMLERR_FIRST 0x4000\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "DMLERR_ADVACKTIMEOUT 0x4000\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "DMLERR_BUSY 0x4001\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "DMLERR_DATAACKTIMEOUT 0x4002\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "DMLERR_DLL_NOT_INITIALIZED 0x4003\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "DMLERR_DLL_USAGE 0x4004\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "DMLERR_EXECACKTIMEOUT 0x4005\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "DMLERR_INVALIDPARAMETER 0x4006\0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "DMLERR_LOW_MEMORY 0x4007\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "DMLERR_MEMORY_ERROR 0x4008\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "DMLERR_NOTPROCESSED 0x4009\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "DMLERR_NO_CONV_ESTABLISHED 0x400a\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "DMLERR_POKEACKTIMEOUT 0x400b\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "DMLERR_POSTMSG_FAILED 0x400c\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "DMLERR_REENTRANCY 0x400d\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "DMLERR_SERVER_DIED 0x400e\0"
	.byte	0x1
	.uleb128 0x55
	.ascii "DMLERR_SYS_ERROR 0x400f\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "DMLERR_UNADVACKTIMEOUT 0x4010\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "DMLERR_UNFOUND_QUEUE_ID 0x4011\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "DMLERR_LAST 0x4011\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "DDE_FACK 0x8000\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "DDE_FBUSY 0x4000\0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "DDE_FDEFERUPD 0x4000\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "DDE_FACKREQ 0x8000\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "DDE_FRELEASE 0x2000\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "DDE_FREQUESTED 0x1000\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "DDE_FAPPSTATUS 0x00ff\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "DDE_FNOTPROCESSED 0\0"
	.byte	0x1
	.uleb128 0x61
	.ascii "DDE_FACKRESERVED (~(DDE_FACK|DDE_FBUSY|DDE_FAPPSTATUS))\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "DDE_FADVRESERVED (~(DDE_FACKREQ|DDE_FDEFERUPD))\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "DDE_FDATRESERVED (~(DDE_FACKREQ|DDE_FRELEASE|DDE_FREQUESTED))\0"
	.byte	0x1
	.uleb128 0x64
	.ascii "DDE_FPOKRESERVED (~DDE_FRELEASE)\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "MSGF_DDEMGR 0x8001\0"
	.byte	0x1
	.uleb128 0x66
	.ascii "CBR_BLOCK ((HDDEDATA)0xffffffff)\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "CBF_FAIL_SELFCONNECTIONS 0x1000\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "CBF_FAIL_CONNECTIONS 0x2000\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "CBF_FAIL_ADVISES 0x4000\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "CBF_FAIL_EXECUTES 0x8000\0"
	.byte	0x1
	.uleb128 0x6b
	.ascii "CBF_FAIL_POKES 0x10000\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "CBF_FAIL_REQUESTS 0x20000\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "CBF_FAIL_ALLSVRXACTIONS 0x3f000\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "CBF_SKIP_CONNECT_CONFIRMS 0x40000\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "CBF_SKIP_REGISTRATIONS 0x80000\0"
	.byte	0x1
	.uleb128 0x70
	.ascii "CBF_SKIP_UNREGISTRATIONS 0x100000\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "CBF_SKIP_DISCONNECTS 0x200000\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "CBF_SKIP_ALLNOTIFICATIONS 0x3c0000\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "APPCMD_CLIENTONLY 0x10L\0"
	.byte	0x1
	.uleb128 0x74
	.ascii "APPCMD_FILTERINITS 0x20L\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "APPCMD_MASK 0xFF0L\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "APPCLASS_STANDARD 0\0"
	.byte	0x1
	.uleb128 0x77
	.ascii "APPCLASS_MASK 0xFL\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "EC_ENABLEALL 0\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "EC_ENABLEONE ST_BLOCKNEXT\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "EC_DISABLE ST_BLOCKED\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "EC_QUERYWAITING 2\0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "DNS_REGISTER 1\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "DNS_UNREGISTER 2\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "DNS_FILTERON 4\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "DNS_FILTEROFF 8\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "HDATA_APPOWNED 1\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "MAX_MONITORS 4\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "APPCLASS_MONITOR 1L\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "XTYP_MONITOR (XCLASS_NOTIFICATION|XTYPF_NOBLOCK|0xF0)\0"
	.byte	0x1
	.uleb128 0x84
	.ascii "MF_HSZ_INFO 0x1000000\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "MF_SENDMSGS 0x2000000\0"
	.byte	0x1
	.uleb128 0x86
	.ascii "MF_POSTMSGS 0x4000000\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "MF_CALLBACKS 0x8000000\0"
	.byte	0x1
	.uleb128 0x88
	.ascii "MF_ERRORS 0x10000000\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "MF_LINKS 0x20000000\0"
	.byte	0x1
	.uleb128 0x8a
	.ascii "MF_CONV 0x40000000\0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "MF_MASK 0xFF000000\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "MH_CREATE 1\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "MH_KEEP 2\0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "MH_DELETE 3\0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "MH_CLEANUP 4\0"
	.byte	0x1
	.uleb128 0x12b
	.ascii "SZDDESYS_TOPIC \"System\"\0"
	.byte	0x1
	.uleb128 0x12c
	.ascii "SZDDESYS_ITEM_TOPICS \"Topics\"\0"
	.byte	0x1
	.uleb128 0x12d
	.ascii "SZDDESYS_ITEM_SYSITEMS \"SysItems\"\0"
	.byte	0x1
	.uleb128 0x12e
	.ascii "SZDDESYS_ITEM_RTNMSG \"ReturnMessage\"\0"
	.byte	0x1
	.uleb128 0x12f
	.ascii "SZDDESYS_ITEM_STATUS \"Status\"\0"
	.byte	0x1
	.uleb128 0x130
	.ascii "SZDDESYS_ITEM_FORMATS \"Formats\"\0"
	.byte	0x1
	.uleb128 0x131
	.ascii "SZDDESYS_ITEM_HELP \"Help\"\0"
	.byte	0x1
	.uleb128 0x132
	.ascii "SZDDE_ITEM_ITEMLIST \"TopicItemList\"\0"
	.byte	0x1
	.uleb128 0x133
	.ascii "DdeCreateStringHandle DdeCreateStringHandleA\0"
	.byte	0x1
	.uleb128 0x134
	.ascii "DdeInitialize DdeInitializeA\0"
	.byte	0x1
	.uleb128 0x135
	.ascii "DdeQueryString DdeQueryStringA\0"
	.byte	0x4
	.file 45 "c:/mingw/include/dlgs.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x2d
	.byte	0x1
	.uleb128 0x2
	.ascii "_DLGS_H \0"
	.byte	0x1
	.uleb128 0xa
	.ascii "FILEOPENORD 1536\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "MULTIFILEOPENORD 1537\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "PRINTDLGORD 1538\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "PRNSETUPDLGORD 1539\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "FINDDLGORD 1540\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "REPLACEDLGORD 1541\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "FONTDLGORD 1542\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "FORMATDLGORD31 1543\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "FORMATDLGORD30 1544\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "PAGESETUPDLGORD 1546\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "ctlFirst 0x400\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "ctlLast 0x4ff\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "chx1 0x410\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "chx2 0x411\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "chx3 0x412\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "chx4 0x413\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "chx5 0x414\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "chx6 0x415\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "chx7 0x416\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "chx8 0x417\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "chx9 0x418\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "chx10 0x419\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "chx11 0x41a\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "chx12 0x41b\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "chx13 0x41c\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "chx14 0x41d\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "chx15 0x41e\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "chx16 0x41f\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "cmb1 0x470\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "cmb2 0x471\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "cmb3 0x472\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "cmb4 0x473\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "cmb5 0x474\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "cmb6 0x475\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "cmb7 0x476\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "cmb8 0x477\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "cmb9 0x478\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "cmb10 0x479\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "cmb11 0x47a\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "cmb12 0x47b\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "cmb13 0x47c\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "cmb14 0x47d\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "cmb15 0x47e\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "cmb16 0x47f\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "edt1 0x480\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "edt2 0x481\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "edt3 0x482\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "edt4 0x483\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "edt5 0x484\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "edt6 0x485\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "edt7 0x486\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "edt8 0x487\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "edt9 0x488\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "edt10 0x489\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "edt11 0x48a\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "edt12 0x48b\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "edt13 0x48c\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "edt14 0x48d\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "edt15 0x48e\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "edt16 0x48f\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "frm1 0x434\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "frm2 0x435\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "frm3 0x436\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "frm4 0x437\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "grp1 0x430\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "grp2 0x431\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "grp3 0x432\0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "grp4 0x433\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "ico1 0x43c\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "ico2 0x43d\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "ico3 0x43e\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "ico4 0x43f\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "lst1 0x460\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "lst2 0x461\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "lst3 0x462\0"
	.byte	0x1
	.uleb128 0x55
	.ascii "lst4 0x463\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "lst5 0x464\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "lst6 0x465\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "lst7 0x466\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "lst8 0x467\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "lst9 0x468\0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "lst10 0x469\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "lst11 0x46a\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "lst12 0x46b\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "lst13 0x46c\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "lst14 0x46d\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "lst15 0x46e\0"
	.byte	0x1
	.uleb128 0x61
	.ascii "lst16 0x46f\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "psh1 0x400\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "psh2 0x401\0"
	.byte	0x1
	.uleb128 0x64
	.ascii "psh3 0x402\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "psh4 0x403\0"
	.byte	0x1
	.uleb128 0x66
	.ascii "psh5 0x404\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "psh6 0x405\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "psh7 0x406\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "psh8 0x407\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "psh9 0x408\0"
	.byte	0x1
	.uleb128 0x6b
	.ascii "psh10 0x409\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "psh11 0x40a\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "psh12 0x40b\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "psh13 0x40c\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "psh14 0x40d\0"
	.byte	0x1
	.uleb128 0x70
	.ascii "psh15 0x40e\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "pshHelp 0x40e\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "psh16 0x40f\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "rad1 0x420\0"
	.byte	0x1
	.uleb128 0x74
	.ascii "rad2 0x421\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "rad3 0x422\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "rad4 0x423\0"
	.byte	0x1
	.uleb128 0x77
	.ascii "rad5 0x424\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "rad6 0x425\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "rad7 0x426\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "rad8 0x427\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "rad9 0x428\0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "rad10 0x429\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "rad11 0x42a\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "rad12 0x42b\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "rad13 0x42c\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "rad14 0x42d\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "rad15 0x42e\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "rad16 0x42f\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "rct1 0x438\0"
	.byte	0x1
	.uleb128 0x84
	.ascii "rct2 0x439\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "rct3 0x43a\0"
	.byte	0x1
	.uleb128 0x86
	.ascii "rct4 0x43b\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "scr1 0x490\0"
	.byte	0x1
	.uleb128 0x88
	.ascii "scr2 0x491\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "scr3 0x492\0"
	.byte	0x1
	.uleb128 0x8a
	.ascii "scr4 0x493\0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "scr5 0x494\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "scr6 0x495\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "scr7 0x496\0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "scr8 0x497\0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "stc1 0x440\0"
	.byte	0x1
	.uleb128 0x90
	.ascii "stc2 0x441\0"
	.byte	0x1
	.uleb128 0x91
	.ascii "stc3 0x442\0"
	.byte	0x1
	.uleb128 0x92
	.ascii "stc4 0x443\0"
	.byte	0x1
	.uleb128 0x93
	.ascii "stc5 0x444\0"
	.byte	0x1
	.uleb128 0x94
	.ascii "stc6 0x445\0"
	.byte	0x1
	.uleb128 0x95
	.ascii "stc7 0x446\0"
	.byte	0x1
	.uleb128 0x96
	.ascii "stc8 0x447\0"
	.byte	0x1
	.uleb128 0x97
	.ascii "stc9 0x448\0"
	.byte	0x1
	.uleb128 0x98
	.ascii "stc10 0x449\0"
	.byte	0x1
	.uleb128 0x99
	.ascii "stc11 0x44a\0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "stc12 0x44b\0"
	.byte	0x1
	.uleb128 0x9b
	.ascii "stc13 0x44c\0"
	.byte	0x1
	.uleb128 0x9c
	.ascii "stc14 0x44d\0"
	.byte	0x1
	.uleb128 0x9d
	.ascii "stc15 0x44e\0"
	.byte	0x1
	.uleb128 0x9e
	.ascii "stc16 0x44f\0"
	.byte	0x1
	.uleb128 0x9f
	.ascii "stc17 0x450\0"
	.byte	0x1
	.uleb128 0xa0
	.ascii "stc18 0x451\0"
	.byte	0x1
	.uleb128 0xa1
	.ascii "stc19 0x452\0"
	.byte	0x1
	.uleb128 0xa2
	.ascii "stc20 0x453\0"
	.byte	0x1
	.uleb128 0xa3
	.ascii "stc21 0x454\0"
	.byte	0x1
	.uleb128 0xa4
	.ascii "stc22 0x455\0"
	.byte	0x1
	.uleb128 0xa5
	.ascii "stc23 0x456\0"
	.byte	0x1
	.uleb128 0xa6
	.ascii "stc24 0x457\0"
	.byte	0x1
	.uleb128 0xa7
	.ascii "stc25 0x458\0"
	.byte	0x1
	.uleb128 0xa8
	.ascii "stc26 0x459\0"
	.byte	0x1
	.uleb128 0xa9
	.ascii "stc27 0x45a\0"
	.byte	0x1
	.uleb128 0xaa
	.ascii "stc28 0x45b\0"
	.byte	0x1
	.uleb128 0xab
	.ascii "stc29 0x45c\0"
	.byte	0x1
	.uleb128 0xac
	.ascii "stc30 0x45d\0"
	.byte	0x1
	.uleb128 0xad
	.ascii "stc31 0x45e\0"
	.byte	0x1
	.uleb128 0xae
	.ascii "stc32 0x45f\0"
	.byte	0x4
	.file 46 "c:/mingw/include/imm.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x2
	.ascii "_IMM_H \0"
	.byte	0x1
	.uleb128 0xa
	.ascii "WM_CONVERTREQUESTEX 0x108\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "WM_IME_STARTCOMPOSITION 0x10D\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "WM_IME_ENDCOMPOSITION 0x10E\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "WM_IME_COMPOSITION 0x10F\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "WM_IME_KEYLAST 0x10F\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "WM_IME_SETCONTEXT 0x281\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "WM_IME_NOTIFY 0x282\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "WM_IME_CONTROL 0x283\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "WM_IME_COMPOSITIONFULL 0x284\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "WM_IME_SELECT 0x285\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "WM_IME_CHAR 0x286\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "WM_IME_KEYDOWN 0x290\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "WM_IME_KEYUP 0x291\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "WM_IME_REQUEST 0x0288\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "IMC_GETCANDIDATEPOS 7\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "IMC_SETCANDIDATEPOS 8\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "IMC_GETCOMPOSITIONFONT 9\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "IMC_SETCOMPOSITIONFONT 10\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "IMC_GETCOMPOSITIONWINDOW 11\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "IMC_SETCOMPOSITIONWINDOW 12\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "IMC_GETSTATUSWINDOWPOS 15\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "IMC_SETSTATUSWINDOWPOS 16\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "IMC_CLOSESTATUSWINDOW 0x21\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "IMC_OPENSTATUSWINDOW 0x22\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "IMN_CLOSESTATUSWINDOW 1\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "IMN_OPENSTATUSWINDOW 2\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "IMN_CHANGECANDIDATE 3\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "IMN_CLOSECANDIDATE 4\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "IMN_OPENCANDIDATE 5\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "IMN_SETCONVERSIONMODE 6\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "IMN_SETSENTENCEMODE 7\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "IMN_SETOPENSTATUS 8\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "IMN_SETCANDIDATEPOS 9\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "IMN_SETCOMPOSITIONFONT 10\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "IMN_SETCOMPOSITIONWINDOW 11\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "IMN_SETSTATUSWINDOWPOS 12\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "IMN_GUIDELINE 13\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "IMN_PRIVATE 14\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "NI_OPENCANDIDATE 16\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "NI_CLOSECANDIDATE 17\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "NI_SELECTCANDIDATESTR 18\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "NI_CHANGECANDIDATELIST 19\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "NI_FINALIZECONVERSIONRESULT 20\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "NI_COMPOSITIONSTR 21\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "NI_SETCANDIDATE_PAGESTART 22\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "NI_SETCANDIDATE_PAGESIZE 23\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "NI_IMEMENUSELECTED 24\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "ISC_SHOWUICANDIDATEWINDOW 1\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "ISC_SHOWUICOMPOSITIONWINDOW 0x80000000\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "ISC_SHOWUIGUIDELINE 0x40000000\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "ISC_SHOWUIALLCANDIDATEWINDOW 15\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "ISC_SHOWUIALL 0xC000000F\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "CPS_COMPLETE 1\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "CPS_CONVERT 2\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "CPS_REVERT 3\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "CPS_CANCEL 4\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "IME_CHOTKEY_IME_NONIME_TOGGLE 16\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "IME_CHOTKEY_SHAPE_TOGGLE 17\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "IME_CHOTKEY_SYMBOL_TOGGLE 18\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "IME_JHOTKEY_CLOSE_OPEN 0x30\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "IME_KHOTKEY_SHAPE_TOGGLE 0x50\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "IME_KHOTKEY_HANJACONVERT 0x51\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "IME_KHOTKEY_ENGLISH 0x52\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "IME_THOTKEY_IME_NONIME_TOGGLE 0x70\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "IME_THOTKEY_SHAPE_TOGGLE 0x71\0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "IME_THOTKEY_SYMBOL_TOGGLE 0x72\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "IME_HOTKEY_DSWITCH_FIRST 256\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "IME_HOTKEY_DSWITCH_LAST 0x11F\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "IME_ITHOTKEY_RESEND_RESULTSTR 512\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "IME_ITHOTKEY_PREVIOUS_COMPOSITION 513\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "IME_ITHOTKEY_UISTYLE_TOGGLE 514\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "GCS_COMPREADSTR 1\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "GCS_COMPREADATTR 2\0"
	.byte	0x1
	.uleb128 0x55
	.ascii "GCS_COMPREADCLAUSE 4\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "GCS_COMPSTR 8\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "GCS_COMPATTR 16\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "GCS_COMPCLAUSE 32\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "GCS_CURSORPOS 128\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "GCS_DELTASTART 256\0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "GCS_RESULTREADSTR 512\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "GCS_RESULTREADCLAUSE 1024\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "GCS_RESULTSTR 2048\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "GCS_RESULTCLAUSE 4096\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "CS_INSERTCHAR 0x2000\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "CS_NOMOVECARET 0x4000\0"
	.byte	0x1
	.uleb128 0x61
	.ascii "IMEVER_0310 0x3000A\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "IMEVER_0400 0x40000\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "IME_PROP_AT_CARET 0x10000\0"
	.byte	0x1
	.uleb128 0x64
	.ascii "IME_PROP_SPECIAL_UI 0x20000\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "IME_PROP_CANDLIST_START_FROM_1 0x40000\0"
	.byte	0x1
	.uleb128 0x66
	.ascii "IME_PROP_UNICODE 0x80000\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "UI_CAP_2700 1\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "UI_CAP_ROT90 2\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "UI_CAP_ROTANY 4\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "SCS_CAP_COMPSTR 1\0"
	.byte	0x1
	.uleb128 0x6b
	.ascii "SCS_CAP_MAKEREAD 2\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "SELECT_CAP_CONVERSION 1\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "SELECT_CAP_SENTENCE 2\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "GGL_LEVEL 1\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "GGL_INDEX 2\0"
	.byte	0x1
	.uleb128 0x70
	.ascii "GGL_STRING 3\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "GGL_PRIVATE 4\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "GL_LEVEL_NOGUIDELINE 0\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "GL_LEVEL_FATAL 1\0"
	.byte	0x1
	.uleb128 0x74
	.ascii "GL_LEVEL_ERROR 2\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "GL_LEVEL_WARNING 3\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "GL_LEVEL_INFORMATION 4\0"
	.byte	0x1
	.uleb128 0x77
	.ascii "GL_ID_UNKNOWN 0\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "GL_ID_NOMODULE 1\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "GL_ID_NODICTIONARY 16\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "GL_ID_CANNOTSAVE 17\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "GL_ID_NOCONVERT 32\0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "GL_ID_TYPINGERROR 33\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "GL_ID_TOOMANYSTROKE 34\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "GL_ID_READINGCONFLICT 35\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "GL_ID_INPUTREADING 36\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "GL_ID_INPUTRADICAL 37\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "GL_ID_INPUTCODE 38\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "GL_ID_INPUTSYMBOL 39\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "GL_ID_CHOOSECANDIDATE 40\0"
	.byte	0x1
	.uleb128 0x84
	.ascii "GL_ID_REVERSECONVERSION 41\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "GL_ID_PRIVATE_FIRST 0x8000\0"
	.byte	0x1
	.uleb128 0x86
	.ascii "GL_ID_PRIVATE_LAST 0xFFFF\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "IGP_GETIMEVERSION (DWORD)(-4)\0"
	.byte	0x1
	.uleb128 0x88
	.ascii "IGP_PROPERTY 4\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "IGP_CONVERSION 8\0"
	.byte	0x1
	.uleb128 0x8a
	.ascii "IGP_SENTENCE 12\0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "IGP_UI 16\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "IGP_SETCOMPSTR 0x14\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "IGP_SELECT 0x18\0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "SCS_SETSTR (GCS_COMPREADSTR|GCS_COMPSTR)\0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "SCS_CHANGEATTR (GCS_COMPREADATTR|GCS_COMPATTR)\0"
	.byte	0x1
	.uleb128 0x90
	.ascii "SCS_CHANGECLAUSE (GCS_COMPREADCLAUSE|GCS_COMPCLAUSE)\0"
	.byte	0x1
	.uleb128 0x91
	.ascii "ATTR_INPUT 0\0"
	.byte	0x1
	.uleb128 0x92
	.ascii "ATTR_TARGET_CONVERTED 1\0"
	.byte	0x1
	.uleb128 0x93
	.ascii "ATTR_CONVERTED 2\0"
	.byte	0x1
	.uleb128 0x94
	.ascii "ATTR_TARGET_NOTCONVERTED 3\0"
	.byte	0x1
	.uleb128 0x95
	.ascii "ATTR_INPUT_ERROR 4\0"
	.byte	0x1
	.uleb128 0x96
	.ascii "ATTR_FIXEDCONVERTED 5\0"
	.byte	0x1
	.uleb128 0x97
	.ascii "CFS_DEFAULT 0\0"
	.byte	0x1
	.uleb128 0x98
	.ascii "CFS_RECT 1\0"
	.byte	0x1
	.uleb128 0x99
	.ascii "CFS_POINT 2\0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "CFS_SCREEN 4\0"
	.byte	0x1
	.uleb128 0x9b
	.ascii "CFS_FORCE_POSITION 32\0"
	.byte	0x1
	.uleb128 0x9c
	.ascii "CFS_CANDIDATEPOS 64\0"
	.byte	0x1
	.uleb128 0x9d
	.ascii "CFS_EXCLUDE 128\0"
	.byte	0x1
	.uleb128 0x9e
	.ascii "GCL_CONVERSION 1\0"
	.byte	0x1
	.uleb128 0x9f
	.ascii "GCL_REVERSECONVERSION 2\0"
	.byte	0x1
	.uleb128 0xa0
	.ascii "GCL_REVERSE_LENGTH 3\0"
	.byte	0x1
	.uleb128 0xa1
	.ascii "IME_CMODE_ALPHANUMERIC 0\0"
	.byte	0x1
	.uleb128 0xa2
	.ascii "IME_CMODE_NATIVE 1\0"
	.byte	0x1
	.uleb128 0xa3
	.ascii "IME_CMODE_CHINESE IME_CMODE_NATIVE\0"
	.byte	0x1
	.uleb128 0xa4
	.ascii "IME_CMODE_HANGEUL IME_CMODE_NATIVE\0"
	.byte	0x1
	.uleb128 0xa5
	.ascii "IME_CMODE_HANGUL IME_CMODE_NATIVE\0"
	.byte	0x1
	.uleb128 0xa6
	.ascii "IME_CMODE_JAPANESE IME_CMODE_NATIVE\0"
	.byte	0x1
	.uleb128 0xa7
	.ascii "IME_CMODE_KATAKANA 2\0"
	.byte	0x1
	.uleb128 0xa8
	.ascii "IME_CMODE_LANGUAGE 3\0"
	.byte	0x1
	.uleb128 0xa9
	.ascii "IME_CMODE_FULLSHAPE 8\0"
	.byte	0x1
	.uleb128 0xaa
	.ascii "IME_CMODE_ROMAN 16\0"
	.byte	0x1
	.uleb128 0xab
	.ascii "IME_CMODE_CHARCODE 32\0"
	.byte	0x1
	.uleb128 0xac
	.ascii "IME_CMODE_HANJACONVERT 64\0"
	.byte	0x1
	.uleb128 0xad
	.ascii "IME_CMODE_SOFTKBD 128\0"
	.byte	0x1
	.uleb128 0xae
	.ascii "IME_CMODE_NOCONVERSION 256\0"
	.byte	0x1
	.uleb128 0xaf
	.ascii "IME_CMODE_EUDC 512\0"
	.byte	0x1
	.uleb128 0xb0
	.ascii "IME_CMODE_SYMBOL 1024\0"
	.byte	0x1
	.uleb128 0xb1
	.ascii "IME_CMODE_FIXED 2048\0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "IME_SMODE_NONE 0\0"
	.byte	0x1
	.uleb128 0xb3
	.ascii "IME_SMODE_PLAURALCLAUSE 1\0"
	.byte	0x1
	.uleb128 0xb4
	.ascii "IME_SMODE_SINGLECONVERT 2\0"
	.byte	0x1
	.uleb128 0xb5
	.ascii "IME_SMODE_AUTOMATIC 4\0"
	.byte	0x1
	.uleb128 0xb6
	.ascii "IME_SMODE_PHRASEPREDICT 8\0"
	.byte	0x1
	.uleb128 0xb7
	.ascii "IME_CAND_UNKNOWN 0\0"
	.byte	0x1
	.uleb128 0xb8
	.ascii "IME_CAND_READ 1\0"
	.byte	0x1
	.uleb128 0xb9
	.ascii "IME_CAND_CODE 2\0"
	.byte	0x1
	.uleb128 0xba
	.ascii "IME_CAND_MEANING 3\0"
	.byte	0x1
	.uleb128 0xbb
	.ascii "IME_CAND_RADICAL 4\0"
	.byte	0x1
	.uleb128 0xbc
	.ascii "IME_CAND_STROKE 5\0"
	.byte	0x1
	.uleb128 0xbd
	.ascii "IMM_ERROR_NODATA (-1)\0"
	.byte	0x1
	.uleb128 0xbe
	.ascii "IMM_ERROR_GENERAL (-2)\0"
	.byte	0x1
	.uleb128 0xbf
	.ascii "IME_CONFIG_GENERAL 1\0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "IME_CONFIG_REGISTERWORD 2\0"
	.byte	0x1
	.uleb128 0xc1
	.ascii "IME_CONFIG_SELECTDICTIONARY 3\0"
	.byte	0x1
	.uleb128 0xc2
	.ascii "IME_ESC_QUERY_SUPPORT 3\0"
	.byte	0x1
	.uleb128 0xc3
	.ascii "IME_ESC_RESERVED_FIRST 4\0"
	.byte	0x1
	.uleb128 0xc4
	.ascii "IME_ESC_RESERVED_LAST 0x7FF\0"
	.byte	0x1
	.uleb128 0xc5
	.ascii "IME_ESC_PRIVATE_FIRST 0x800\0"
	.byte	0x1
	.uleb128 0xc6
	.ascii "IME_ESC_PRIVATE_LAST 0xFFF\0"
	.byte	0x1
	.uleb128 0xc7
	.ascii "IME_ESC_SEQUENCE_TO_INTERNAL 0x1001\0"
	.byte	0x1
	.uleb128 0xc8
	.ascii "IME_ESC_GET_EUDC_DICTIONARY 0x1003\0"
	.byte	0x1
	.uleb128 0xc9
	.ascii "IME_ESC_SET_EUDC_DICTIONARY 0x1004\0"
	.byte	0x1
	.uleb128 0xca
	.ascii "IME_ESC_MAX_KEY 0x1005\0"
	.byte	0x1
	.uleb128 0xcb
	.ascii "IME_ESC_IME_NAME 0x1006\0"
	.byte	0x1
	.uleb128 0xcc
	.ascii "IME_ESC_SYNC_HOTKEY 0x1007\0"
	.byte	0x1
	.uleb128 0xcd
	.ascii "IME_ESC_HANJA_MODE 0x1008\0"
	.byte	0x1
	.uleb128 0xce
	.ascii "IME_ESC_AUTOMATA 0x1009\0"
	.byte	0x1
	.uleb128 0xcf
	.ascii "IME_REGWORD_STYLE_EUDC 1\0"
	.byte	0x1
	.uleb128 0xd0
	.ascii "IME_REGWORD_STYLE_USER_FIRST 0x80000000\0"
	.byte	0x1
	.uleb128 0xd1
	.ascii "IME_REGWORD_STYLE_USER_LAST 0xFFFFFFFF\0"
	.byte	0x1
	.uleb128 0xd2
	.ascii "IMR_RECONVERTSTRING 4\0"
	.byte	0x1
	.uleb128 0xd3
	.ascii "IMR_QUERYCHARPOSITION 6\0"
	.byte	0x1
	.uleb128 0xd4
	.ascii "SOFTKEYBOARD_TYPE_T1 1\0"
	.byte	0x1
	.uleb128 0xd5
	.ascii "SOFTKEYBOARD_TYPE_C1 2\0"
	.byte	0x1
	.uleb128 0xd6
	.ascii "IMEMENUITEM_STRING_SIZE 80\0"
	.byte	0x1
	.uleb128 0xd7
	.ascii "MOD_ALT 1\0"
	.byte	0x1
	.uleb128 0xd8
	.ascii "MOD_CONTROL 2\0"
	.byte	0x1
	.uleb128 0xd9
	.ascii "MOD_SHIFT 4\0"
	.byte	0x1
	.uleb128 0xda
	.ascii "MOD_WIN 8\0"
	.byte	0x1
	.uleb128 0xdb
	.ascii "MOD_IGNORE_ALL_MODIFIER 1024\0"
	.byte	0x1
	.uleb128 0xdc
	.ascii "MOD_ON_KEYUP 2048\0"
	.byte	0x1
	.uleb128 0xdd
	.ascii "MOD_RIGHT 16384\0"
	.byte	0x1
	.uleb128 0xde
	.ascii "MOD_LEFT 32768\0"
	.byte	0x1
	.uleb128 0xdf
	.ascii "IACE_CHILDREN 1\0"
	.byte	0x1
	.uleb128 0xe0
	.ascii "IACE_DEFAULT 16\0"
	.byte	0x1
	.uleb128 0xe1
	.ascii "IACE_IGNORENOCONTEXT 32\0"
	.byte	0x1
	.uleb128 0xe2
	.ascii "IGIMIF_RIGHTMENU 1\0"
	.byte	0x1
	.uleb128 0xe3
	.ascii "IGIMII_CMODE 1\0"
	.byte	0x1
	.uleb128 0xe4
	.ascii "IGIMII_SMODE 2\0"
	.byte	0x1
	.uleb128 0xe5
	.ascii "IGIMII_CONFIGURE 4\0"
	.byte	0x1
	.uleb128 0xe6
	.ascii "IGIMII_TOOLS 8\0"
	.byte	0x1
	.uleb128 0xe7
	.ascii "IGIMII_HELP 16\0"
	.byte	0x1
	.uleb128 0xe8
	.ascii "IGIMII_OTHER 32\0"
	.byte	0x1
	.uleb128 0xe9
	.ascii "IGIMII_INPUTTOOLS 64\0"
	.byte	0x1
	.uleb128 0xea
	.ascii "IMFT_RADIOCHECK 1\0"
	.byte	0x1
	.uleb128 0xeb
	.ascii "IMFT_SEPARATOR 2\0"
	.byte	0x1
	.uleb128 0xec
	.ascii "IMFT_SUBMENU 4\0"
	.byte	0x1
	.uleb128 0xed
	.ascii "IMFS_GRAYED MFS_GRAYED\0"
	.byte	0x1
	.uleb128 0xee
	.ascii "IMFS_DISABLED MFS_DISABLED\0"
	.byte	0x1
	.uleb128 0xef
	.ascii "IMFS_CHECKED MFS_CHECKED\0"
	.byte	0x1
	.uleb128 0xf0
	.ascii "IMFS_HILITE MFS_HILITE\0"
	.byte	0x1
	.uleb128 0xf1
	.ascii "IMFS_ENABLED MFS_ENABLED\0"
	.byte	0x1
	.uleb128 0xf2
	.ascii "IMFS_UNCHECKED MFS_UNCHECKED\0"
	.byte	0x1
	.uleb128 0xf3
	.ascii "IMFS_UNHILITE MFS_UNHILITE\0"
	.byte	0x1
	.uleb128 0xf4
	.ascii "IMFS_DEFAULT MFS_DEFAULT\0"
	.byte	0x1
	.uleb128 0xf8
	.ascii "STYLE_DESCRIPTION_SIZE 32\0"
	.byte	0x1
	.uleb128 0x14f
	.ascii "REGISTERWORDENUMPROC REGISTERWORDENUMPROCA\0"
	.byte	0x1
	.uleb128 0x1ab
	.ascii "ImmEnumRegisterWord ImmEnumRegisterWordA\0"
	.byte	0x1
	.uleb128 0x1ac
	.ascii "ImmGetRegisterWordStyle ImmGetRegisterWordStyleA\0"
	.byte	0x1
	.uleb128 0x1ad
	.ascii "ImmUnregisterWord ImmUnregisterWordA\0"
	.byte	0x1
	.uleb128 0x1ae
	.ascii "ImmRegisterWord ImmRegisterWordA\0"
	.byte	0x1
	.uleb128 0x1af
	.ascii "ImmInstallIME ImmInstallIMEA\0"
	.byte	0x1
	.uleb128 0x1b0
	.ascii "ImmIsUIMessage ImmIsUIMessageA\0"
	.byte	0x1
	.uleb128 0x1b1
	.ascii "ImmGetConversionList ImmGetConversionListA\0"
	.byte	0x1
	.uleb128 0x1b2
	.ascii "ImmEscape ImmEscapeA\0"
	.byte	0x1
	.uleb128 0x1b3
	.ascii "ImmConfigureIME ImmConfigureIMEA\0"
	.byte	0x1
	.uleb128 0x1b5
	.ascii "ImmSetCompositionFont ImmSetCompositionFontA\0"
	.byte	0x1
	.uleb128 0x1b6
	.ascii "ImmGetCompositionFont ImmGetCompositionFontA\0"
	.byte	0x1
	.uleb128 0x1b8
	.ascii "ImmGetGuideLine ImmGetGuideLineA\0"
	.byte	0x1
	.uleb128 0x1b9
	.ascii "ImmGetCandidateList ImmGetCandidateListA\0"
	.byte	0x1
	.uleb128 0x1ba
	.ascii "ImmGetCandidateListCount ImmGetCandidateListCountA\0"
	.byte	0x1
	.uleb128 0x1bb
	.ascii "ImmSetCompositionString ImmSetCompositionStringA\0"
	.byte	0x1
	.uleb128 0x1bc
	.ascii "ImmGetCompositionString ImmGetCompositionStringA\0"
	.byte	0x1
	.uleb128 0x1bd
	.ascii "ImmGetDescription ImmGetDescriptionA\0"
	.byte	0x1
	.uleb128 0x1be
	.ascii "ImmGetIMEFileName ImmGetIMEFileNameA\0"
	.byte	0x1
	.uleb128 0x1bf
	.ascii "ImmGetImeMenuItems ImmGetImeMenuItemsW\0"
	.byte	0x4
	.file 47 "c:/mingw/include/lzexpand.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x2f
	.byte	0x1
	.uleb128 0x2
	.ascii "_LZEXPAND_H \0"
	.byte	0x1
	.uleb128 0xa
	.ascii "LZERROR_BADINHANDLE (-1)\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "LZERROR_BADOUTHANDLE (-2)\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "LZERROR_READ (-3)\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "LZERROR_WRITE (-4)\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "LZERROR_GLOBALLOC (-5)\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "LZERROR_GLOBLOCK (-6)\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "LZERROR_BADVALUE (-7)\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "LZERROR_UNKNOWNALG (-8)\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "GetExpandedName GetExpandedNameA\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "LZOpenFile LZOpenFileA\0"
	.byte	0x4
	.file 48 "c:/mingw/include/mmsystem.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x30
	.byte	0x1
	.uleb128 0x3
	.ascii "_MMSYSTEM_H \0"
	.byte	0x1
	.uleb128 0xb
	.ascii "WINMMAPI DECLSPEC_IMPORT\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "_loadds \0"
	.byte	0x1
	.uleb128 0xd
	.ascii "_huge \0"
	.byte	0x1
	.uleb128 0xe
	.ascii "MAXPNAMELEN 32\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "MAXERRORLENGTH 256\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "MAX_JOYSTICKOEMVXDNAME 260\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "_MMRESULT_ \0"
	.byte	0x1
	.uleb128 0x12
	.ascii "TIME_MS 1\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "TIME_SAMPLES 2\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "TIME_BYTES 4\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "TIME_SMPTE 8\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "TIME_MIDI 16\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "TIME_TICKS 32\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "MAKEFOURCC(c0,c1,c2,c3) ((DWORD)(BYTE)(c0)|((DWORD)(BYTE)(c1)<<8)|((DWORD)(BYTE)(c2)<<16)|((DWORD)(BYTE)(c3)<<24))\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "mmioFOURCC(c0,c1,c2,c3) MAKEFOURCC(c0,c1,c2,c3)\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "MM_JOY1MOVE 0x3A0\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "MM_JOY2MOVE 0x3A1\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "MM_JOY1ZMOVE 0x3A2\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "MM_JOY2ZMOVE 0x3A3\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "MM_JOY1BUTTONDOWN 0x3B5\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "MM_JOY2BUTTONDOWN 0x3B6\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "MM_JOY1BUTTONUP 0x3B7\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "MM_JOY2BUTTONUP 0x3B8\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "MM_MCINOTIFY 0x3B9\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "MM_WOM_OPEN 0x3BB\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "MM_WOM_CLOSE 0x3BC\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "MM_WOM_DONE 0x3BD\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "MM_WIM_OPEN 0x3BE\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "MM_WIM_CLOSE 0x3BF\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "MM_WIM_DATA 0x3C0\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "MM_MIM_OPEN 0x3C1\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "MM_MIM_CLOSE 0x3C2\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "MM_MIM_DATA 0x3C3\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "MM_MIM_LONGDATA 0x3C4\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "MM_MIM_ERROR 0x3C5\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "MM_MIM_LONGERROR 0x3C6\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "MM_MOM_OPEN 0x3C7\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "MM_MOM_CLOSE 0x3C8\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "MM_MOM_DONE 0x3C9\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "MM_DRVM_OPEN 0x3D0\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "MM_DRVM_CLOSE 0x3D1\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "MM_DRVM_DATA 0x3D2\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "MM_DRVM_ERROR 0x3D3\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "MM_STREAM_OPEN 0x3D4\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "MM_STREAM_CLOSE 0x3D5\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "MM_STREAM_DONE 0x3D6\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "MM_STREAM_ERROR 0x3D7\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "MM_MOM_POSITIONCB 0x3CA\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "MM_MCISIGNAL 0x3CB\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "MM_MIM_MOREDATA 0x3CC\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "MM_MIXM_LINE_CHANGE 0x3D0\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "MM_MIXM_CONTROL_CHANGE 0x3D1\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "MMSYSERR_BASE 0\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "WAVERR_BASE 32\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "MIDIERR_BASE 64\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "TIMERR_BASE 96\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "JOYERR_BASE 160\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "MCIERR_BASE 256\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "MIXERR_BASE 1024\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "MCI_STRING_OFFSET 512\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "MCI_VD_OFFSET 1024\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "MCI_CD_OFFSET 1088\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "MCI_WAVE_OFFSET 1152\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "MCI_SEQ_OFFSET 1216\0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "MMSYSERR_NOERROR 0\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "MMSYSERR_ERROR (MMSYSERR_BASE+1)\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "MMSYSERR_BADDEVICEID (MMSYSERR_BASE+2)\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "MMSYSERR_NOTENABLED (MMSYSERR_BASE+3)\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "MMSYSERR_ALLOCATED (MMSYSERR_BASE+4)\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "MMSYSERR_INVALHANDLE (MMSYSERR_BASE+5)\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "MMSYSERR_NODRIVER (MMSYSERR_BASE+6)\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "MMSYSERR_NOMEM (MMSYSERR_BASE+7)\0"
	.byte	0x1
	.uleb128 0x55
	.ascii "MMSYSERR_NOTSUPPORTED (MMSYSERR_BASE+8)\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "MMSYSERR_BADERRNUM (MMSYSERR_BASE+9)\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "MMSYSERR_INVALFLAG (MMSYSERR_BASE+10)\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "MMSYSERR_INVALPARAM (MMSYSERR_BASE+11)\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "MMSYSERR_HANDLEBUSY (MMSYSERR_BASE+12)\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "MMSYSERR_INVALIDALIAS (MMSYSERR_BASE+13)\0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "MMSYSERR_BADDB (MMSYSERR_BASE+14)\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "MMSYSERR_KEYNOTFOUND (MMSYSERR_BASE+15)\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "MMSYSERR_READERROR (MMSYSERR_BASE+16)\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "MMSYSERR_WRITEERROR (MMSYSERR_BASE+17)\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "MMSYSERR_DELETEERROR (MMSYSERR_BASE+18)\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "MMSYSERR_VALNOTFOUND (MMSYSERR_BASE+19)\0"
	.byte	0x1
	.uleb128 0x61
	.ascii "MMSYSERR_NODRIVERCB (MMSYSERR_BASE+20)\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "MMSYSERR_LASTERROR (MMSYSERR_BASE+20)\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "DRV_LOAD 1\0"
	.byte	0x1
	.uleb128 0x64
	.ascii "DRV_ENABLE 2\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "DRV_OPEN 3\0"
	.byte	0x1
	.uleb128 0x66
	.ascii "DRV_CLOSE 4\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "DRV_DISABLE 5\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "DRV_FREE 6\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "DRV_CONFIGURE 7\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "DRV_QUERYCONFIGURE 8\0"
	.byte	0x1
	.uleb128 0x6b
	.ascii "DRV_INSTALL 9\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "DRV_REMOVE 10\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "DRV_EXITSESSION 11\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "DRV_POWER 15\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "DRV_RESERVED 0x800\0"
	.byte	0x1
	.uleb128 0x70
	.ascii "DRV_USER 0x4000\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "DRVCNF_CANCEL 0\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "DRVCNF_OK 1\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "DRVCNF_RESTART 2\0"
	.byte	0x1
	.uleb128 0x74
	.ascii "DRV_CANCEL DRVCNF_CANCEL\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "DRV_OK DRVCNF_OK\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "DRV_RESTART DRVCNF_RESTART\0"
	.byte	0x1
	.uleb128 0x77
	.ascii "DRV_MCI_FIRST DRV_RESERVED\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "DRV_MCI_LAST (DRV_RESERVED+0xFFF)\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "CALLBACK_TYPEMASK 0x70000\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "CALLBACK_NULL 0\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "CALLBACK_WINDOW 0x10000\0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "CALLBACK_TASK 0x20000\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "CALLBACK_FUNCTION 0x30000\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "CALLBACK_THREAD CALLBACK_TASK\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "CALLBACK_EVENT 0x50000\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "SND_SYNC 0\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "SND_ASYNC 1\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "SND_NODEFAULT 2\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "SND_MEMORY 4\0"
	.byte	0x1
	.uleb128 0x84
	.ascii "SND_LOOP 8\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "SND_NOSTOP 16\0"
	.byte	0x1
	.uleb128 0x86
	.ascii "SND_NOWAIT 0x2000\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "SND_ALIAS 0x10000\0"
	.byte	0x1
	.uleb128 0x88
	.ascii "SND_ALIAS_ID 0x110000\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "SND_FILENAME 0x20000\0"
	.byte	0x1
	.uleb128 0x8a
	.ascii "SND_RESOURCE 0x40004\0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "SND_PURGE 0x40\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "SND_APPLICATION 0x80\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "SND_ALIAS_START 0\0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "sndAlias(c0,c1) (SND_ALIAS_START+((DWORD)(BYTE)(c0)|((DWORD)(BYTE)(c1)<<8)))\0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "SND_ALIAS_SYSTEMASTERISK sndAlias('S','*')\0"
	.byte	0x1
	.uleb128 0x90
	.ascii "SND_ALIAS_SYSTEMQUESTION sndAlias('S','?')\0"
	.byte	0x1
	.uleb128 0x91
	.ascii "SND_ALIAS_SYSTEMHAND sndAlias('S','H')\0"
	.byte	0x1
	.uleb128 0x92
	.ascii "SND_ALIAS_SYSTEMEXIT sndAlias('S','E')\0"
	.byte	0x1
	.uleb128 0x93
	.ascii "SND_ALIAS_SYSTEMSTART sndAlias('S','S')\0"
	.byte	0x1
	.uleb128 0x94
	.ascii "SND_ALIAS_SYSTEMWELCOME sndAlias('S','W')\0"
	.byte	0x1
	.uleb128 0x95
	.ascii "SND_ALIAS_SYSTEMEXCLAMATION sndAlias('S','!')\0"
	.byte	0x1
	.uleb128 0x96
	.ascii "SND_ALIAS_SYSTEMDEFAULT sndAlias('S','D')\0"
	.byte	0x1
	.uleb128 0x97
	.ascii "WAVERR_BADFORMAT (WAVERR_BASE + 0)\0"
	.byte	0x1
	.uleb128 0x98
	.ascii "WAVERR_STILLPLAYING (WAVERR_BASE + 1)\0"
	.byte	0x1
	.uleb128 0x99
	.ascii "WAVERR_UNPREPARED (WAVERR_BASE + 2)\0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "WAVERR_SYNC (WAVERR_BASE + 3)\0"
	.byte	0x1
	.uleb128 0x9b
	.ascii "WAVERR_LASTERROR (WAVERR_BASE + 3)\0"
	.byte	0x1
	.uleb128 0x9c
	.ascii "WOM_OPEN MM_WOM_OPEN\0"
	.byte	0x1
	.uleb128 0x9d
	.ascii "WOM_CLOSE MM_WOM_CLOSE\0"
	.byte	0x1
	.uleb128 0x9e
	.ascii "WOM_DONE MM_WOM_DONE\0"
	.byte	0x1
	.uleb128 0x9f
	.ascii "WIM_OPEN MM_WIM_OPEN\0"
	.byte	0x1
	.uleb128 0xa0
	.ascii "WIM_CLOSE MM_WIM_CLOSE\0"
	.byte	0x1
	.uleb128 0xa1
	.ascii "WIM_DATA MM_WIM_DATA\0"
	.byte	0x1
	.uleb128 0xa2
	.ascii "WAVE_MAPPER ((UINT)-1)\0"
	.byte	0x1
	.uleb128 0xa3
	.ascii "WAVE_FORMAT_QUERY 1\0"
	.byte	0x1
	.uleb128 0xa4
	.ascii "WAVE_ALLOWSYNC 2\0"
	.byte	0x1
	.uleb128 0xa5
	.ascii "WAVE_MAPPED 4\0"
	.byte	0x1
	.uleb128 0xa6
	.ascii "WAVE_FORMAT_DIRECT 8\0"
	.byte	0x1
	.uleb128 0xa7
	.ascii "WAVE_FORMAT_DIRECT_QUERY (WAVE_FORMAT_QUERY|WAVE_FORMAT_DIRECT)\0"
	.byte	0x1
	.uleb128 0xa8
	.ascii "WHDR_DONE 1\0"
	.byte	0x1
	.uleb128 0xa9
	.ascii "WHDR_PREPARED 2\0"
	.byte	0x1
	.uleb128 0xaa
	.ascii "WHDR_BEGINLOOP 4\0"
	.byte	0x1
	.uleb128 0xab
	.ascii "WHDR_ENDLOOP 8\0"
	.byte	0x1
	.uleb128 0xac
	.ascii "WHDR_INQUEUE 16\0"
	.byte	0x1
	.uleb128 0xad
	.ascii "WAVECAPS_PITCH 1\0"
	.byte	0x1
	.uleb128 0xae
	.ascii "WAVECAPS_PLAYBACKRATE 2\0"
	.byte	0x1
	.uleb128 0xaf
	.ascii "WAVECAPS_VOLUME 4\0"
	.byte	0x1
	.uleb128 0xb0
	.ascii "WAVECAPS_LRVOLUME 8\0"
	.byte	0x1
	.uleb128 0xb1
	.ascii "WAVECAPS_SYNC 16\0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "WAVECAPS_SAMPLEACCURATE 32\0"
	.byte	0x1
	.uleb128 0xb3
	.ascii "WAVECAPS_DIRECTSOUND 64\0"
	.byte	0x1
	.uleb128 0xb4
	.ascii "WAVE_INVALIDFORMAT 0\0"
	.byte	0x1
	.uleb128 0xb5
	.ascii "WAVE_FORMAT_1M08 1\0"
	.byte	0x1
	.uleb128 0xb6
	.ascii "WAVE_FORMAT_1S08 2\0"
	.byte	0x1
	.uleb128 0xb7
	.ascii "WAVE_FORMAT_1M16 4\0"
	.byte	0x1
	.uleb128 0xb8
	.ascii "WAVE_FORMAT_1S16 8\0"
	.byte	0x1
	.uleb128 0xb9
	.ascii "WAVE_FORMAT_2M08 16\0"
	.byte	0x1
	.uleb128 0xba
	.ascii "WAVE_FORMAT_2S08 32\0"
	.byte	0x1
	.uleb128 0xbb
	.ascii "WAVE_FORMAT_2M16 64\0"
	.byte	0x1
	.uleb128 0xbc
	.ascii "WAVE_FORMAT_2S16 128\0"
	.byte	0x1
	.uleb128 0xbd
	.ascii "WAVE_FORMAT_4M08 256\0"
	.byte	0x1
	.uleb128 0xbe
	.ascii "WAVE_FORMAT_4S08 512\0"
	.byte	0x1
	.uleb128 0xbf
	.ascii "WAVE_FORMAT_4M16 1024\0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "WAVE_FORMAT_4S16 2048\0"
	.byte	0x1
	.uleb128 0xc1
	.ascii "WAVE_FORMAT_PCM 1\0"
	.byte	0x1
	.uleb128 0xc2
	.ascii "WAVE_FORMAT_EXTENSIBLE 0xFFFE\0"
	.byte	0x1
	.uleb128 0xc3
	.ascii "MIDIERR_UNPREPARED MIDIERR_BASE\0"
	.byte	0x1
	.uleb128 0xc4
	.ascii "MIDIERR_STILLPLAYING (MIDIERR_BASE+1)\0"
	.byte	0x1
	.uleb128 0xc5
	.ascii "MIDIERR_NOMAP (MIDIERR_BASE+2)\0"
	.byte	0x1
	.uleb128 0xc6
	.ascii "MIDIERR_NOTREADY (MIDIERR_BASE+3)\0"
	.byte	0x1
	.uleb128 0xc7
	.ascii "MIDIERR_NODEVICE (MIDIERR_BASE+4)\0"
	.byte	0x1
	.uleb128 0xc8
	.ascii "MIDIERR_INVALIDSETUP (MIDIERR_BASE+5)\0"
	.byte	0x1
	.uleb128 0xc9
	.ascii "MIDIERR_BADOPENMODE (MIDIERR_BASE+6)\0"
	.byte	0x1
	.uleb128 0xca
	.ascii "MIDIERR_DONT_CONTINUE (MIDIERR_BASE+7)\0"
	.byte	0x1
	.uleb128 0xcb
	.ascii "MIDIERR_LASTERROR (MIDIERR_BASE+7)\0"
	.byte	0x1
	.uleb128 0xcc
	.ascii "MIDIPATCHSIZE 128\0"
	.byte	0x1
	.uleb128 0xcd
	.ascii "MIM_OPEN MM_MIM_OPEN\0"
	.byte	0x1
	.uleb128 0xce
	.ascii "MIM_CLOSE MM_MIM_CLOSE\0"
	.byte	0x1
	.uleb128 0xcf
	.ascii "MIM_DATA MM_MIM_DATA\0"
	.byte	0x1
	.uleb128 0xd0
	.ascii "MIM_LONGDATA MM_MIM_LONGDATA\0"
	.byte	0x1
	.uleb128 0xd1
	.ascii "MIM_ERROR MM_MIM_ERROR\0"
	.byte	0x1
	.uleb128 0xd2
	.ascii "MIM_LONGERROR MM_MIM_LONGERROR\0"
	.byte	0x1
	.uleb128 0xd3
	.ascii "MOM_OPEN MM_MOM_OPEN\0"
	.byte	0x1
	.uleb128 0xd4
	.ascii "MOM_CLOSE MM_MOM_CLOSE\0"
	.byte	0x1
	.uleb128 0xd5
	.ascii "MOM_DONE MM_MOM_DONE\0"
	.byte	0x1
	.uleb128 0xd6
	.ascii "MIM_MOREDATA MM_MIM_MOREDATA\0"
	.byte	0x1
	.uleb128 0xd7
	.ascii "MOM_POSITIONCB MM_MOM_POSITIONCB\0"
	.byte	0x1
	.uleb128 0xd8
	.ascii "MIDIMAPPER ((UINT)-1)\0"
	.byte	0x1
	.uleb128 0xd9
	.ascii "MIDI_MAPPER ((UINT)-1)\0"
	.byte	0x1
	.uleb128 0xda
	.ascii "MIDI_IO_STATUS 32\0"
	.byte	0x1
	.uleb128 0xdb
	.ascii "MIDI_CACHE_ALL 1\0"
	.byte	0x1
	.uleb128 0xdc
	.ascii "MIDI_CACHE_BESTFIT 2\0"
	.byte	0x1
	.uleb128 0xdd
	.ascii "MIDI_CACHE_QUERY 3\0"
	.byte	0x1
	.uleb128 0xde
	.ascii "MIDI_UNCACHE 4\0"
	.byte	0x1
	.uleb128 0xdf
	.ascii "MOD_MIDIPORT 1\0"
	.byte	0x1
	.uleb128 0xe0
	.ascii "MOD_SYNTH 2\0"
	.byte	0x1
	.uleb128 0xe1
	.ascii "MOD_SQSYNTH 3\0"
	.byte	0x1
	.uleb128 0xe2
	.ascii "MOD_FMSYNTH 4\0"
	.byte	0x1
	.uleb128 0xe3
	.ascii "MOD_MAPPER 5\0"
	.byte	0x1
	.uleb128 0xe4
	.ascii "MIDICAPS_VOLUME 1\0"
	.byte	0x1
	.uleb128 0xe5
	.ascii "MIDICAPS_LRVOLUME 2\0"
	.byte	0x1
	.uleb128 0xe6
	.ascii "MIDICAPS_CACHE 4\0"
	.byte	0x1
	.uleb128 0xe7
	.ascii "MIDICAPS_STREAM 8\0"
	.byte	0x1
	.uleb128 0xe8
	.ascii "MHDR_DONE 1\0"
	.byte	0x1
	.uleb128 0xe9
	.ascii "MHDR_PREPARED 2\0"
	.byte	0x1
	.uleb128 0xea
	.ascii "MHDR_INQUEUE 4\0"
	.byte	0x1
	.uleb128 0xeb
	.ascii "MHDR_ISSTRM 8\0"
	.byte	0x1
	.uleb128 0xec
	.ascii "MEVT_F_SHORT 0\0"
	.byte	0x1
	.uleb128 0xed
	.ascii "MEVT_F_LONG 0x80000000\0"
	.byte	0x1
	.uleb128 0xee
	.ascii "MEVT_F_CALLBACK 0x40000000\0"
	.byte	0x1
	.uleb128 0xef
	.ascii "MEVT_EVENTTYPE(x) ((BYTE)(((x)>>24)&0xFF))\0"
	.byte	0x1
	.uleb128 0xf0
	.ascii "MEVT_EVENTPARM(x) ((DWORD)((x)&0xFFFFFFL))\0"
	.byte	0x1
	.uleb128 0xf1
	.ascii "MEVT_SHORTMSG 0\0"
	.byte	0x1
	.uleb128 0xf2
	.ascii "MEVT_TEMPO 1\0"
	.byte	0x1
	.uleb128 0xf3
	.ascii "MEVT_NOP 2\0"
	.byte	0x1
	.uleb128 0xf4
	.ascii "MEVT_LONGMSG ((BYTE)0x80)\0"
	.byte	0x1
	.uleb128 0xf5
	.ascii "MEVT_COMMENT ((BYTE)0x82)\0"
	.byte	0x1
	.uleb128 0xf6
	.ascii "MEVT_VERSION ((BYTE)0x84)\0"
	.byte	0x1
	.uleb128 0xf7
	.ascii "MIDISTRM_ERROR (-2)\0"
	.byte	0x1
	.uleb128 0xf8
	.ascii "MIDIPROP_SET 0x80000000\0"
	.byte	0x1
	.uleb128 0xf9
	.ascii "MIDIPROP_GET 0x40000000\0"
	.byte	0x1
	.uleb128 0xfa
	.ascii "MIDIPROP_TIMEDIV 1\0"
	.byte	0x1
	.uleb128 0xfb
	.ascii "MIDIPROP_TEMPO 2\0"
	.byte	0x1
	.uleb128 0xfc
	.ascii "AUX_MAPPER ((UINT)-1)\0"
	.byte	0x1
	.uleb128 0xfd
	.ascii "AUXCAPS_CDAUDIO 1\0"
	.byte	0x1
	.uleb128 0xfe
	.ascii "AUXCAPS_AUXIN 2\0"
	.byte	0x1
	.uleb128 0xff
	.ascii "AUXCAPS_VOLUME 1\0"
	.byte	0x1
	.uleb128 0x100
	.ascii "AUXCAPS_LRVOLUME 2\0"
	.byte	0x1
	.uleb128 0x101
	.ascii "MIXER_SHORT_NAME_CHARS 16\0"
	.byte	0x1
	.uleb128 0x102
	.ascii "MIXER_LONG_NAME_CHARS 64\0"
	.byte	0x1
	.uleb128 0x103
	.ascii "MIXERR_INVALLINE MIXERR_BASE\0"
	.byte	0x1
	.uleb128 0x104
	.ascii "MIXERR_INVALCONTROL (MIXERR_BASE+1)\0"
	.byte	0x1
	.uleb128 0x105
	.ascii "MIXERR_INVALVALUE (MIXERR_BASE+2)\0"
	.byte	0x1
	.uleb128 0x106
	.ascii "MIXERR_LASTERROR (MIXERR_BASE+2)\0"
	.byte	0x1
	.uleb128 0x107
	.ascii "MIXER_OBJECTF_HANDLE 0x80000000\0"
	.byte	0x1
	.uleb128 0x108
	.ascii "MIXER_OBJECTF_MIXER 0\0"
	.byte	0x1
	.uleb128 0x109
	.ascii "MIXER_OBJECTF_HMIXER (MIXER_OBJECTF_HANDLE|MIXER_OBJECTF_MIXER)\0"
	.byte	0x1
	.uleb128 0x10a
	.ascii "MIXER_OBJECTF_WAVEOUT 0x10000000\0"
	.byte	0x1
	.uleb128 0x10b
	.ascii "MIXER_OBJECTF_HWAVEOUT (MIXER_OBJECTF_HANDLE|MIXER_OBJECTF_WAVEOUT)\0"
	.byte	0x1
	.uleb128 0x10c
	.ascii "MIXER_OBJECTF_WAVEIN 0x20000000\0"
	.byte	0x1
	.uleb128 0x10d
	.ascii "MIXER_OBJECTF_HWAVEIN (MIXER_OBJECTF_HANDLE|MIXER_OBJECTF_WAVEIN)\0"
	.byte	0x1
	.uleb128 0x10e
	.ascii "MIXER_OBJECTF_MIDIOUT 0x30000000\0"
	.byte	0x1
	.uleb128 0x10f
	.ascii "MIXER_OBJECTF_HMIDIOUT (MIXER_OBJECTF_HANDLE|MIXER_OBJECTF_MIDIOUT)\0"
	.byte	0x1
	.uleb128 0x110
	.ascii "MIXER_OBJECTF_MIDIIN 0x40000000\0"
	.byte	0x1
	.uleb128 0x111
	.ascii "MIXER_OBJECTF_HMIDIIN (MIXER_OBJECTF_HANDLE|MIXER_OBJECTF_MIDIIN)\0"
	.byte	0x1
	.uleb128 0x112
	.ascii "MIXER_OBJECTF_AUX 0x50000000\0"
	.byte	0x1
	.uleb128 0x113
	.ascii "MIXERLINE_LINEF_ACTIVE 1\0"
	.byte	0x1
	.uleb128 0x114
	.ascii "MIXERLINE_LINEF_DISCONNECTED 0x8000\0"
	.byte	0x1
	.uleb128 0x115
	.ascii "MIXERLINE_LINEF_SOURCE 0x80000000\0"
	.byte	0x1
	.uleb128 0x116
	.ascii "MIXERLINE_COMPONENTTYPE_DST_FIRST 0\0"
	.byte	0x1
	.uleb128 0x117
	.ascii "MIXERLINE_COMPONENTTYPE_DST_UNDEFINED MIXERLINE_COMPONENTTYPE_DST_FIRST\0"
	.byte	0x1
	.uleb128 0x118
	.ascii "MIXERLINE_COMPONENTTYPE_DST_DIGITAL (MIXERLINE_COMPONENTTYPE_DST_FIRST+1)\0"
	.byte	0x1
	.uleb128 0x119
	.ascii "MIXERLINE_COMPONENTTYPE_DST_LINE (MIXERLINE_COMPONENTTYPE_DST_FIRST+2)\0"
	.byte	0x1
	.uleb128 0x11a
	.ascii "MIXERLINE_COMPONENTTYPE_DST_MONITOR (MIXERLINE_COMPONENTTYPE_DST_FIRST+3)\0"
	.byte	0x1
	.uleb128 0x11b
	.ascii "MIXERLINE_COMPONENTTYPE_DST_SPEAKERS (MIXERLINE_COMPONENTTYPE_DST_FIRST+4)\0"
	.byte	0x1
	.uleb128 0x11c
	.ascii "MIXERLINE_COMPONENTTYPE_DST_HEADPHONES (MIXERLINE_COMPONENTTYPE_DST_FIRST+5)\0"
	.byte	0x1
	.uleb128 0x11d
	.ascii "MIXERLINE_COMPONENTTYPE_DST_TELEPHONE (MIXERLINE_COMPONENTTYPE_DST_FIRST+6)\0"
	.byte	0x1
	.uleb128 0x11e
	.ascii "MIXERLINE_COMPONENTTYPE_DST_WAVEIN (MIXERLINE_COMPONENTTYPE_DST_FIRST+7)\0"
	.byte	0x1
	.uleb128 0x11f
	.ascii "MIXERLINE_COMPONENTTYPE_DST_VOICEIN (MIXERLINE_COMPONENTTYPE_DST_FIRST+8)\0"
	.byte	0x1
	.uleb128 0x120
	.ascii "MIXERLINE_COMPONENTTYPE_DST_LAST (MIXERLINE_COMPONENTTYPE_DST_FIRST+8)\0"
	.byte	0x1
	.uleb128 0x121
	.ascii "MIXERLINE_COMPONENTTYPE_SRC_FIRST 0x1000\0"
	.byte	0x1
	.uleb128 0x122
	.ascii "MIXERLINE_COMPONENTTYPE_SRC_UNDEFINED MIXERLINE_COMPONENTTYPE_SRC_FIRST\0"
	.byte	0x1
	.uleb128 0x123
	.ascii "MIXERLINE_COMPONENTTYPE_SRC_DIGITAL (MIXERLINE_COMPONENTTYPE_SRC_FIRST+1)\0"
	.byte	0x1
	.uleb128 0x124
	.ascii "MIXERLINE_COMPONENTTYPE_SRC_LINE (MIXERLINE_COMPONENTTYPE_SRC_FIRST+2)\0"
	.byte	0x1
	.uleb128 0x125
	.ascii "MIXERLINE_COMPONENTTYPE_SRC_MICROPHONE (MIXERLINE_COMPONENTTYPE_SRC_FIRST+3)\0"
	.byte	0x1
	.uleb128 0x126
	.ascii "MIXERLINE_COMPONENTTYPE_SRC_SYNTHESIZER (MIXERLINE_COMPONENTTYPE_SRC_FIRST+4)\0"
	.byte	0x1
	.uleb128 0x127
	.ascii "MIXERLINE_COMPONENTTYPE_SRC_COMPACTDISC (MIXERLINE_COMPONENTTYPE_SRC_FIRST+5)\0"
	.byte	0x1
	.uleb128 0x128
	.ascii "MIXERLINE_COMPONENTTYPE_SRC_TELEPHONE (MIXERLINE_COMPONENTTYPE_SRC_FIRST+6)\0"
	.byte	0x1
	.uleb128 0x129
	.ascii "MIXERLINE_COMPONENTTYPE_SRC_PCSPEAKER (MIXERLINE_COMPONENTTYPE_SRC_FIRST+7)\0"
	.byte	0x1
	.uleb128 0x12a
	.ascii "MIXERLINE_COMPONENTTYPE_SRC_WAVEOUT (MIXERLINE_COMPONENTTYPE_SRC_FIRST+8)\0"
	.byte	0x1
	.uleb128 0x12b
	.ascii "MIXERLINE_COMPONENTTYPE_SRC_AUXILIARY (MIXERLINE_COMPONENTTYPE_SRC_FIRST+9)\0"
	.byte	0x1
	.uleb128 0x12c
	.ascii "MIXERLINE_COMPONENTTYPE_SRC_ANALOG (MIXERLINE_COMPONENTTYPE_SRC_FIRST+10)\0"
	.byte	0x1
	.uleb128 0x12d
	.ascii "MIXERLINE_COMPONENTTYPE_SRC_LAST (MIXERLINE_COMPONENTTYPE_SRC_FIRST+10)\0"
	.byte	0x1
	.uleb128 0x12e
	.ascii "MIXERLINE_TARGETTYPE_UNDEFINED 0\0"
	.byte	0x1
	.uleb128 0x12f
	.ascii "MIXERLINE_TARGETTYPE_WAVEOUT 1\0"
	.byte	0x1
	.uleb128 0x130
	.ascii "MIXERLINE_TARGETTYPE_WAVEIN 2\0"
	.byte	0x1
	.uleb128 0x131
	.ascii "MIXERLINE_TARGETTYPE_MIDIOUT 3\0"
	.byte	0x1
	.uleb128 0x132
	.ascii "MIXERLINE_TARGETTYPE_MIDIIN 4\0"
	.byte	0x1
	.uleb128 0x133
	.ascii "MIXERLINE_TARGETTYPE_AUX 5\0"
	.byte	0x1
	.uleb128 0x134
	.ascii "MIXER_GETLINEINFOF_DESTINATION 0\0"
	.byte	0x1
	.uleb128 0x135
	.ascii "MIXER_GETLINEINFOF_SOURCE 1\0"
	.byte	0x1
	.uleb128 0x136
	.ascii "MIXER_GETLINEINFOF_LINEID 2\0"
	.byte	0x1
	.uleb128 0x137
	.ascii "MIXER_GETLINEINFOF_COMPONENTTYPE 3\0"
	.byte	0x1
	.uleb128 0x138
	.ascii "MIXER_GETLINEINFOF_TARGETTYPE 4\0"
	.byte	0x1
	.uleb128 0x139
	.ascii "MIXER_GETLINEINFOF_QUERYMASK 15\0"
	.byte	0x1
	.uleb128 0x13a
	.ascii "MIXERCONTROL_CONTROLF_UNIFORM 1\0"
	.byte	0x1
	.uleb128 0x13b
	.ascii "MIXERCONTROL_CONTROLF_MULTIPLE 2\0"
	.byte	0x1
	.uleb128 0x13c
	.ascii "MIXERCONTROL_CONTROLF_DISABLED 0x80000000\0"
	.byte	0x1
	.uleb128 0x13d
	.ascii "MIXERCONTROL_CT_CLASS_MASK 0xF0000000\0"
	.byte	0x1
	.uleb128 0x13e
	.ascii "MIXERCONTROL_CT_CLASS_CUSTOM 0\0"
	.byte	0x1
	.uleb128 0x13f
	.ascii "MIXERCONTROL_CT_CLASS_METER 0x10000000\0"
	.byte	0x1
	.uleb128 0x140
	.ascii "MIXERCONTROL_CT_CLASS_SWITCH 0x20000000\0"
	.byte	0x1
	.uleb128 0x141
	.ascii "MIXERCONTROL_CT_CLASS_NUMBER 0x30000000\0"
	.byte	0x1
	.uleb128 0x142
	.ascii "MIXERCONTROL_CT_CLASS_SLIDER 0x40000000\0"
	.byte	0x1
	.uleb128 0x143
	.ascii "MIXERCONTROL_CT_CLASS_FADER 0x50000000\0"
	.byte	0x1
	.uleb128 0x144
	.ascii "MIXERCONTROL_CT_CLASS_TIME 0x60000000\0"
	.byte	0x1
	.uleb128 0x145
	.ascii "MIXERCONTROL_CT_CLASS_LIST 0x70000000\0"
	.byte	0x1
	.uleb128 0x146
	.ascii "MIXERCONTROL_CT_SUBCLASS_MASK 0xF000000\0"
	.byte	0x1
	.uleb128 0x147
	.ascii "MIXERCONTROL_CT_SC_SWITCH_BOOLEAN 0\0"
	.byte	0x1
	.uleb128 0x148
	.ascii "MIXERCONTROL_CT_SC_SWITCH_BUTTON 0x1000000\0"
	.byte	0x1
	.uleb128 0x149
	.ascii "MIXERCONTROL_CT_SC_METER_POLLED 0\0"
	.byte	0x1
	.uleb128 0x14a
	.ascii "MIXERCONTROL_CT_SC_TIME_MICROSECS 0\0"
	.byte	0x1
	.uleb128 0x14b
	.ascii "MIXERCONTROL_CT_SC_TIME_MILLISECS 0x1000000\0"
	.byte	0x1
	.uleb128 0x14c
	.ascii "MIXERCONTROL_CT_SC_LIST_SINGLE 0\0"
	.byte	0x1
	.uleb128 0x14d
	.ascii "MIXERCONTROL_CT_SC_LIST_MULTIPLE 0x1000000\0"
	.byte	0x1
	.uleb128 0x14e
	.ascii "MIXERCONTROL_CT_UNITS_MASK 0xFF0000\0"
	.byte	0x1
	.uleb128 0x14f
	.ascii "MIXERCONTROL_CT_UNITS_CUSTOM 0\0"
	.byte	0x1
	.uleb128 0x150
	.ascii "MIXERCONTROL_CT_UNITS_BOOLEAN 0x10000\0"
	.byte	0x1
	.uleb128 0x151
	.ascii "MIXERCONTROL_CT_UNITS_SIGNED 0x20000\0"
	.byte	0x1
	.uleb128 0x152
	.ascii "MIXERCONTROL_CT_UNITS_UNSIGNED 0x30000\0"
	.byte	0x1
	.uleb128 0x153
	.ascii "MIXERCONTROL_CT_UNITS_DECIBELS 0x40000\0"
	.byte	0x1
	.uleb128 0x154
	.ascii "MIXERCONTROL_CT_UNITS_PERCENT 0x50000\0"
	.byte	0x1
	.uleb128 0x155
	.ascii "MIXERCONTROL_CONTROLTYPE_CUSTOM (MIXERCONTROL_CT_CLASS_CUSTOM|MIXERCONTROL_CT_UNITS_CUSTOM)\0"
	.byte	0x1
	.uleb128 0x156
	.ascii "MIXERCONTROL_CONTROLTYPE_BOOLEANMETER (MIXERCONTROL_CT_CLASS_METER|MIXERCONTROL_CT_SC_METER_POLLED|MIXERCONTROL_CT_UNITS_BOOLEAN)\0"
	.byte	0x1
	.uleb128 0x157
	.ascii "MIXERCONTROL_CONTROLTYPE_SIGNEDMETER (MIXERCONTROL_CT_CLASS_METER|MIXERCONTROL_CT_SC_METER_POLLED|MIXERCONTROL_CT_UNITS_SIGNED)\0"
	.byte	0x1
	.uleb128 0x158
	.ascii "MIXERCONTROL_CONTROLTYPE_PEAKMETER (MIXERCONTROL_CONTROLTYPE_SIGNEDMETER+1)\0"
	.byte	0x1
	.uleb128 0x159
	.ascii "MIXERCONTROL_CONTROLTYPE_UNSIGNEDMETER (MIXERCONTROL_CT_CLASS_METER|MIXERCONTROL_CT_SC_METER_POLLED|MIXERCONTROL_CT_UNITS_UNSIGNED)\0"
	.byte	0x1
	.uleb128 0x15a
	.ascii "MIXERCONTROL_CONTROLTYPE_BOOLEAN (MIXERCONTROL_CT_CLASS_SWITCH|MIXERCONTROL_CT_SC_SWITCH_BOOLEAN|MIXERCONTROL_CT_UNITS_BOOLEAN)\0"
	.byte	0x1
	.uleb128 0x15b
	.ascii "MIXERCONTROL_CONTROLTYPE_ONOFF (MIXERCONTROL_CONTROLTYPE_BOOLEAN+1)\0"
	.byte	0x1
	.uleb128 0x15c
	.ascii "MIXERCONTROL_CONTROLTYPE_MUTE (MIXERCONTROL_CONTROLTYPE_BOOLEAN+2)\0"
	.byte	0x1
	.uleb128 0x15d
	.ascii "MIXERCONTROL_CONTROLTYPE_MONO (MIXERCONTROL_CONTROLTYPE_BOOLEAN+3)\0"
	.byte	0x1
	.uleb128 0x15e
	.ascii "MIXERCONTROL_CONTROLTYPE_LOUDNESS (MIXERCONTROL_CONTROLTYPE_BOOLEAN+4)\0"
	.byte	0x1
	.uleb128 0x15f
	.ascii "MIXERCONTROL_CONTROLTYPE_STEREOENH (MIXERCONTROL_CONTROLTYPE_BOOLEAN+5)\0"
	.byte	0x1
	.uleb128 0x160
	.ascii "MIXERCONTROL_CONTROLTYPE_BUTTON (MIXERCONTROL_CT_CLASS_SWITCH|MIXERCONTROL_CT_SC_SWITCH_BUTTON|MIXERCONTROL_CT_UNITS_BOOLEAN)\0"
	.byte	0x1
	.uleb128 0x161
	.ascii "MIXERCONTROL_CONTROLTYPE_DECIBELS (MIXERCONTROL_CT_CLASS_NUMBER|MIXERCONTROL_CT_UNITS_DECIBELS)\0"
	.byte	0x1
	.uleb128 0x162
	.ascii "MIXERCONTROL_CONTROLTYPE_SIGNED (MIXERCONTROL_CT_CLASS_NUMBER|MIXERCONTROL_CT_UNITS_SIGNED)\0"
	.byte	0x1
	.uleb128 0x163
	.ascii "MIXERCONTROL_CONTROLTYPE_UNSIGNED (MIXERCONTROL_CT_CLASS_NUMBER|MIXERCONTROL_CT_UNITS_UNSIGNED)\0"
	.byte	0x1
	.uleb128 0x164
	.ascii "MIXERCONTROL_CONTROLTYPE_PERCENT (MIXERCONTROL_CT_CLASS_NUMBER|MIXERCONTROL_CT_UNITS_PERCENT)\0"
	.byte	0x1
	.uleb128 0x165
	.ascii "MIXERCONTROL_CONTROLTYPE_SLIDER (MIXERCONTROL_CT_CLASS_SLIDER|MIXERCONTROL_CT_UNITS_SIGNED)\0"
	.byte	0x1
	.uleb128 0x166
	.ascii "MIXERCONTROL_CONTROLTYPE_PAN (MIXERCONTROL_CONTROLTYPE_SLIDER+1)\0"
	.byte	0x1
	.uleb128 0x167
	.ascii "MIXERCONTROL_CONTROLTYPE_QSOUNDPAN (MIXERCONTROL_CONTROLTYPE_SLIDER+2)\0"
	.byte	0x1
	.uleb128 0x168
	.ascii "MIXERCONTROL_CONTROLTYPE_FADER (MIXERCONTROL_CT_CLASS_FADER|MIXERCONTROL_CT_UNITS_UNSIGNED)\0"
	.byte	0x1
	.uleb128 0x169
	.ascii "MIXERCONTROL_CONTROLTYPE_VOLUME (MIXERCONTROL_CONTROLTYPE_FADER+1)\0"
	.byte	0x1
	.uleb128 0x16a
	.ascii "MIXERCONTROL_CONTROLTYPE_BASS (MIXERCONTROL_CONTROLTYPE_FADER+2)\0"
	.byte	0x1
	.uleb128 0x16b
	.ascii "MIXERCONTROL_CONTROLTYPE_TREBLE (MIXERCONTROL_CONTROLTYPE_FADER+3)\0"
	.byte	0x1
	.uleb128 0x16c
	.ascii "MIXERCONTROL_CONTROLTYPE_EQUALIZER (MIXERCONTROL_CONTROLTYPE_FADER+4)\0"
	.byte	0x1
	.uleb128 0x16d
	.ascii "MIXERCONTROL_CONTROLTYPE_SINGLESELECT (MIXERCONTROL_CT_CLASS_LIST|MIXERCONTROL_CT_SC_LIST_SINGLE|MIXERCONTROL_CT_UNITS_BOOLEAN)\0"
	.byte	0x1
	.uleb128 0x16e
	.ascii "MIXERCONTROL_CONTROLTYPE_MUX (MIXERCONTROL_CONTROLTYPE_SINGLESELECT+1)\0"
	.byte	0x1
	.uleb128 0x16f
	.ascii "MIXERCONTROL_CONTROLTYPE_MULTIPLESELECT (MIXERCONTROL_CT_CLASS_LIST|MIXERCONTROL_CT_SC_LIST_MULTIPLE|MIXERCONTROL_CT_UNITS_BOOLEAN)\0"
	.byte	0x1
	.uleb128 0x170
	.ascii "MIXERCONTROL_CONTROLTYPE_MIXER (MIXERCONTROL_CONTROLTYPE_MULTIPLESELECT+1)\0"
	.byte	0x1
	.uleb128 0x171
	.ascii "MIXERCONTROL_CONTROLTYPE_MICROTIME (MIXERCONTROL_CT_CLASS_TIME|MIXERCONTROL_CT_SC_TIME_MICROSECS|MIXERCONTROL_CT_UNITS_UNSIGNED)\0"
	.byte	0x1
	.uleb128 0x172
	.ascii "MIXERCONTROL_CONTROLTYPE_MILLITIME (MIXERCONTROL_CT_CLASS_TIME|MIXERCONTROL_CT_SC_TIME_MILLISECS|MIXERCONTROL_CT_UNITS_UNSIGNED)\0"
	.byte	0x1
	.uleb128 0x173
	.ascii "MIXER_GETLINECONTROLSF_ALL 0\0"
	.byte	0x1
	.uleb128 0x174
	.ascii "MIXER_GETLINECONTROLSF_ONEBYID 1\0"
	.byte	0x1
	.uleb128 0x175
	.ascii "MIXER_GETLINECONTROLSF_ONEBYTYPE 2\0"
	.byte	0x1
	.uleb128 0x176
	.ascii "MIXER_GETLINECONTROLSF_QUERYMASK 15\0"
	.byte	0x1
	.uleb128 0x177
	.ascii "MIXER_GETCONTROLDETAILSF_VALUE 0\0"
	.byte	0x1
	.uleb128 0x178
	.ascii "MIXER_GETCONTROLDETAILSF_LISTTEXT 1\0"
	.byte	0x1
	.uleb128 0x179
	.ascii "MIXER_GETCONTROLDETAILSF_QUERYMASK 15\0"
	.byte	0x1
	.uleb128 0x17a
	.ascii "MIXER_SETCONTROLDETAILSF_VALUE 0\0"
	.byte	0x1
	.uleb128 0x17b
	.ascii "MIXER_SETCONTROLDETAILSF_CUSTOM 1\0"
	.byte	0x1
	.uleb128 0x17c
	.ascii "MIXER_SETCONTROLDETAILSF_QUERYMASK 15\0"
	.byte	0x1
	.uleb128 0x17d
	.ascii "TIMERR_NOERROR 0\0"
	.byte	0x1
	.uleb128 0x17e
	.ascii "TIMERR_NOCANDO (TIMERR_BASE+1)\0"
	.byte	0x1
	.uleb128 0x17f
	.ascii "TIMERR_STRUCT (TIMERR_BASE+33)\0"
	.byte	0x1
	.uleb128 0x180
	.ascii "TIME_ONESHOT 0\0"
	.byte	0x1
	.uleb128 0x181
	.ascii "TIME_PERIODIC 1\0"
	.byte	0x1
	.uleb128 0x182
	.ascii "TIME_CALLBACK_FUNCTION 0\0"
	.byte	0x1
	.uleb128 0x183
	.ascii "TIME_CALLBACK_EVENT_SET 16\0"
	.byte	0x1
	.uleb128 0x184
	.ascii "TIME_CALLBACK_EVENT_PULSE 32\0"
	.byte	0x1
	.uleb128 0x188
	.ascii "JOYERR_NOERROR (0)\0"
	.byte	0x1
	.uleb128 0x189
	.ascii "JOYERR_PARMS (JOYERR_BASE+5)\0"
	.byte	0x1
	.uleb128 0x18a
	.ascii "JOYERR_NOCANDO (JOYERR_BASE+6)\0"
	.byte	0x1
	.uleb128 0x18b
	.ascii "JOYERR_UNPLUGGED (JOYERR_BASE+7)\0"
	.byte	0x1
	.uleb128 0x18c
	.ascii "JOY_BUTTON1 1\0"
	.byte	0x1
	.uleb128 0x18d
	.ascii "JOY_BUTTON2 2\0"
	.byte	0x1
	.uleb128 0x18e
	.ascii "JOY_BUTTON3 4\0"
	.byte	0x1
	.uleb128 0x18f
	.ascii "JOY_BUTTON4 8\0"
	.byte	0x1
	.uleb128 0x190
	.ascii "JOY_BUTTON1CHG 256\0"
	.byte	0x1
	.uleb128 0x191
	.ascii "JOY_BUTTON2CHG 512\0"
	.byte	0x1
	.uleb128 0x192
	.ascii "JOY_BUTTON3CHG 1024\0"
	.byte	0x1
	.uleb128 0x193
	.ascii "JOY_BUTTON4CHG 2048\0"
	.byte	0x1
	.uleb128 0x194
	.ascii "JOY_BUTTON5 257\0"
	.byte	0x1
	.uleb128 0x195
	.ascii "JOY_BUTTON6 513\0"
	.byte	0x1
	.uleb128 0x196
	.ascii "JOY_BUTTON7 1025\0"
	.byte	0x1
	.uleb128 0x197
	.ascii "JOY_BUTTON8 2049\0"
	.byte	0x1
	.uleb128 0x198
	.ascii "JOY_BUTTON9 256\0"
	.byte	0x1
	.uleb128 0x199
	.ascii "JOY_BUTTON10 512\0"
	.byte	0x1
	.uleb128 0x19a
	.ascii "JOY_BUTTON11 1024\0"
	.byte	0x1
	.uleb128 0x19b
	.ascii "JOY_BUTTON12 2048\0"
	.byte	0x1
	.uleb128 0x19c
	.ascii "JOY_BUTTON13 4096\0"
	.byte	0x1
	.uleb128 0x19d
	.ascii "JOY_BUTTON14 8192\0"
	.byte	0x1
	.uleb128 0x19e
	.ascii "JOY_BUTTON15 16384\0"
	.byte	0x1
	.uleb128 0x19f
	.ascii "JOY_BUTTON16 32768\0"
	.byte	0x1
	.uleb128 0x1a0
	.ascii "JOY_BUTTON17 65536\0"
	.byte	0x1
	.uleb128 0x1a1
	.ascii "JOY_BUTTON18 0x20000\0"
	.byte	0x1
	.uleb128 0x1a2
	.ascii "JOY_BUTTON19 0x40000\0"
	.byte	0x1
	.uleb128 0x1a3
	.ascii "JOY_BUTTON20 0x80000\0"
	.byte	0x1
	.uleb128 0x1a4
	.ascii "JOY_BUTTON21 0x100000\0"
	.byte	0x1
	.uleb128 0x1a5
	.ascii "JOY_BUTTON22 0x200000\0"
	.byte	0x1
	.uleb128 0x1a6
	.ascii "JOY_BUTTON23 0x400000\0"
	.byte	0x1
	.uleb128 0x1a7
	.ascii "JOY_BUTTON24 0x800000\0"
	.byte	0x1
	.uleb128 0x1a8
	.ascii "JOY_BUTTON25 0x1000000\0"
	.byte	0x1
	.uleb128 0x1a9
	.ascii "JOY_BUTTON26 0x2000000\0"
	.byte	0x1
	.uleb128 0x1aa
	.ascii "JOY_BUTTON27 0x4000000\0"
	.byte	0x1
	.uleb128 0x1ab
	.ascii "JOY_BUTTON28 0x8000000\0"
	.byte	0x1
	.uleb128 0x1ac
	.ascii "JOY_BUTTON29 0x10000000\0"
	.byte	0x1
	.uleb128 0x1ad
	.ascii "JOY_BUTTON30 0x20000000\0"
	.byte	0x1
	.uleb128 0x1ae
	.ascii "JOY_BUTTON31 0x40000000\0"
	.byte	0x1
	.uleb128 0x1af
	.ascii "JOY_BUTTON32 0x80000000\0"
	.byte	0x1
	.uleb128 0x1b0
	.ascii "JOY_POVCENTERED ((WORD)-1)\0"
	.byte	0x1
	.uleb128 0x1b1
	.ascii "JOY_POVFORWARD 0\0"
	.byte	0x1
	.uleb128 0x1b2
	.ascii "JOY_POVRIGHT 9000\0"
	.byte	0x1
	.uleb128 0x1b3
	.ascii "JOY_POVBACKWARD 18000\0"
	.byte	0x1
	.uleb128 0x1b4
	.ascii "JOY_POVLEFT 27000\0"
	.byte	0x1
	.uleb128 0x1b5
	.ascii "JOY_RETURNX 1\0"
	.byte	0x1
	.uleb128 0x1b6
	.ascii "JOY_RETURNY 2\0"
	.byte	0x1
	.uleb128 0x1b7
	.ascii "JOY_RETURNZ 4l\0"
	.byte	0x1
	.uleb128 0x1b8
	.ascii "JOY_RETURNR 8\0"
	.byte	0x1
	.uleb128 0x1b9
	.ascii "JOY_RETURNU 16\0"
	.byte	0x1
	.uleb128 0x1ba
	.ascii "JOY_RETURNV 32\0"
	.byte	0x1
	.uleb128 0x1bb
	.ascii "JOY_RETURNPOV 64\0"
	.byte	0x1
	.uleb128 0x1bc
	.ascii "JOY_RETURNBUTTONS 128\0"
	.byte	0x1
	.uleb128 0x1bd
	.ascii "JOY_RETURNRAWDATA 256\0"
	.byte	0x1
	.uleb128 0x1be
	.ascii "JOY_RETURNPOVCTS 512\0"
	.byte	0x1
	.uleb128 0x1bf
	.ascii "JOY_RETURNCENTERED 1024\0"
	.byte	0x1
	.uleb128 0x1c0
	.ascii "JOY_USEDEADZONE 2048\0"
	.byte	0x1
	.uleb128 0x1c1
	.ascii "JOY_RETURNALL (JOY_RETURNX|JOY_RETURNY|JOY_RETURNZ|JOY_RETURNR|JOY_RETURNU|JOY_RETURNV|JOY_RETURNPOV|JOY_RETURNBUTTONS)\0"
	.byte	0x1
	.uleb128 0x1c2
	.ascii "JOY_CAL_READALWAYS 0x10000\0"
	.byte	0x1
	.uleb128 0x1c3
	.ascii "JOY_CAL_READXYONLY 0x20000\0"
	.byte	0x1
	.uleb128 0x1c4
	.ascii "JOY_CAL_READ3 0x40000\0"
	.byte	0x1
	.uleb128 0x1c5
	.ascii "JOY_CAL_READ4 0x80000\0"
	.byte	0x1
	.uleb128 0x1c6
	.ascii "JOY_CAL_READXONLY 0x100000\0"
	.byte	0x1
	.uleb128 0x1c7
	.ascii "JOY_CAL_READYONLY 0x200000\0"
	.byte	0x1
	.uleb128 0x1c8
	.ascii "JOY_CAL_READ5 0x400000\0"
	.byte	0x1
	.uleb128 0x1c9
	.ascii "JOY_CAL_READ6 0x800000\0"
	.byte	0x1
	.uleb128 0x1ca
	.ascii "JOY_CAL_READZONLY 0x1000000\0"
	.byte	0x1
	.uleb128 0x1cb
	.ascii "JOY_CAL_READRONLY 0x2000000\0"
	.byte	0x1
	.uleb128 0x1cc
	.ascii "JOY_CAL_READUONLY 0x4000000\0"
	.byte	0x1
	.uleb128 0x1cd
	.ascii "JOY_CAL_READVONLY 0x8000000\0"
	.byte	0x1
	.uleb128 0x1ce
	.ascii "JOYSTICKID1 0\0"
	.byte	0x1
	.uleb128 0x1cf
	.ascii "JOYSTICKID2 1\0"
	.byte	0x1
	.uleb128 0x1d0
	.ascii "JOYCAPS_HASZ 1\0"
	.byte	0x1
	.uleb128 0x1d1
	.ascii "JOYCAPS_HASR 2\0"
	.byte	0x1
	.uleb128 0x1d2
	.ascii "JOYCAPS_HASU 4\0"
	.byte	0x1
	.uleb128 0x1d3
	.ascii "JOYCAPS_HASV 8\0"
	.byte	0x1
	.uleb128 0x1d4
	.ascii "JOYCAPS_HASPOV 16\0"
	.byte	0x1
	.uleb128 0x1d5
	.ascii "JOYCAPS_POV4DIR 32\0"
	.byte	0x1
	.uleb128 0x1d6
	.ascii "JOYCAPS_POVCTS 64\0"
	.byte	0x1
	.uleb128 0x1d7
	.ascii "MMIOERR_BASE 256\0"
	.byte	0x1
	.uleb128 0x1d8
	.ascii "MMIOERR_FILENOTFOUND (MMIOERR_BASE+1)\0"
	.byte	0x1
	.uleb128 0x1d9
	.ascii "MMIOERR_OUTOFMEMORY (MMIOERR_BASE+2)\0"
	.byte	0x1
	.uleb128 0x1da
	.ascii "MMIOERR_CANNOTOPEN (MMIOERR_BASE+3)\0"
	.byte	0x1
	.uleb128 0x1db
	.ascii "MMIOERR_CANNOTCLOSE (MMIOERR_BASE+4)\0"
	.byte	0x1
	.uleb128 0x1dc
	.ascii "MMIOERR_CANNOTREAD (MMIOERR_BASE+5)\0"
	.byte	0x1
	.uleb128 0x1dd
	.ascii "MMIOERR_CANNOTWRITE (MMIOERR_BASE+6)\0"
	.byte	0x1
	.uleb128 0x1de
	.ascii "MMIOERR_CANNOTSEEK (MMIOERR_BASE+7)\0"
	.byte	0x1
	.uleb128 0x1df
	.ascii "MMIOERR_CANNOTEXPAND (MMIOERR_BASE+8)\0"
	.byte	0x1
	.uleb128 0x1e0
	.ascii "MMIOERR_CHUNKNOTFOUND (MMIOERR_BASE+9)\0"
	.byte	0x1
	.uleb128 0x1e1
	.ascii "MMIOERR_UNBUFFERED (MMIOERR_BASE+10)\0"
	.byte	0x1
	.uleb128 0x1e2
	.ascii "MMIOERR_PATHNOTFOUND (MMIOERR_BASE+11)\0"
	.byte	0x1
	.uleb128 0x1e3
	.ascii "MMIOERR_ACCESSDENIED (MMIOERR_BASE+12)\0"
	.byte	0x1
	.uleb128 0x1e4
	.ascii "MMIOERR_SHARINGVIOLATION (MMIOERR_BASE+13)\0"
	.byte	0x1
	.uleb128 0x1e5
	.ascii "MMIOERR_NETWORKERROR (MMIOERR_BASE+14)\0"
	.byte	0x1
	.uleb128 0x1e6
	.ascii "MMIOERR_TOOMANYOPENFILES (MMIOERR_BASE+15)\0"
	.byte	0x1
	.uleb128 0x1e7
	.ascii "MMIOERR_INVALIDFILE (MMIOERR_BASE+16)\0"
	.byte	0x1
	.uleb128 0x1e8
	.ascii "CFSEPCHAR '+'\0"
	.byte	0x1
	.uleb128 0x1e9
	.ascii "MMIO_RWMODE 3\0"
	.byte	0x1
	.uleb128 0x1ea
	.ascii "MMIO_SHAREMODE 0x70\0"
	.byte	0x1
	.uleb128 0x1eb
	.ascii "MMIO_CREATE 0x1000\0"
	.byte	0x1
	.uleb128 0x1ec
	.ascii "MMIO_PARSE 256\0"
	.byte	0x1
	.uleb128 0x1ed
	.ascii "MMIO_DELETE 512\0"
	.byte	0x1
	.uleb128 0x1ee
	.ascii "MMIO_EXIST 0x4000\0"
	.byte	0x1
	.uleb128 0x1ef
	.ascii "MMIO_ALLOCBUF 0x10000\0"
	.byte	0x1
	.uleb128 0x1f0
	.ascii "MMIO_GETTEMP 0x20000\0"
	.byte	0x1
	.uleb128 0x1f1
	.ascii "MMIO_DIRTY 0x10000000\0"
	.byte	0x1
	.uleb128 0x1f2
	.ascii "MMIO_READ 0\0"
	.byte	0x1
	.uleb128 0x1f3
	.ascii "MMIO_WRITE 1\0"
	.byte	0x1
	.uleb128 0x1f4
	.ascii "MMIO_READWRITE 2\0"
	.byte	0x1
	.uleb128 0x1f5
	.ascii "MMIO_COMPAT 0\0"
	.byte	0x1
	.uleb128 0x1f6
	.ascii "MMIO_EXCLUSIVE 16\0"
	.byte	0x1
	.uleb128 0x1f7
	.ascii "MMIO_DENYWRITE 32\0"
	.byte	0x1
	.uleb128 0x1f8
	.ascii "MMIO_DENYREAD 0x30\0"
	.byte	0x1
	.uleb128 0x1f9
	.ascii "MMIO_DENYNONE 64\0"
	.byte	0x1
	.uleb128 0x1fa
	.ascii "MMIO_FHOPEN 16\0"
	.byte	0x1
	.uleb128 0x1fb
	.ascii "MMIO_EMPTYBUF 16\0"
	.byte	0x1
	.uleb128 0x1fc
	.ascii "MMIO_TOUPPER 16\0"
	.byte	0x1
	.uleb128 0x1fd
	.ascii "MMIO_INSTALLPROC 0x10000\0"
	.byte	0x1
	.uleb128 0x1fe
	.ascii "MMIO_GLOBALPROC 0x10000000\0"
	.byte	0x1
	.uleb128 0x1ff
	.ascii "MMIO_REMOVEPROC 0x20000\0"
	.byte	0x1
	.uleb128 0x200
	.ascii "MMIO_UNICODEPROC 0x1000000\0"
	.byte	0x1
	.uleb128 0x201
	.ascii "MMIO_FINDPROC 0x40000\0"
	.byte	0x1
	.uleb128 0x202
	.ascii "MMIO_FINDCHUNK 16\0"
	.byte	0x1
	.uleb128 0x203
	.ascii "MMIO_FINDRIFF 32\0"
	.byte	0x1
	.uleb128 0x204
	.ascii "MMIO_FINDLIST 64\0"
	.byte	0x1
	.uleb128 0x205
	.ascii "MMIO_CREATERIFF 32\0"
	.byte	0x1
	.uleb128 0x206
	.ascii "MMIO_CREATELIST 64\0"
	.byte	0x1
	.uleb128 0x207
	.ascii "MMIOM_READ MMIO_READ\0"
	.byte	0x1
	.uleb128 0x208
	.ascii "MMIOM_WRITE MMIO_WRITE\0"
	.byte	0x1
	.uleb128 0x209
	.ascii "MMIOM_SEEK 2\0"
	.byte	0x1
	.uleb128 0x20a
	.ascii "MMIOM_OPEN 3\0"
	.byte	0x1
	.uleb128 0x20b
	.ascii "MMIOM_CLOSE 4\0"
	.byte	0x1
	.uleb128 0x20c
	.ascii "MMIOM_WRITEFLUSH 5\0"
	.byte	0x1
	.uleb128 0x20d
	.ascii "MMIOM_RENAME 6\0"
	.byte	0x1
	.uleb128 0x20e
	.ascii "MMIOM_USER 0x8000\0"
	.byte	0x1
	.uleb128 0x20f
	.ascii "FOURCC_RIFF mmioFOURCC('R', 'I', 'F', 'F')\0"
	.byte	0x1
	.uleb128 0x210
	.ascii "FOURCC_LIST mmioFOURCC('L', 'I', 'S', 'T')\0"
	.byte	0x1
	.uleb128 0x211
	.ascii "FOURCC_DOS mmioFOURCC('D', 'O', 'S', ' ')\0"
	.byte	0x1
	.uleb128 0x212
	.ascii "FOURCC_MEM mmioFOURCC('M', 'E', 'M', ' ')\0"
	.byte	0x1
	.uleb128 0x213
	.ascii "MMIO_DEFAULTBUFFER 8192\0"
	.byte	0x1
	.uleb128 0x214
	.ascii "MCIERR_INVALID_DEVICE_ID (MCIERR_BASE+1)\0"
	.byte	0x1
	.uleb128 0x215
	.ascii "MCIERR_UNRECOGNIZED_KEYWORD (MCIERR_BASE+3)\0"
	.byte	0x1
	.uleb128 0x216
	.ascii "MCIERR_UNRECOGNIZED_COMMAND (MCIERR_BASE+5)\0"
	.byte	0x1
	.uleb128 0x217
	.ascii "MCIERR_HARDWARE (MCIERR_BASE+6)\0"
	.byte	0x1
	.uleb128 0x218
	.ascii "MCIERR_INVALID_DEVICE_NAME (MCIERR_BASE+7)\0"
	.byte	0x1
	.uleb128 0x219
	.ascii "MCIERR_OUT_OF_MEMORY (MCIERR_BASE+8)\0"
	.byte	0x1
	.uleb128 0x21a
	.ascii "MCIERR_DEVICE_OPEN (MCIERR_BASE+9)\0"
	.byte	0x1
	.uleb128 0x21b
	.ascii "MCIERR_CANNOT_LOAD_DRIVER (MCIERR_BASE+10)\0"
	.byte	0x1
	.uleb128 0x21c
	.ascii "MCIERR_MISSING_COMMAND_STRING (MCIERR_BASE+11)\0"
	.byte	0x1
	.uleb128 0x21d
	.ascii "MCIERR_PARAM_OVERFLOW (MCIERR_BASE+12)\0"
	.byte	0x1
	.uleb128 0x21e
	.ascii "MCIERR_MISSING_STRING_ARGUMENT (MCIERR_BASE+13)\0"
	.byte	0x1
	.uleb128 0x21f
	.ascii "MCIERR_BAD_INTEGER (MCIERR_BASE+14)\0"
	.byte	0x1
	.uleb128 0x220
	.ascii "MCIERR_PARSER_INTERNAL (MCIERR_BASE+15)\0"
	.byte	0x1
	.uleb128 0x221
	.ascii "MCIERR_DRIVER_INTERNAL (MCIERR_BASE+16)\0"
	.byte	0x1
	.uleb128 0x222
	.ascii "MCIERR_MISSING_PARAMETER (MCIERR_BASE+17)\0"
	.byte	0x1
	.uleb128 0x223
	.ascii "MCIERR_UNSUPPORTED_FUNCTION (MCIERR_BASE+18)\0"
	.byte	0x1
	.uleb128 0x224
	.ascii "MCIERR_FILE_NOT_FOUND (MCIERR_BASE+19)\0"
	.byte	0x1
	.uleb128 0x225
	.ascii "MCIERR_DEVICE_NOT_READY (MCIERR_BASE+20)\0"
	.byte	0x1
	.uleb128 0x226
	.ascii "MCIERR_INTERNAL (MCIERR_BASE+21)\0"
	.byte	0x1
	.uleb128 0x227
	.ascii "MCIERR_DRIVER (MCIERR_BASE+22)\0"
	.byte	0x1
	.uleb128 0x228
	.ascii "MCIERR_CANNOT_USE_ALL (MCIERR_BASE+23)\0"
	.byte	0x1
	.uleb128 0x229
	.ascii "MCIERR_MULTIPLE (MCIERR_BASE+24)\0"
	.byte	0x1
	.uleb128 0x22a
	.ascii "MCIERR_EXTENSION_NOT_FOUND (MCIERR_BASE+25)\0"
	.byte	0x1
	.uleb128 0x22b
	.ascii "MCIERR_OUTOFRANGE (MCIERR_BASE+26)\0"
	.byte	0x1
	.uleb128 0x22c
	.ascii "MCIERR_FLAGS_NOT_COMPATIBLE (MCIERR_BASE+28)\0"
	.byte	0x1
	.uleb128 0x22d
	.ascii "MCIERR_FILE_NOT_SAVED (MCIERR_BASE+30)\0"
	.byte	0x1
	.uleb128 0x22e
	.ascii "MCIERR_DEVICE_TYPE_REQUIRED (MCIERR_BASE+31)\0"
	.byte	0x1
	.uleb128 0x22f
	.ascii "MCIERR_DEVICE_LOCKED (MCIERR_BASE+32)\0"
	.byte	0x1
	.uleb128 0x230
	.ascii "MCIERR_DUPLICATE_ALIAS (MCIERR_BASE+33)\0"
	.byte	0x1
	.uleb128 0x231
	.ascii "MCIERR_BAD_CONSTANT (MCIERR_BASE+34)\0"
	.byte	0x1
	.uleb128 0x232
	.ascii "MCIERR_MUST_USE_SHAREABLE (MCIERR_BASE+35)\0"
	.byte	0x1
	.uleb128 0x233
	.ascii "MCIERR_MISSING_DEVICE_NAME (MCIERR_BASE+36)\0"
	.byte	0x1
	.uleb128 0x234
	.ascii "MCIERR_BAD_TIME_FORMAT (MCIERR_BASE+37)\0"
	.byte	0x1
	.uleb128 0x235
	.ascii "MCIERR_NO_CLOSING_QUOTE (MCIERR_BASE+38)\0"
	.byte	0x1
	.uleb128 0x236
	.ascii "MCIERR_DUPLICATE_FLAGS (MCIERR_BASE+39)\0"
	.byte	0x1
	.uleb128 0x237
	.ascii "MCIERR_INVALID_FILE (MCIERR_BASE+40)\0"
	.byte	0x1
	.uleb128 0x238
	.ascii "MCIERR_NULL_PARAMETER_BLOCK (MCIERR_BASE+41)\0"
	.byte	0x1
	.uleb128 0x239
	.ascii "MCIERR_UNNAMED_RESOURCE (MCIERR_BASE+42)\0"
	.byte	0x1
	.uleb128 0x23a
	.ascii "MCIERR_NEW_REQUIRES_ALIAS (MCIERR_BASE+43)\0"
	.byte	0x1
	.uleb128 0x23b
	.ascii "MCIERR_NOTIFY_ON_AUTO_OPEN (MCIERR_BASE+44)\0"
	.byte	0x1
	.uleb128 0x23c
	.ascii "MCIERR_NO_ELEMENT_ALLOWED (MCIERR_BASE+45)\0"
	.byte	0x1
	.uleb128 0x23d
	.ascii "MCIERR_NONAPPLICABLE_FUNCTION (MCIERR_BASE+46)\0"
	.byte	0x1
	.uleb128 0x23e
	.ascii "MCIERR_ILLEGAL_FOR_AUTO_OPEN (MCIERR_BASE+47)\0"
	.byte	0x1
	.uleb128 0x23f
	.ascii "MCIERR_FILENAME_REQUIRED (MCIERR_BASE+48)\0"
	.byte	0x1
	.uleb128 0x240
	.ascii "MCIERR_EXTRA_CHARACTERS (MCIERR_BASE+49)\0"
	.byte	0x1
	.uleb128 0x241
	.ascii "MCIERR_DEVICE_NOT_INSTALLED (MCIERR_BASE+50)\0"
	.byte	0x1
	.uleb128 0x242
	.ascii "MCIERR_GET_CD (MCIERR_BASE+51)\0"
	.byte	0x1
	.uleb128 0x243
	.ascii "MCIERR_SET_CD (MCIERR_BASE+52)\0"
	.byte	0x1
	.uleb128 0x244
	.ascii "MCIERR_SET_DRIVE (MCIERR_BASE+53)\0"
	.byte	0x1
	.uleb128 0x245
	.ascii "MCIERR_DEVICE_LENGTH (MCIERR_BASE+54)\0"
	.byte	0x1
	.uleb128 0x246
	.ascii "MCIERR_DEVICE_ORD_LENGTH (MCIERR_BASE+55)\0"
	.byte	0x1
	.uleb128 0x247
	.ascii "MCIERR_NO_INTEGER (MCIERR_BASE+56)\0"
	.byte	0x1
	.uleb128 0x248
	.ascii "MCIERR_WAVE_OUTPUTSINUSE (MCIERR_BASE+64)\0"
	.byte	0x1
	.uleb128 0x249
	.ascii "MCIERR_WAVE_SETOUTPUTINUSE (MCIERR_BASE+65)\0"
	.byte	0x1
	.uleb128 0x24a
	.ascii "MCIERR_WAVE_INPUTSINUSE (MCIERR_BASE+66)\0"
	.byte	0x1
	.uleb128 0x24b
	.ascii "MCIERR_WAVE_SETINPUTINUSE (MCIERR_BASE+67)\0"
	.byte	0x1
	.uleb128 0x24c
	.ascii "MCIERR_WAVE_OUTPUTUNSPECIFIED (MCIERR_BASE+68)\0"
	.byte	0x1
	.uleb128 0x24d
	.ascii "MCIERR_WAVE_INPUTUNSPECIFIED (MCIERR_BASE+69)\0"
	.byte	0x1
	.uleb128 0x24e
	.ascii "MCIERR_WAVE_OUTPUTSUNSUITABLE (MCIERR_BASE+70)\0"
	.byte	0x1
	.uleb128 0x24f
	.ascii "MCIERR_WAVE_SETOUTPUTUNSUITABLE (MCIERR_BASE+71)\0"
	.byte	0x1
	.uleb128 0x250
	.ascii "MCIERR_WAVE_INPUTSUNSUITABLE (MCIERR_BASE+72)\0"
	.byte	0x1
	.uleb128 0x251
	.ascii "MCIERR_WAVE_SETINPUTUNSUITABLE (MCIERR_BASE+73)\0"
	.byte	0x1
	.uleb128 0x252
	.ascii "MCIERR_SEQ_DIV_INCOMPATIBLE (MCIERR_BASE+80)\0"
	.byte	0x1
	.uleb128 0x253
	.ascii "MCIERR_SEQ_PORT_INUSE (MCIERR_BASE+81)\0"
	.byte	0x1
	.uleb128 0x254
	.ascii "MCIERR_SEQ_PORT_NONEXISTENT (MCIERR_BASE+82)\0"
	.byte	0x1
	.uleb128 0x255
	.ascii "MCIERR_SEQ_PORT_MAPNODEVICE (MCIERR_BASE+83)\0"
	.byte	0x1
	.uleb128 0x256
	.ascii "MCIERR_SEQ_PORT_MISCERROR (MCIERR_BASE+84)\0"
	.byte	0x1
	.uleb128 0x257
	.ascii "MCIERR_SEQ_TIMER (MCIERR_BASE+85)\0"
	.byte	0x1
	.uleb128 0x258
	.ascii "MCIERR_SEQ_PORTUNSPECIFIED (MCIERR_BASE+86)\0"
	.byte	0x1
	.uleb128 0x259
	.ascii "MCIERR_SEQ_NOMIDIPRESENT (MCIERR_BASE+87)\0"
	.byte	0x1
	.uleb128 0x25a
	.ascii "MCIERR_NO_WINDOW (MCIERR_BASE+90)\0"
	.byte	0x1
	.uleb128 0x25b
	.ascii "MCIERR_CREATEWINDOW (MCIERR_BASE+91)\0"
	.byte	0x1
	.uleb128 0x25c
	.ascii "MCIERR_FILE_READ (MCIERR_BASE+92)\0"
	.byte	0x1
	.uleb128 0x25d
	.ascii "MCIERR_FILE_WRITE (MCIERR_BASE+93)\0"
	.byte	0x1
	.uleb128 0x25e
	.ascii "MCIERR_NO_IDENTITY (MCIERR_BASE+94)\0"
	.byte	0x1
	.uleb128 0x25f
	.ascii "MCIERR_CUSTOM_DRIVER_BASE (MCIERR_BASE+256)\0"
	.byte	0x1
	.uleb128 0x260
	.ascii "MCI_FIRST DRV_MCI_FIRST\0"
	.byte	0x1
	.uleb128 0x261
	.ascii "MCI_OPEN 0x803\0"
	.byte	0x1
	.uleb128 0x262
	.ascii "MCI_CLOSE 0x804\0"
	.byte	0x1
	.uleb128 0x263
	.ascii "MCI_ESCAPE 0x805\0"
	.byte	0x1
	.uleb128 0x264
	.ascii "MCI_PLAY 0x806\0"
	.byte	0x1
	.uleb128 0x265
	.ascii "MCI_SEEK 0x807\0"
	.byte	0x1
	.uleb128 0x266
	.ascii "MCI_STOP 0x808\0"
	.byte	0x1
	.uleb128 0x267
	.ascii "MCI_PAUSE 0x809\0"
	.byte	0x1
	.uleb128 0x268
	.ascii "MCI_INFO 0x80A\0"
	.byte	0x1
	.uleb128 0x269
	.ascii "MCI_GETDEVCAPS 0x80B\0"
	.byte	0x1
	.uleb128 0x26a
	.ascii "MCI_SPIN 0x80C\0"
	.byte	0x1
	.uleb128 0x26b
	.ascii "MCI_SET 0x80D\0"
	.byte	0x1
	.uleb128 0x26c
	.ascii "MCI_STEP 0x80E\0"
	.byte	0x1
	.uleb128 0x26d
	.ascii "MCI_RECORD 0x80F\0"
	.byte	0x1
	.uleb128 0x26e
	.ascii "MCI_SYSINFO 0x810\0"
	.byte	0x1
	.uleb128 0x26f
	.ascii "MCI_BREAK 0x811\0"
	.byte	0x1
	.uleb128 0x270
	.ascii "MCI_SAVE 0x813\0"
	.byte	0x1
	.uleb128 0x271
	.ascii "MCI_STATUS 0x814\0"
	.byte	0x1
	.uleb128 0x272
	.ascii "MCI_CUE 0x830\0"
	.byte	0x1
	.uleb128 0x273
	.ascii "MCI_REALIZE 0x840\0"
	.byte	0x1
	.uleb128 0x274
	.ascii "MCI_WINDOW 0x841\0"
	.byte	0x1
	.uleb128 0x275
	.ascii "MCI_PUT 0x842\0"
	.byte	0x1
	.uleb128 0x276
	.ascii "MCI_WHERE 0x843\0"
	.byte	0x1
	.uleb128 0x277
	.ascii "MCI_FREEZE 0x844\0"
	.byte	0x1
	.uleb128 0x278
	.ascii "MCI_UNFREEZE 0x845\0"
	.byte	0x1
	.uleb128 0x279
	.ascii "MCI_LOAD 0x850\0"
	.byte	0x1
	.uleb128 0x27a
	.ascii "MCI_CUT 0x851\0"
	.byte	0x1
	.uleb128 0x27b
	.ascii "MCI_COPY 0x852\0"
	.byte	0x1
	.uleb128 0x27c
	.ascii "MCI_PASTE 0x853\0"
	.byte	0x1
	.uleb128 0x27d
	.ascii "MCI_UPDATE 0x854\0"
	.byte	0x1
	.uleb128 0x27e
	.ascii "MCI_RESUME 0x855\0"
	.byte	0x1
	.uleb128 0x27f
	.ascii "MCI_DELETE 0x856\0"
	.byte	0x1
	.uleb128 0x280
	.ascii "MCI_USER_MESSAGES (DRV_MCI_FIRST+0x400)\0"
	.byte	0x1
	.uleb128 0x281
	.ascii "MCI_LAST 0xFFF\0"
	.byte	0x1
	.uleb128 0x282
	.ascii "MCI_ALL_DEVICE_ID ((MCIDEVICEID)-1)\0"
	.byte	0x1
	.uleb128 0x283
	.ascii "MCI_DEVTYPE_VCR 513\0"
	.byte	0x1
	.uleb128 0x284
	.ascii "MCI_DEVTYPE_VIDEODISC 514\0"
	.byte	0x1
	.uleb128 0x285
	.ascii "MCI_DEVTYPE_OVERLAY 515\0"
	.byte	0x1
	.uleb128 0x286
	.ascii "MCI_DEVTYPE_CD_AUDIO 516\0"
	.byte	0x1
	.uleb128 0x287
	.ascii "MCI_DEVTYPE_DAT 517\0"
	.byte	0x1
	.uleb128 0x288
	.ascii "MCI_DEVTYPE_SCANNER 518\0"
	.byte	0x1
	.uleb128 0x289
	.ascii "MCI_DEVTYPE_ANIMATION 519\0"
	.byte	0x1
	.uleb128 0x28a
	.ascii "MCI_DEVTYPE_DIGITAL_VIDEO 520\0"
	.byte	0x1
	.uleb128 0x28b
	.ascii "MCI_DEVTYPE_OTHER 521\0"
	.byte	0x1
	.uleb128 0x28c
	.ascii "MCI_DEVTYPE_WAVEFORM_AUDIO 522\0"
	.byte	0x1
	.uleb128 0x28d
	.ascii "MCI_DEVTYPE_SEQUENCER 523\0"
	.byte	0x1
	.uleb128 0x28e
	.ascii "MCI_DEVTYPE_FIRST MCI_DEVTYPE_VCR\0"
	.byte	0x1
	.uleb128 0x28f
	.ascii "MCI_DEVTYPE_LAST MCI_DEVTYPE_SEQUENCER\0"
	.byte	0x1
	.uleb128 0x290
	.ascii "MCI_DEVTYPE_FIRST_USER 0x1000\0"
	.byte	0x1
	.uleb128 0x291
	.ascii "MCI_MODE_NOT_READY (MCI_STRING_OFFSET+12)\0"
	.byte	0x1
	.uleb128 0x292
	.ascii "MCI_MODE_STOP (MCI_STRING_OFFSET+13)\0"
	.byte	0x1
	.uleb128 0x293
	.ascii "MCI_MODE_PLAY (MCI_STRING_OFFSET+14)\0"
	.byte	0x1
	.uleb128 0x294
	.ascii "MCI_MODE_RECORD (MCI_STRING_OFFSET+15)\0"
	.byte	0x1
	.uleb128 0x295
	.ascii "MCI_MODE_SEEK (MCI_STRING_OFFSET+16)\0"
	.byte	0x1
	.uleb128 0x296
	.ascii "MCI_MODE_PAUSE (MCI_STRING_OFFSET+17)\0"
	.byte	0x1
	.uleb128 0x297
	.ascii "MCI_MODE_OPEN (MCI_STRING_OFFSET+18)\0"
	.byte	0x1
	.uleb128 0x298
	.ascii "MCI_FORMAT_MILLISECONDS 0\0"
	.byte	0x1
	.uleb128 0x299
	.ascii "MCI_FORMAT_HMS 1\0"
	.byte	0x1
	.uleb128 0x29a
	.ascii "MCI_FORMAT_MSF 2\0"
	.byte	0x1
	.uleb128 0x29b
	.ascii "MCI_FORMAT_FRAMES 3\0"
	.byte	0x1
	.uleb128 0x29c
	.ascii "MCI_FORMAT_SMPTE_24 4\0"
	.byte	0x1
	.uleb128 0x29d
	.ascii "MCI_FORMAT_SMPTE_25 5\0"
	.byte	0x1
	.uleb128 0x29e
	.ascii "MCI_FORMAT_SMPTE_30 6\0"
	.byte	0x1
	.uleb128 0x29f
	.ascii "MCI_FORMAT_SMPTE_30DROP 7\0"
	.byte	0x1
	.uleb128 0x2a0
	.ascii "MCI_FORMAT_BYTES 8\0"
	.byte	0x1
	.uleb128 0x2a1
	.ascii "MCI_FORMAT_SAMPLES 9\0"
	.byte	0x1
	.uleb128 0x2a2
	.ascii "MCI_FORMAT_TMSF 10\0"
	.byte	0x1
	.uleb128 0x2a3
	.ascii "MCI_MSF_MINUTE(t) ((BYTE)(t))\0"
	.byte	0x1
	.uleb128 0x2a4
	.ascii "MCI_MSF_SECOND(t) ((BYTE)(((WORD)(t))>>8))\0"
	.byte	0x1
	.uleb128 0x2a5
	.ascii "MCI_MSF_FRAME(t) ((BYTE)((t)>>16))\0"
	.byte	0x1
	.uleb128 0x2a6
	.ascii "MCI_MAKE_MSF(m,s,f) ((DWORD)(((BYTE)(m)|((WORD)(s)<<8))|(((DWORD)(BYTE)(f))<<16)))\0"
	.byte	0x1
	.uleb128 0x2a7
	.ascii "MCI_TMSF_TRACK(t) ((BYTE)(t))\0"
	.byte	0x1
	.uleb128 0x2a8
	.ascii "MCI_TMSF_MINUTE(t) ((BYTE)(((WORD)(t))>>8))\0"
	.byte	0x1
	.uleb128 0x2a9
	.ascii "MCI_TMSF_SECOND(t) ((BYTE)((t)>>16))\0"
	.byte	0x1
	.uleb128 0x2aa
	.ascii "MCI_TMSF_FRAME(t) ((BYTE)((t)>>24))\0"
	.byte	0x1
	.uleb128 0x2ab
	.ascii "MCI_MAKE_TMSF(t,m,s,f) ((DWORD)(((BYTE)(t)|((WORD)(m)<<8))|(((DWORD)(BYTE)(s)|((WORD)(f)<<8))<<16)))\0"
	.byte	0x1
	.uleb128 0x2ac
	.ascii "MCI_HMS_HOUR(t) ((BYTE)(t))\0"
	.byte	0x1
	.uleb128 0x2ad
	.ascii "MCI_HMS_MINUTE(t) ((BYTE)(((WORD)(t))>>8))\0"
	.byte	0x1
	.uleb128 0x2ae
	.ascii "MCI_HMS_SECOND(t) ((BYTE)((t)>>16))\0"
	.byte	0x1
	.uleb128 0x2af
	.ascii "MCI_MAKE_HMS(h,m,s) ((DWORD)(((BYTE)(h)|((WORD)(m)<<8))|(((DWORD)(BYTE)(s))<<16)))\0"
	.byte	0x1
	.uleb128 0x2b0
	.ascii "MCI_NOTIFY_SUCCESSFUL 1\0"
	.byte	0x1
	.uleb128 0x2b1
	.ascii "MCI_NOTIFY_SUPERSEDED 2\0"
	.byte	0x1
	.uleb128 0x2b2
	.ascii "MCI_NOTIFY_ABORTED 4\0"
	.byte	0x1
	.uleb128 0x2b3
	.ascii "MCI_NOTIFY_FAILURE 8\0"
	.byte	0x1
	.uleb128 0x2b4
	.ascii "MCI_NOTIFY 1\0"
	.byte	0x1
	.uleb128 0x2b5
	.ascii "MCI_WAIT 2\0"
	.byte	0x1
	.uleb128 0x2b6
	.ascii "MCI_FROM 4\0"
	.byte	0x1
	.uleb128 0x2b7
	.ascii "MCI_TO 8\0"
	.byte	0x1
	.uleb128 0x2b8
	.ascii "MCI_TRACK 16\0"
	.byte	0x1
	.uleb128 0x2b9
	.ascii "MCI_OPEN_SHAREABLE 256\0"
	.byte	0x1
	.uleb128 0x2ba
	.ascii "MCI_OPEN_ELEMENT 512\0"
	.byte	0x1
	.uleb128 0x2bb
	.ascii "MCI_OPEN_ALIAS 1024\0"
	.byte	0x1
	.uleb128 0x2bc
	.ascii "MCI_OPEN_ELEMENT_ID 2048\0"
	.byte	0x1
	.uleb128 0x2bd
	.ascii "MCI_OPEN_TYPE_ID 0x1000\0"
	.byte	0x1
	.uleb128 0x2be
	.ascii "MCI_OPEN_TYPE 0x2000\0"
	.byte	0x1
	.uleb128 0x2bf
	.ascii "MCI_SEEK_TO_START 256\0"
	.byte	0x1
	.uleb128 0x2c0
	.ascii "MCI_SEEK_TO_END 512\0"
	.byte	0x1
	.uleb128 0x2c1
	.ascii "MCI_STATUS_ITEM 256\0"
	.byte	0x1
	.uleb128 0x2c2
	.ascii "MCI_STATUS_START 512\0"
	.byte	0x1
	.uleb128 0x2c3
	.ascii "MCI_STATUS_LENGTH 1\0"
	.byte	0x1
	.uleb128 0x2c4
	.ascii "MCI_STATUS_POSITION 2\0"
	.byte	0x1
	.uleb128 0x2c5
	.ascii "MCI_STATUS_NUMBER_OF_TRACKS 3\0"
	.byte	0x1
	.uleb128 0x2c6
	.ascii "MCI_STATUS_MODE 4\0"
	.byte	0x1
	.uleb128 0x2c7
	.ascii "MCI_STATUS_MEDIA_PRESENT 5\0"
	.byte	0x1
	.uleb128 0x2c8
	.ascii "MCI_STATUS_TIME_FORMAT 6\0"
	.byte	0x1
	.uleb128 0x2c9
	.ascii "MCI_STATUS_READY 7\0"
	.byte	0x1
	.uleb128 0x2ca
	.ascii "MCI_STATUS_CURRENT_TRACK 8\0"
	.byte	0x1
	.uleb128 0x2cb
	.ascii "MCI_INFO_PRODUCT 256\0"
	.byte	0x1
	.uleb128 0x2cc
	.ascii "MCI_INFO_FILE 512\0"
	.byte	0x1
	.uleb128 0x2cd
	.ascii "MCI_INFO_MEDIA_UPC 1024\0"
	.byte	0x1
	.uleb128 0x2ce
	.ascii "MCI_INFO_MEDIA_IDENTITY 2048\0"
	.byte	0x1
	.uleb128 0x2cf
	.ascii "MCI_INFO_NAME 0x1000\0"
	.byte	0x1
	.uleb128 0x2d0
	.ascii "MCI_INFO_COPYRIGHT 0x2000\0"
	.byte	0x1
	.uleb128 0x2d1
	.ascii "MCI_GETDEVCAPS_ITEM 256\0"
	.byte	0x1
	.uleb128 0x2d2
	.ascii "MCI_GETDEVCAPS_CAN_RECORD 1\0"
	.byte	0x1
	.uleb128 0x2d3
	.ascii "MCI_GETDEVCAPS_HAS_AUDIO 2\0"
	.byte	0x1
	.uleb128 0x2d4
	.ascii "MCI_GETDEVCAPS_HAS_VIDEO 3\0"
	.byte	0x1
	.uleb128 0x2d5
	.ascii "MCI_GETDEVCAPS_DEVICE_TYPE 4\0"
	.byte	0x1
	.uleb128 0x2d6
	.ascii "MCI_GETDEVCAPS_USES_FILES 5\0"
	.byte	0x1
	.uleb128 0x2d7
	.ascii "MCI_GETDEVCAPS_COMPOUND_DEVICE 6\0"
	.byte	0x1
	.uleb128 0x2d8
	.ascii "MCI_GETDEVCAPS_CAN_EJECT 7\0"
	.byte	0x1
	.uleb128 0x2d9
	.ascii "MCI_GETDEVCAPS_CAN_PLAY 8\0"
	.byte	0x1
	.uleb128 0x2da
	.ascii "MCI_GETDEVCAPS_CAN_SAVE 9\0"
	.byte	0x1
	.uleb128 0x2db
	.ascii "MCI_SYSINFO_QUANTITY 256\0"
	.byte	0x1
	.uleb128 0x2dc
	.ascii "MCI_SYSINFO_OPEN 512\0"
	.byte	0x1
	.uleb128 0x2dd
	.ascii "MCI_SYSINFO_NAME 1024\0"
	.byte	0x1
	.uleb128 0x2de
	.ascii "MCI_SYSINFO_INSTALLNAME 2048\0"
	.byte	0x1
	.uleb128 0x2df
	.ascii "MCI_SET_DOOR_OPEN 256\0"
	.byte	0x1
	.uleb128 0x2e0
	.ascii "MCI_SET_DOOR_CLOSED 512\0"
	.byte	0x1
	.uleb128 0x2e1
	.ascii "MCI_SET_TIME_FORMAT 1024\0"
	.byte	0x1
	.uleb128 0x2e2
	.ascii "MCI_SET_AUDIO 2048\0"
	.byte	0x1
	.uleb128 0x2e3
	.ascii "MCI_SET_VIDEO 0x1000\0"
	.byte	0x1
	.uleb128 0x2e4
	.ascii "MCI_SET_ON 0x2000\0"
	.byte	0x1
	.uleb128 0x2e5
	.ascii "MCI_SET_OFF 0x4000\0"
	.byte	0x1
	.uleb128 0x2e6
	.ascii "MCI_SET_AUDIO_ALL 0\0"
	.byte	0x1
	.uleb128 0x2e7
	.ascii "MCI_SET_AUDIO_LEFT 1\0"
	.byte	0x1
	.uleb128 0x2e8
	.ascii "MCI_SET_AUDIO_RIGHT 2\0"
	.byte	0x1
	.uleb128 0x2e9
	.ascii "MCI_BREAK_KEY 256\0"
	.byte	0x1
	.uleb128 0x2ea
	.ascii "MCI_BREAK_HWND 512\0"
	.byte	0x1
	.uleb128 0x2eb
	.ascii "MCI_BREAK_OFF 1024\0"
	.byte	0x1
	.uleb128 0x2ec
	.ascii "MCI_RECORD_INSERT 256\0"
	.byte	0x1
	.uleb128 0x2ed
	.ascii "MCI_RECORD_OVERWRITE 512\0"
	.byte	0x1
	.uleb128 0x2ee
	.ascii "MCI_SAVE_FILE 256\0"
	.byte	0x1
	.uleb128 0x2ef
	.ascii "MCI_LOAD_FILE 256\0"
	.byte	0x1
	.uleb128 0x2f0
	.ascii "MCI_VD_MODE_PARK (MCI_VD_OFFSET+1)\0"
	.byte	0x1
	.uleb128 0x2f1
	.ascii "MCI_VD_MEDIA_CLV (MCI_VD_OFFSET+2)\0"
	.byte	0x1
	.uleb128 0x2f2
	.ascii "MCI_VD_MEDIA_CAV (MCI_VD_OFFSET+3)\0"
	.byte	0x1
	.uleb128 0x2f3
	.ascii "MCI_VD_MEDIA_OTHER (MCI_VD_OFFSET+4)\0"
	.byte	0x1
	.uleb128 0x2f4
	.ascii "MCI_VD_FORMAT_TRACK 0x4001\0"
	.byte	0x1
	.uleb128 0x2f5
	.ascii "MCI_VD_PLAY_REVERSE 0x10000\0"
	.byte	0x1
	.uleb128 0x2f6
	.ascii "MCI_VD_PLAY_FAST 0x20000\0"
	.byte	0x1
	.uleb128 0x2f7
	.ascii "MCI_VD_PLAY_SPEED 0x40000\0"
	.byte	0x1
	.uleb128 0x2f8
	.ascii "MCI_VD_PLAY_SCAN 0x80000\0"
	.byte	0x1
	.uleb128 0x2f9
	.ascii "MCI_VD_PLAY_SLOW 0x100000\0"
	.byte	0x1
	.uleb128 0x2fa
	.ascii "MCI_VD_SEEK_REVERSE 0x10000\0"
	.byte	0x1
	.uleb128 0x2fb
	.ascii "MCI_VD_STATUS_SPEED 0x4002\0"
	.byte	0x1
	.uleb128 0x2fc
	.ascii "MCI_VD_STATUS_FORWARD 0x4003\0"
	.byte	0x1
	.uleb128 0x2fd
	.ascii "MCI_VD_STATUS_MEDIA_TYPE 0x4004\0"
	.byte	0x1
	.uleb128 0x2fe
	.ascii "MCI_VD_STATUS_SIDE 0x4005\0"
	.byte	0x1
	.uleb128 0x2ff
	.ascii "MCI_VD_STATUS_DISC_SIZE 0x4006\0"
	.byte	0x1
	.uleb128 0x300
	.ascii "MCI_VD_GETDEVCAPS_CLV 0x10000\0"
	.byte	0x1
	.uleb128 0x301
	.ascii "MCI_VD_GETDEVCAPS_CAV 0x20000\0"
	.byte	0x1
	.uleb128 0x302
	.ascii "MCI_VD_SPIN_UP 0x10000\0"
	.byte	0x1
	.uleb128 0x303
	.ascii "MCI_VD_SPIN_DOWN 0x20000\0"
	.byte	0x1
	.uleb128 0x304
	.ascii "MCI_VD_GETDEVCAPS_CAN_REVERSE 0x4002\0"
	.byte	0x1
	.uleb128 0x305
	.ascii "MCI_VD_GETDEVCAPS_FAST_RATE 0x4003\0"
	.byte	0x1
	.uleb128 0x306
	.ascii "MCI_VD_GETDEVCAPS_SLOW_RATE 0x4004\0"
	.byte	0x1
	.uleb128 0x307
	.ascii "MCI_VD_GETDEVCAPS_NORMAL_RATE 0x4005\0"
	.byte	0x1
	.uleb128 0x308
	.ascii "MCI_VD_STEP_FRAMES 0x10000\0"
	.byte	0x1
	.uleb128 0x309
	.ascii "MCI_VD_STEP_REVERSE 0x20000\0"
	.byte	0x1
	.uleb128 0x30a
	.ascii "MCI_VD_ESCAPE_STRING 256\0"
	.byte	0x1
	.uleb128 0x30b
	.ascii "MCI_CDA_STATUS_TYPE_TRACK 0x4001\0"
	.byte	0x1
	.uleb128 0x30c
	.ascii "MCI_CDA_TRACK_AUDIO MCI_CD_OFFSET\0"
	.byte	0x1
	.uleb128 0x30d
	.ascii "MCI_CDA_TRACK_OTHER (MCI_CD_OFFSET+1)\0"
	.byte	0x1
	.uleb128 0x30e
	.ascii "MCI_WAVE_PCM MCI_WAVE_OFFSET\0"
	.byte	0x1
	.uleb128 0x30f
	.ascii "MCI_WAVE_MAPPER (MCI_WAVE_OFFSET+1)\0"
	.byte	0x1
	.uleb128 0x310
	.ascii "MCI_WAVE_OPEN_BUFFER 0x10000\0"
	.byte	0x1
	.uleb128 0x311
	.ascii "MCI_WAVE_SET_FORMATTAG 0x10000\0"
	.byte	0x1
	.uleb128 0x312
	.ascii "MCI_WAVE_SET_CHANNELS 0x20000\0"
	.byte	0x1
	.uleb128 0x313
	.ascii "MCI_WAVE_SET_SAMPLESPERSEC 0x40000\0"
	.byte	0x1
	.uleb128 0x314
	.ascii "MCI_WAVE_SET_AVGBYTESPERSEC 0x80000\0"
	.byte	0x1
	.uleb128 0x315
	.ascii "MCI_WAVE_SET_BLOCKALIGN 0x100000\0"
	.byte	0x1
	.uleb128 0x316
	.ascii "MCI_WAVE_SET_BITSPERSAMPLE 0x200000\0"
	.byte	0x1
	.uleb128 0x317
	.ascii "MCI_WAVE_INPUT 0x400000\0"
	.byte	0x1
	.uleb128 0x318
	.ascii "MCI_WAVE_OUTPUT 0x800000\0"
	.byte	0x1
	.uleb128 0x319
	.ascii "MCI_WAVE_STATUS_FORMATTAG 0x4001\0"
	.byte	0x1
	.uleb128 0x31a
	.ascii "MCI_WAVE_STATUS_CHANNELS 0x4002\0"
	.byte	0x1
	.uleb128 0x31b
	.ascii "MCI_WAVE_STATUS_SAMPLESPERSEC 0x4003\0"
	.byte	0x1
	.uleb128 0x31c
	.ascii "MCI_WAVE_STATUS_AVGBYTESPERSEC 0x4004\0"
	.byte	0x1
	.uleb128 0x31d
	.ascii "MCI_WAVE_STATUS_BLOCKALIGN 0x4005\0"
	.byte	0x1
	.uleb128 0x31e
	.ascii "MCI_WAVE_STATUS_BITSPERSAMPLE 0x4006\0"
	.byte	0x1
	.uleb128 0x31f
	.ascii "MCI_WAVE_STATUS_LEVEL 0x4007\0"
	.byte	0x1
	.uleb128 0x320
	.ascii "MCI_WAVE_SET_ANYINPUT 0x4000000\0"
	.byte	0x1
	.uleb128 0x321
	.ascii "MCI_WAVE_SET_ANYOUTPUT 0x8000000\0"
	.byte	0x1
	.uleb128 0x322
	.ascii "MCI_WAVE_GETDEVCAPS_INPUTS 0x4001\0"
	.byte	0x1
	.uleb128 0x323
	.ascii "MCI_WAVE_GETDEVCAPS_OUTPUTS 0x4002\0"
	.byte	0x1
	.uleb128 0x324
	.ascii "MCI_SEQ_DIV_PPQN MCI_SEQ_OFFSET\0"
	.byte	0x1
	.uleb128 0x325
	.ascii "MCI_SEQ_DIV_SMPTE_24 (MCI_SEQ_OFFSET+1)\0"
	.byte	0x1
	.uleb128 0x326
	.ascii "MCI_SEQ_DIV_SMPTE_25 (MCI_SEQ_OFFSET+2)\0"
	.byte	0x1
	.uleb128 0x327
	.ascii "MCI_SEQ_DIV_SMPTE_30DROP (MCI_SEQ_OFFSET+3)\0"
	.byte	0x1
	.uleb128 0x328
	.ascii "MCI_SEQ_DIV_SMPTE_30 (MCI_SEQ_OFFSET+4)\0"
	.byte	0x1
	.uleb128 0x329
	.ascii "MCI_SEQ_FORMAT_SONGPTR 0x4001\0"
	.byte	0x1
	.uleb128 0x32a
	.ascii "MCI_SEQ_FILE 0x4002\0"
	.byte	0x1
	.uleb128 0x32b
	.ascii "MCI_SEQ_MIDI 0x4003\0"
	.byte	0x1
	.uleb128 0x32c
	.ascii "MCI_SEQ_SMPTE 0x4004\0"
	.byte	0x1
	.uleb128 0x32d
	.ascii "MCI_SEQ_NONE 65533\0"
	.byte	0x1
	.uleb128 0x32e
	.ascii "MCI_SEQ_MAPPER 65535\0"
	.byte	0x1
	.uleb128 0x32f
	.ascii "MCI_SEQ_STATUS_TEMPO 0x4002\0"
	.byte	0x1
	.uleb128 0x330
	.ascii "MCI_SEQ_STATUS_PORT 0x4003\0"
	.byte	0x1
	.uleb128 0x331
	.ascii "MCI_SEQ_STATUS_SLAVE 0x4007\0"
	.byte	0x1
	.uleb128 0x332
	.ascii "MCI_SEQ_STATUS_MASTER 0x4008\0"
	.byte	0x1
	.uleb128 0x333
	.ascii "MCI_SEQ_STATUS_OFFSET 0x4009\0"
	.byte	0x1
	.uleb128 0x334
	.ascii "MCI_SEQ_STATUS_DIVTYPE 0x400A\0"
	.byte	0x1
	.uleb128 0x335
	.ascii "MCI_SEQ_STATUS_NAME 0x400B\0"
	.byte	0x1
	.uleb128 0x336
	.ascii "MCI_SEQ_STATUS_COPYRIGHT 0x400C\0"
	.byte	0x1
	.uleb128 0x337
	.ascii "MCI_SEQ_SET_TEMPO 0x10000\0"
	.byte	0x1
	.uleb128 0x338
	.ascii "MCI_SEQ_SET_PORT 0x20000\0"
	.byte	0x1
	.uleb128 0x339
	.ascii "MCI_SEQ_SET_SLAVE 0x40000\0"
	.byte	0x1
	.uleb128 0x33a
	.ascii "MCI_SEQ_SET_MASTER 0x80000\0"
	.byte	0x1
	.uleb128 0x33b
	.ascii "MCI_SEQ_SET_OFFSET 0x1000000\0"
	.byte	0x1
	.uleb128 0x33c
	.ascii "MCI_ANIM_OPEN_WS 0x10000\0"
	.byte	0x1
	.uleb128 0x33d
	.ascii "MCI_ANIM_OPEN_PARENT 0x20000\0"
	.byte	0x1
	.uleb128 0x33e
	.ascii "MCI_ANIM_OPEN_NOSTATIC 0x40000\0"
	.byte	0x1
	.uleb128 0x33f
	.ascii "MCI_ANIM_PLAY_SPEED 0x10000\0"
	.byte	0x1
	.uleb128 0x340
	.ascii "MCI_ANIM_PLAY_REVERSE 0x20000\0"
	.byte	0x1
	.uleb128 0x341
	.ascii "MCI_ANIM_PLAY_FAST 0x40000\0"
	.byte	0x1
	.uleb128 0x342
	.ascii "MCI_ANIM_PLAY_SLOW 0x80000\0"
	.byte	0x1
	.uleb128 0x343
	.ascii "MCI_ANIM_PLAY_SCAN 0x100000\0"
	.byte	0x1
	.uleb128 0x344
	.ascii "MCI_ANIM_STEP_REVERSE 0x10000\0"
	.byte	0x1
	.uleb128 0x345
	.ascii "MCI_ANIM_STEP_FRAMES 0x20000\0"
	.byte	0x1
	.uleb128 0x346
	.ascii "MCI_ANIM_STATUS_SPEED 0x4001\0"
	.byte	0x1
	.uleb128 0x347
	.ascii "MCI_ANIM_STATUS_FORWARD 0x4002\0"
	.byte	0x1
	.uleb128 0x348
	.ascii "MCI_ANIM_STATUS_HWND 0x4003\0"
	.byte	0x1
	.uleb128 0x349
	.ascii "MCI_ANIM_STATUS_HPAL 0x4004\0"
	.byte	0x1
	.uleb128 0x34a
	.ascii "MCI_ANIM_STATUS_STRETCH 0x4005\0"
	.byte	0x1
	.uleb128 0x34b
	.ascii "MCI_ANIM_INFO_TEXT 0x10000\0"
	.byte	0x1
	.uleb128 0x34c
	.ascii "MCI_ANIM_GETDEVCAPS_CAN_REVERSE 0x4001\0"
	.byte	0x1
	.uleb128 0x34d
	.ascii "MCI_ANIM_GETDEVCAPS_FAST_RATE 0x4002\0"
	.byte	0x1
	.uleb128 0x34e
	.ascii "MCI_ANIM_GETDEVCAPS_SLOW_RATE 0x4003\0"
	.byte	0x1
	.uleb128 0x34f
	.ascii "MCI_ANIM_GETDEVCAPS_NORMAL_RATE 0x4004\0"
	.byte	0x1
	.uleb128 0x350
	.ascii "MCI_ANIM_GETDEVCAPS_PALETTES 0x4006\0"
	.byte	0x1
	.uleb128 0x351
	.ascii "MCI_ANIM_GETDEVCAPS_CAN_STRETCH 0x4007\0"
	.byte	0x1
	.uleb128 0x352
	.ascii "MCI_ANIM_GETDEVCAPS_MAX_WINDOWS 0x4008\0"
	.byte	0x1
	.uleb128 0x353
	.ascii "MCI_ANIM_REALIZE_NORM 0x10000\0"
	.byte	0x1
	.uleb128 0x354
	.ascii "MCI_ANIM_REALIZE_BKGD 0x20000\0"
	.byte	0x1
	.uleb128 0x355
	.ascii "MCI_ANIM_WINDOW_HWND 0x10000\0"
	.byte	0x1
	.uleb128 0x356
	.ascii "MCI_ANIM_WINDOW_STATE 0x40000\0"
	.byte	0x1
	.uleb128 0x357
	.ascii "MCI_ANIM_WINDOW_TEXT 0x80000\0"
	.byte	0x1
	.uleb128 0x358
	.ascii "MCI_ANIM_WINDOW_ENABLE_STRETCH 0x100000\0"
	.byte	0x1
	.uleb128 0x359
	.ascii "MCI_ANIM_WINDOW_DISABLE_STRETCH 0x200000\0"
	.byte	0x1
	.uleb128 0x35a
	.ascii "MCI_ANIM_WINDOW_DEFAULT 0xL\0"
	.byte	0x1
	.uleb128 0x35b
	.ascii "MCI_ANIM_RECT 0x10000\0"
	.byte	0x1
	.uleb128 0x35c
	.ascii "MCI_ANIM_PUT_SOURCE 0x20000\0"
	.byte	0x1
	.uleb128 0x35d
	.ascii "MCI_ANIM_PUT_DESTINATION 0x40000\0"
	.byte	0x1
	.uleb128 0x35e
	.ascii "MCI_ANIM_WHERE_SOURCE 0x20000\0"
	.byte	0x1
	.uleb128 0x35f
	.ascii "MCI_ANIM_WHERE_DESTINATION 0x40000\0"
	.byte	0x1
	.uleb128 0x360
	.ascii "MCI_ANIM_UPDATE_HDC 0x20000\0"
	.byte	0x1
	.uleb128 0x361
	.ascii "MCI_OVLY_OPEN_WS 0x10000\0"
	.byte	0x1
	.uleb128 0x362
	.ascii "MCI_OVLY_OPEN_PARENT 0x20000\0"
	.byte	0x1
	.uleb128 0x363
	.ascii "MCI_OVLY_STATUS_HWND 0x4001\0"
	.byte	0x1
	.uleb128 0x364
	.ascii "MCI_OVLY_STATUS_STRETCH 0x4002\0"
	.byte	0x1
	.uleb128 0x365
	.ascii "MCI_OVLY_INFO_TEXT 0x10000\0"
	.byte	0x1
	.uleb128 0x366
	.ascii "MCI_OVLY_GETDEVCAPS_CAN_STRETCH 0x4001\0"
	.byte	0x1
	.uleb128 0x367
	.ascii "MCI_OVLY_GETDEVCAPS_CAN_FREEZE 0x4002\0"
	.byte	0x1
	.uleb128 0x368
	.ascii "MCI_OVLY_GETDEVCAPS_MAX_WINDOWS 0x4003\0"
	.byte	0x1
	.uleb128 0x369
	.ascii "MCI_OVLY_WINDOW_HWND 0x10000\0"
	.byte	0x1
	.uleb128 0x36a
	.ascii "MCI_OVLY_WINDOW_STATE 0x40000\0"
	.byte	0x1
	.uleb128 0x36b
	.ascii "MCI_OVLY_WINDOW_TEXT 0x80000\0"
	.byte	0x1
	.uleb128 0x36c
	.ascii "MCI_OVLY_WINDOW_ENABLE_STRETCH 0x100000\0"
	.byte	0x1
	.uleb128 0x36d
	.ascii "MCI_OVLY_WINDOW_DISABLE_STRETCH 0x200000\0"
	.byte	0x1
	.uleb128 0x36e
	.ascii "MCI_OVLY_WINDOW_DEFAULT 0xL\0"
	.byte	0x1
	.uleb128 0x36f
	.ascii "MCI_OVLY_RECT 0x10000\0"
	.byte	0x1
	.uleb128 0x370
	.ascii "MCI_OVLY_PUT_SOURCE 0x20000\0"
	.byte	0x1
	.uleb128 0x371
	.ascii "MCI_OVLY_PUT_DESTINATION 0x40000\0"
	.byte	0x1
	.uleb128 0x372
	.ascii "MCI_OVLY_PUT_FRAME 0x80000\0"
	.byte	0x1
	.uleb128 0x373
	.ascii "MCI_OVLY_PUT_VIDEO 0x100000\0"
	.byte	0x1
	.uleb128 0x374
	.ascii "MCI_OVLY_WHERE_SOURCE 0x20000\0"
	.byte	0x1
	.uleb128 0x375
	.ascii "MCI_OVLY_WHERE_DESTINATION 0x40000\0"
	.byte	0x1
	.uleb128 0x376
	.ascii "MCI_OVLY_WHERE_FRAME 0x80000\0"
	.byte	0x1
	.uleb128 0x377
	.ascii "MCI_OVLY_WHERE_VIDEO 0x100000\0"
	.byte	0x1
	.uleb128 0x378
	.ascii "NEWTRANSPARENT 3\0"
	.byte	0x1
	.uleb128 0x379
	.ascii "QUERYROPSUPPORT 40\0"
	.byte	0x1
	.uleb128 0x37a
	.ascii "SELECTDIB 41\0"
	.byte	0x1
	.uleb128 0x37b
	.ascii "DIBINDEX(n) MAKELONG((n),0x10FF)\0"
	.byte	0x1
	.uleb128 0x37c
	.ascii "SC_SCREENSAVE 0xF140\0"
	.byte	0x1
	.uleb128 0x37d
	.ascii "CAPS1 94\0"
	.byte	0x1
	.uleb128 0x37e
	.ascii "C1_TRANSPARENT 1\0"
	.byte	0x1
	.uleb128 0x3f6
	.ascii "_LPCWAVEFORMATEX_DEFINED \0"
	.byte	0x1
	.uleb128 0x3f7
	.ascii "_WAVEFORMATEX_ \0"
	.byte	0x1
	.uleb128 0x616
	.ascii "OutputDebugStr OutputDebugString\0"
	.byte	0x1
	.uleb128 0x779
	.ascii "sndPlaySound sndPlaySoundA\0"
	.byte	0x1
	.uleb128 0x77a
	.ascii "PlaySound PlaySoundA\0"
	.byte	0x1
	.uleb128 0x77b
	.ascii "waveOutGetDevCaps waveOutGetDevCapsA\0"
	.byte	0x1
	.uleb128 0x77c
	.ascii "waveOutGetErrorText waveOutGetErrorTextA\0"
	.byte	0x1
	.uleb128 0x77d
	.ascii "waveInGetDevCaps waveInGetDevCapsA\0"
	.byte	0x1
	.uleb128 0x77e
	.ascii "waveInGetErrorText waveInGetErrorTextA\0"
	.byte	0x1
	.uleb128 0x77f
	.ascii "midiOutGetDevCaps midiOutGetDevCapsA\0"
	.byte	0x1
	.uleb128 0x780
	.ascii "midiOutGetErrorText midiOutGetErrorTextA\0"
	.byte	0x1
	.uleb128 0x781
	.ascii "midiInGetDevCaps midiInGetDevCapsA\0"
	.byte	0x1
	.uleb128 0x782
	.ascii "midiInGetErrorText midiInGetErrorTextA\0"
	.byte	0x1
	.uleb128 0x783
	.ascii "auxGetDevCaps auxGetDevCapsA\0"
	.byte	0x1
	.uleb128 0x784
	.ascii "mixerGetDevCaps mixerGetDevCapsA\0"
	.byte	0x1
	.uleb128 0x785
	.ascii "mixerGetLineInfo mixerGetLineInfoA\0"
	.byte	0x1
	.uleb128 0x786
	.ascii "mixerGetLineControls mixerGetLineControlsA\0"
	.byte	0x1
	.uleb128 0x787
	.ascii "mixerGetControlDetails mixerGetControlDetailsA\0"
	.byte	0x1
	.uleb128 0x788
	.ascii "joyGetDevCaps joyGetDevCapsA\0"
	.byte	0x1
	.uleb128 0x789
	.ascii "mmioInstallIOProc mmioInstallIOProcA\0"
	.byte	0x1
	.uleb128 0x78a
	.ascii "mmioStringToFOURCC mmioStringToFOURCCA\0"
	.byte	0x1
	.uleb128 0x78b
	.ascii "mmioOpen mmioOpenA\0"
	.byte	0x1
	.uleb128 0x78c
	.ascii "mmioRename mmioRenameA\0"
	.byte	0x1
	.uleb128 0x78d
	.ascii "mciSendCommand mciSendCommandA\0"
	.byte	0x1
	.uleb128 0x78e
	.ascii "mciSendString mciSendStringA\0"
	.byte	0x1
	.uleb128 0x78f
	.ascii "mciGetDeviceID mciGetDeviceIDA\0"
	.byte	0x1
	.uleb128 0x790
	.ascii "mciGetDeviceIDFromElementID mciGetDeviceIDFromElementIDA\0"
	.byte	0x1
	.uleb128 0x791
	.ascii "mciGetErrorString mciGetErrorStringA\0"
	.byte	0x4
	.file 49 "c:/mingw/include/nb30.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x31
	.byte	0x1
	.uleb128 0x2
	.ascii "_NB30_H \0"
	.byte	0x1
	.uleb128 0xa
	.ascii "NCBNAMSZ 16\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "MAX_LANA 254\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "NAME_FLAGS_MASK 0x87\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "GROUP_NAME 0x80\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "UNIQUE_NAME 0x00\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "REGISTERING 0x00\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "REGISTERED 0x04\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "DEREGISTERED 0x05\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "DUPLICATE 0x06\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "DUPLICATE_DEREG 0x07\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "LISTEN_OUTSTANDING 0x01\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "CALL_PENDING 0x02\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "SESSION_ESTABLISHED 0x03\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "HANGUP_PENDING 0x04\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "HANGUP_COMPLETE 0x05\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "SESSION_ABORTED 0x06\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "ALL_TRANSPORTS \"M\\0\\0\\0\"\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "MS_NBF \"MNBF\"\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "NCBCALL 0x10\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "NCBLISTEN 0x11\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "NCBHANGUP 0x12\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "NCBSEND 0x14\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "NCBRECV 0x15\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "NCBRECVANY 0x16\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "NCBCHAINSEND 0x17\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "NCBDGSEND 0x20\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "NCBDGRECV 0x21\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "NCBDGSENDBC 0x22\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "NCBDGRECVBC 0x23\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "NCBADDNAME 0x30\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "NCBDELNAME 0x31\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "NCBRESET 0x32\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "NCBASTAT 0x33\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "NCBSSTAT 0x34\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "NCBCANCEL 0x35\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "NCBADDGRNAME 0x36\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "NCBENUM 0x37\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "NCBUNLINK 0x70\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "NCBSENDNA 0x71\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "NCBCHAINSENDNA 0x72\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "NCBLANSTALERT 0x73\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "NCBACTION 0x77\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "NCBFINDNAME 0x78\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "NCBTRACE 0x79\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "ASYNCH 0x80\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "NRC_GOODRET 0x00\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "NRC_BUFLEN 0x01\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "NRC_ILLCMD 0x03\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "NRC_CMDTMO 0x05\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "NRC_INCOMP 0x06\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "NRC_BADDR 0x07\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "NRC_SNUMOUT 0x08\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "NRC_NORES 0x09\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "NRC_SCLOSED 0x0a\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "NRC_CMDCAN 0x0b\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "NRC_DUPNAME 0x0d\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "NRC_NAMTFUL 0x0e\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "NRC_ACTSES 0x0f\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "NRC_LOCTFUL 0x11\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "NRC_REMTFUL 0x12\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "NRC_ILLNN 0x13\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "NRC_NOCALL 0x14\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "NRC_NOWILD 0x15\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "NRC_INUSE 0x16\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "NRC_NAMERR 0x17\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "NRC_SABORT 0x18\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "NRC_NAMCONF 0x19\0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "NRC_IFBUSY 0x21\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "NRC_TOOMANY 0x22\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "NRC_BRIDGE 0x23\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "NRC_CANOCCR 0x24\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "NRC_CANCEL 0x26\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "NRC_DUPENV 0x30\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "NRC_ENVNOTDEF 0x34\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "NRC_OSRESNOTAV 0x35\0"
	.byte	0x1
	.uleb128 0x55
	.ascii "NRC_MAXAPPS 0x36\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "NRC_NOSAPS 0x37\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "NRC_NORESOURCES 0x38\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "NRC_INVADDRESS 0x39\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "NRC_INVDDID 0x3B\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "NRC_LOCKFAIL 0x3C\0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "NRC_OPENERR 0x3f\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "NRC_SYSTEM 0x40\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "NRC_PENDING 0xff\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "NCB_POST void CALLBACK\0"
	.byte	0x4
	.file 50 "c:/mingw/include/rpc.h"
	.byte	0x3
	.uleb128 0x40
	.uleb128 0x32
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x19
	.byte	0x4
	.byte	0x1
	.uleb128 0x6
	.ascii "_RPC_H \0"
	.byte	0x1
	.uleb128 0xe
	.ascii "__RPC_WIN32__ \0"
	.byte	0x1
	.uleb128 0x10
	.ascii "__RPC_NT__ \0"
	.byte	0x1
	.uleb128 0x11
	.ascii "RPC_UNICODE_SUPPORTED \0"
	.byte	0x1
	.uleb128 0x17
	.ascii "RPCRTAPI DECLSPEC_IMPORT\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "midl_user_allocate MIDL_user_allocate\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "midl_user_free MIDL_user_free\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "__MIDL_USER_DEFINED \0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "RPC_UNICODE_SUPPORTED \0"
	.byte	0x1
	.uleb128 0x20
	.ascii "__RPC_FAR \0"
	.byte	0x1
	.uleb128 0x21
	.ascii "__RPC_API __stdcall\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "__RPC_USER __stdcall\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "__RPC_STUB __stdcall\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "RPC_ENTRY __stdcall\0"
	.file 51 "c:/mingw/include/rpcdce.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x33
	.byte	0x1
	.uleb128 0x2
	.ascii "_RPCDCE_H \0"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x2
	.ascii "_BASETYPS_H \0"
	.byte	0x1
	.uleb128 0xb
	.ascii "EXTERN_C extern\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "STDMETHODCALLTYPE __stdcall\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "STDMETHODVCALLTYPE __cdecl\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "STDAPICALLTYPE __stdcall\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "STDAPIVCALLTYPE __cdecl\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "STDAPI EXTERN_C HRESULT STDAPICALLTYPE\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "STDAPI_(t) EXTERN_C t STDAPICALLTYPE\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "STDMETHODIMP HRESULT STDMETHODCALLTYPE\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "STDMETHODIMP_(t) t STDMETHODCALLTYPE\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "STDAPIV EXTERN_C HRESULT STDAPIVCALLTYPE\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "STDAPIV_(t) EXTERN_C t STDAPIVCALLTYPE\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "STDMETHODIMPV HRESULT STDMETHODVCALLTYPE\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "STDMETHODIMPV_(t) t STDMETHODVCALLTYPE\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "_COM_interface struct\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "interface _COM_interface\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "STDMETHOD(m) HRESULT(STDMETHODCALLTYPE *m)\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "STDMETHOD_(t,m) t(STDMETHODCALLTYPE *m)\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "PURE \0"
	.byte	0x1
	.uleb128 0x48
	.ascii "THIS_ INTERFACE *,\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "THIS INTERFACE *\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "CONST_VTABLE \0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "DECLARE_INTERFACE(i) typedef _COM_interface i { CONST_VTABLE struct i ##Vtbl *lpVtbl; } i; typedef CONST_VTABLE struct i ##Vtbl i ##Vtbl; CONST_VTABLE struct i ##Vtbl\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "DECLARE_INTERFACE_(i,b) DECLARE_INTERFACE(i)\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "BEGIN_INTERFACE \0"
	.byte	0x1
	.uleb128 0x54
	.ascii "END_INTERFACE \0"
	.byte	0x1
	.uleb128 0x56
	.ascii "FWD_DECL(i) typedef _COM_interface i i\0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "IENUM_THIS(T) T*\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "IENUM_THIS_(T) T*,\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "DECLARE_ENUMERATOR_(I,T) DECLARE_INTERFACE_(I,IUnknown) { STDMETHOD(QueryInterface)(IENUM_THIS_(I) REFIID,PVOID*) PURE; STDMETHOD_(ULONG,AddRef)(IENUM_THIS(I)) PURE; STDMETHOD_(ULONG,Release)(IENUM_THIS(I)) PURE; STDMETHOD(Next)(IENUM_THIS_(I) ULONG,T*,ULONG*) PURE; STDMETHOD(Skip)(IENUM_THIS_(I) ULONG) PURE; STDMETHOD(Reset)(IENUM_THIS(I)) PURE; STDMETHOD(Clone)(IENUM_THIS_(I) I**) PURE; }\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "DECLARE_ENUMERATOR(T) DECLARE_ENUMERATOR_(IEnum ##T,T)\0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "UUID_DEFINED \0"
	.byte	0x1
	.uleb128 0x80
	.ascii "__IID_DEFINED__ \0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "uuid_t UUID\0"
	.byte	0x1
	.uleb128 0x95
	.ascii "REFGUID const GUID* const\0"
	.byte	0x1
	.uleb128 0x96
	.ascii "REFIID const IID* const\0"
	.byte	0x1
	.uleb128 0x97
	.ascii "REFCLSID const CLSID* const\0"
	.byte	0x1
	.uleb128 0x98
	.ascii "REFFMTID const FMTID* const\0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "_REFGUID_DEFINED \0"
	.byte	0x1
	.uleb128 0x9b
	.ascii "_REFIID_DEFINED \0"
	.byte	0x1
	.uleb128 0x9c
	.ascii "_REFCLSID_DEFINED \0"
	.byte	0x1
	.uleb128 0x9d
	.ascii "_REFFMTID_DEFINED \0"
	.byte	0x1
	.uleb128 0xa0
	.ascii "GUID_SECTION \".text\"\0"
	.byte	0x1
	.uleb128 0xa8
	.ascii "GUID_SECT \0"
	.byte	0x1
	.uleb128 0xab
	.ascii "GUID_EXT EXTERN_C\0"
	.byte	0x1
	.uleb128 0xb3
	.ascii "DEFINE_GUID(n,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8) GUID_EXT const GUID n\0"
	.byte	0x1
	.uleb128 0xb4
	.ascii "DEFINE_OLEGUID(n,l,w1,w2) DEFINE_GUID(n,l,w1,w2,0xC0,0,0,0,0,0,0,0x46)\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0xd
	.ascii "IN \0"
	.byte	0x1
	.uleb128 0xe
	.ascii "OUT \0"
	.byte	0x1
	.uleb128 0x14
	.ascii "uuid_t UUID\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "rpc_binding_handle_t RPC_BINDING_HANDLE\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "rpc_binding_vector_t RPC_BINDING_VECTOR\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "uuid_vector_t UUID_VECTOR\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "RPC_C_BINDING_INFINITE_TIMEOUT 10\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "RPC_C_BINDING_MIN_TIMEOUT 0\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "RPC_C_BINDING_DEFAULT_TIMEOUT 5\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "RPC_C_BINDING_MAX_TIMEOUT 9\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "RPC_C_CANCEL_INFINITE_TIMEOUT (-1)\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "RPC_C_LISTEN_MAX_CALLS_DEFAULT 1234\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "RPC_C_PROTSEQ_MAX_REQS_DEFAULT 10\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "RPC_C_BIND_TO_ALL_NICS 1\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "RPC_C_USE_INTERNET_PORT 1\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "RPC_C_USE_INTRANET_PORT 2\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "RPC_MGR_EPV void\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "RPC_C_STATS_CALLS_IN 0\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "RPC_C_STATS_CALLS_OUT 1\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "RPC_C_STATS_PKTS_IN 2\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "RPC_C_STATS_PKTS_OUT 3\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "RPC_IF_AUTOLISTEN 0x0001\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "RPC_IF_OLE 2\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "RPC_C_MGMT_INQ_IF_IDS 0\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "RPC_C_MGMT_INQ_PRINC_NAME 1\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "RPC_C_MGMT_INQ_STATS 2\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "RPC_C_MGMT_IS_SERVER_LISTEN 3\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "RPC_C_MGMT_STOP_SERVER_LISTEN 4\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "RPC_C_EP_ALL_ELTS 0\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "RPC_C_EP_MATCH_BY_IF 1\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "RPC_C_EP_MATCH_BY_OBJ 2\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "RPC_C_EP_MATCH_BY_BOTH 3\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "RPC_C_VERS_ALL 1\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "RPC_C_VERS_COMPATIBLE 2\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "RPC_C_VERS_EXACT 3\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "RPC_C_VERS_MAJOR_ONLY 4\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "RPC_C_VERS_UPTO 5\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "DCE_C_ERROR_STRING_LEN 256\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "RPC_C_PARM_MAX_PACKET_LENGTH 1\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "RPC_C_PARM_BUFFER_LENGTH 2\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "RPC_C_AUTHN_LEVEL_DEFAULT 0\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "RPC_C_AUTHN_LEVEL_NONE 1\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "RPC_C_AUTHN_LEVEL_CONNECT 2\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "RPC_C_AUTHN_LEVEL_CALL 3\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "RPC_C_AUTHN_LEVEL_PKT 4\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "RPC_C_AUTHN_LEVEL_PKT_INTEGRITY 5\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "RPC_C_AUTHN_LEVEL_PKT_PRIVACY 6\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "RPC_C_IMP_LEVEL_ANONYMOUS 1\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "RPC_C_IMP_LEVEL_IDENTIFY 2\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "RPC_C_IMP_LEVEL_IMPERSONATE 3\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "RPC_C_IMP_LEVEL_DELEGATE 4\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "RPC_C_QOS_IDENTITY_STATIC 0\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "RPC_C_QOS_IDENTITY_DYNAMIC 1\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "RPC_C_QOS_CAPABILITIES_DEFAULT 0\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "RPC_C_QOS_CAPABILITIES_MUTUAL_AUTH 1\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "RPC_C_PROTECT_LEVEL_DEFAULT(RPC_C_AUTHN_LEVEL_DEFAULT) \0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "RPC_C_PROTECT_LEVEL_NONE(RPC_C_AUTHN_LEVEL_NONE) \0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "RPC_C_PROTECT_LEVEL_CONNECT(RPC_C_AUTHN_LEVEL_CONNECT) \0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "RPC_C_PROTECT_LEVEL_CALL(RPC_C_AUTHN_LEVEL_CALL) \0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "RPC_C_PROTECT_LEVEL_PKT(RPC_C_AUTHN_LEVEL_PKT) \0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "RPC_C_PROTECT_LEVEL_PKT_INTEGRITY(RPC_C_AUTHN_LEVEL_PKT_INTEGRITY) \0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "RPC_C_PROTECT_LEVEL_PKT_PRIVACY(RPC_C_AUTHN_LEVEL_PKT_PRIVACY) \0"
	.byte	0x1
	.uleb128 0x50
	.ascii "RPC_C_AUTHN_NONE 0\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "RPC_C_AUTHN_DCE_PRIVATE 1\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "RPC_C_AUTHN_DCE_PUBLIC 2\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "RPC_C_AUTHN_DEC_PUBLIC 4\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "RPC_C_AUTHN_WINNT 10\0"
	.byte	0x1
	.uleb128 0x55
	.ascii "RPC_C_AUTHN_DEFAULT 0xFFFFFFFF\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "RPC_C_SECURITY_QOS_VERSION L\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "SEC_WINNT_AUTH_IDENTITY_ANSI 0x1\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "SEC_WINNT_AUTH_IDENTITY_UNICODE 0x2\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "RPC_C_AUTHZ_NONE 0\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "RPC_C_AUTHZ_NAME 1\0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "RPC_C_AUTHZ_DCE 2\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "RPC_C_AUTHZ_DEFAULT 0xFFFFFFFF\0"
	.byte	0x1
	.uleb128 0x107
	.ascii "RPC_PROTSEQ_VECTOR RPC_PROTSEQ_VECTORA\0"
	.byte	0x1
	.uleb128 0x108
	.ascii "SEC_WINNT_AUTH_IDENTITY SEC_WINNT_AUTH_IDENTITY_A\0"
	.byte	0x1
	.uleb128 0x109
	.ascii "PSEC_WINNT_AUTH_IDENTITY PSEC_WINNT_AUTH_IDENTITY_A\0"
	.byte	0x1
	.uleb128 0x10a
	.ascii "_SEC_WINNT_AUTH_IDENTITY _SEC_WINNT_AUTH_IDENTITY_A\0"
	.byte	0x1
	.uleb128 0x10b
	.ascii "RpcMgmtEpEltInqNext RpcMgmtEpEltInqNextA\0"
	.byte	0x1
	.uleb128 0x10c
	.ascii "RpcBindingFromStringBinding RpcBindingFromStringBindingA\0"
	.byte	0x1
	.uleb128 0x10d
	.ascii "RpcBindingToStringBinding RpcBindingToStringBindingA\0"
	.byte	0x1
	.uleb128 0x10e
	.ascii "RpcStringBindingCompose RpcStringBindingComposeA\0"
	.byte	0x1
	.uleb128 0x10f
	.ascii "RpcStringBindingParse RpcStringBindingParseA\0"
	.byte	0x1
	.uleb128 0x110
	.ascii "RpcStringFree RpcStringFreeA\0"
	.byte	0x1
	.uleb128 0x111
	.ascii "RpcNetworkIsProtseqValid RpcNetworkIsProtseqValidA\0"
	.byte	0x1
	.uleb128 0x112
	.ascii "RpcNetworkInqProtseqs RpcNetworkInqProtseqsA\0"
	.byte	0x1
	.uleb128 0x113
	.ascii "RpcProtseqVectorFree RpcProtseqVectorFreeA\0"
	.byte	0x1
	.uleb128 0x114
	.ascii "RpcServerUseProtseq RpcServerUseProtseqA\0"
	.byte	0x1
	.uleb128 0x115
	.ascii "RpcServerUseProtseqEx RpcServerUseProtseqExA\0"
	.byte	0x1
	.uleb128 0x116
	.ascii "RpcServerUseProtseqEp RpcServerUseProtseqEpA\0"
	.byte	0x1
	.uleb128 0x117
	.ascii "RpcServerUseProtseqEpEx RpcServerUseProtseqEpExA\0"
	.byte	0x1
	.uleb128 0x118
	.ascii "RpcServerUseProtseqIf RpcServerUseProtseqIfA\0"
	.byte	0x1
	.uleb128 0x119
	.ascii "RpcServerUseProtseqIfEx RpcServerUseProtseqIfExA\0"
	.byte	0x1
	.uleb128 0x11a
	.ascii "RpcMgmtInqServerPrincName RpcMgmtInqServerPrincNameA\0"
	.byte	0x1
	.uleb128 0x11b
	.ascii "RpcServerInqDefaultPrincName RpcServerInqDefaultPrincNameA\0"
	.byte	0x1
	.uleb128 0x11c
	.ascii "RpcNsBindingInqEntryName RpcNsBindingInqEntryNameA\0"
	.byte	0x1
	.uleb128 0x11d
	.ascii "RpcBindingInqAuthClient RpcBindingInqAuthClientA\0"
	.byte	0x1
	.uleb128 0x11e
	.ascii "RpcBindingInqAuthInfo RpcBindingInqAuthInfoA\0"
	.byte	0x1
	.uleb128 0x11f
	.ascii "RpcBindingSetAuthInfo RpcBindingSetAuthInfoA\0"
	.byte	0x1
	.uleb128 0x120
	.ascii "RpcServerRegisterAuthInfo RpcServerRegisterAuthInfoA\0"
	.byte	0x1
	.uleb128 0x121
	.ascii "RpcBindingInqAuthInfoEx RpcBindingInqAuthInfoExA\0"
	.byte	0x1
	.uleb128 0x122
	.ascii "RpcBindingSetAuthInfoEx RpcBindingSetAuthInfoExA\0"
	.byte	0x1
	.uleb128 0x123
	.ascii "UuidFromString UuidFromStringA\0"
	.byte	0x1
	.uleb128 0x124
	.ascii "UuidToString UuidToStringA\0"
	.byte	0x1
	.uleb128 0x125
	.ascii "RpcEpRegisterNoReplace RpcEpRegisterNoReplaceA\0"
	.byte	0x1
	.uleb128 0x126
	.ascii "RpcEpRegister RpcEpRegisterA\0"
	.byte	0x1
	.uleb128 0x127
	.ascii "DceErrorInqText DceErrorInqTextA\0"
	.file 52 "c:/mingw/include/rpcdcep.h"
	.byte	0x3
	.uleb128 0x188
	.uleb128 0x34
	.byte	0x1
	.uleb128 0x2
	.ascii "_RPCDCEP_H \0"
	.byte	0x1
	.uleb128 0xa
	.ascii "RPC_NCA_FLAGS_DEFAULT 0\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "RPC_NCA_FLAGS_IDEMPOTENT 1\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "RPC_NCA_FLAGS_BROADCAST 2\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "RPC_NCA_FLAGS_MAYBE 4\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "RPCFLG_ASYNCHRONOUS 0x40000000\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "RPCFLG_INPUT_SYNCHRONOUS 0x20000000\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "RPC_FLAGS_VALID_BIT 0x8000\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "TRANSPORT_TYPE_CN 1\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "TRANSPORT_TYPE_DG 2\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "TRANSPORT_TYPE_LPC 4\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "TRANSPORT_TYPE_WMSG 8\0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "I_RpcServerUnregisterEndpoint I_RpcServerUnregisterEndpointA\0"
	.byte	0x4
	.byte	0x4
	.file 53 "c:/mingw/include/rpcnsi.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x35
	.byte	0x1
	.uleb128 0x2
	.ascii "_RPCNSI_H \0"
	.byte	0x1
	.uleb128 0xb
	.ascii "RPC_C_NS_SYNTAX_DEFAULT 0\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "RPC_C_NS_SYNTAX_DCE 3\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "RPC_C_PROFILE_DEFAULT_ELT 0\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "RPC_C_PROFILE_ALL_ELT 1\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "RPC_C_PROFILE_MATCH_BY_IF 2\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "RPC_C_PROFILE_MATCH_BY_MBR 3\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "RPC_C_PROFILE_MATCH_BY_BOTH 4\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "RPC_C_NS_DEFAULT_EXP_AGE -1\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "RpcNsBindingLookupBegin RpcNsBindingLookupBeginA\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "RpcNsBindingImportBegin RpcNsBindingImportBeginA\0"
	.byte	0x1
	.uleb128 0x64
	.ascii "RpcNsBindingExport RpcNsBindingExportA\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "RpcNsBindingUnexport RpcNsBindingUnexportA\0"
	.byte	0x1
	.uleb128 0x66
	.ascii "RpcNsGroupDelete RpcNsGroupDeleteA\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "RpcNsGroupMbrAdd RpcNsGroupMbrAddA\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "RpcNsGroupMbrRemove RpcNsGroupMbrRemoveA\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "RpcNsGroupMbrInqBegin RpcNsGroupMbrInqBeginA\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "RpcNsGroupMbrInqNext RpcNsGroupMbrInqNextA\0"
	.byte	0x1
	.uleb128 0x6b
	.ascii "RpcNsEntryExpandName RpcNsEntryExpandNameA\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "RpcNsEntryObjectInqBegin RpcNsEntryObjectInqBeginA\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "RpcNsMgmtBindingUnexport RpcNsMgmtBindingUnexportA\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "RpcNsMgmtEntryCreate RpcNsMgmtEntryCreateA\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "RpcNsMgmtEntryDelete RpcNsMgmtEntryDeleteA\0"
	.byte	0x1
	.uleb128 0x70
	.ascii "RpcNsMgmtEntryInqIfIds RpcNsMgmtEntryInqIfIdsA\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "RpcNsProfileDelete RpcNsProfileDeleteA\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "RpcNsProfileEltAdd RpcNsProfileEltAddA\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "RpcNsProfileEltRemove RpcNsProfileEltRemoveA\0"
	.byte	0x1
	.uleb128 0x74
	.ascii "RpcNsProfileEltInqBegin RpcNsProfileEltInqBeginA\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "RpcNsProfileEltInqNext RpcNsProfileEltInqNextA\0"
	.byte	0x4
	.file 54 "c:/mingw/include/rpcnterr.h"
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x36
	.byte	0x1
	.uleb128 0x2
	.ascii "_RPCNTERR_H \0"
	.byte	0x1
	.uleb128 0x7
	.ascii "RPC_S_OK ERROR_SUCCESS\0"
	.byte	0x1
	.uleb128 0x8
	.ascii "RPC_S_INVALID_ARG ERROR_INVALID_PARAMETER\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "RPC_S_OUT_OF_MEMORY ERROR_OUTOFMEMORY\0"
	.byte	0x1
	.uleb128 0xa
	.ascii "RPC_S_OUT_OF_THREADS ERROR_MAX_THRDS_REACHED\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "RPC_S_INVALID_LEVEL ERROR_INVALID_PARAMETER\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "RPC_S_BUFFER_TOO_SMALL ERROR_INSUFFICIENT_BUFFER\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "RPC_S_INVALID_SECURITY_DESC ERROR_INVALID_SECURITY_DESCR\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "RPC_S_ACCESS_DENIED ERROR_ACCESS_DENIED\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "RPC_S_SERVER_OUT_OF_MEMORY ERROR_NOT_ENOUGH_SERVER_MEMORY\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "RPC_X_NO_MEMORY RPC_S_OUT_OF_MEMORY\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "RPC_X_INVALID_BOUND RPC_S_INVALID_BOUND\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "RPC_X_INVALID_TAG RPC_S_INVALID_TAG\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "RPC_X_ENUM_VALUE_TOO_LARGE RPC_X_ENUM_VALUE_OUT_OF_RANGE\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "RPC_X_SS_CONTEXT_MISMATCH ERROR_INVALID_HANDLE\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "RPC_X_INVALID_BUFFER ERROR_INVALID_USER_BUFFER\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "RPC_X_INVALID_PIPE_OPERATION RPC_X_WRONG_PIPE_ORDER\0"
	.byte	0x4
	.byte	0x4
	.file 55 "c:/mingw/include/shellapi.h"
	.byte	0x3
	.uleb128 0x41
	.uleb128 0x37
	.byte	0x1
	.uleb128 0x2
	.ascii "_SHELLAPI_H \0"
	.byte	0x1
	.uleb128 0xa
	.ascii "WINSHELLAPI DECLSPEC_IMPORT\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "ABE_LEFT 0\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "ABE_TOP 1\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "ABE_RIGHT 2\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "ABE_BOTTOM 3\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "ABS_AUTOHIDE 1\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "ABS_ALWAYSONTOP 2\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "SEE_MASK_CLASSNAME 0x1\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "SEE_MASK_CLASSKEY 0x3\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "SEE_MASK_IDLIST 0x4\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "SEE_MASK_INVOKEIDLIST 0xc\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "SEE_MASK_ICON 0x10\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "SEE_MASK_HOTKEY 0x20\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "SEE_MASK_NOCLOSEPROCESS 0x40\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "SEE_MASK_CONNECTNETDRV 0x80\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "SEE_MASK_FLAG_DDEWAIT 0x100\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "SEE_MASK_DOENVSUBST 0x200\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "SEE_MASK_FLAG_NO_UI 0x400\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "SEE_MASK_NO_CONSOLE 0x8000\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "SEE_MASK_UNICODE 0x10000\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "SEE_MASK_ASYNCOK 0x100000\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "SEE_MASK_HMONITOR 0x200000\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "ABM_NEW 0\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "ABM_REMOVE 1\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "ABM_QUERYPOS 2\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "ABM_SETPOS 3\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "ABM_GETSTATE 4\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "ABM_GETTASKBARPOS 5\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "ABM_ACTIVATE 6\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "ABM_GETAUTOHIDEBAR 7\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "ABM_SETAUTOHIDEBAR 8\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "ABM_WINDOWPOSCHANGED 9\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "ABN_STATECHANGE 0\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "ABN_POSCHANGED 1\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "ABN_FULLSCREENAPP 2\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "ABN_WINDOWARRANGE 3\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "NIM_ADD 0\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "NIM_MODIFY 1\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "NIM_DELETE 2\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "NIF_MESSAGE 0x00000001\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "NIF_ICON 0x00000002\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "NIF_TIP 0x00000004\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "NIF_STATE 0x00000008\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "SE_ERR_FNF 2\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "SE_ERR_PNF 3\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "SE_ERR_ACCESSDENIED 5\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "SE_ERR_OOM 8\0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "SE_ERR_DLLNOTFOUND 32\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "SE_ERR_SHARE 26\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "SE_ERR_ASSOCINCOMPLETE 27\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "SE_ERR_DDETIMEOUT 28\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "SE_ERR_DDEFAIL 29\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "SE_ERR_DDEBUSY 30\0"
	.byte	0x1
	.uleb128 0x61
	.ascii "SE_ERR_NOASSOC 31\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "FO_MOVE 1\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "FO_COPY 2\0"
	.byte	0x1
	.uleb128 0x64
	.ascii "FO_DELETE 3\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "FO_RENAME 4\0"
	.byte	0x1
	.uleb128 0x66
	.ascii "FOF_MULTIDESTFILES 1\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "FOF_CONFIRMMOUSE 2\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "FOF_SILENT 4\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "FOF_RENAMEONCOLLISION 8\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "FOF_NOCONFIRMATION 16\0"
	.byte	0x1
	.uleb128 0x6b
	.ascii "FOF_WANTMAPPINGHANDLE 32\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "FOF_ALLOWUNDO 64\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "FOF_FILESONLY 128\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "FOF_SIMPLEPROGRESS 256\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "FOF_NOCONFIRMMKDIR 512\0"
	.byte	0x1
	.uleb128 0x70
	.ascii "FOF_NOERRORUI 1024\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "FOF_NOCOPYSECURITYATTRIBS 2048\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "PO_DELETE 19\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "PO_RENAME 20\0"
	.byte	0x1
	.uleb128 0x74
	.ascii "PO_PORTCHANGE 32\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "PO_REN_PORT 52\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "SHGFI_ICON 256\0"
	.byte	0x1
	.uleb128 0x77
	.ascii "SHGFI_DISPLAYNAME 512\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "SHGFI_TYPENAME 1024\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "SHGFI_ATTRIBUTES 2048\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "SHGFI_ICONLOCATION 4096\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "SHGFI_EXETYPE 8192\0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "SHGFI_SYSICONINDEX 16384\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "SHGFI_LINKOVERLAY 32768\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "SHGFI_SELECTED 65536\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "SHGFI_ATTR_SPECIFIED 131072\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "SHGFI_LARGEICON 0\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "SHGFI_SMALLICON 1\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "SHGFI_OPENICON 2\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "SHGFI_SHELLICONSIZE 4\0"
	.byte	0x1
	.uleb128 0x84
	.ascii "SHGFI_PIDL 8\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "SHGFI_USEFILEATTRIBUTES 16\0"
	.byte	0x1
	.uleb128 0x86
	.ascii "SHERB_NOCONFIRMATION 1\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "SHERB_NOPROGRESSUI 2\0"
	.byte	0x1
	.uleb128 0x88
	.ascii "SHERB_NOSOUND 4\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "NOTIFYICONDATA_V2_SIZE 488\0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "NOTIFYICONDATA_V1_SIZE 88\0"
	.file 56 "c:/mingw/include/pshpack2.h"
	.byte	0x3
	.uleb128 0x93
	.uleb128 0x38
	.byte	0x4
	.byte	0x3
	.uleb128 0x121
	.uleb128 0x20
	.byte	0x4
	.byte	0x1
	.uleb128 0x167
	.ascii "DragQueryFile DragQueryFileA\0"
	.byte	0x1
	.uleb128 0x168
	.ascii "ExtractAssociatedIcon ExtractAssociatedIconA\0"
	.byte	0x1
	.uleb128 0x169
	.ascii "ExtractIcon ExtractIconA\0"
	.byte	0x1
	.uleb128 0x16a
	.ascii "ExtractIconEx ExtractIconExA\0"
	.byte	0x1
	.uleb128 0x16b
	.ascii "FindExecutable FindExecutableA\0"
	.byte	0x1
	.uleb128 0x16c
	.ascii "Shell_NotifyIcon Shell_NotifyIconA\0"
	.byte	0x1
	.uleb128 0x16d
	.ascii "ShellAbout ShellAboutA\0"
	.byte	0x1
	.uleb128 0x16e
	.ascii "ShellExecute ShellExecuteA\0"
	.byte	0x1
	.uleb128 0x16f
	.ascii "ShellExecuteEx ShellExecuteExA\0"
	.byte	0x1
	.uleb128 0x170
	.ascii "SHFileOperation SHFileOperationA\0"
	.byte	0x1
	.uleb128 0x171
	.ascii "SHGetFileInfo SHGetFileInfoA\0"
	.byte	0x1
	.uleb128 0x172
	.ascii "SHQueryRecycleBin SHQueryRecycleBinA\0"
	.byte	0x1
	.uleb128 0x173
	.ascii "SHEmptyRecycleBin SHEmptyRecycleBinA\0"
	.byte	0x4
	.file 57 "c:/mingw/include/winperf.h"
	.byte	0x3
	.uleb128 0x42
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x2
	.ascii "_WINPERF_H \0"
	.byte	0x1
	.uleb128 0xa
	.ascii "PERF_DATA_VERSION 1\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "PERF_DATA_REVISION 1\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "PERF_NO_INSTANCES -1\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "PERF_SIZE_DWORD 0\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "PERF_SIZE_LARGE 256\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "PERF_SIZE_ZERO 512\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "PERF_SIZE_VARIABLE_LEN 768\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "PERF_TYPE_NUMBER 0\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "PERF_TYPE_COUNTER 1024\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "PERF_TYPE_TEXT 2048\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "PERF_TYPE_ZERO 0xC00\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "PERF_NUMBER_HEX 0\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "PERF_NUMBER_DECIMAL 0x10000\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "PERF_NUMBER_DEC_1000 0x20000\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "PERF_COUNTER_VALUE 0\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "PERF_COUNTER_RATE 0x10000\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "PERF_COUNTER_FRACTION 0x20000\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "PERF_COUNTER_BASE 0x30000\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "PERF_COUNTER_ELAPSED 0x40000\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "PERF_COUNTER_QUEUELEN 0x50000\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "PERF_COUNTER_HISTOGRAM 0x60000\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "PERF_TEXT_UNICODE 0\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "PERF_TEXT_ASCII 0x10000\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "PERF_TIMER_TICK 0\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "PERF_TIMER_100NS 0x100000\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "PERF_OBJECT_TIMER 0x200000\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "PERF_DELTA_COUNTER 0x400000\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "PERF_DELTA_BASE 0x800000\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "PERF_INVERSE_COUNTER 0x1000000\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "PERF_MULTI_COUNTER 0x2000000\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "PERF_DISPLAY_NO_SUFFIX 0\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "PERF_DISPLAY_PER_SEC 0x10000000\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "PERF_DISPLAY_PERCENT 0x20000000\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "PERF_DISPLAY_SECONDS 0x30000000\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "PERF_DISPLAY_NOSHOW 0x40000000\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "PERF_COUNTER_HISTOGRAM_TYPE 0x80000000\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "PERF_NO_UNIQUE_ID (-1)\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "PERF_DETAIL_NOVICE 100\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "PERF_DETAIL_ADVANCED 200\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "PERF_DETAIL_EXPERT 300\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "PERF_DETAIL_WIZARD 400\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "PERF_COUNTER_COUNTER (PERF_SIZE_DWORD|PERF_TYPE_COUNTER|PERF_COUNTER_RATE|PERF_TIMER_TICK|PERF_DELTA_COUNTER|PERF_DISPLAY_PER_SEC)\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "PERF_COUNTER_TIMER (PERF_SIZE_LARGE|PERF_TYPE_COUNTER|PERF_COUNTER_RATE|PERF_TIMER_TICK|PERF_DELTA_COUNTER|PERF_DISPLAY_PERCENT)\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "PERF_COUNTER_QUEUELEN_TYPE (PERF_SIZE_DWORD|PERF_TYPE_COUNTER|PERF_COUNTER_QUEUELEN|PERF_TIMER_TICK|PERF_DELTA_COUNTER|PERF_DISPLAY_NO_SUFFIX)\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "PERF_COUNTER_BULK_COUNT (PERF_SIZE_LARGE|PERF_TYPE_COUNTER|PERF_COUNTER_RATE|PERF_TIMER_TICK|PERF_DELTA_COUNTER|PERF_DISPLAY_PER_SEC)\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "PERF_COUNTER_TEXT (PERF_SIZE_VARIABLE_LEN|PERF_TYPE_TEXT|PERF_TEXT_UNICODE|PERF_DISPLAY_NO_SUFFIX)\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "PERF_COUNTER_RAWCOUNT (PERF_SIZE_DWORD|PERF_TYPE_NUMBER|PERF_NUMBER_DECIMAL|PERF_DISPLAY_NO_SUFFIX)\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "PERF_COUNTER_LARGE_RAWCOUNT (PERF_SIZE_LARGE|PERF_TYPE_NUMBER|PERF_NUMBER_DECIMAL|PERF_DISPLAY_NO_SUFFIX)\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "PERF_COUNTER_RAWCOUNT_HEX (PERF_SIZE_DWORD|PERF_TYPE_NUMBER|PERF_NUMBER_HEX|PERF_DISPLAY_NO_SUFFIX)\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "PERF_COUNTER_LARGE_RAWCOUNT_HEX (PERF_SIZE_LARGE|PERF_TYPE_NUMBER|PERF_NUMBER_HEX|PERF_DISPLAY_NO_SUFFIX)\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "PERF_SAMPLE_FRACTION (PERF_SIZE_DWORD|PERF_TYPE_COUNTER|PERF_COUNTER_FRACTION|PERF_DELTA_COUNTER|PERF_DELTA_BASE|PERF_DISPLAY_PERCENT)\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "PERF_SAMPLE_COUNTER (PERF_SIZE_DWORD|PERF_TYPE_COUNTER|PERF_COUNTER_RATE|PERF_TIMER_TICK|PERF_DELTA_COUNTER|PERF_DISPLAY_NO_SUFFIX)\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "PERF_COUNTER_NODATA (PERF_SIZE_ZERO|PERF_DISPLAY_NOSHOW)\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "PERF_COUNTER_TIMER_INV (PERF_SIZE_LARGE|PERF_TYPE_COUNTER|PERF_COUNTER_RATE|PERF_TIMER_TICK|PERF_DELTA_COUNTER|PERF_INVERSE_COUNTER|PERF_DISPLAY_PERCENT)\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "PERF_SAMPLE_BASE (PERF_SIZE_DWORD|PERF_TYPE_COUNTER|PERF_COUNTER_BASE|PERF_DISPLAY_NOSHOW|1)\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "PERF_AVERAGE_TIMER (PERF_SIZE_DWORD|PERF_TYPE_COUNTER|PERF_COUNTER_FRACTION|PERF_DISPLAY_SECONDS)\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "PERF_AVERAGE_BASE (PERF_SIZE_DWORD|PERF_TYPE_COUNTER|PERF_COUNTER_BASE|PERF_DISPLAY_NOSHOW|2)\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "PERF_AVERAGE_BULK (PERF_SIZE_LARGE|PERF_TYPE_COUNTER|PERF_COUNTER_FRACTION|PERF_DISPLAY_NOSHOW)\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "PERF_100NSEC_TIMER (PERF_SIZE_LARGE|PERF_TYPE_COUNTER|PERF_COUNTER_RATE|PERF_TIMER_100NS|PERF_DELTA_COUNTER|PERF_DISPLAY_PERCENT)\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "PERF_100NSEC_TIMER_INV (PERF_SIZE_LARGE|PERF_TYPE_COUNTER|PERF_COUNTER_RATE|PERF_TIMER_100NS|PERF_DELTA_COUNTER|PERF_INVERSE_COUNTER|PERF_DISPLAY_PERCENT)\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "PERF_COUNTER_MULTI_TIMER (PERF_SIZE_LARGE|PERF_TYPE_COUNTER|PERF_COUNTER_RATE|PERF_DELTA_COUNTER|PERF_TIMER_TICK|PERF_MULTI_COUNTER|PERF_DISPLAY_PERCENT)\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "PERF_COUNTER_MULTI_TIMER_INV (PERF_SIZE_LARGE|PERF_TYPE_COUNTER|PERF_COUNTER_RATE|PERF_DELTA_COUNTER|PERF_MULTI_COUNTER|PERF_TIMER_TICK|PERF_INVERSE_COUNTER|PERF_DISPLAY_PERCENT)\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "PERF_COUNTER_MULTI_BASE (PERF_SIZE_LARGE|PERF_TYPE_COUNTER|PERF_COUNTER_BASE|PERF_MULTI_COUNTER|PERF_DISPLAY_NOSHOW)\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "PERF_100NSEC_MULTI_TIMER (PERF_SIZE_LARGE|PERF_TYPE_COUNTER|PERF_DELTA_COUNTER|PERF_COUNTER_RATE|PERF_TIMER_100NS|PERF_MULTI_COUNTER|PERF_DISPLAY_PERCENT)\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "PERF_100NSEC_MULTI_TIMER_INV (PERF_SIZE_LARGE|PERF_TYPE_COUNTER|PERF_DELTA_COUNTER|PERF_COUNTER_RATE|PERF_TIMER_100NS|PERF_MULTI_COUNTER|PERF_INVERSE_COUNTER|PERF_DISPLAY_PERCENT)\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "PERF_RAW_FRACTION (PERF_SIZE_DWORD|PERF_TYPE_COUNTER|PERF_COUNTER_FRACTION|PERF_DISPLAY_PERCENT)\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "PERF_RAW_BASE (PERF_SIZE_DWORD|PERF_TYPE_COUNTER|PERF_COUNTER_BASE|PERF_DISPLAY_NOSHOW|3)\0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "PERF_ELAPSED_TIME (PERF_SIZE_LARGE|PERF_TYPE_COUNTER|PERF_COUNTER_ELAPSED|PERF_OBJECT_TIMER|PERF_DISPLAY_SECONDS)\0"
	.byte	0x4
	.file 58 "c:/mingw/include/commdlg.h"
	.byte	0x3
	.uleb128 0x44
	.uleb128 0x3a
	.byte	0x1
	.uleb128 0x2
	.ascii "_COMMDLG_H \0"
	.byte	0x1
	.uleb128 0xc
	.ascii "LBSELCHSTRINGA \"commdlg_LBSelChangedNotify\"\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "SHAREVISTRINGA \"commdlg_ShareViolation\"\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "FILEOKSTRINGA \"commdlg_FileNameOK\"\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "COLOROKSTRINGA \"commdlg_ColorOK\"\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "SETRGBSTRINGA \"commdlg_SetRGBColor\"\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "HELPMSGSTRINGA \"commdlg_help\"\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "FINDMSGSTRINGA \"commdlg_FindReplace\"\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "LBSELCHSTRINGW L\"commdlg_LBSelChangedNotify\"\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "SHAREVISTRINGW L\"commdlg_ShareViolation\"\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "FILEOKSTRINGW L\"commdlg_FileNameOK\"\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "COLOROKSTRINGW L\"commdlg_ColorOK\"\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "SETRGBSTRINGW L\"commdlg_SetRGBColor\"\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "HELPMSGSTRINGW L\"commdlg_help\"\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "FINDMSGSTRINGW L\"commdlg_FindReplace\"\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "CDN_FIRST ((UINT)-601)\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "CDN_LAST ((UINT)-699)\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "CDN_INITDONE CDN_FIRST\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "CDN_SELCHANGE (CDN_FIRST-1U)\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "CDN_FOLDERCHANGE (CDN_FIRST-2U)\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "CDN_SHAREVIOLATION (CDN_FIRST-3U)\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "CDN_HELP (CDN_FIRST-4U)\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "CDN_FILEOK (CDN_FIRST-5U)\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "CDN_TYPECHANGE (CDN_FIRST-6U)\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "CDM_FIRST (WM_USER+100)\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "CDM_LAST (WM_USER+200)\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "CDM_GETSPEC CDM_FIRST\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "CDM_GETFILEPATH (CDM_FIRST+1)\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "CDM_GETFOLDERPATH (CDM_FIRST+2)\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "CDM_GETFOLDERIDLIST (CDM_FIRST+3)\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "CDM_SETCONTROLTEXT (CDM_FIRST+4)\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "CDM_HIDECONTROL (CDM_FIRST+5)\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "CDM_SETDEFEXT (CDM_FIRST+6)\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "CC_RGBINIT 1\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "CC_FULLOPEN 2\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "CC_PREVENTFULLOPEN 4\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "CC_SHOWHELP 8\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "CC_ENABLEHOOK 16\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "CC_ENABLETEMPLATE 32\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "CC_ENABLETEMPLATEHANDLE 64\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "CC_SOLIDCOLOR 128\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "CC_ANYCOLOR 256\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "CF_SCREENFONTS 1\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "CF_PRINTERFONTS 2\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "CF_BOTH 3\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "CF_SHOWHELP 4\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "CF_ENABLEHOOK 8\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "CF_ENABLETEMPLATE 16\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "CF_ENABLETEMPLATEHANDLE 32\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "CF_INITTOLOGFONTSTRUCT 64\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "CF_USESTYLE 128\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "CF_EFFECTS 256\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "CF_APPLY 512\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "CF_ANSIONLY 1024\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "CF_SCRIPTSONLY CF_ANSIONLY\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "CF_NOVECTORFONTS 2048\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "CF_NOOEMFONTS 2048\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "CF_NOSIMULATIONS 4096\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "CF_LIMITSIZE 8192\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "CF_FIXEDPITCHONLY 16384\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "CF_WYSIWYG 32768\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "CF_FORCEFONTEXIST 65536\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "CF_SCALABLEONLY 131072\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "CF_TTONLY 262144\0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "CF_NOFACESEL 524288\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "CF_NOSTYLESEL 1048576\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "CF_NOSIZESEL 2097152\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "CF_SELECTSCRIPT 4194304\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "CF_NOSCRIPTSEL 8388608\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "CF_NOVERTFONTS 0x1000000\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "SIMULATED_FONTTYPE 0x8000\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "PRINTER_FONTTYPE 0x4000\0"
	.byte	0x1
	.uleb128 0x55
	.ascii "SCREEN_FONTTYPE 0x2000\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "BOLD_FONTTYPE 0x100\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "ITALIC_FONTTYPE 0x0200\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "REGULAR_FONTTYPE 0x0400\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "WM_CHOOSEFONT_GETLOGFONT (WM_USER+1)\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "WM_CHOOSEFONT_SETLOGFONT (WM_USER+101)\0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "WM_CHOOSEFONT_SETFLAGS (WM_USER+102)\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "OFN_ALLOWMULTISELECT 512\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "OFN_CREATEPROMPT 0x2000\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "OFN_ENABLEHOOK 32\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "OFN_ENABLESIZING 0x800000\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "OFN_ENABLETEMPLATE 64\0"
	.byte	0x1
	.uleb128 0x61
	.ascii "OFN_ENABLETEMPLATEHANDLE 128\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "OFN_EXPLORER 0x80000\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "OFN_EXTENSIONDIFFERENT 0x400\0"
	.byte	0x1
	.uleb128 0x64
	.ascii "OFN_FILEMUSTEXIST 0x1000\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "OFN_HIDEREADONLY 4\0"
	.byte	0x1
	.uleb128 0x66
	.ascii "OFN_LONGNAMES 0x200000\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "OFN_NOCHANGEDIR 8\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "OFN_NODEREFERENCELINKS 0x100000\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "OFN_NOLONGNAMES 0x40000\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "OFN_NONETWORKBUTTON 0x20000\0"
	.byte	0x1
	.uleb128 0x6b
	.ascii "OFN_NOREADONLYRETURN 0x8000\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "OFN_NOTESTFILECREATE 0x10000\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "OFN_NOVALIDATE 256\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "OFN_OVERWRITEPROMPT 2\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "OFN_PATHMUSTEXIST 0x800\0"
	.byte	0x1
	.uleb128 0x70
	.ascii "OFN_READONLY 1\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "OFN_SHAREAWARE 0x4000\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "OFN_SHOWHELP 16\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "OFN_SHAREFALLTHROUGH 2\0"
	.byte	0x1
	.uleb128 0x74
	.ascii "OFN_SHARENOWARN 1\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "OFN_SHAREWARN 0\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "OFN_NODEREFERENCELINKS 0x100000\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "OFN_DONTADDTORECENT 0x02000000\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "FR_DIALOGTERM 64\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "FR_DOWN 1\0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "FR_ENABLEHOOK 256\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "FR_ENABLETEMPLATE 512\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "FR_ENABLETEMPLATEHANDLE 0x2000\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "FR_FINDNEXT 8\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "FR_HIDEUPDOWN 0x4000\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "FR_HIDEMATCHCASE 0x8000\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "FR_HIDEWHOLEWORD 0x10000\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "FR_MATCHALEFHAMZA 0x80000000\0"
	.byte	0x1
	.uleb128 0x84
	.ascii "FR_MATCHCASE 4\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "FR_MATCHDIAC 0x20000000\0"
	.byte	0x1
	.uleb128 0x86
	.ascii "FR_MATCHKASHIDA 0x40000000\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "FR_NOMATCHCASE 0x800\0"
	.byte	0x1
	.uleb128 0x88
	.ascii "FR_NOUPDOWN 0x400\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "FR_NOWHOLEWORD 4096\0"
	.byte	0x1
	.uleb128 0x8a
	.ascii "FR_REPLACE 16\0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "FR_REPLACEALL 32\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "FR_SHOWHELP 128\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "FR_WHOLEWORD 2\0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "PD_ALLPAGES 0x00000000\0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "PD_SELECTION 0x00000001\0"
	.byte	0x1
	.uleb128 0x90
	.ascii "PD_PAGENUMS 0x00000002\0"
	.byte	0x1
	.uleb128 0x91
	.ascii "PD_NOSELECTION 0x00000004\0"
	.byte	0x1
	.uleb128 0x92
	.ascii "PD_NOPAGENUMS 0x00000008\0"
	.byte	0x1
	.uleb128 0x93
	.ascii "PD_COLLATE 0x00000010\0"
	.byte	0x1
	.uleb128 0x94
	.ascii "PD_PRINTTOFILE 0x00000020\0"
	.byte	0x1
	.uleb128 0x95
	.ascii "PD_PRINTSETUP 0x00000040\0"
	.byte	0x1
	.uleb128 0x96
	.ascii "PD_NOWARNING 0x00000080\0"
	.byte	0x1
	.uleb128 0x97
	.ascii "PD_RETURNDC 0x00000100\0"
	.byte	0x1
	.uleb128 0x98
	.ascii "PD_RETURNIC 0x00000200\0"
	.byte	0x1
	.uleb128 0x99
	.ascii "PD_RETURNDEFAULT 0x00000400\0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "PD_SHOWHELP 0x00000800\0"
	.byte	0x1
	.uleb128 0x9b
	.ascii "PD_ENABLEPRINTHOOK 0x00001000\0"
	.byte	0x1
	.uleb128 0x9c
	.ascii "PD_ENABLESETUPHOOK 0x00002000\0"
	.byte	0x1
	.uleb128 0x9d
	.ascii "PD_ENABLEPRINTTEMPLATE 0x00004000\0"
	.byte	0x1
	.uleb128 0x9e
	.ascii "PD_ENABLESETUPTEMPLATE 0x00008000\0"
	.byte	0x1
	.uleb128 0x9f
	.ascii "PD_ENABLEPRINTTEMPLATEHANDLE 0x00010000\0"
	.byte	0x1
	.uleb128 0xa0
	.ascii "PD_ENABLESETUPTEMPLATEHANDLE 0x00020000\0"
	.byte	0x1
	.uleb128 0xa1
	.ascii "PD_USEDEVMODECOPIES 0x00040000\0"
	.byte	0x1
	.uleb128 0xa2
	.ascii "PD_USEDEVMODECOPIESANDCOLLATE 0x00040000\0"
	.byte	0x1
	.uleb128 0xa3
	.ascii "PD_DISABLEPRINTTOFILE 0x00080000\0"
	.byte	0x1
	.uleb128 0xa4
	.ascii "PD_HIDEPRINTTOFILE 0x00100000\0"
	.byte	0x1
	.uleb128 0xa5
	.ascii "PD_NONETWORKBUTTON 0x00200000\0"
	.byte	0x1
	.uleb128 0xa7
	.ascii "PD_CURRENTPAGE 0x00400000\0"
	.byte	0x1
	.uleb128 0xa8
	.ascii "PD_NOCURRENTPAGE 0x00800000\0"
	.byte	0x1
	.uleb128 0xa9
	.ascii "PD_EXCLUSIONFLAGS 0x01000000\0"
	.byte	0x1
	.uleb128 0xaa
	.ascii "PD_USELARGETEMPLATE 0x10000000\0"
	.byte	0x1
	.uleb128 0xab
	.ascii "PD_RESULT_CANCEL 0\0"
	.byte	0x1
	.uleb128 0xac
	.ascii "PD_RESULT_PRINT 1\0"
	.byte	0x1
	.uleb128 0xad
	.ascii "PD_RESULT_APPLY 2\0"
	.byte	0x1
	.uleb128 0xae
	.ascii "START_PAGE_GENERAL 0XFFFFFFFF\0"
	.byte	0x1
	.uleb128 0xb0
	.ascii "PSD_DEFAULTMINMARGINS 0\0"
	.byte	0x1
	.uleb128 0xb1
	.ascii "PSD_INWININIINTLMEASURE 0\0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "PSD_MINMARGINS 1\0"
	.byte	0x1
	.uleb128 0xb3
	.ascii "PSD_MARGINS 2\0"
	.byte	0x1
	.uleb128 0xb4
	.ascii "PSD_INTHOUSANDTHSOFINCHES 4\0"
	.byte	0x1
	.uleb128 0xb5
	.ascii "PSD_INHUNDREDTHSOFMILLIMETERS 8\0"
	.byte	0x1
	.uleb128 0xb6
	.ascii "PSD_DISABLEMARGINS 16\0"
	.byte	0x1
	.uleb128 0xb7
	.ascii "PSD_DISABLEPRINTER 32\0"
	.byte	0x1
	.uleb128 0xb8
	.ascii "PSD_NOWARNING 128\0"
	.byte	0x1
	.uleb128 0xb9
	.ascii "PSD_DISABLEORIENTATION 256\0"
	.byte	0x1
	.uleb128 0xba
	.ascii "PSD_DISABLEPAPER 512\0"
	.byte	0x1
	.uleb128 0xbb
	.ascii "PSD_RETURNDEFAULT 1024\0"
	.byte	0x1
	.uleb128 0xbc
	.ascii "PSD_SHOWHELP 2048\0"
	.byte	0x1
	.uleb128 0xbd
	.ascii "PSD_ENABLEPAGESETUPHOOK 8192\0"
	.byte	0x1
	.uleb128 0xbe
	.ascii "PSD_ENABLEPAGESETUPTEMPLATE 0x8000\0"
	.byte	0x1
	.uleb128 0xbf
	.ascii "PSD_ENABLEPAGESETUPTEMPLATEHANDLE 0x20000\0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "PSD_ENABLEPAGEPAINTHOOK 0x40000\0"
	.byte	0x1
	.uleb128 0xc1
	.ascii "PSD_DISABLEPAGEPAINTING 0x80000\0"
	.byte	0x1
	.uleb128 0xc2
	.ascii "WM_PSD_PAGESETUPDLG WM_USER\0"
	.byte	0x1
	.uleb128 0xc3
	.ascii "WM_PSD_FULLPAGERECT (WM_USER+1)\0"
	.byte	0x1
	.uleb128 0xc4
	.ascii "WM_PSD_MINMARGINRECT (WM_USER+2)\0"
	.byte	0x1
	.uleb128 0xc5
	.ascii "WM_PSD_MARGINRECT (WM_USER+3)\0"
	.byte	0x1
	.uleb128 0xc6
	.ascii "WM_PSD_GREEKTEXTRECT (WM_USER+4)\0"
	.byte	0x1
	.uleb128 0xc7
	.ascii "WM_PSD_ENVSTAMPRECT (WM_USER+5)\0"
	.byte	0x1
	.uleb128 0xc8
	.ascii "WM_PSD_YAFULLPAGERECT (WM_USER+6)\0"
	.byte	0x1
	.uleb128 0xc9
	.ascii "CD_LBSELNOITEMS (-1)\0"
	.byte	0x1
	.uleb128 0xca
	.ascii "CD_LBSELCHANGE 0\0"
	.byte	0x1
	.uleb128 0xcb
	.ascii "CD_LBSELSUB 1\0"
	.byte	0x1
	.uleb128 0xcc
	.ascii "CD_LBSELADD 2\0"
	.byte	0x1
	.uleb128 0xcd
	.ascii "DN_DEFAULTPRN 1\0"
	.byte	0x1
	.uleb128 0xcf
	.ascii "OPENFILENAME_SIZE_VERSION_400 76\0"
	.byte	0x1
	.uleb128 0xd6
	.ascii "SNDMSG SendMessage\0"
	.byte	0x1
	.uleb128 0xda
	.ascii "CommDlg_OpenSave_GetSpec(d,s,m) ((int)SNDMSG((d),CDM_GETSPEC,(m),(LPARAM)(s)))\0"
	.byte	0x1
	.uleb128 0xdb
	.ascii "CommDlg_OpenSave_GetSpecA CommDlg_OpenSave_GetSpec\0"
	.byte	0x1
	.uleb128 0xdc
	.ascii "CommDlg_OpenSave_GetSpecW CommDlg_OpenSave_GetSpec\0"
	.byte	0x1
	.uleb128 0xdd
	.ascii "CommDlg_OpenSave_GetFilePath(d,s,m) ((int)SNDMSG((d),CDM_GETFILEPATH,(m),(LPARAM)(s)))\0"
	.byte	0x1
	.uleb128 0xde
	.ascii "CommDlg_OpenSave_GetFilePathA CommDlg_OpenSave_GetFilePath\0"
	.byte	0x1
	.uleb128 0xdf
	.ascii "CommDlg_OpenSave_GetFilePathW CommDlg_OpenSave_GetFilePath\0"
	.byte	0x1
	.uleb128 0xe0
	.ascii "CommDlg_OpenSave_GetFolderPath(d,s,m) ((int)SNDMSG((d),CDM_GETFOLDERPATH,(m),(LPARAM)(LPSTR)(s)))\0"
	.byte	0x1
	.uleb128 0xe1
	.ascii "CommDlg_OpenSave_GetFolderPathA CommDlg_OpenSave_GetFolderPath\0"
	.byte	0x1
	.uleb128 0xe2
	.ascii "CommDlg_OpenSave_GetFolderPathW CommDlg_OpenSave_GetFolderPath\0"
	.byte	0x1
	.uleb128 0xe3
	.ascii "CommDlg_OpenSave_GetFolderIDList(d,i,m) ((int)SNDMSG((d),CDM_GETFOLDERIDLIST,(m),(LPARAM)(i)))\0"
	.byte	0x1
	.uleb128 0xe4
	.ascii "CommDlg_OpenSave_SetControlText(d,i,t) ((void)SNDMSG((d),CDM_SETCONTROLTEXT,(i),(LPARAM)(t)))\0"
	.byte	0x1
	.uleb128 0xe5
	.ascii "CommDlg_OpenSave_HideControl(d,i) ((void)SNDMSG((d),CDM_HIDECONTROL,(i),0))\0"
	.byte	0x1
	.uleb128 0xe6
	.ascii "CommDlg_OpenSave_SetDefExt(d,e) ((void)SNDMSG((d),CDM_SETDEFEXT,0,(LPARAM)(e)))\0"
	.byte	0x3
	.uleb128 0x1d6
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x6
	.ascii "_UNKNWN_H \0"
	.file 59 "c:/mingw/include/objfwd.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x3b
	.byte	0x1
	.uleb128 0x2
	.ascii "_OBJFWD_H \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0xe
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x32
	.byte	0x4
	.file 60 "c:/mingw/include/rpcndr.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x3c
	.byte	0x1
	.uleb128 0x2
	.ascii "_RPCNDR_H \0"
	.byte	0x1
	.uleb128 0x3
	.ascii "__RPCNDR_H__ \0"
	.byte	0x1
	.uleb128 0x9
	.ascii "__RPCNDR_H_VERSION__ ( 450 )\0"
	.file 61 "c:/mingw/include/rpcnsip.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x3d
	.byte	0x1
	.uleb128 0x2
	.ascii "_RPCNSIP_H \0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x10
	.ascii "DECLSPEC_UUID(x) \0"
	.byte	0x1
	.uleb128 0x11
	.ascii "MIDL_INTERFACE(x) struct\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "NDR_CHAR_REP_MASK (unsigned long)0xFL\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "NDR_INT_REP_MASK (unsigned long)0xF0L\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "NDR_FLOAT_REP_MASK (unsigned long)0xFF00L\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "NDR_LITTLE_ENDIAN (unsigned long)0x10L\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "NDR_BIG_ENDIAN (unsigned long)0\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "NDR_IEEE_FLOAT (unsigned long)0\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "NDR_VAX_FLOAT (unsigned long)0x100L\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "NDR_ASCII_CHAR (unsigned long)0\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "NDR_EBCDIC_CHAR (unsigned long)1\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "NDR_LOCAL_DATA_REPRESENTATION (unsigned long)0x10L\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "NDR_LOCAL_ENDIAN NDR_LITTLE_ENDIAN\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "__RPC_CALLEE __stdcall\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "RPC_VAR_ENTRY __cdecl\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "__MIDL_DECLSPEC_DLLIMPORT __declspec(dllimport)\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "__MIDL_DECLSPEC_DLLEXPORT __declspec(dllexport)\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "hyper __int64\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "MIDL_uhyper unsigned __int64\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "small char\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "NDRSContextValue(hContext) (&(hContext)->userContext)\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "cbNDRContext 20\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "byte_from_ndr(source,target) { *(target) = *(*(char**)&(source)->Buffer)++; }\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "byte_array_from_ndr(Source,LowerIndex,UpperIndex,Target) { NDRcopy ((((char *)(Target))+(LowerIndex)), (Source)->Buffer, (unsigned int)((UpperIndex)-(LowerIndex))); *(unsigned long *)&(Source)->Buffer += ((UpperIndex)-(LowerIndex)); }\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "boolean_from_ndr(source,target) { *(target) = *(*(char**)&(source)->Buffer)++; }\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "boolean_array_from_ndr(Source,LowerIndex,UpperIndex,Target) { NDRcopy ((((char *)(Target))+(LowerIndex)), (Source)->Buffer, (unsigned int)((UpperIndex)-(LowerIndex))); *(unsigned long *)&(Source)->Buffer += ((UpperIndex)-(LowerIndex)); }\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "small_from_ndr(source,target) { *(target) = *(*(char**)&(source)->Buffer)++; }\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "small_from_ndr_temp(source,target,format) { *(target) = *(*(char**)(source))++; }\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "small_array_from_ndr(Source,LowerIndex,UpperIndex,Target) { NDRcopy ((((char *)(Target))+(LowerIndex)), (Source)->Buffer, (unsigned int)((UpperIndex)-(LowerIndex))); *(unsigned long *)&(Source)->Buffer += ((UpperIndex)-(LowerIndex)); }\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "MIDL_ascii_strlen(string) strlen(string)\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "MIDL_ascii_strcpy(target,source) strcpy(target,source)\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "MIDL_memset(s,c,n) memset(s,c,n)\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "_midl_ma1(p,cast) *(*( cast **)&p)++\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "_midl_ma2(p,cast) *(*( cast **)&p)++\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "_midl_ma4(p,cast) *(*( cast **)&p)++\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "_midl_ma8(p,cast) *(*( cast **)&p)++\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "_midl_unma1(p,cast) *(( cast *)p)++\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "_midl_unma2(p,cast) *(( cast *)p)++\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "_midl_unma3(p,cast) *(( cast *)p)++\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "_midl_unma4(p,cast) *(( cast *)p)++\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "_midl_fa2(p) (p = (RPC_BUFPTR )((unsigned long)(p+1) & 0xfffffffe))\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "_midl_fa4(p) (p = (RPC_BUFPTR )((unsigned long)(p+3) & 0xfffffffc))\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "_midl_fa8(p) (p = (RPC_BUFPTR )((unsigned long)(p+7) & 0xfffffff8))\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "_midl_addp(p,n) (p += n)\0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "_midl_marsh_lhs(p,cast) *(*( cast **)&p)++\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "_midl_marsh_up(mp,p) *(*(unsigned long **)&mp)++ = (unsigned long)p\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "_midl_advmp(mp) *(*(unsigned long **)&mp)++\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "_midl_unmarsh_up(p) (*(*(unsigned long **)&p)++)\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "NdrMarshConfStringHdr(p,s,l) (_midl_ma4( p, unsigned long) = s, _midl_ma4( p, unsigned long) = 0, _midl_ma4( p, unsigned long) = l)\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "NdrUnMarshConfStringHdr(p,s,l) (s=_midl_unma4(p,unsigned long), (_midl_addp(p,4)), (l=_midl_unma4(p,unsigned long)))\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "NdrMarshCCtxtHdl(pc,p) (NDRCContextMarshall( (NDR_CCONTEXT)pc, p ),p+20)\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "NdrUnMarshCCtxtHdl(pc,p,h,drep) (NDRCContextUnmarshall((NDR_CCONTEXT)pc,h,p,drep), p+20)\0"
	.byte	0x1
	.uleb128 0x55
	.ascii "NdrUnMarshSCtxtHdl(pc,p,drep) (pc = NdrSContextUnMarshall(p,drep ))\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "NdrMarshSCtxtHdl(pc,p,rd) (NdrSContextMarshall((NDR_SCONTEXT)pc,p, (NDR_RUNDOWN)rd))\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "NdrFieldOffset(s,f) (long)(& (((s *)0)->f))\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "NdrFieldPad(s,f,p,t) (NdrFieldOffset(s,f) - NdrFieldOffset(s,p) - sizeof(t))\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "NdrFcShort(s) (unsigned char)(s & 0xff), (unsigned char)(s >> 8)\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "NdrFcLong(s) (unsigned char)(s & 0xff), (unsigned char)((s & 0x0000ff00) >> 8), (unsigned char)((s & 0x00ff0000) >> 16), (unsigned char)(s >> 24)\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "CONST_VTBL const\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x35
	.ascii "IID_NULL GUID_NULL\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "CLSID_NULL GUID_NULL\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "CBPCLIPDATA(d) ((d).cbSize-sizeof((d).ulClipFmt))\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "ROTFLAGS_REGISTRATIONKEEPSALIVE 0x01\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "ROTFLAGS_ALLOWANYCLIENT 0x02\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "__BLOB_DATA_TYPE_DEFINED__ \0"
	.byte	0x1
	.uleb128 0x58
	.ascii "_WTYPES_H \0"
	.byte	0x1
	.uleb128 0x9f
	.ascii "OLESTR(s) L ##s\0"
	.byte	0x1
	.uleb128 0xad
	.ascii "VARIANT_TRUE ((VARIANT_BOOL)(0xFFFF))\0"
	.byte	0x1
	.uleb128 0xae
	.ascii "VARIANT_FALSE ((VARIANT_BOOL)(0))\0"
	.byte	0x1
	.uleb128 0x141
	.ascii "DECIMAL_NEG ((BYTE)(0x80))\0"
	.byte	0x1
	.uleb128 0x149
	.ascii "DECIMAL_SETZERO(d) { (d).Lo64 = (d).Hi32 = (d).signscale = 0; }\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x16
	.ascii "__IUnknown_INTERFACE_DEFINED__ \0"
	.byte	0x1
	.uleb128 0x17
	.ascii "INTERFACE IUnknown\0"
	.byte	0x2
	.uleb128 0x1e
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "__IClassFactory_INTERFACE_DEFINED__ \0"
	.byte	0x1
	.uleb128 0x23
	.ascii "INTERFACE IClassFactory\0"
	.byte	0x2
	.uleb128 0x2c
	.ascii "INTERFACE\0"
	.byte	0x4
	.file 62 "c:/mingw/include/prsht.h"
	.byte	0x3
	.uleb128 0x1d7
	.uleb128 0x3e
	.byte	0x1
	.uleb128 0x2
	.ascii "_PRSHT_H \0"
	.byte	0x1
	.uleb128 0x13
	.ascii "POSTMSG PostMessage\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "MAXPROPPAGES 100\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "PSP_DEFAULT 0\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "PSP_DLGINDIRECT 1\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "PSP_USEHICON 2\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "PSP_USEICONID 4\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "PSP_USETITLE 8\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "PSP_RTLREADING 16\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "PSP_HASHELP 32\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "PSP_USEREFPARENT 64\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "PSP_USECALLBACK 128\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "PSP_PREMATURE 1024\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "PSPCB_RELEASE 1\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "PSPCB_CREATE 2\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "PSH_DEFAULT 0\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "PSH_PROPTITLE 1\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "PSH_USEHICON 2\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "PSH_USEICONID 4\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "PSH_PROPSHEETPAGE 8\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "PSH_WIZARDHASFINISH 16\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "PSH_WIZARD 32\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "PSH_USEPSTARTPAGE 64\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "PSH_NOAPPLYNOW 128\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "PSH_USECALLBACK 256\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "PSH_HASHELP 512\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "PSH_MODELESS 1024\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "PSH_RTLREADING 2048\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "PSH_WIZARDCONTEXTHELP 4096\0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "PSCB_INITIALIZED 1\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "PSCB_PRECREATE 2\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "PSM_GETTABCONTROL 1140\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "PSM_GETCURRENTPAGEHWND 1142\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "PSM_ISDIALOGMESSAGE 1141\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "PSM_PRESSBUTTON 1137\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "PSM_SETCURSELID 1138\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "PSM_SETFINISHTEXTW 1145\0"
	.byte	0x1
	.uleb128 0x55
	.ascii "PSM_SETFINISHTEXTA 1139\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "PSN_FIRST (-200)\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "PSN_LAST (-299)\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "PSN_APPLY (-202)\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "PSN_HELP (-205)\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "PSN_KILLACTIVE (-201)\0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "PSN_QUERYCANCEL (-209)\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "PSN_RESET (-203)\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "PSN_SETACTIVE (-200)\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "PSN_WIZBACK (-206)\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "PSN_WIZFINISH (-208)\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "PSN_WIZNEXT (-207)\0"
	.byte	0x1
	.uleb128 0x61
	.ascii "PSNRET_NOERROR 0\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "PSNRET_INVALID 1\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "PSNRET_INVALID_NOCHANGEPAGE 2\0"
	.byte	0x1
	.uleb128 0x64
	.ascii "ID_PSRESTARTWINDOWS 2\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "ID_PSREBOOTSYSTEM 3\0"
	.byte	0x1
	.uleb128 0x66
	.ascii "WIZ_CXDLG 276\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "WIZ_CYDLG 140\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "WIZ_CXBMP 80\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "WIZ_BODYX 92\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "WIZ_BODYCX 184\0"
	.byte	0x1
	.uleb128 0x6b
	.ascii "PROP_SM_CXDLG 212\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "PROP_SM_CYDLG 188\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "PROP_MED_CXDLG 227\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "PROP_MED_CYDLG 215\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "PROP_LG_CXDLG 252\0"
	.byte	0x1
	.uleb128 0x70
	.ascii "PROP_LG_CYDLG 218\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "PSBTN_MAX 6\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "PSBTN_BACK 0\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "PSBTN_NEXT 1\0"
	.byte	0x1
	.uleb128 0x74
	.ascii "PSBTN_FINISH 2\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "PSBTN_OK 3\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "PSBTN_APPLYNOW 4\0"
	.byte	0x1
	.uleb128 0x77
	.ascii "PSBTN_CANCEL 5\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "PSBTN_HELP 6\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "PSWIZB_BACK 1\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "PSWIZB_NEXT 2\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "PSWIZB_FINISH 4\0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "PSWIZB_DISABLEDFINISH 8\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "PSM_SETWIZBUTTONS (WM_USER+112)\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "PSM_APPLY (WM_USER+110)\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "PSM_UNCHANGED (WM_USER+109)\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "PSM_QUERYSIBLINGS (WM_USER+108)\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "PSM_CANCELTOCLOSE (WM_USER+107)\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "PSM_REBOOTSYSTEM (WM_USER+106)\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "PSM_RESTARTWINDOWS (WM_USER+105)\0"
	.byte	0x1
	.uleb128 0x84
	.ascii "PSM_CHANGED (WM_USER+104)\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "PSM_ADDPAGE (WM_USER+103)\0"
	.byte	0x1
	.uleb128 0x86
	.ascii "PSM_REMOVEPAGE (WM_USER+102)\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "PSM_SETCURSEL (WM_USER+101)\0"
	.byte	0x1
	.uleb128 0x88
	.ascii "PSM_SETTITLEA (WM_USER+111)\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "PSM_SETTITLEW (WM_USER+120)\0"
	.byte	0x1
	.uleb128 0x110
	.ascii "PropSheet_AddPage(d,p) SNDMSG(d,PSM_ADDPAGE,0,(LPARAM)p)\0"
	.byte	0x1
	.uleb128 0x111
	.ascii "PropSheet_Apply(d) SNDMSG(d,PSM_APPLY,0,0)\0"
	.byte	0x1
	.uleb128 0x112
	.ascii "PropSheet_CancelToClose(d) POSTMSG(d,PSM_CANCELTOCLOSE,0,0)\0"
	.byte	0x1
	.uleb128 0x113
	.ascii "PropSheet_Changed(d,w) SNDMSG(d,PSM_CHANGED,(WPARAM)w,0)\0"
	.byte	0x1
	.uleb128 0x114
	.ascii "PropSheet_GetCurrentPageHwnd(d) (HWND)SNDMSG(d,PSM_GETCURRENTPAGEHWND,0,0)\0"
	.byte	0x1
	.uleb128 0x115
	.ascii "PropSheet_GetTabControl(d) (HWND)SNDMSG(d,PSM_GETTABCONTROL,0,0)\0"
	.byte	0x1
	.uleb128 0x116
	.ascii "PropSheet_IsDialogMessage(d,m) (BOOL)SNDMSG(d,PSM_ISDIALOGMESSAGE,0,(LPARAM)m)\0"
	.byte	0x1
	.uleb128 0x117
	.ascii "PropSheet_PressButton(d,i) POSTMSG(d,PSM_PRESSBUTTON,i,0)\0"
	.byte	0x1
	.uleb128 0x118
	.ascii "PropSheet_QuerySiblings(d,w,l) SNDMSG(d,PSM_QUERYSIBLINGS,w,l)\0"
	.byte	0x1
	.uleb128 0x119
	.ascii "PropSheet_RebootSystem(d) SNDMSG(d,PSM_REBOOTSYSTEM,0,0)\0"
	.byte	0x1
	.uleb128 0x11a
	.ascii "PropSheet_RemovePage(d,i,p) SNDMSG(d,PSM_REMOVEPAGE,i,(LPARAM)p)\0"
	.byte	0x1
	.uleb128 0x11b
	.ascii "PropSheet_RestartWindows(d) SNDMSG(d,PSM_RESTARTWINDOWS,0,0)\0"
	.byte	0x1
	.uleb128 0x11c
	.ascii "PropSheet_SetCurSel(d,p,i) SNDMSG(d,PSM_SETCURSEL,i,(LPARAM)p)\0"
	.byte	0x1
	.uleb128 0x11d
	.ascii "PropSheet_SetCurSelByID(d,i) SNDMSG(d,PSM_SETCURSELID,0,i)\0"
	.byte	0x1
	.uleb128 0x11e
	.ascii "PropSheet_SetFinishText(d,s) SNDMSG(d,PSM_SETFINISHTEXT,0,(LPARAM)s)\0"
	.byte	0x1
	.uleb128 0x11f
	.ascii "PropSheet_SetTitle(d,w,s) SNDMSG(d,PSM_SETTITLE,w,(LPARAM)s)\0"
	.byte	0x1
	.uleb128 0x120
	.ascii "PropSheet_SetWizButtons(d,f) POSTMSG(d,PSM_SETWIZBUTTONS,0,(LPARAM)f)\0"
	.byte	0x1
	.uleb128 0x121
	.ascii "PropSheet_UnChanged(d,w) SNDMSG(d,PSM_UNCHANGED,(WPARAM)w,0)\0"
	.byte	0x1
	.uleb128 0x131
	.ascii "LPFNPSPCALLBACK LPFNPSPCALLBACKA\0"
	.byte	0x1
	.uleb128 0x132
	.ascii "PROPSHEETPAGE PROPSHEETPAGEA\0"
	.byte	0x1
	.uleb128 0x133
	.ascii "LPPROPSHEETPAGE LPPROPSHEETPAGEA\0"
	.byte	0x1
	.uleb128 0x134
	.ascii "LPCPROPSHEETPAGE LPCPROPSHEETPAGEA\0"
	.byte	0x1
	.uleb128 0x135
	.ascii "PROPSHEETHEADER PROPSHEETHEADERA\0"
	.byte	0x1
	.uleb128 0x136
	.ascii "LPPROPSHEETHEADER LPPROPSHEETHEADERA\0"
	.byte	0x1
	.uleb128 0x137
	.ascii "LPCPROPSHEETHEADER LPCPROPSHEETHEADERA\0"
	.byte	0x1
	.uleb128 0x138
	.ascii "PSM_SETTITLE PSM_SETTITLEA\0"
	.byte	0x1
	.uleb128 0x139
	.ascii "PSM_SETFINISHTEXT PSM_SETFINISHTEXTA\0"
	.byte	0x1
	.uleb128 0x13a
	.ascii "CreatePropertySheetPage CreatePropertySheetPageA\0"
	.byte	0x1
	.uleb128 0x13b
	.ascii "PropertySheet PropertySheetA\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x241
	.ascii "LBSELCHSTRING LBSELCHSTRINGA\0"
	.byte	0x1
	.uleb128 0x242
	.ascii "SHAREVISTRING SHAREVISTRINGA\0"
	.byte	0x1
	.uleb128 0x243
	.ascii "FILEOKSTRING FILEOKSTRINGA\0"
	.byte	0x1
	.uleb128 0x244
	.ascii "COLOROKSTRING COLOROKSTRINGA\0"
	.byte	0x1
	.uleb128 0x245
	.ascii "SETRGBSTRING SETRGBSTRINGA\0"
	.byte	0x1
	.uleb128 0x246
	.ascii "HELPMSGSTRING HELPMSGSTRINGA\0"
	.byte	0x1
	.uleb128 0x247
	.ascii "FINDMSGSTRING FINDMSGSTRINGA\0"
	.byte	0x1
	.uleb128 0x24f
	.ascii "ChooseColor ChooseColorA\0"
	.byte	0x1
	.uleb128 0x250
	.ascii "ChooseFont ChooseFontA\0"
	.byte	0x1
	.uleb128 0x251
	.ascii "FindText FindTextA\0"
	.byte	0x1
	.uleb128 0x252
	.ascii "GetFileTitle GetFileTitleA\0"
	.byte	0x1
	.uleb128 0x253
	.ascii "GetOpenFileName GetOpenFileNameA\0"
	.byte	0x1
	.uleb128 0x254
	.ascii "GetSaveFileName GetSaveFileNameA\0"
	.byte	0x1
	.uleb128 0x255
	.ascii "PageSetupDlg PageSetupDlgA\0"
	.byte	0x1
	.uleb128 0x256
	.ascii "PrintDlg PrintDlgA\0"
	.byte	0x1
	.uleb128 0x257
	.ascii "ReplaceText ReplaceTextA\0"
	.byte	0x1
	.uleb128 0x25a
	.ascii "PrintDlgEx PrintDlgExA\0"
	.byte	0x4
	.file 63 "c:/mingw/include/winspool.h"
	.byte	0x3
	.uleb128 0x45
	.uleb128 0x3f
	.byte	0x1
	.uleb128 0x2
	.ascii "_WINSPOOL_H \0"
	.byte	0x1
	.uleb128 0xa
	.ascii "DI_CHANNEL 1\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "DI_CHANNEL_WRITE 2\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "DI_READ_SPOOL_JOB 3\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "DI_MEMORYMAP_WRITE 0x1\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "FORM_USER 0x0\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "FORM_BUILTIN 0x1\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "FORM_PRINTER 0x2\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "DRIVER_KERNELMODE 0x00000001\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "DRIVER_USERMODE 0x00000002\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "DSPRINT_PUBLISH 0x00000001\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "DSPRINT_UPDATE 0x00000002\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "DSPRINT_UNPUBLISH 0x00000004\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "DSPRINT_REPUBLISH 0x00000008\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "DSPRINT_PENDING 0x80000000\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "JOB_CONTROL_PAUSE 1\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "JOB_CONTROL_RESUME 2\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "JOB_CONTROL_CANCEL 3\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "JOB_CONTROL_RESTART 4\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "JOB_CONTROL_DELETE 5\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "JOB_CONTROL_SENT_TO_PRINTER 6\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "JOB_CONTROL_LAST_PAGE_EJECTED 7\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "JOB_STATUS_PAUSED 0x1\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "JOB_STATUS_ERROR 0x2\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "JOB_STATUS_DELETING 0x4\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "JOB_STATUS_SPOOLING 0x8\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "JOB_STATUS_PRINTING 0x10\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "JOB_STATUS_OFFLINE 0x20\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "JOB_STATUS_PAPEROUT 0x40\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "JOB_STATUS_PRINTED 0x80\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "JOB_STATUS_DELETED 0x100\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "JOB_STATUS_BLOCKED_DEVQ 0x200\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "JOB_STATUS_USER_INTERVENTION 0x400\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "JOB_STATUS_RESTART 0x800\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "JOB_STATUS_COMPLETE 0x1000\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "JOB_POSITION_UNSPECIFIED 0\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "JOB_NOTIFY_TYPE 1\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "JOB_NOTIFY_FIELD_PRINTER_NAME 0\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "JOB_NOTIFY_FIELD_MACHINE_NAME 1\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "JOB_NOTIFY_FIELD_PORT_NAME 2\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "JOB_NOTIFY_FIELD_USER_NAME 3\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "JOB_NOTIFY_FIELD_NOTIFY_NAME 4\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "JOB_NOTIFY_FIELD_DATATYPE 5\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "JOB_NOTIFY_FIELD_PRINT_PROCESSOR 6\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "JOB_NOTIFY_FIELD_PARAMETERS 7\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "JOB_NOTIFY_FIELD_DRIVER_NAME 8\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "JOB_NOTIFY_FIELD_DEVMODE 9\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "JOB_NOTIFY_FIELD_STATUS 10\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "JOB_NOTIFY_FIELD_STATUS_STRING 11\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "JOB_NOTIFY_FIELD_SECURITY_DESCRIPTOR 12\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "JOB_NOTIFY_FIELD_DOCUMENT 13\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "JOB_NOTIFY_FIELD_PRIORITY 14\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "JOB_NOTIFY_FIELD_POSITION 15\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "JOB_NOTIFY_FIELD_SUBMITTED 16\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "JOB_NOTIFY_FIELD_START_TIME 17\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "JOB_NOTIFY_FIELD_UNTIL_TIME 18\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "JOB_NOTIFY_FIELD_TIME 19\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "JOB_NOTIFY_FIELD_TOTAL_PAGES 20\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "JOB_NOTIFY_FIELD_PAGES_PRINTED 21\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "JOB_NOTIFY_FIELD_TOTAL_BYTES 22\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "JOB_NOTIFY_FIELD_BYTES_PRINTED 23\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "JOB_ACCESS_ADMINISTER 16\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "JOB_ALL_ACCESS (STANDARD_RIGHTS_REQUIRED|JOB_ACCESS_ADMINISTER)\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "JOB_READ (STANDARD_RIGHTS_READ| JOB_ACCESS_ADMINISTER)\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "JOB_WRITE (STANDARD_RIGHTS_WRITE|JOB_ACCESS_ADMINISTER)\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "JOB_EXECUTE (STANDARD_RIGHTS_EXECUTE|JOB_ACCESS_ADMINISTER)\0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "PRINTER_NOTIFY_OPTIONS_REFRESH 1\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "PRINTER_ACCESS_ADMINISTER 4\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "PRINTER_ACCESS_USE 8\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "PRINTER_ERROR_INFORMATION 0x80000000\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "PRINTER_ERROR_WARNING 0x40000000\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "PRINTER_ERROR_SEVERE 0x20000000\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "PRINTER_ERROR_OUTOFPAPER 1\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "PRINTER_ERROR_JAM 2\0"
	.byte	0x1
	.uleb128 0x55
	.ascii "PRINTER_ERROR_OUTOFTONER 4\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "PRINTER_CONTROL_PAUSE 1\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "PRINTER_CONTROL_RESUME 2\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "PRINTER_CONTROL_PURGE 3\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "PRINTER_CONTROL_SET_STATUS 4\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "PRINTER_STATUS_PAUSED 1\0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "PRINTER_STATUS_ERROR 2\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "PRINTER_STATUS_PENDING_DELETION 4\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "PRINTER_STATUS_PAPER_JAM 8\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "PRINTER_STATUS_PAPER_OUT 0x10\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "PRINTER_STATUS_MANUAL_FEED 0x20\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "PRINTER_STATUS_PAPER_PROBLEM 0x40\0"
	.byte	0x1
	.uleb128 0x61
	.ascii "PRINTER_STATUS_OFFLINE 0x80\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "PRINTER_STATUS_IO_ACTIVE 0x100\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "PRINTER_STATUS_BUSY 0x200\0"
	.byte	0x1
	.uleb128 0x64
	.ascii "PRINTER_STATUS_PRINTING 0x400\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "PRINTER_STATUS_OUTPUT_BIN_FULL 0x800\0"
	.byte	0x1
	.uleb128 0x66
	.ascii "PRINTER_STATUS_NOT_AVAILABLE 0x1000\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "PRINTER_STATUS_WAITING 0x2000\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "PRINTER_STATUS_PROCESSING 0x4000\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "PRINTER_STATUS_INITIALIZING 0x8000\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "PRINTER_STATUS_WARMING_UP 0x10000\0"
	.byte	0x1
	.uleb128 0x6b
	.ascii "PRINTER_STATUS_TONER_LOW 0x20000\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "PRINTER_STATUS_NO_TONER 0x40000\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "PRINTER_STATUS_PAGE_PUNT 0x80000\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "PRINTER_STATUS_USER_INTERVENTION 0x100000\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "PRINTER_STATUS_OUT_OF_MEMORY 0x200000\0"
	.byte	0x1
	.uleb128 0x70
	.ascii "PRINTER_STATUS_DOOR_OPEN 0x400000\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "PRINTER_STATUS_SERVER_UNKNOWN 0x800000\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "PRINTER_STATUS_POWER_SAVE 0x1000000\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "PRINTER_ATTRIBUTE_QUEUED 1\0"
	.byte	0x1
	.uleb128 0x74
	.ascii "PRINTER_ATTRIBUTE_DIRECT 2\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "PRINTER_ATTRIBUTE_DEFAULT 4\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "PRINTER_ATTRIBUTE_SHARED 8\0"
	.byte	0x1
	.uleb128 0x77
	.ascii "PRINTER_ATTRIBUTE_NETWORK 0x10\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "PRINTER_ATTRIBUTE_HIDDEN 0x20\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "PRINTER_ATTRIBUTE_LOCAL 0x40\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "PRINTER_ATTRIBUTE_ENABLE_DEVQ 0x80\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "PRINTER_ATTRIBUTE_KEEPPRINTEDJOBS 0x100\0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "PRINTER_ATTRIBUTE_DO_COMPLETE_FIRST 0x200\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "PRINTER_ATTRIBUTE_WORK_OFFLINE 0x400\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "PRINTER_ATTRIBUTE_ENABLE_BIDI 0x800\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "PRINTER_ATTRIBUTE_RAW_ONLY 0x1000\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "PRINTER_ATTRIBUTE_PUBLISHED 0x2000\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "PRINTER_ENUM_DEFAULT 1\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "PRINTER_ENUM_LOCAL 2\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "PRINTER_ENUM_CONNECTIONS 4\0"
	.byte	0x1
	.uleb128 0x84
	.ascii "PRINTER_ENUM_FAVORITE 4\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "PRINTER_ENUM_NAME 8\0"
	.byte	0x1
	.uleb128 0x86
	.ascii "PRINTER_ENUM_REMOTE 16\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "PRINTER_ENUM_SHARED 32\0"
	.byte	0x1
	.uleb128 0x88
	.ascii "PRINTER_ENUM_NETWORK 0x40\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "PRINTER_ENUM_EXPAND 0x4000\0"
	.byte	0x1
	.uleb128 0x8a
	.ascii "PRINTER_ENUM_CONTAINER 0x8000\0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "PRINTER_ENUM_ICONMASK 0xff0000\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "PRINTER_ENUM_ICON1 0x10000\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "PRINTER_ENUM_ICON2 0x20000\0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "PRINTER_ENUM_ICON3 0x40000\0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "PRINTER_ENUM_ICON4 0x80000\0"
	.byte	0x1
	.uleb128 0x90
	.ascii "PRINTER_ENUM_ICON5 0x100000\0"
	.byte	0x1
	.uleb128 0x91
	.ascii "PRINTER_ENUM_ICON6 0x200000\0"
	.byte	0x1
	.uleb128 0x92
	.ascii "PRINTER_ENUM_ICON7 0x400000\0"
	.byte	0x1
	.uleb128 0x93
	.ascii "PRINTER_ENUM_ICON8 0x800000\0"
	.byte	0x1
	.uleb128 0x94
	.ascii "PRINTER_NOTIFY_TYPE 0\0"
	.byte	0x1
	.uleb128 0x95
	.ascii "PRINTER_NOTIFY_FIELD_SERVER_NAME 0\0"
	.byte	0x1
	.uleb128 0x96
	.ascii "PRINTER_NOTIFY_FIELD_PRINTER_NAME 1\0"
	.byte	0x1
	.uleb128 0x97
	.ascii "PRINTER_NOTIFY_FIELD_SHARE_NAME 2\0"
	.byte	0x1
	.uleb128 0x98
	.ascii "PRINTER_NOTIFY_FIELD_PORT_NAME 3\0"
	.byte	0x1
	.uleb128 0x99
	.ascii "PRINTER_NOTIFY_FIELD_DRIVER_NAME 4\0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "PRINTER_NOTIFY_FIELD_COMMENT 5\0"
	.byte	0x1
	.uleb128 0x9b
	.ascii "PRINTER_NOTIFY_FIELD_LOCATION 6\0"
	.byte	0x1
	.uleb128 0x9c
	.ascii "PRINTER_NOTIFY_FIELD_DEVMODE 7\0"
	.byte	0x1
	.uleb128 0x9d
	.ascii "PRINTER_NOTIFY_FIELD_SEPFILE 8\0"
	.byte	0x1
	.uleb128 0x9e
	.ascii "PRINTER_NOTIFY_FIELD_PRINT_PROCESSOR 9\0"
	.byte	0x1
	.uleb128 0x9f
	.ascii "PRINTER_NOTIFY_FIELD_PARAMETERS 10\0"
	.byte	0x1
	.uleb128 0xa0
	.ascii "PRINTER_NOTIFY_FIELD_DATATYPE 11\0"
	.byte	0x1
	.uleb128 0xa1
	.ascii "PRINTER_NOTIFY_FIELD_SECURITY_DESCRIPTOR 12\0"
	.byte	0x1
	.uleb128 0xa2
	.ascii "PRINTER_NOTIFY_FIELD_ATTRIBUTES 13\0"
	.byte	0x1
	.uleb128 0xa3
	.ascii "PRINTER_NOTIFY_FIELD_PRIORITY 14\0"
	.byte	0x1
	.uleb128 0xa4
	.ascii "PRINTER_NOTIFY_FIELD_DEFAULT_PRIORITY 15\0"
	.byte	0x1
	.uleb128 0xa5
	.ascii "PRINTER_NOTIFY_FIELD_START_TIME 16\0"
	.byte	0x1
	.uleb128 0xa6
	.ascii "PRINTER_NOTIFY_FIELD_UNTIL_TIME 17\0"
	.byte	0x1
	.uleb128 0xa7
	.ascii "PRINTER_NOTIFY_FIELD_STATUS 18\0"
	.byte	0x1
	.uleb128 0xa8
	.ascii "PRINTER_NOTIFY_FIELD_STATUS_STRING 19\0"
	.byte	0x1
	.uleb128 0xa9
	.ascii "PRINTER_NOTIFY_FIELD_CJOBS 20\0"
	.byte	0x1
	.uleb128 0xaa
	.ascii "PRINTER_NOTIFY_FIELD_AVERAGE_PPM 21\0"
	.byte	0x1
	.uleb128 0xab
	.ascii "PRINTER_NOTIFY_FIELD_TOTAL_PAGES 22\0"
	.byte	0x1
	.uleb128 0xac
	.ascii "PRINTER_NOTIFY_FIELD_PAGES_PRINTED 23\0"
	.byte	0x1
	.uleb128 0xad
	.ascii "PRINTER_NOTIFY_FIELD_TOTAL_BYTES 24\0"
	.byte	0x1
	.uleb128 0xae
	.ascii "PRINTER_NOTIFY_FIELD_BYTES_PRINTED 25\0"
	.byte	0x1
	.uleb128 0xaf
	.ascii "PRINTER_CHANGE_ADD_PRINTER 1\0"
	.byte	0x1
	.uleb128 0xb0
	.ascii "PRINTER_CHANGE_SET_PRINTER 2\0"
	.byte	0x1
	.uleb128 0xb1
	.ascii "PRINTER_CHANGE_DELETE_PRINTER 4\0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "PRINTER_CHANGE_FAILED_CONNECTION_PRINTER 8\0"
	.byte	0x1
	.uleb128 0xb3
	.ascii "PRINTER_CHANGE_PRINTER 0xFF\0"
	.byte	0x1
	.uleb128 0xb4
	.ascii "PRINTER_CHANGE_ADD_JOB 0x100\0"
	.byte	0x1
	.uleb128 0xb5
	.ascii "PRINTER_CHANGE_SET_JOB 0x200\0"
	.byte	0x1
	.uleb128 0xb6
	.ascii "PRINTER_CHANGE_DELETE_JOB 0x400\0"
	.byte	0x1
	.uleb128 0xb7
	.ascii "PRINTER_CHANGE_WRITE_JOB 0x800\0"
	.byte	0x1
	.uleb128 0xb8
	.ascii "PRINTER_CHANGE_JOB 0xFF00\0"
	.byte	0x1
	.uleb128 0xb9
	.ascii "PRINTER_CHANGE_ADD_FORM 0x10000\0"
	.byte	0x1
	.uleb128 0xba
	.ascii "PRINTER_CHANGE_SET_FORM 0x20000\0"
	.byte	0x1
	.uleb128 0xbb
	.ascii "PRINTER_CHANGE_DELETE_FORM 0x40000\0"
	.byte	0x1
	.uleb128 0xbc
	.ascii "PRINTER_CHANGE_FORM 0x70000\0"
	.byte	0x1
	.uleb128 0xbd
	.ascii "PRINTER_CHANGE_ADD_PORT 0x100000\0"
	.byte	0x1
	.uleb128 0xbe
	.ascii "PRINTER_CHANGE_CONFIGURE_PORT 0x200000\0"
	.byte	0x1
	.uleb128 0xbf
	.ascii "PRINTER_CHANGE_DELETE_PORT 0x400000\0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "PRINTER_CHANGE_PORT 0x700000\0"
	.byte	0x1
	.uleb128 0xc1
	.ascii "PRINTER_CHANGE_ADD_PRINT_PROCESSOR 0x1000000\0"
	.byte	0x1
	.uleb128 0xc2
	.ascii "PRINTER_CHANGE_DELETE_PRINT_PROCESSOR 0x4000000\0"
	.byte	0x1
	.uleb128 0xc3
	.ascii "PRINTER_CHANGE_PRINT_PROCESSOR 0x7000000\0"
	.byte	0x1
	.uleb128 0xc4
	.ascii "PRINTER_CHANGE_ADD_PRINTER_DRIVER 0x10000000\0"
	.byte	0x1
	.uleb128 0xc5
	.ascii "PRINTER_CHANGE_SET_PRINTER_DRIVER 0x20000000\0"
	.byte	0x1
	.uleb128 0xc6
	.ascii "PRINTER_CHANGE_DELETE_PRINTER_DRIVER 0x40000000\0"
	.byte	0x1
	.uleb128 0xc7
	.ascii "PRINTER_CHANGE_PRINTER_DRIVER 0x70000000\0"
	.byte	0x1
	.uleb128 0xc8
	.ascii "PRINTER_CHANGE_TIMEOUT 0x80000000\0"
	.byte	0x1
	.uleb128 0xc9
	.ascii "PRINTER_CHANGE_ALL 0x7777FFFF\0"
	.byte	0x1
	.uleb128 0xca
	.ascii "PRINTER_NOTIFY_INFO_DISCARDED 1\0"
	.byte	0x1
	.uleb128 0xcb
	.ascii "PRINTER_ALL_ACCESS (STANDARD_RIGHTS_REQUIRED|PRINTER_ACCESS_ADMINISTER|PRINTER_ACCESS_USE)\0"
	.byte	0x1
	.uleb128 0xcc
	.ascii "PRINTER_READ (STANDARD_RIGHTS_READ|PRINTER_ACCESS_USE)\0"
	.byte	0x1
	.uleb128 0xcd
	.ascii "PRINTER_WRITE (STANDARD_RIGHTS_WRITE|PRINTER_ACCESS_USE)\0"
	.byte	0x1
	.uleb128 0xce
	.ascii "PRINTER_EXECUTE (STANDARD_RIGHTS_EXECUTE|PRINTER_ACCESS_USE)\0"
	.byte	0x1
	.uleb128 0xcf
	.ascii "NO_PRIORITY 0\0"
	.byte	0x1
	.uleb128 0xd0
	.ascii "MAX_PRIORITY 99\0"
	.byte	0x1
	.uleb128 0xd1
	.ascii "MIN_PRIORITY 1\0"
	.byte	0x1
	.uleb128 0xd2
	.ascii "DEF_PRIORITY 1\0"
	.byte	0x1
	.uleb128 0xd3
	.ascii "PORT_TYPE_WRITE 1\0"
	.byte	0x1
	.uleb128 0xd4
	.ascii "PORT_TYPE_READ 2\0"
	.byte	0x1
	.uleb128 0xd5
	.ascii "PORT_TYPE_REDIRECTED 4\0"
	.byte	0x1
	.uleb128 0xd6
	.ascii "PORT_TYPE_NET_ATTACHED 8\0"
	.byte	0x1
	.uleb128 0xd7
	.ascii "SERVER_ACCESS_ADMINISTER 1\0"
	.byte	0x1
	.uleb128 0xd8
	.ascii "SERVER_ACCESS_ENUMERATE 2\0"
	.byte	0x1
	.uleb128 0xd9
	.ascii "SERVER_ALL_ACCESS (STANDARD_RIGHTS_REQUIRED|SERVER_ACCESS_ADMINISTER|SERVER_ACCESS_ENUMERATE)\0"
	.byte	0x1
	.uleb128 0xda
	.ascii "SERVER_READ (STANDARD_RIGHTS_READ|SERVER_ACCESS_ENUMERATE)\0"
	.byte	0x1
	.uleb128 0xdb
	.ascii "SERVER_WRITE (STANDARD_RIGHTS_WRITE|SERVER_ACCESS_ADMINISTER|SERVER_ACCESS_ENUMERATE)\0"
	.byte	0x1
	.uleb128 0xdc
	.ascii "SERVER_EXECUTE (STANDARD_RIGHTS_EXECUTE|SERVER_ACCESS_ENUMERATE)\0"
	.byte	0x1
	.uleb128 0xdd
	.ascii "PORT_STATUS_TYPE_ERROR 1\0"
	.byte	0x1
	.uleb128 0xde
	.ascii "PORT_STATUS_TYPE_WARNING 2\0"
	.byte	0x1
	.uleb128 0xdf
	.ascii "PORT_STATUS_TYPE_INFO 3\0"
	.byte	0x1
	.uleb128 0xe0
	.ascii "PORT_STATUS_OFFLINE 1\0"
	.byte	0x1
	.uleb128 0xe1
	.ascii "PORT_STATUS_PAPER_JAM 2\0"
	.byte	0x1
	.uleb128 0xe2
	.ascii "PORT_STATUS_PAPER_OUT 3\0"
	.byte	0x1
	.uleb128 0xe3
	.ascii "PORT_STATUS_OUTPUT_BIN_FULL 4\0"
	.byte	0x1
	.uleb128 0xe4
	.ascii "PORT_STATUS_PAPER_PROBLEM 5\0"
	.byte	0x1
	.uleb128 0xe5
	.ascii "PORT_STATUS_NO_TONER 6\0"
	.byte	0x1
	.uleb128 0xe6
	.ascii "PORT_STATUS_DOOR_OPEN 7\0"
	.byte	0x1
	.uleb128 0xe7
	.ascii "PORT_STATUS_USER_INTERVENTION 8\0"
	.byte	0x1
	.uleb128 0xe8
	.ascii "PORT_STATUS_OUT_OF_MEMORY 9\0"
	.byte	0x1
	.uleb128 0xe9
	.ascii "PORT_STATUS_TONER_LOW 10\0"
	.byte	0x1
	.uleb128 0xea
	.ascii "PORT_STATUS_WARMING_UP 11\0"
	.byte	0x1
	.uleb128 0xeb
	.ascii "PORT_STATUS_POWER_SAVE 12\0"
	.byte	0x1
	.uleb128 0x3a4
	.ascii "AddForm AddFormA\0"
	.byte	0x1
	.uleb128 0x3a5
	.ascii "AddJob AddJobA\0"
	.byte	0x1
	.uleb128 0x3a6
	.ascii "AddMonitor AddMonitorA\0"
	.byte	0x1
	.uleb128 0x3a7
	.ascii "AddPort AddPortA\0"
	.byte	0x1
	.uleb128 0x3a8
	.ascii "AddPrinter AddPrinterA\0"
	.byte	0x1
	.uleb128 0x3a9
	.ascii "AddPrinterConnection AddPrinterConnectionA\0"
	.byte	0x1
	.uleb128 0x3aa
	.ascii "AddPrinterDriver AddPrinterDriverA\0"
	.byte	0x1
	.uleb128 0x3ab
	.ascii "AddPrintProcessor AddPrintProcessorA\0"
	.byte	0x1
	.uleb128 0x3ac
	.ascii "AddPrintProvidor AddPrintProvidorA\0"
	.byte	0x1
	.uleb128 0x3ad
	.ascii "AdvancedDocumentProperties AdvancedDocumentPropertiesA\0"
	.byte	0x1
	.uleb128 0x3ae
	.ascii "ConfigurePort ConfigurePortA\0"
	.byte	0x1
	.uleb128 0x3af
	.ascii "DeleteForm DeleteFormA\0"
	.byte	0x1
	.uleb128 0x3b0
	.ascii "DeleteMonitor DeleteMonitorA\0"
	.byte	0x1
	.uleb128 0x3b1
	.ascii "DeletePort DeletePortA\0"
	.byte	0x1
	.uleb128 0x3b2
	.ascii "DeletePrinterConnection DeletePrinterConnectionA\0"
	.byte	0x1
	.uleb128 0x3b3
	.ascii "DeletePrinterData DeletePrinterDataA\0"
	.byte	0x1
	.uleb128 0x3b4
	.ascii "DeletePrinterDriver DeletePrinterDriverA\0"
	.byte	0x1
	.uleb128 0x3b5
	.ascii "DeletePrintProcessor DeletePrinterProcessorA\0"
	.byte	0x1
	.uleb128 0x3b6
	.ascii "DeletePrintProvidor DeletePrinterProvidorA\0"
	.byte	0x1
	.uleb128 0x3b7
	.ascii "DocumentProperties DocumentPropertiesA\0"
	.byte	0x1
	.uleb128 0x3b8
	.ascii "EnumForms EnumFormsA\0"
	.byte	0x1
	.uleb128 0x3b9
	.ascii "EnumJobs EnumJobsA\0"
	.byte	0x1
	.uleb128 0x3ba
	.ascii "EnumMonitors EnumMonitorsA\0"
	.byte	0x1
	.uleb128 0x3bb
	.ascii "EnumPorts EnumPortsA\0"
	.byte	0x1
	.uleb128 0x3bc
	.ascii "EnumPrinterData EnumPrinterDataA\0"
	.byte	0x1
	.uleb128 0x3bd
	.ascii "EnumPrinterDrivers EnumPrinterDriversA\0"
	.byte	0x1
	.uleb128 0x3be
	.ascii "EnumPrinters EnumPrintersA\0"
	.byte	0x1
	.uleb128 0x3bf
	.ascii "EnumPrintProcessorDatatypes EnumPrintProcessorDatatypesA\0"
	.byte	0x1
	.uleb128 0x3c0
	.ascii "EnumPrintProcessors EnumPrintProcessorsA\0"
	.byte	0x1
	.uleb128 0x3c1
	.ascii "GetDefaultPrinter GetDefaultPrinterA\0"
	.byte	0x1
	.uleb128 0x3c2
	.ascii "GetForm GetFormA\0"
	.byte	0x1
	.uleb128 0x3c3
	.ascii "GetJob GetJobA\0"
	.byte	0x1
	.uleb128 0x3c4
	.ascii "GetPrinter GetPrinterA\0"
	.byte	0x1
	.uleb128 0x3c5
	.ascii "GetPrinterData GetPrinterDataA\0"
	.byte	0x1
	.uleb128 0x3c6
	.ascii "GetPrinterDriver GetPrinterDriverA\0"
	.byte	0x1
	.uleb128 0x3c7
	.ascii "GetPrinterDriverDirectory GetPrinterDriverDirectoryA\0"
	.byte	0x1
	.uleb128 0x3c8
	.ascii "GetPrintProcessorDirectory GetPrintProcessorDirectoryA\0"
	.byte	0x1
	.uleb128 0x3c9
	.ascii "OpenPrinter OpenPrinterA\0"
	.byte	0x1
	.uleb128 0x3ca
	.ascii "PrinterMessageBox PrinterMessageBoxA\0"
	.byte	0x1
	.uleb128 0x3cb
	.ascii "ResetPrinter ResetPrinterA\0"
	.byte	0x1
	.uleb128 0x3cc
	.ascii "SetForm SetFormA\0"
	.byte	0x1
	.uleb128 0x3cd
	.ascii "SetJob SetJobA\0"
	.byte	0x1
	.uleb128 0x3ce
	.ascii "SetPrinter SetPrinterA\0"
	.byte	0x1
	.uleb128 0x3cf
	.ascii "SetPrinterData SetPrinterDataA\0"
	.byte	0x1
	.uleb128 0x3d0
	.ascii "StartDocPrinter StartDocPrinterA\0"
	.byte	0x4
	.file 64 "c:/mingw/include/_winsock.h"
	.byte	0x3
	.uleb128 0x55
	.uleb128 0x40
	.file 65 "c:/mingw/include/winsock2.h"
	.byte	0x3
	.uleb128 0x32
	.uleb128 0x41
	.byte	0x1
	.uleb128 0x2b
	.ascii "_WINSOCK2_H \0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "__WINSOCK2_DEPRECATED __MINGW_ATTRIB_DEPRECATED\0"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0xf
	.byte	0x1
	.uleb128 0x2f
	.ascii "_WINSOCK_H \0"
	.byte	0x1
	.uleb128 0x31
	.ascii "_GNU_H_WINDOWS32_SOCKETS \0"
	.byte	0x1
	.uleb128 0x32
	.ascii "__WINSOCK_H_SOURCED__ 1\0"
	.file 66 "c:/mingw/include/sys/bsdtypes.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x42
	.byte	0x1
	.uleb128 0x24
	.ascii "_SYS_BSDTYPES_H \0"
	.byte	0x1
	.uleb128 0x40
	.ascii "_BSDTYPES_DEFINED \0"
	.byte	0x4
	.file 67 "c:/mingw/include/sys/time.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x43
	.byte	0x1
	.uleb128 0x4c
	.ascii "timerclear(tvp) (tvp)->tv_sec = (tvp)->tv_usec = 0\0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "timerisset(tvp) ((tvp)->tv_sec || (tvp)->tv_usec)\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "timercmp(tvp,uvp,cmp) (((tvp)->tv_sec != (uvp)->tv_sec) ? ((tvp)->tv_sec cmp (uvp)->tv_sec) : ((tvp)->tv_usec cmp (uvp)->tv_usec))\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x4d
	.ascii "WINSOCK_API_LINKAGE \0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "FD_SETSIZE 64\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "SD_RECEIVE 0x00\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "SD_SEND 0x01\0"
	.byte	0x1
	.uleb128 0x70
	.ascii "SD_BOTH 0x02\0"
	.byte	0x2
	.uleb128 0x76
	.ascii "fd_set\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "FD_ISSET(__fd,__set) __FD_ISSET ((__fd), (__set))\0"
	.byte	0x1
	.uleb128 0xa8
	.ascii "FD_SET(__fd,__set) __FD_SET ((__fd), (__set))\0"
	.byte	0x1
	.uleb128 0xb1
	.ascii "FD_CLR(__fd,__set) __FD_CLR ((__fd), (__set))\0"
	.byte	0x1
	.uleb128 0xbe
	.ascii "FD_ZERO(__set) __FD_ZERO (__set)\0"
	.byte	0x1
	.uleb128 0xd4
	.ascii "h_addr h_addr_list[0]\0"
	.byte	0x1
	.uleb128 0xdf
	.ascii "IOCPARM_MASK 0x7F\0"
	.byte	0x1
	.uleb128 0xe0
	.ascii "IOC_VOID 0x20000000\0"
	.byte	0x1
	.uleb128 0xe1
	.ascii "IOC_OUT 0x40000000\0"
	.byte	0x1
	.uleb128 0xe2
	.ascii "IOC_IN 0x80000000\0"
	.byte	0x1
	.uleb128 0xe3
	.ascii "IOC_INOUT (IOC_IN | IOC_OUT)\0"
	.byte	0x1
	.uleb128 0xe7
	.ascii "_IO(x,y) (IOC_VOID|((x)<<8)|(y))\0"
	.byte	0x1
	.uleb128 0xe8
	.ascii "_IOR(x,y,t) (IOC_OUT|(((long)sizeof(t)&IOCPARM_MASK)<<16)|((x)<<8)|(y))\0"
	.byte	0x1
	.uleb128 0xe9
	.ascii "_IOW(x,y,t) (IOC_IN|(((long)sizeof(t)&IOCPARM_MASK)<<16)|((x)<<8)|(y))\0"
	.byte	0x1
	.uleb128 0xeb
	.ascii "FIONBIO _IOW('f', 126, u_long)\0"
	.byte	0x1
	.uleb128 0xef
	.ascii "FIONREAD _IOR('f', 127, u_long)\0"
	.byte	0x1
	.uleb128 0xf0
	.ascii "FIOASYNC _IOW('f', 125, u_long)\0"
	.byte	0x1
	.uleb128 0xf1
	.ascii "SIOCSHIWAT _IOW('s', 0, u_long)\0"
	.byte	0x1
	.uleb128 0xf2
	.ascii "SIOCGHIWAT _IOR('s', 1, u_long)\0"
	.byte	0x1
	.uleb128 0xf3
	.ascii "SIOCSLOWAT _IOW('s', 2, u_long)\0"
	.byte	0x1
	.uleb128 0xf4
	.ascii "SIOCGLOWAT _IOR('s', 3, u_long)\0"
	.byte	0x1
	.uleb128 0xf5
	.ascii "SIOCATMARK _IOR('s', 7, u_long)\0"
	.byte	0x1
	.uleb128 0x10f
	.ascii "IPPROTO_IP 0\0"
	.byte	0x1
	.uleb128 0x110
	.ascii "IPPROTO_ICMP 1\0"
	.byte	0x1
	.uleb128 0x111
	.ascii "IPPROTO_IGMP 2\0"
	.byte	0x1
	.uleb128 0x112
	.ascii "IPPROTO_GGP 3\0"
	.byte	0x1
	.uleb128 0x113
	.ascii "IPPROTO_TCP 6\0"
	.byte	0x1
	.uleb128 0x114
	.ascii "IPPROTO_PUP 12\0"
	.byte	0x1
	.uleb128 0x115
	.ascii "IPPROTO_UDP 17\0"
	.byte	0x1
	.uleb128 0x116
	.ascii "IPPROTO_IDP 22\0"
	.byte	0x1
	.uleb128 0x117
	.ascii "IPPROTO_ND 77\0"
	.byte	0x1
	.uleb128 0x119
	.ascii "IPPROTO_RAW 255\0"
	.byte	0x1
	.uleb128 0x11a
	.ascii "IPPROTO_MAX 256\0"
	.byte	0x1
	.uleb128 0x11c
	.ascii "IPPORT_ECHO 7\0"
	.byte	0x1
	.uleb128 0x11d
	.ascii "IPPORT_DISCARD 9\0"
	.byte	0x1
	.uleb128 0x11e
	.ascii "IPPORT_SYSTAT 11\0"
	.byte	0x1
	.uleb128 0x11f
	.ascii "IPPORT_DAYTIME 13\0"
	.byte	0x1
	.uleb128 0x120
	.ascii "IPPORT_NETSTAT 15\0"
	.byte	0x1
	.uleb128 0x121
	.ascii "IPPORT_FTP 21\0"
	.byte	0x1
	.uleb128 0x122
	.ascii "IPPORT_TELNET 23\0"
	.byte	0x1
	.uleb128 0x123
	.ascii "IPPORT_SMTP 25\0"
	.byte	0x1
	.uleb128 0x124
	.ascii "IPPORT_TIMESERVER 37\0"
	.byte	0x1
	.uleb128 0x125
	.ascii "IPPORT_NAMESERVER 42\0"
	.byte	0x1
	.uleb128 0x126
	.ascii "IPPORT_WHOIS 43\0"
	.byte	0x1
	.uleb128 0x127
	.ascii "IPPORT_MTP 57\0"
	.byte	0x1
	.uleb128 0x128
	.ascii "IPPORT_TFTP 69\0"
	.byte	0x1
	.uleb128 0x129
	.ascii "IPPORT_RJE 77\0"
	.byte	0x1
	.uleb128 0x12a
	.ascii "IPPORT_FINGER 79\0"
	.byte	0x1
	.uleb128 0x12b
	.ascii "IPPORT_TTYLINK 87\0"
	.byte	0x1
	.uleb128 0x12c
	.ascii "IPPORT_SUPDUP 95\0"
	.byte	0x1
	.uleb128 0x12d
	.ascii "IPPORT_EXECSERVER 512\0"
	.byte	0x1
	.uleb128 0x12e
	.ascii "IPPORT_LOGINSERVER 513\0"
	.byte	0x1
	.uleb128 0x12f
	.ascii "IPPORT_CMDSERVER 514\0"
	.byte	0x1
	.uleb128 0x130
	.ascii "IPPORT_EFSSERVER 520\0"
	.byte	0x1
	.uleb128 0x131
	.ascii "IPPORT_BIFFUDP 512\0"
	.byte	0x1
	.uleb128 0x132
	.ascii "IPPORT_WHOSERVER 513\0"
	.byte	0x1
	.uleb128 0x133
	.ascii "IPPORT_ROUTESERVER 520\0"
	.byte	0x1
	.uleb128 0x134
	.ascii "IPPORT_RESERVED 1024\0"
	.byte	0x1
	.uleb128 0x136
	.ascii "IMPLINK_IP 155\0"
	.byte	0x1
	.uleb128 0x137
	.ascii "IMPLINK_LOWEXPER 156\0"
	.byte	0x1
	.uleb128 0x138
	.ascii "IMPLINK_HIGHEXPER 158\0"
	.byte	0x1
	.uleb128 0x13b
	.ascii "s_addr S_un.S_addr\0"
	.byte	0x1
	.uleb128 0x13c
	.ascii "s_host S_un.S_un_b.s_b2\0"
	.byte	0x1
	.uleb128 0x13d
	.ascii "s_net S_un.S_un_b.s_b1\0"
	.byte	0x1
	.uleb128 0x13e
	.ascii "s_imp S_un.S_un_w.s_w2\0"
	.byte	0x1
	.uleb128 0x13f
	.ascii "s_impno S_un.S_un_b.s_b4\0"
	.byte	0x1
	.uleb128 0x140
	.ascii "s_lh S_un.S_un_b.s_b3\0"
	.byte	0x1
	.uleb128 0x148
	.ascii "IN_CLASSA(i) (((long)(i) & 0x80000000) == 0)\0"
	.byte	0x1
	.uleb128 0x149
	.ascii "IN_CLASSA_NET 0xFF000000\0"
	.byte	0x1
	.uleb128 0x14a
	.ascii "IN_CLASSA_NSHIFT 24\0"
	.byte	0x1
	.uleb128 0x14b
	.ascii "IN_CLASSA_HOST 0x00FFFFFF\0"
	.byte	0x1
	.uleb128 0x14c
	.ascii "IN_CLASSA_MAX 128\0"
	.byte	0x1
	.uleb128 0x14d
	.ascii "IN_CLASSB(i) (((long)(i) & 0xC0000000) == 0x80000000)\0"
	.byte	0x1
	.uleb128 0x14e
	.ascii "IN_CLASSB_NET 0xFFFF0000\0"
	.byte	0x1
	.uleb128 0x14f
	.ascii "IN_CLASSB_NSHIFT 16\0"
	.byte	0x1
	.uleb128 0x150
	.ascii "IN_CLASSB_HOST 0x0000FFFF\0"
	.byte	0x1
	.uleb128 0x151
	.ascii "IN_CLASSB_MAX 65536\0"
	.byte	0x1
	.uleb128 0x152
	.ascii "IN_CLASSC(i) (((long)(i) & 0xE0000000) == 0xC0000000)\0"
	.byte	0x1
	.uleb128 0x153
	.ascii "IN_CLASSC_NET 0xFFFFFF00\0"
	.byte	0x1
	.uleb128 0x154
	.ascii "IN_CLASSC_NSHIFT 8\0"
	.byte	0x1
	.uleb128 0x155
	.ascii "IN_CLASSC_HOST 0xFF\0"
	.byte	0x1
	.uleb128 0x156
	.ascii "INADDR_ANY (u_long)(0)\0"
	.byte	0x1
	.uleb128 0x157
	.ascii "INADDR_LOOPBACK 0x7F000001\0"
	.byte	0x1
	.uleb128 0x158
	.ascii "INADDR_BROADCAST (u_long)(0xFFFFFFFF)\0"
	.byte	0x1
	.uleb128 0x159
	.ascii "INADDR_NONE 0xFFFFFFFF\0"
	.byte	0x1
	.uleb128 0x162
	.ascii "WSADESCRIPTION_LEN 256\0"
	.byte	0x1
	.uleb128 0x163
	.ascii "WSASYS_STATUS_LEN 128\0"
	.byte	0x1
	.uleb128 0x172
	.ascii "IP_OPTIONS 1\0"
	.byte	0x1
	.uleb128 0x173
	.ascii "SO_DEBUG 1\0"
	.byte	0x1
	.uleb128 0x174
	.ascii "SO_ACCEPTCONN 2\0"
	.byte	0x1
	.uleb128 0x175
	.ascii "SO_REUSEADDR 4\0"
	.byte	0x1
	.uleb128 0x176
	.ascii "SO_KEEPALIVE 8\0"
	.byte	0x1
	.uleb128 0x177
	.ascii "SO_DONTROUTE 16\0"
	.byte	0x1
	.uleb128 0x178
	.ascii "SO_BROADCAST 32\0"
	.byte	0x1
	.uleb128 0x179
	.ascii "SO_USELOOPBACK 64\0"
	.byte	0x1
	.uleb128 0x17a
	.ascii "SO_LINGER 128\0"
	.byte	0x1
	.uleb128 0x17b
	.ascii "SO_OOBINLINE 256\0"
	.byte	0x1
	.uleb128 0x17d
	.ascii "SO_DONTLINGER (u_int)(~SO_LINGER)\0"
	.byte	0x1
	.uleb128 0x17f
	.ascii "SO_SNDBUF 0x1001\0"
	.byte	0x1
	.uleb128 0x180
	.ascii "SO_RCVBUF 0x1002\0"
	.byte	0x1
	.uleb128 0x181
	.ascii "SO_SNDLOWAT 0x1003\0"
	.byte	0x1
	.uleb128 0x182
	.ascii "SO_RCVLOWAT 0x1004\0"
	.byte	0x1
	.uleb128 0x183
	.ascii "SO_SNDTIMEO 0x1005\0"
	.byte	0x1
	.uleb128 0x184
	.ascii "SO_RCVTIMEO 0x1006\0"
	.byte	0x1
	.uleb128 0x185
	.ascii "SO_ERROR 0x1007\0"
	.byte	0x1
	.uleb128 0x186
	.ascii "SO_TYPE 0x1008\0"
	.byte	0x1
	.uleb128 0x1a1
	.ascii "INVALID_SOCKET (SOCKET)(~0)\0"
	.byte	0x1
	.uleb128 0x1a2
	.ascii "SOCKET_ERROR (-1)\0"
	.byte	0x1
	.uleb128 0x1a3
	.ascii "SOCK_STREAM 1\0"
	.byte	0x1
	.uleb128 0x1a4
	.ascii "SOCK_DGRAM 2\0"
	.byte	0x1
	.uleb128 0x1a5
	.ascii "SOCK_RAW 3\0"
	.byte	0x1
	.uleb128 0x1a6
	.ascii "SOCK_RDM 4\0"
	.byte	0x1
	.uleb128 0x1a7
	.ascii "SOCK_SEQPACKET 5\0"
	.byte	0x1
	.uleb128 0x1a8
	.ascii "TCP_NODELAY 0x0001\0"
	.byte	0x1
	.uleb128 0x1a9
	.ascii "AF_UNSPEC 0\0"
	.byte	0x1
	.uleb128 0x1aa
	.ascii "AF_UNIX 1\0"
	.byte	0x1
	.uleb128 0x1ab
	.ascii "AF_INET 2\0"
	.byte	0x1
	.uleb128 0x1ac
	.ascii "AF_IMPLINK 3\0"
	.byte	0x1
	.uleb128 0x1ad
	.ascii "AF_PUP 4\0"
	.byte	0x1
	.uleb128 0x1ae
	.ascii "AF_CHAOS 5\0"
	.byte	0x1
	.uleb128 0x1af
	.ascii "AF_IPX 6\0"
	.byte	0x1
	.uleb128 0x1b0
	.ascii "AF_NS 6\0"
	.byte	0x1
	.uleb128 0x1b1
	.ascii "AF_ISO 7\0"
	.byte	0x1
	.uleb128 0x1b3
	.ascii "AF_OSI AF_ISO\0"
	.byte	0x1
	.uleb128 0x1b5
	.ascii "AF_ECMA 8\0"
	.byte	0x1
	.uleb128 0x1b6
	.ascii "AF_DATAKIT 9\0"
	.byte	0x1
	.uleb128 0x1b7
	.ascii "AF_CCITT 10\0"
	.byte	0x1
	.uleb128 0x1b8
	.ascii "AF_SNA 11\0"
	.byte	0x1
	.uleb128 0x1b9
	.ascii "AF_DECnet 12\0"
	.byte	0x1
	.uleb128 0x1ba
	.ascii "AF_DLI 13\0"
	.byte	0x1
	.uleb128 0x1bb
	.ascii "AF_LAT 14\0"
	.byte	0x1
	.uleb128 0x1bc
	.ascii "AF_HYLINK 15\0"
	.byte	0x1
	.uleb128 0x1bd
	.ascii "AF_APPLETALK 16\0"
	.byte	0x1
	.uleb128 0x1be
	.ascii "AF_NETBIOS 17\0"
	.byte	0x1
	.uleb128 0x1bf
	.ascii "AF_VOICEVIEW 18\0"
	.byte	0x1
	.uleb128 0x1c0
	.ascii "AF_FIREFOX 19\0"
	.byte	0x1
	.uleb128 0x1c1
	.ascii "AF_UNKNOWN1 20\0"
	.byte	0x1
	.uleb128 0x1c2
	.ascii "AF_BAN 21\0"
	.byte	0x1
	.uleb128 0x1c3
	.ascii "AF_ATM 22\0"
	.byte	0x1
	.uleb128 0x1c4
	.ascii "AF_INET6 23\0"
	.byte	0x1
	.uleb128 0x1c8
	.ascii "AF_MAX 24\0"
	.byte	0x1
	.uleb128 0x1d6
	.ascii "PF_UNSPEC AF_UNSPEC\0"
	.byte	0x1
	.uleb128 0x1d7
	.ascii "PF_UNIX AF_UNIX\0"
	.byte	0x1
	.uleb128 0x1d8
	.ascii "PF_INET AF_INET\0"
	.byte	0x1
	.uleb128 0x1d9
	.ascii "PF_IMPLINK AF_IMPLINK\0"
	.byte	0x1
	.uleb128 0x1da
	.ascii "PF_PUP AF_PUP\0"
	.byte	0x1
	.uleb128 0x1db
	.ascii "PF_CHAOS AF_CHAOS\0"
	.byte	0x1
	.uleb128 0x1dc
	.ascii "PF_NS AF_NS\0"
	.byte	0x1
	.uleb128 0x1dd
	.ascii "PF_IPX AF_IPX\0"
	.byte	0x1
	.uleb128 0x1de
	.ascii "PF_ISO AF_ISO\0"
	.byte	0x1
	.uleb128 0x1df
	.ascii "PF_OSI AF_OSI\0"
	.byte	0x1
	.uleb128 0x1e0
	.ascii "PF_ECMA AF_ECMA\0"
	.byte	0x1
	.uleb128 0x1e1
	.ascii "PF_DATAKIT AF_DATAKIT\0"
	.byte	0x1
	.uleb128 0x1e2
	.ascii "PF_CCITT AF_CCITT\0"
	.byte	0x1
	.uleb128 0x1e3
	.ascii "PF_SNA AF_SNA\0"
	.byte	0x1
	.uleb128 0x1e4
	.ascii "PF_DECnet AF_DECnet\0"
	.byte	0x1
	.uleb128 0x1e5
	.ascii "PF_DLI AF_DLI\0"
	.byte	0x1
	.uleb128 0x1e6
	.ascii "PF_LAT AF_LAT\0"
	.byte	0x1
	.uleb128 0x1e7
	.ascii "PF_HYLINK AF_HYLINK\0"
	.byte	0x1
	.uleb128 0x1e8
	.ascii "PF_APPLETALK AF_APPLETALK\0"
	.byte	0x1
	.uleb128 0x1e9
	.ascii "PF_VOICEVIEW AF_VOICEVIEW\0"
	.byte	0x1
	.uleb128 0x1ea
	.ascii "PF_FIREFOX AF_FIREFOX\0"
	.byte	0x1
	.uleb128 0x1eb
	.ascii "PF_UNKNOWN1 AF_UNKNOWN1\0"
	.byte	0x1
	.uleb128 0x1ec
	.ascii "PF_BAN AF_BAN\0"
	.byte	0x1
	.uleb128 0x1ed
	.ascii "PF_ATM AF_ATM\0"
	.byte	0x1
	.uleb128 0x1ee
	.ascii "PF_INET6 AF_INET6\0"
	.byte	0x1
	.uleb128 0x1ef
	.ascii "PF_MAX AF_MAX\0"
	.byte	0x1
	.uleb128 0x1f1
	.ascii "SOL_SOCKET 0xFFFF\0"
	.byte	0x1
	.uleb128 0x1fa
	.ascii "SOMAXCONN 5\0"
	.byte	0x1
	.uleb128 0x1fc
	.ascii "MSG_OOB 1\0"
	.byte	0x1
	.uleb128 0x1fd
	.ascii "MSG_PEEK 2\0"
	.byte	0x1
	.uleb128 0x1fe
	.ascii "MSG_DONTROUTE 4\0"
	.byte	0x1
	.uleb128 0x202
	.ascii "MSG_MAXIOVLEN 16\0"
	.byte	0x1
	.uleb128 0x203
	.ascii "MSG_PARTIAL 0x8000\0"
	.byte	0x1
	.uleb128 0x204
	.ascii "MAXGETHOSTSTRUCT 1024\0"
	.byte	0x1
	.uleb128 0x20b
	.ascii "FD_READ (1 << FD_READ_BIT)\0"
	.byte	0x1
	.uleb128 0x20e
	.ascii "FD_WRITE (1 << FD_WRITE_BIT)\0"
	.byte	0x1
	.uleb128 0x211
	.ascii "FD_OOB (1 << FD_OOB_BIT)\0"
	.byte	0x1
	.uleb128 0x214
	.ascii "FD_ACCEPT (1 << FD_ACCEPT_BIT)\0"
	.byte	0x1
	.uleb128 0x217
	.ascii "FD_CONNECT (1 << FD_CONNECT_BIT)\0"
	.byte	0x1
	.uleb128 0x21a
	.ascii "FD_CLOSE (1 << FD_CLOSE_BIT)\0"
	.byte	0x1
	.uleb128 0x223
	.ascii "FD_QOS (1 << FD_QOS_BIT)\0"
	.byte	0x1
	.uleb128 0x226
	.ascii "FD_GROUP_QOS (1 << FD_GROUP_QOS_BIT)\0"
	.byte	0x1
	.uleb128 0x229
	.ascii "FD_ROUTING_INTERFACE_CHANGE (1 << FD_ROUTING_INTERFACE_CHANGE_BIT)\0"
	.byte	0x1
	.uleb128 0x22c
	.ascii "FD_ADDRESS_LIST_CHANGE (1 << FD_ADDRESS_LIST_CHANGE_BIT)\0"
	.byte	0x1
	.uleb128 0x234
	.ascii "FD_ALL_EVENTS ((1 << FD_MAX_EVENTS) - 1)\0"
	.byte	0x1
	.uleb128 0x237
	.ascii "WSANO_ADDRESS WSANO_DATA\0"
	.byte	0x1
	.uleb128 0x23b
	.ascii "h_errno WSAGetLastError()\0"
	.byte	0x1
	.uleb128 0x23c
	.ascii "HOST_NOT_FOUND WSAHOST_NOT_FOUND\0"
	.byte	0x1
	.uleb128 0x23d
	.ascii "TRY_AGAIN WSATRY_AGAIN\0"
	.byte	0x1
	.uleb128 0x23e
	.ascii "NO_RECOVERY WSANO_RECOVERY\0"
	.byte	0x1
	.uleb128 0x23f
	.ascii "NO_DATA WSANO_DATA\0"
	.byte	0x1
	.uleb128 0x240
	.ascii "NO_ADDRESS WSANO_ADDRESS\0"
	.byte	0x1
	.uleb128 0x288
	.ascii "WSAMAKEASYNCREPLY(b,e) MAKELONG(b,e)\0"
	.byte	0x1
	.uleb128 0x289
	.ascii "WSAMAKESELECTREPLY(e,error) MAKELONG(e,error)\0"
	.byte	0x1
	.uleb128 0x28a
	.ascii "WSAGETASYNCBUFLEN(l) LOWORD(l)\0"
	.byte	0x1
	.uleb128 0x28b
	.ascii "WSAGETASYNCERROR(l) HIWORD(l)\0"
	.byte	0x1
	.uleb128 0x28c
	.ascii "WSAGETSELECTEVENT(l) LOWORD(l)\0"
	.byte	0x1
	.uleb128 0x28d
	.ascii "WSAGETSELECTERROR(l) HIWORD(l)\0"
	.byte	0x2
	.uleb128 0x2aa
	.ascii "__WINSOCK_H_SOURCED__\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x40
	.ascii "__WINSOCK2_H_SOURCED__ \0"
	.file 68 "c:/mingw/include/nspapi.h"
	.byte	0x3
	.uleb128 0x48
	.uleb128 0x44
	.byte	0x1
	.uleb128 0x63
	.ascii "__NSPAPI_H_SOURCED__ 1\0"
	.byte	0x3
	.uleb128 0x64
	.uleb128 0xe
	.byte	0x4
	.byte	0x2
	.uleb128 0x88
	.ascii "__NSPAPI_H_SOURCED__\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x4c
	.ascii "ADDR_ANY INADDR_ANY\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "IN_CLASSD(i) (((long)(i) & 0xF0000000) == 0xE0000000)\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "IN_CLASSD_NET 0xF0000000\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "IN_CLASSD_NSHIFT 28\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "IN_CLASSD_HOST 0x0FFFFFFF\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "IN_MULTICAST(i) IN_CLASSD(i)\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "FROM_PROTOCOL_INFO (-1)\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "SO_GROUP_ID 0x2001\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "SO_GROUP_PRIORITY 0x2002\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "SO_MAX_MSG_SIZE 0x2003\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "SO_PROTOCOL_INFO __AW_SUFFIXED__(SO_PROTOCOL_INFO)\0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "SO_PROTOCOL_INFOA 0x2004\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "SO_PROTOCOL_INFOW 0x2005\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "PVD_CONFIG 0x3001\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "MSG_INTERRUPT 0x10\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "WSAAPI WINAPI\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "WSAEVENT HANDLE\0"
	.byte	0x1
	.uleb128 0x64
	.ascii "LPWSAEVENT LPHANDLE\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "WSAOVERLAPPED OVERLAPPED\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "WSA_IO_PENDING (ERROR_IO_PENDING)\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "WSA_IO_INCOMPLETE (ERROR_IO_INCOMPLETE)\0"
	.byte	0x1
	.uleb128 0x6b
	.ascii "WSA_INVALID_HANDLE (ERROR_INVALID_HANDLE)\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "WSA_INVALID_PARAMETER (ERROR_INVALID_PARAMETER)\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "WSA_NOT_ENOUGH_MEMORY (ERROR_NOT_ENOUGH_MEMORY)\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "WSA_OPERATION_ABORTED (ERROR_OPERATION_ABORTED)\0"
	.byte	0x1
	.uleb128 0x70
	.ascii "WSA_INVALID_EVENT ((WSAEVENT)NULL)\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "WSA_MAXIMUM_WAIT_EVENTS (MAXIMUM_WAIT_OBJECTS)\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "WSA_WAIT_FAILED ((DWORD)-1L)\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "WSA_WAIT_EVENT_0 (WAIT_OBJECT_0)\0"
	.byte	0x1
	.uleb128 0x74
	.ascii "WSA_WAIT_IO_COMPLETION (WAIT_IO_COMPLETION)\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "WSA_WAIT_TIMEOUT (WAIT_TIMEOUT)\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "WSA_INFINITE (INFINITE)\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "IPPROTO_HOPOPTS 0\0"
	.byte	0x1
	.uleb128 0x8a
	.ascii "IPPROTO_IPV6 41\0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "IPPROTO_ROUTING 43\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "IPPROTO_FRAGMENT 44\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "IPPROTO_ESP 50\0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "IPPROTO_AH 51\0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "IPPROTO_ICMPV6 58\0"
	.byte	0x1
	.uleb128 0x90
	.ascii "IPPROTO_NONE 59\0"
	.byte	0x1
	.uleb128 0x91
	.ascii "IPPROTO_DSTOPTS 60\0"
	.byte	0x1
	.uleb128 0x96
	.ascii "AF_CLUSTER 24\0"
	.byte	0x1
	.uleb128 0x97
	.ascii "AF_12844 25\0"
	.byte	0x1
	.uleb128 0x98
	.ascii "AF_IRDA 26\0"
	.byte	0x1
	.uleb128 0x99
	.ascii "AF_NETDES 28\0"
	.byte	0x2
	.uleb128 0xa0
	.ascii "AF_MAX\0"
	.byte	0x1
	.uleb128 0xa1
	.ascii "AF_MAX 29\0"
	.byte	0x1
	.uleb128 0xa9
	.ascii "_SS_MAXSIZE 128\0"
	.byte	0x1
	.uleb128 0xaa
	.ascii "_SS_ALIGNSIZE sizeof(__int64)\0"
	.byte	0x1
	.uleb128 0xae
	.ascii "_SS_PAD1SIZE (_SS_ALIGNSIZE - sizeof(short))\0"
	.byte	0x1
	.uleb128 0xaf
	.ascii "_SS_PAD2SIZE (_SS_MAXSIZE - (sizeof(short) + _SS_PAD1SIZE + _SS_ALIGNSIZE))\0"
	.byte	0x2
	.uleb128 0xbd
	.ascii "SOMAXCONN\0"
	.byte	0x1
	.uleb128 0xbe
	.ascii "SOMAXCONN 0x7FFFFFFF\0"
	.byte	0x1
	.uleb128 0xc3
	.ascii "SO_EXCLUSIVEADDRUSE ((u_int)(~SO_REUSEADDR))\0"
	.byte	0x1
	.uleb128 0xe3
	.ascii "CF_ACCEPT 0x0000\0"
	.byte	0x1
	.uleb128 0xe4
	.ascii "CF_REJECT 0x0001\0"
	.byte	0x1
	.uleb128 0xe5
	.ascii "CF_DEFER 0x0002\0"
	.byte	0x1
	.uleb128 0xe9
	.ascii "SG_UNCONSTRAINED_GROUP 0x01\0"
	.byte	0x1
	.uleb128 0xea
	.ascii "SG_CONSTRAINED_GROUP 0x02\0"
	.byte	0x1
	.uleb128 0xf2
	.ascii "MAX_PROTOCOL_CHAIN 7\0"
	.byte	0x1
	.uleb128 0xf4
	.ascii "BASE_PROTOCOL 1\0"
	.byte	0x1
	.uleb128 0xf5
	.ascii "LAYERED_PROTOCOL 0\0"
	.byte	0x1
	.uleb128 0x140
	.ascii "LUP_DEEP 0x0001\0"
	.byte	0x1
	.uleb128 0x141
	.ascii "LUP_CONTAINERS 0x0002\0"
	.byte	0x1
	.uleb128 0x142
	.ascii "LUP_NOCONTAINERS 0x0004\0"
	.byte	0x1
	.uleb128 0x143
	.ascii "LUP_NEAREST 0x0008\0"
	.byte	0x1
	.uleb128 0x144
	.ascii "LUP_RETURN_NAME 0x0010\0"
	.byte	0x1
	.uleb128 0x145
	.ascii "LUP_RETURN_TYPE 0x0020\0"
	.byte	0x1
	.uleb128 0x146
	.ascii "LUP_RETURN_VERSION 0x0040\0"
	.byte	0x1
	.uleb128 0x147
	.ascii "LUP_RETURN_COMMENT 0x0080\0"
	.byte	0x1
	.uleb128 0x148
	.ascii "LUP_RETURN_ADDR 0x0100\0"
	.byte	0x1
	.uleb128 0x149
	.ascii "LUP_RETURN_BLOB 0x0200\0"
	.byte	0x1
	.uleb128 0x14a
	.ascii "LUP_RETURN_ALIASES 0x0400\0"
	.byte	0x1
	.uleb128 0x14b
	.ascii "LUP_RETURN_QUERY_STRING 0x0800\0"
	.byte	0x1
	.uleb128 0x14c
	.ascii "LUP_RETURN_ALL 0x0FF0\0"
	.byte	0x1
	.uleb128 0x14d
	.ascii "LUP_RES_SERVICE 0x8000\0"
	.byte	0x1
	.uleb128 0x14e
	.ascii "LUP_FLUSHCACHE 0x1000\0"
	.byte	0x1
	.uleb128 0x14f
	.ascii "LUP_FLUSHPREVIOUS 0x2000\0"
	.byte	0x1
	.uleb128 0x197
	.ascii "WSAPROTOCOL_LEN 255\0"
	.byte	0x1
	.uleb128 0x1f2
	.ascii "PFL_MULTIPLE_PROTO_ENTRIES 0x00000001\0"
	.byte	0x1
	.uleb128 0x1f3
	.ascii "PFL_RECOMMENDED_PROTO_ENTRY 0x00000002\0"
	.byte	0x1
	.uleb128 0x1f4
	.ascii "PFL_HIDDEN 0x00000004\0"
	.byte	0x1
	.uleb128 0x1f5
	.ascii "PFL_MATCHES_PROTOCOL_ZERO 0x00000008\0"
	.byte	0x1
	.uleb128 0x1f6
	.ascii "XP1_CONNECTIONLESS 0x00000001\0"
	.byte	0x1
	.uleb128 0x1f7
	.ascii "XP1_GUARANTEED_DELIVERY 0x00000002\0"
	.byte	0x1
	.uleb128 0x1f8
	.ascii "XP1_GUARANTEED_ORDER 0x00000004\0"
	.byte	0x1
	.uleb128 0x1f9
	.ascii "XP1_MESSAGE_ORIENTED 0x00000008\0"
	.byte	0x1
	.uleb128 0x1fa
	.ascii "XP1_PSEUDO_STREAM 0x00000010\0"
	.byte	0x1
	.uleb128 0x1fb
	.ascii "XP1_GRACEFUL_CLOSE 0x00000020\0"
	.byte	0x1
	.uleb128 0x1fc
	.ascii "XP1_EXPEDITED_DATA 0x00000040\0"
	.byte	0x1
	.uleb128 0x1fd
	.ascii "XP1_CONNECT_DATA 0x00000080\0"
	.byte	0x1
	.uleb128 0x1fe
	.ascii "XP1_DISCONNECT_DATA 0x00000100\0"
	.byte	0x1
	.uleb128 0x1ff
	.ascii "XP1_SUPPORT_BROADCAST 0x00000200\0"
	.byte	0x1
	.uleb128 0x200
	.ascii "XP1_SUPPORT_MULTIPOINT 0x00000400\0"
	.byte	0x1
	.uleb128 0x201
	.ascii "XP1_MULTIPOINT_CONTROL_PLANE 0x00000800\0"
	.byte	0x1
	.uleb128 0x202
	.ascii "XP1_MULTIPOINT_DATA_PLANE 0x00001000\0"
	.byte	0x1
	.uleb128 0x203
	.ascii "XP1_QOS_SUPPORTED 0x00002000\0"
	.byte	0x1
	.uleb128 0x204
	.ascii "XP1_INTERRUPT 0x00004000\0"
	.byte	0x1
	.uleb128 0x205
	.ascii "XP1_UNI_SEND 0x00008000\0"
	.byte	0x1
	.uleb128 0x206
	.ascii "XP1_UNI_RECV 0x00010000\0"
	.byte	0x1
	.uleb128 0x207
	.ascii "XP1_IFS_HANDLES 0x00020000\0"
	.byte	0x1
	.uleb128 0x208
	.ascii "XP1_PARTIAL_MESSAGE 0x00040000\0"
	.byte	0x1
	.uleb128 0x20a
	.ascii "BIGENDIAN 0x0000\0"
	.byte	0x1
	.uleb128 0x20b
	.ascii "LITTLEENDIAN 0x0001\0"
	.byte	0x1
	.uleb128 0x20d
	.ascii "SECURITY_PROTOCOL_NONE 0x0000\0"
	.byte	0x1
	.uleb128 0x20e
	.ascii "JL_SENDER_ONLY 0x01\0"
	.byte	0x1
	.uleb128 0x20f
	.ascii "JL_RECEIVER_ONLY 0x02\0"
	.byte	0x1
	.uleb128 0x210
	.ascii "JL_BOTH 0x04\0"
	.byte	0x1
	.uleb128 0x211
	.ascii "WSA_FLAG_OVERLAPPED 0x01\0"
	.byte	0x1
	.uleb128 0x212
	.ascii "WSA_FLAG_MULTIPOINT_C_ROOT 0x02\0"
	.byte	0x1
	.uleb128 0x213
	.ascii "WSA_FLAG_MULTIPOINT_C_LEAF 0x04\0"
	.byte	0x1
	.uleb128 0x214
	.ascii "WSA_FLAG_MULTIPOINT_D_ROOT 0x08\0"
	.byte	0x1
	.uleb128 0x215
	.ascii "WSA_FLAG_MULTIPOINT_D_LEAF 0x10\0"
	.byte	0x1
	.uleb128 0x216
	.ascii "IOC_UNIX 0x00000000\0"
	.byte	0x1
	.uleb128 0x217
	.ascii "IOC_WS2 0x08000000\0"
	.byte	0x1
	.uleb128 0x218
	.ascii "IOC_PROTOCOL 0x10000000\0"
	.byte	0x1
	.uleb128 0x219
	.ascii "IOC_VENDOR 0x18000000\0"
	.byte	0x1
	.uleb128 0x21b
	.ascii "_WSAIO(x,y) (IOC_VOID|(x)|(y))\0"
	.byte	0x1
	.uleb128 0x21c
	.ascii "_WSAIOR(x,y) (IOC_OUT|(x)|(y))\0"
	.byte	0x1
	.uleb128 0x21d
	.ascii "_WSAIOW(x,y) (IOC_IN|(x)|(y))\0"
	.byte	0x1
	.uleb128 0x21e
	.ascii "_WSAIORW(x,y) (IOC_INOUT|(x)|(y))\0"
	.byte	0x1
	.uleb128 0x220
	.ascii "SIO_ASSOCIATE_HANDLE _WSAIOW(IOC_WS2,1)\0"
	.byte	0x1
	.uleb128 0x221
	.ascii "SIO_ENABLE_CIRCULAR_QUEUEING _WSAIO(IOC_WS2,2)\0"
	.byte	0x1
	.uleb128 0x222
	.ascii "SIO_FIND_ROUTE _WSAIOR(IOC_WS2,3)\0"
	.byte	0x1
	.uleb128 0x223
	.ascii "SIO_FLUSH _WSAIO(IOC_WS2,4)\0"
	.byte	0x1
	.uleb128 0x224
	.ascii "SIO_GET_BROADCAST_ADDRESS _WSAIOR(IOC_WS2,5)\0"
	.byte	0x1
	.uleb128 0x225
	.ascii "SIO_GET_EXTENSION_FUNCTION_POINTER _WSAIORW(IOC_WS2,6)\0"
	.byte	0x1
	.uleb128 0x226
	.ascii "SIO_GET_QOS _WSAIORW(IOC_WS2,7)\0"
	.byte	0x1
	.uleb128 0x227
	.ascii "SIO_GET_GROUP_QOS _WSAIORW(IOC_WS2,8)\0"
	.byte	0x1
	.uleb128 0x228
	.ascii "SIO_MULTIPOINT_LOOPBACK _WSAIOW(IOC_WS2,9)\0"
	.byte	0x1
	.uleb128 0x229
	.ascii "SIO_MULTICAST_SCOPE _WSAIOW(IOC_WS2,10)\0"
	.byte	0x1
	.uleb128 0x22a
	.ascii "SIO_SET_QOS _WSAIOW(IOC_WS2,11)\0"
	.byte	0x1
	.uleb128 0x22b
	.ascii "SIO_SET_GROUP_QOS _WSAIOW(IOC_WS2,12)\0"
	.byte	0x1
	.uleb128 0x22c
	.ascii "SIO_TRANSLATE_HANDLE _WSAIORW(IOC_WS2,13)\0"
	.byte	0x1
	.uleb128 0x22d
	.ascii "SIO_ROUTING_INTERFACE_QUERY _WSAIORW(IOC_WS2,20)\0"
	.byte	0x1
	.uleb128 0x22e
	.ascii "SIO_ROUTING_INTERFACE_CHANGE _WSAIOW(IOC_WS2,21)\0"
	.byte	0x1
	.uleb128 0x22f
	.ascii "SIO_ADDRESS_LIST_QUERY _WSAIOR(IOC_WS2,22)\0"
	.byte	0x1
	.uleb128 0x230
	.ascii "SIO_ADDRESS_LIST_CHANGE _WSAIO(IOC_WS2,23)\0"
	.byte	0x1
	.uleb128 0x231
	.ascii "SIO_QUERY_TARGET_PNP_HANDLE _WSAIOR(IOC_WS2,24)\0"
	.byte	0x1
	.uleb128 0x232
	.ascii "SIO_NSP_NOTIFY_CHANGE _WSAIOW(IOC_WS2,25)\0"
	.byte	0x1
	.uleb128 0x233
	.ascii "SIO_UDP_CONNRESET _WSAIOW(IOC_VENDOR,12)\0"
	.byte	0x1
	.uleb128 0x235
	.ascii "TH_NETDEV 0x00000001\0"
	.byte	0x1
	.uleb128 0x236
	.ascii "TH_TAPI 0x00000002\0"
	.byte	0x1
	.uleb128 0x279
	.ascii "WSAAddressToString __AW_SUFFIXED__(WSAAddressToString)\0"
	.byte	0x1
	.uleb128 0x281
	.ascii "WSADuplicateSocket __AW_SUFFIXED__(WSADuplicateSocket)\0"
	.byte	0x1
	.uleb128 0x285
	.ascii "WSAEnumNameSpaceProviders __AW_SUFFIXED__(WSAEnumNameSpaceProviders)\0"
	.byte	0x1
	.uleb128 0x28b
	.ascii "WSAEnumProtocols __AW_SUFFIXED__(WSAEnumProtocols)\0"
	.byte	0x1
	.uleb128 0x293
	.ascii "WSAGetServiceClassInfo __AW_SUFFIXED__(WSAGetServiceClassInfo)\0"
	.byte	0x1
	.uleb128 0x297
	.ascii "WSAGetServiceClassNameByClassId __AW_SUFFIXED__(WSAGetServiceClassNameByClassId)\0"
	.byte	0x1
	.uleb128 0x29e
	.ascii "WSAInstallServiceClass __AW_SUFFIXED__(WSAInstallServiceClass)\0"
	.byte	0x1
	.uleb128 0x2a5
	.ascii "WSALookupServiceBegin __AW_SUFFIXED__(WSALookupServiceBegin)\0"
	.byte	0x1
	.uleb128 0x2a9
	.ascii "WSALookupServiceNext __AW_SUFFIXED__(WSALookupServiceNext)\0"
	.byte	0x1
	.uleb128 0x2bb
	.ascii "WSASetService __AW_SUFFIXED__(WSASetService)\0"
	.byte	0x1
	.uleb128 0x2bf
	.ascii "WSASocket __AW_SUFFIXED__(WSASocket)\0"
	.byte	0x1
	.uleb128 0x2c3
	.ascii "WSAStringToAddress __AW_SUFFIXED__(WSAStringToAddress)\0"
	.byte	0x1
	.uleb128 0x2cb
	.ascii "LPFN_WSAADDRESSTOSTRING __AW_SUFFIXED__(LPFN_WSAADDRESSTOSTRING)\0"
	.byte	0x1
	.uleb128 0x2d3
	.ascii "LPFN_WSADUPLICATESOCKET __AW_SUFFIXED__(LPFN_WSADUPLICATESOCKET)\0"
	.byte	0x1
	.uleb128 0x2d7
	.ascii "LPFN_WSAENUMNAMESPACEPROVIDERS __AW_SUFFIXED__(LPFN_WSAENUMNAMESPACEPROVIDERS)\0"
	.byte	0x1
	.uleb128 0x2dd
	.ascii "LPFN_WSAENUMPROTOCOLS __AW_SUFFIXED__(LPFN_WSAENUMPROTOCOLS)\0"
	.byte	0x1
	.uleb128 0x2e5
	.ascii "LPFN_WSAGETSERVICECLASSINFO __AW_SUFFIXED__(LPFN_WSAGETSERVICECLASSINFO)\0"
	.byte	0x1
	.uleb128 0x2e9
	.ascii "LPFN_WSAGETSERVICECLASSNAMEBYCLASSID __AW_SUFFIXED__(LPFN_WSAGETSERVICECLASSNAMEBYCLASSID)\0"
	.byte	0x1
	.uleb128 0x2f0
	.ascii "LPFN_WSAINSTALLSERVICECLASS __AW_SUFFIXED__(LPFN_WSAINSTALLSERVICECLASS)\0"
	.byte	0x1
	.uleb128 0x2f7
	.ascii "LPFN_WSALOOKUPSERVICEBEGIN __AW_SUFFIXED__(LPFN_WSALOOKUPSERVICEBEGIN)\0"
	.byte	0x1
	.uleb128 0x2fb
	.ascii "LPFN_WSALOOKUPSERVICENEXT __AW_SUFFIXED__(LPFN_WSALOOKUPSERVICENEXT)\0"
	.byte	0x1
	.uleb128 0x30d
	.ascii "LPFN_WSASETSERVICE __AW_SUFFIXED__(LPFN_WSASETSERVICE)\0"
	.byte	0x1
	.uleb128 0x311
	.ascii "LPFN_WSASOCKET __AW_SUFFIXED__(LPFN_WSASOCKET)\0"
	.byte	0x1
	.uleb128 0x315
	.ascii "LPFN_WSASTRINGTOADDRESS __AW_SUFFIXED__(LPFN_WSASTRINGTOADDRESS)\0"
	.byte	0x2
	.uleb128 0x31d
	.ascii "__WINSOCK2_H_SOURCED__\0"
	.byte	0x4
	.byte	0x4
	.file 69 "c:/mingw/include/ole2.h"
	.byte	0x3
	.uleb128 0x64
	.uleb128 0x45
	.byte	0x1
	.uleb128 0x2
	.ascii "_OLE2_H \0"
	.file 70 "c:/mingw/include/objbase.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x46
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x32
	.byte	0x4
	.byte	0x1
	.uleb128 0x7
	.ascii "_OBJBASE_H \0"
	.byte	0x1
	.uleb128 0x10
	.ascii "WINOLEAPI STDAPI\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "WINOLEAPI_(type) STDAPI_(type)\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "FARSTRUCT \0"
	.byte	0x1
	.uleb128 0x13
	.ascii "HUGEP \0"
	.byte	0x1
	.uleb128 0x14
	.ascii "LISet32(li,v) ((li).HighPart=(v)<0?-1:0,(li).LowPart=(v))\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "ULISet32(li,v) ((li).HighPart=0,(li).LowPart=(v))\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "CLSCTX_ALL (CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER|CLSCTX_LOCAL_SERVER)\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "CLSCTX_INPROC (CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER)\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "CLSCTX_SERVER (CLSCTX_INPROC_SERVER|CLSCTX_LOCAL_SERVER|CLSCTX_REMOTE_SERVER)\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "MARSHALINTERFACE_MIN 500\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "CWCSTORAGENAME 32\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "STGM_DIRECT 0\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "STGM_TRANSACTED 0x10000L\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "STGM_SIMPLE 0x8000000L\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "STGM_READ 0\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "STGM_WRITE 1\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "STGM_READWRITE 2\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "STGM_SHARE_DENY_NONE 0x40\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "STGM_SHARE_DENY_READ 0x30\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "STGM_SHARE_DENY_WRITE 0x20\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "STGM_SHARE_EXCLUSIVE 0x10\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "STGM_PRIORITY 0x40000L\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "STGM_DELETEONRELEASE 0x4000000\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "STGM_NOSCRATCH 0x100000\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "STGM_CREATE 0x1000\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "STGM_CONVERT 0x20000\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "STGM_NOSNAPSHOT 0x200000\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "STGM_FAILIFTHERE 0\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "CWCSTORAGENAME 32\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "ASYNC_MODE_COMPATIBILITY 1\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "ASYNC_MODE_DEFAULT 0\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "STGTY_REPEAT 256\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "STG_TOEND 0xFFFFFFFF\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "STG_LAYOUT_SEQUENTIAL 0\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "STG_LAYOUT_INTERLEAVED 1\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "COM_RIGHTS_EXECUTE 1\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "COM_RIGHTS_SAFE_FOR_SCRIPTING 2\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "STGOPTIONS_VERSION 2\0"
	.byte	0x3
	.uleb128 0x48
	.uleb128 0x8
	.byte	0x4
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x2
	.ascii "_OBJIDL_H \0"
	.byte	0x1
	.uleb128 0x9
	.ascii "PIDSI_TITLE 0x00000002\0"
	.byte	0x1
	.uleb128 0xa
	.ascii "PIDSI_SUBJECT 0x00000003\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "PIDSI_AUTHOR 0x00000004\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "PIDSI_KEYWORDS 0x00000005\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "PIDSI_COMMENTS 0x00000006\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "PIDSI_TEMPLATE 0x00000007\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "PIDSI_LASTAUTHOR 0x00000008\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "PIDSI_REVNUMBER 0x00000009\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "PIDSI_EDITTIME 0x0000000A\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "PIDSI_LASTPRINTED 0x0000000B\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "PIDSI_CREATE_DTM 0x0000000C\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "PIDSI_LASTSAVE_DTM 0x0000000D\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "PIDSI_PAGECOUNT 0x0000000E\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "PIDSI_WORDCOUNT 0x0000000F\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "PIDSI_CHARCOUNT 0x00000010\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "PIDSI_THUMBNAIL 0x00000011\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "PIDSI_APPNAME 0x00000012\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "PIDSI_DOC_SECURITY 0x00000013\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "PIDDSI_CATEGORY 0x00000002\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "PIDDSI_PRESFORMAT 0x00000003\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "PIDDSI_BYTECOUNT 0x00000004\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "PIDDSI_LINECOUNT 0x00000005\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "PIDDSI_PARCOUNT 0x00000006\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "PIDDSI_SLIDECOUNT 0x00000007\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "PIDDSI_NOTECOUNT 0x00000008\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "PIDDSI_HIDDENCOUNT 0x00000009\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "PIDDSI_MMCLIPCOUNT 0x0000000A\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "PIDDSI_SCALE 0x0000000B\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "PIDDSI_HEADINGPAIR 0x0000000C\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "PIDDSI_DOCPARTS 0x0000000D\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "PIDDSI_MANAGER 0x0000000E\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "PIDDSI_COMPANY 0x0000000F\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "PIDDSI_LINKSDIRTY 0x00000010\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "PRSPEC_INVALID 0xFFFFFFFF\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "PRSPEC_LPWSTR 0x00000000\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "PRSPEC_PROPID 0x00000001\0"
	.byte	0x1
	.uleb128 0x1a5
	.ascii "COLE_DEFAULT_PRINCIPAL ( ( OLECHAR* )-1 )\0"
	.byte	0x1
	.uleb128 0x1bc
	.ascii "COLE_DEFAULT_AUTHINFO ( ( void* )-1 )\0"
	.byte	0x1
	.uleb128 0x1d1
	.ascii "INTERFACE ISequentialStream\0"
	.byte	0x2
	.uleb128 0x1da
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x1dd
	.ascii "INTERFACE IStream\0"
	.byte	0x2
	.uleb128 0x1ef
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x1f2
	.ascii "INTERFACE IMarshal\0"
	.byte	0x2
	.uleb128 0x1ff
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x202
	.ascii "INTERFACE IStdMarshalInfo\0"
	.byte	0x2
	.uleb128 0x20a
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x20d
	.ascii "INTERFACE IMalloc\0"
	.byte	0x2
	.uleb128 0x21a
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x21d
	.ascii "INTERFACE IMallocSpy\0"
	.byte	0x2
	.uleb128 0x230
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x233
	.ascii "INTERFACE IMessageFilter\0"
	.byte	0x2
	.uleb128 0x23d
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x240
	.ascii "INTERFACE IPersist\0"
	.byte	0x2
	.uleb128 0x248
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x24b
	.ascii "INTERFACE IPersistStream\0"
	.byte	0x2
	.uleb128 0x257
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x25a
	.ascii "INTERFACE IRunningObjectTable\0"
	.byte	0x2
	.uleb128 0x268
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x26b
	.ascii "INTERFACE IBindCtx\0"
	.byte	0x2
	.uleb128 0x27c
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x27f
	.ascii "INTERFACE IMoniker\0"
	.byte	0x2
	.uleb128 0x29a
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x29d
	.ascii "INTERFACE IPersistStorage\0"
	.byte	0x2
	.uleb128 0x2ab
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x2ae
	.ascii "INTERFACE IPersistFile\0"
	.byte	0x2
	.uleb128 0x2bb
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x2be
	.ascii "INTERFACE IAdviseSink\0"
	.byte	0x2
	.uleb128 0x2ca
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x2cd
	.ascii "INTERFACE IAdviseSink2\0"
	.byte	0x2
	.uleb128 0x2da
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x2dd
	.ascii "INTERFACE IDataObject\0"
	.byte	0x2
	.uleb128 0x2ed
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x2f0
	.ascii "INTERFACE IDataAdviseHolder\0"
	.byte	0x2
	.uleb128 0x2fb
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x2fe
	.ascii "INTERFACE IStorage\0"
	.byte	0x2
	.uleb128 0x314
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x317
	.ascii "INTERFACE IRootStorage\0"
	.byte	0x2
	.uleb128 0x31f
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x322
	.ascii "INTERFACE IRpcChannelBuffer\0"
	.byte	0x2
	.uleb128 0x32e
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x331
	.ascii "INTERFACE IRpcProxyBuffer\0"
	.byte	0x2
	.uleb128 0x33b
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x33e
	.ascii "INTERFACE IRpcStubBuffer\0"
	.byte	0x2
	.uleb128 0x34c
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x34f
	.ascii "INTERFACE IPSFactoryBuffer\0"
	.byte	0x2
	.uleb128 0x358
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x35c
	.ascii "INTERFACE ILockBytes\0"
	.byte	0x2
	.uleb128 0x36a
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x36d
	.ascii "INTERFACE IExternalConnection\0"
	.byte	0x2
	.uleb128 0x376
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x379
	.ascii "INTERFACE IRunnableObject\0"
	.byte	0x2
	.uleb128 0x385
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x388
	.ascii "INTERFACE IROTData\0"
	.byte	0x2
	.uleb128 0x390
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x393
	.ascii "INTERFACE IChannelHook\0"
	.byte	0x2
	.uleb128 0x3a0
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x3a3
	.ascii "INTERFACE IPropertyStorage\0"
	.byte	0x2
	.uleb128 0x3b6
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x3b9
	.ascii "INTERFACE IPropertySetStorage\0"
	.byte	0x2
	.uleb128 0x3c4
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x3c7
	.ascii "INTERFACE IClientSecurity\0"
	.byte	0x2
	.uleb128 0x3d1
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x3d4
	.ascii "INTERFACE IServerSecurity\0"
	.byte	0x2
	.uleb128 0x3df
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x3e2
	.ascii "INTERFACE IClassActivator\0"
	.byte	0x2
	.uleb128 0x3ea
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x3ed
	.ascii "INTERFACE IFillLockBytes\0"
	.byte	0x2
	.uleb128 0x3f8
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x3fb
	.ascii "INTERFACE IProgressNotify\0"
	.byte	0x2
	.uleb128 0x403
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x406
	.ascii "INTERFACE ILayoutStorage\0"
	.byte	0x2
	.uleb128 0x411
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x414
	.ascii "INTERFACE IGlobalInterfaceTable\0"
	.byte	0x2
	.uleb128 0x41e
	.ascii "INTERFACE\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x53
	.ascii "IsEqualGUID(rguid1,rguid2) (!memcmp(rguid1, rguid2, sizeof(GUID)))\0"
	.byte	0x1
	.uleb128 0x55
	.ascii "IsEqualIID(id1,id2) IsEqualGUID(id1,id2)\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "IsEqualCLSID(id1,id2) IsEqualGUID(id1,id2)\0"
	.byte	0x3
	.uleb128 0x57
	.uleb128 0xa
	.byte	0x1
	.uleb128 0x2
	.ascii "_CGUID_H \0"
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x2
	.ascii "_OLECTLID_H \0"
	.byte	0x4
	.file 71 "c:/mingw/include/oleauto.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x47
	.byte	0x1
	.uleb128 0x2
	.ascii "_OLEAUTO_H \0"
	.byte	0x1
	.uleb128 0x8
	.ascii "WINOLEAUTAPI STDAPI\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "WINOLEAUTAPI_(type) STDAPI_(type)\0"
	.byte	0x1
	.uleb128 0xa
	.ascii "STDOLE_MAJORVERNUM 1\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "STDOLE_MINORVERNUM 0\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "STDOLE_LCID 0\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "VARIANT_NOVALUEPROP 0x01\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "VARIANT_ALPHABOOL 0x02\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "VARIANT_NOUSEOVERRIDE 0x04\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "VARIANT_LOCALBOOL 0x08\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "VAR_TIMEVALUEONLY 0x0001\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "VAR_DATEVALUEONLY 0x0002\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "VAR_VALIDDATE 0x0004\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "VAR_CALENDAR_HIJRI 0x0008\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "VAR_LOCALBOOL 0x0010\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "VAR_FORMAT_NOSUBSTITUTE 0x0020\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "VAR_FOURDIGITYEARS 0x0040\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "VAR_CALENDAR_THAI 0x0080\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "VAR_CALENDAR_GREGORIAN 0x0100\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "MEMBERID_NIL DISPID_UNKNOWN\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "ID_DEFAULTINST (-2)\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "DISPATCH_METHOD 1\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "DISPATCH_PROPERTYGET 2\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "DISPATCH_PROPERTYPUT 4\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "DISPATCH_PROPERTYPUTREF 8\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "LHashValOfName(l,n) LHashValOfNameSys(SYS_WIN32,l,n)\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "WHashValOfLHashVal(h) ((unsigned short)(0x0000ffff&(h)))\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "IsHashValCompatible(h1,h2) ((BOOL)((0x00ff0000&(h1))==(0x00ff0000&(h2))))\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "ACTIVEOBJECT_STRONG 0\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "ACTIVEOBJECT_WEAK 1\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "V_UNION(X,Y) ((X)->Y)\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "V_VT(X) ((X)->vt)\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "V_BOOL(X) V_UNION(X,boolVal)\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "V_ISBYREF(X) (V_VT(X)&VT_BYREF)\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "V_ISARRAY(X) (V_VT(X)&VT_ARRAY)\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "V_ISVECTOR(X) (V_VT(X)&VT_VECTOR)\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "V_NONE(X) V_I2(X)\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "V_UI1(X) V_UNION(X,bVal)\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "V_UI1REF(X) V_UNION(X,pbVal)\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "V_I2(X) V_UNION(X,iVal)\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "V_UI2(X) V_UNION(X,uiVal)\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "V_I2REF(X) V_UNION(X,piVal)\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "V_I4(X) V_UNION(X,lVal)\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "V_UI4(X) V_UNION(X,ulVal)\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "V_I4REF(X) V_UNION(X,plVal)\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "V_UI4REF(X) V_UNION(X,pulVal)\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "V_I8(X) V_UNION(X,llVal)\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "V_UI8(X) V_UNION(X,ullVal)\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "V_I8REF(X) V_UNION(X,pllVal)\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "V_UI8REF(X) V_UNION(X,pullVal)\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "V_R4(X) V_UNION(X,fltVal)\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "V_R4REF(X) V_UNION(X,pfltVal)\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "V_R8(X) V_UNION(X,dblVal)\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "V_R8REF(X) V_UNION(X,pdblVal)\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "V_CY(X) V_UNION(X,cyVal)\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "V_CYREF(X) V_UNION(X,pcyVal)\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "V_DATE(X) V_UNION(X,date)\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "V_DATEREF(X) V_UNION(X,pdate)\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "V_BSTR(X) V_UNION(X,bstrVal)\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "V_BSTRREF(X) V_UNION(X,pbstrVal)\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "V_DISPATCH(X) V_UNION(X,pdispVal)\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "V_DISPATCHREF(X) V_UNION(X,ppdispVal)\0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "V_ERROR(X) V_UNION(X,scode)\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "V_ERRORREF(X) V_UNION(X,pscode)\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "V_BOOLREF(X) V_UNION(X,pboolVal)\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "V_UNKNOWN(X) V_UNION(X,punkVal)\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "V_UNKNOWNREF(X) V_UNION(X,ppunkVal)\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "V_VARIANTREF(X) V_UNION(X,pvarVal)\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "V_LPSTR(X) V_UNION(X,pszVal)\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "V_LPSTRREF(X) V_UNION(X,ppszVal)\0"
	.byte	0x1
	.uleb128 0x55
	.ascii "V_LPWSTR(X) V_UNION(X,pwszVal)\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "V_LPWSTRREF(X) V_UNION(X,ppwszVal)\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "V_FILETIME(X) V_UNION(X,filetime)\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "V_FILETIMEREF(X) V_UNION(X,pfiletime)\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "V_BLOB(X) V_UNION(X,blob)\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "V_UUID(X) V_UNION(X,puuid)\0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "V_CLSID(X) V_UNION(X,puuid)\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "V_ARRAY(X) V_UNION(X,parray)\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "V_ARRAYREF(X) V_UNION(X,pparray)\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "V_BYREF(X) V_UNION(X,byref)\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "V_DECIMAL(X) ((X)->decVal)\0"
	.byte	0x1
	.uleb128 0x64
	.ascii "V_DECIMALREF(X) V_UNION(X,pdecVal)\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "V_I1(X) V_UNION(X,cVal)\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "V_INT_PTR(X) V_I4(X)\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "V_UINT_PTR(X) V_UI4(X)\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "V_INT_PTRREF(X) V_I4REF(X)\0"
	.byte	0x1
	.uleb128 0x70
	.ascii "V_UINT_PTRREF(X) V_UI4REF(X)\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "VARCMP_LT 0\0"
	.byte	0x1
	.uleb128 0x74
	.ascii "VARCMP_EQ 1\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "VARCMP_GT 2\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "VARCMP_NULL 3\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "LOCALE_USE_NLS 0x10000000\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "VARIANT_NOUSEROVERRIDE 0x04\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "VARIANT_CALENDAR_HIJRI 0x08\0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "VARIANT_CALENDAR_THAI 0x20\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "VARIANT_CALENDAR_GREGORIAN 0x40\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "VARIANT_USE_NLS 0x80\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "NUMPRS_LEADING_WHITE 0x00001\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "NUMPRS_TRAILING_WHITE 0x00002\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "NUMPRS_LEADING_PLUS 0x00004\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "NUMPRS_TRAILING_PLUS 0x00008\0"
	.byte	0x1
	.uleb128 0x84
	.ascii "NUMPRS_LEADING_MINUS 0x00010\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "NUMPRS_TRAILING_MINUS 0x00020\0"
	.byte	0x1
	.uleb128 0x86
	.ascii "NUMPRS_HEX_OCT 0x00040\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "NUMPRS_PARENS 0x00080\0"
	.byte	0x1
	.uleb128 0x88
	.ascii "NUMPRS_DECIMAL 0x00100\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "NUMPRS_THOUSANDS 0x00200\0"
	.byte	0x1
	.uleb128 0x8a
	.ascii "NUMPRS_CURRENCY 0x00400\0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "NUMPRS_EXPONENT 0x00800\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "NUMPRS_USE_ALL 0x01000\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "NUMPRS_STD 0x01FFF\0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "NUMPRS_NEG 0x10000\0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "NUMPRS_INEXACT 0x20000\0"
	.byte	0x1
	.uleb128 0x91
	.ascii "VTBIT_I1 (1<<VT_I1)\0"
	.byte	0x1
	.uleb128 0x92
	.ascii "VTBIT_UI1 (1<<VT_UI1)\0"
	.byte	0x1
	.uleb128 0x93
	.ascii "VTBIT_I2 (1<<VT_I2)\0"
	.byte	0x1
	.uleb128 0x94
	.ascii "VTBIT_UI2 (1<<VT_UI2)\0"
	.byte	0x1
	.uleb128 0x95
	.ascii "VTBIT_I4 (1<<VT_I4)\0"
	.byte	0x1
	.uleb128 0x96
	.ascii "VTBIT_UI4 (1<<VT_UI4)\0"
	.byte	0x1
	.uleb128 0x97
	.ascii "VTBIT_I8 (1<<VT_I8)\0"
	.byte	0x1
	.uleb128 0x98
	.ascii "VTBIT_UI8 (1<<VT_UI8)\0"
	.byte	0x1
	.uleb128 0x99
	.ascii "VTBIT_R4 (1<<VT_R4)\0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "VTBIT_R8 (1<<VT_R8)\0"
	.byte	0x1
	.uleb128 0x9b
	.ascii "VTBIT_CY (1<<VT_CY)\0"
	.byte	0x1
	.uleb128 0x9c
	.ascii "VTBIT_DECIMAL (1<<VT_DECIMAL)\0"
	.byte	0x3
	.uleb128 0x9e
	.uleb128 0xc
	.byte	0x1
	.uleb128 0x2
	.ascii "_OAIDL_H \0"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x45
	.byte	0x4
	.byte	0x1
	.uleb128 0x15
	.ascii "__tagVARIANT \0"
	.byte	0x1
	.uleb128 0x16
	.ascii "__VARIANT_NAME_1 \0"
	.byte	0x1
	.uleb128 0x17
	.ascii "__VARIANT_NAME_2 \0"
	.byte	0x1
	.uleb128 0x18
	.ascii "__VARIANT_NAME_3 \0"
	.byte	0x1
	.uleb128 0x19
	.ascii "__VARIANT_NAME_4 \0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "DISPID_UNKNOWN (-1)\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "DISPID_VALUE (0)\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "DISPID_PROPERTYPUT (-3)\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "DISPID_NEWENUM (-4)\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "DISPID_EVALUATE (-5)\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "DISPID_CONSTRUCTOR (-6)\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "DISPID_DESTRUCTOR (-7)\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "DISPID_COLLECT (-8)\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "FADF_AUTO (1)\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "FADF_STATIC (2)\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "FADF_EMBEDDED (4)\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "FADF_FIXEDSIZE (16)\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "FADF_RECORD (32)\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "FADF_HAVEIID (64)\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "FADF_HAVEVARTYPE (128)\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "FADF_BSTR (256)\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "FADF_UNKNOWN (512)\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "FADF_DISPATCH (1024)\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "FADF_VARIANT (2048)\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "FADF_RESERVED (0xf0e8)\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "FADF_DATADELETED (0x1000)\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "FADF_CREATEVECTOR (0x2000)\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "PARAMFLAG_NONE (0)\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "PARAMFLAG_FIN (1)\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "PARAMFLAG_FOUT (2)\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "PARAMFLAG_FLCID (4)\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "PARAMFLAG_FRETVAL (8)\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "PARAMFLAG_FOPT (16)\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "PARAMFLAG_FHASDEFAULT (32)\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "IDLFLAG_NONE PARAMFLAG_NONE\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "IDLFLAG_FIN PARAMFLAG_FIN\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "IDLFLAG_FOUT PARAMFLAG_FOUT\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "IDLFLAG_FLCID PARAMFLAG_FLCID\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "IDLFLAG_FRETVAL PARAMFLAG_FRETVAL\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "IMPLTYPEFLAG_FDEFAULT 1\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "IMPLTYPEFLAG_FSOURCE 2\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "IMPLTYPEFLAG_FRESTRICTED 4\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "IMPLTYPEFLAG_FDEFAULTVTABLE 8\0"
	.byte	0x1
	.uleb128 0x1dc
	.ascii "INTERFACE IDispatch\0"
	.byte	0x2
	.uleb128 0x1e7
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x1f3
	.ascii "INTERFACE IEnumVARIANT\0"
	.byte	0x2
	.uleb128 0x1fe
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x200
	.ascii "INTERFACE ITypeComp\0"
	.byte	0x2
	.uleb128 0x209
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x20b
	.ascii "INTERFACE ITypeInfo\0"
	.byte	0x2
	.uleb128 0x225
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x240
	.ascii "INTERFACE ITypeInfo2\0"
	.byte	0x2
	.uleb128 0x269
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x26b
	.ascii "INTERFACE ITypeLib\0"
	.byte	0x2
	.uleb128 0x27c
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x27e
	.ascii "INTERFACE ITypeLib2\0"
	.byte	0x2
	.uleb128 0x293
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x296
	.ascii "INTERFACE IErrorInfo\0"
	.byte	0x2
	.uleb128 0x2a2
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x2b0
	.ascii "INTERFACE ICreateErrorInfo\0"
	.byte	0x2
	.uleb128 0x2bc
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x2bf
	.ascii "INTERFACE ISupportErrorInfo\0"
	.byte	0x2
	.uleb128 0x2c7
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x2ca
	.ascii "INTERFACE IRecordInfo\0"
	.byte	0x2
	.uleb128 0x2e1
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x2fa
	.ascii "INTERFACE ITypeMarshal\0"
	.byte	0x2
	.uleb128 0x305
	.ascii "INTERFACE\0"
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0x10
	.ascii "E_DRAW VIEW_E_DRAW\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "DATA_E_FORMATETC DV_E_FORMATETC\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "OLEIVERB_PRIMARY (0L)\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "OLEIVERB_SHOW (-1L)\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "OLEIVERB_OPEN (-2L)\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "OLEIVERB_HIDE (-3L)\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "OLEIVERB_UIACTIVATE (-4L)\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "OLEIVERB_INPLACEACTIVATE (-5L)\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "OLEIVERB_DISCARDUNDOSTATE (-6L)\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "EMBDHLP_INPROC_HANDLER 0x0000L\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "EMBDHLP_INPROC_SERVER 0x0001L\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "EMBDHLP_CREATENOW 0x00000000L\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "EMBDHLP_DELAYCREATE 0x00010000L\0"
	.file 72 "c:/mingw/include/oleidl.h"
	.byte	0x3
	.uleb128 0x1d
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x2
	.ascii "_OLEIDL_H \0"
	.byte	0x1
	.uleb128 0xd
	.ascii "MK_ALT 32\0"
	.byte	0x1
	.uleb128 0x61
	.ascii "INTERFACE IParseDisplayName\0"
	.byte	0x2
	.uleb128 0x69
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "INTERFACE IOleContainer\0"
	.byte	0x2
	.uleb128 0x7d
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "INTERFACE IOleItemContainer\0"
	.byte	0x2
	.uleb128 0x8d
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x9c
	.ascii "INTERFACE IOleClientSite\0"
	.byte	0x2
	.uleb128 0xa9
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0xb8
	.ascii "INTERFACE IOleObject\0"
	.byte	0x2
	.uleb128 0xd4
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0xf2
	.ascii "INTERFACE IOleWindow\0"
	.byte	0x2
	.uleb128 0xfb
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x106
	.ascii "INTERFACE IOleInPlaceUIWindow\0"
	.byte	0x2
	.uleb128 0x113
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x116
	.ascii "INTERFACE IOleInPlaceObject\0"
	.byte	0x2
	.uleb128 0x123
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x126
	.ascii "INTERFACE IOleInPlaceActiveObject\0"
	.byte	0x2
	.uleb128 0x134
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x137
	.ascii "INTERFACE IOleInPlaceFrame\0"
	.byte	0x2
	.uleb128 0x14a
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x15f
	.ascii "INTERFACE IOleInPlaceSite\0"
	.byte	0x2
	.uleb128 0x172
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x175
	.ascii "INTERFACE IOleAdviseHolder\0"
	.byte	0x2
	.uleb128 0x182
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x191
	.ascii "INTERFACE IDropSource\0"
	.byte	0x2
	.uleb128 0x19a
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x1a5
	.ascii "INTERFACE IDropTarget\0"
	.byte	0x2
	.uleb128 0x1b0
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x1be
	.ascii "INTERFACE IViewObject\0"
	.byte	0x2
	.uleb128 0x1cb
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x1da
	.ascii "INTERFACE IViewObject2\0"
	.byte	0x2
	.uleb128 0x1e8
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x1f8
	.ascii "INTERFACE IOleCache\0"
	.byte	0x2
	.uleb128 0x204
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x212
	.ascii "INTERFACE IOleCache2\0"
	.byte	0x2
	.uleb128 0x220
	.ascii "INTERFACE\0"
	.byte	0x1
	.uleb128 0x230
	.ascii "INTERFACE IOleCacheControl\0"
	.byte	0x2
	.uleb128 0x239
	.ascii "INTERFACE\0"
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
Ldebug_line0:
	.section	.debug_str,"dr"
LASF1:
	.ascii "kilograms\0"
LASF0:
	.ascii "session\0"
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_GetStdHandle@4;	.scl	2;	.type	32;	.endef
	.def	_GetConsoleScreenBufferInfo@8;	.scl	2;	.type	32;	.endef
	.def	_FillConsoleOutputCharacterA@20;	.scl	2;	.type	32;	.endef
	.def	_FillConsoleOutputAttribute@20;	.scl	2;	.type	32;	.endef
	.def	_SetConsoleCursorPosition@8;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_getch;	.scl	2;	.type	32;	.endef
