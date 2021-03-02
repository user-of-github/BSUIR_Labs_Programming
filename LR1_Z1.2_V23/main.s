	.file	"main.c"
	.intel_syntax noprefix
	.text
Ltext0:
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB10:
	.file 1 "main.c"
	.loc 1 6 0
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	and	esp, -16
	sub	esp, 32
	.loc 1 6 0
	call	___main
LVL0:
	.loc 1 7 0
	mov	WORD PTR [esp+30], 10
	.loc 1 8 0
	lea	eax, [esp+30]
	mov	DWORD PTR [esp], eax
	call	_printPythagoreanTriaples
	.loc 1 10 0
	mov	eax, 0
	.loc 1 11 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
Letext0:
	.file 2 "c:/mingw/include/stdio.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x1d0
	.word	0x4
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C11 6.3.0 -masm=intel -mtune=generic -march=i586 -g3\0"
	.byte	0xc
	.ascii "main.c\0"
	.ascii "C:\\Users\\User\\Desktop\\Other\\HomeWork\\Programming\\LR1_Z1.2_V23\0"
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
	.long	0xab
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x4
	.ascii "_iobuf\0"
	.byte	0x20
	.byte	0x2
	.byte	0xd2
	.long	0x179
	.uleb128 0x5
	.ascii "_ptr\0"
	.byte	0x2
	.byte	0xd4
	.long	0x179
	.byte	0
	.uleb128 0x5
	.ascii "_cnt\0"
	.byte	0x2
	.byte	0xd5
	.long	0xe3
	.byte	0x4
	.uleb128 0x5
	.ascii "_base\0"
	.byte	0x2
	.byte	0xd6
	.long	0x179
	.byte	0x8
	.uleb128 0x5
	.ascii "_flag\0"
	.byte	0x2
	.byte	0xd7
	.long	0xe3
	.byte	0xc
	.uleb128 0x5
	.ascii "_file\0"
	.byte	0x2
	.byte	0xd8
	.long	0xe3
	.byte	0x10
	.uleb128 0x5
	.ascii "_charbuf\0"
	.byte	0x2
	.byte	0xd9
	.long	0xe3
	.byte	0x14
	.uleb128 0x5
	.ascii "_bufsiz\0"
	.byte	0x2
	.byte	0xda
	.long	0xe3
	.byte	0x18
	.uleb128 0x5
	.ascii "_tmpfname\0"
	.byte	0x2
	.byte	0xdb
	.long	0x179
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xea
	.uleb128 0x7
	.ascii "FILE\0"
	.byte	0x2
	.byte	0xdc
	.long	0xf2
	.uleb128 0x8
	.long	0x17f
	.long	0x196
	.uleb128 0x9
	.byte	0
	.uleb128 0xa
	.ascii "_iob\0"
	.byte	0x2
	.byte	0xef
	.long	0x18b
	.uleb128 0xb
	.ascii "main\0"
	.byte	0x1
	.byte	0x5
	.long	0xe3
	.long	LFB10
	.long	LFE10-LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.ascii "necessaryToFind\0"
	.byte	0x1
	.byte	0x7
	.long	0xc1
	.uleb128 0x2
	.byte	0x74
	.sleb128 30
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x33
	.ascii "_STDIO_H \0"
	.file 3 "c:/mingw/include/_mingw.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x3
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
	.file 4 "c:/mingw/include/msvcrtver.h"
	.byte	0x3
	.uleb128 0x42
	.uleb128 0x4
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
	.file 5 "c:/mingw/include/w32api.h"
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x5
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
	.file 6 "c:/mingw/include/sdkddkver.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x6
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
	.file 7 "c:/mingw/lib/gcc/mingw32/6.3.0/include/stddef.h"
	.byte	0x3
	.uleb128 0x45
	.uleb128 0x7
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
	.file 8 "c:/mingw/include/sys/types.h"
	.byte	0x3
	.uleb128 0x5e
	.uleb128 0x8
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
	.file 9 "c:/mingw/lib/gcc/mingw32/6.3.0/include/stdarg.h"
	.byte	0x3
	.uleb128 0x66
	.uleb128 0x9
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
	.file 10 "pythagoreanTriaple.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xa
	.byte	0x1
	.uleb128 0x2
	.ascii "PYTHAGOREANTRIAPLE_H_INCLUDED \0"
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
Ldebug_line0:
	.section	.debug_str,"dr"
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printPythagoreanTriaples;	.scl	2;	.type	32;	.endef
