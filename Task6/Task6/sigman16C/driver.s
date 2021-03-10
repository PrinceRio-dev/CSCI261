;;;-----------------------------------------
;;; Start MC68HC11 gcc assembly output
;;; gcc compiler 3.3.6-m68hc1x-20060122
;;; Command:	/usr/lib/gcc-lib/m68hc11/3.3.6-m68hc1x-20060122/cc1 -quiet -D__GNUC__=3 -D__GNUC_MINOR__=3 -D__GNUC_PATCHLEVEL__=6 -Dmc68hc1x -D__mc68hc1x__ -D__mc68hc1x -D__HAVE_SHORT_INT__ -D__INT__=16 -Dmc6811 -DMC6811 -Dmc68hc11 driver.c -quiet -dumpbase driver.c -mshort -msoft-reg-count=0 -auxbase driver -g -o driver.s
;;; Compiled:	Sun Dec 13 18:13:39 2020
;;; (META)compiled by GNU C version 6.3.0 20170221.
;;;-----------------------------------------
	.file	"driver.c"
	.mode mshort
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.sect	.text
.Ltext0:
	.globl	sigman
	.type	sigman,@function
sigman:
.LFB3:
.LM1:
	ldx	*_.frame
	pshx
	pshx
	pshx
	pshx
	sts	*_.frame
	ldx	*_.frame
	std	1,x
.LM2:
.LBB2:
	clra
	clrb
	ldx	*_.frame
	std	3,x
.LM3:
	clra
	clrb
	ldx	*_.frame
	std	5,x
.L2:
	ldx	*_.frame
	ldd	5,x
	ldx	*_.frame
	cpd	1,x
	ble	.L5
	bra	.L3
.L5:
.LM4:
	ldx	*_.frame
	ldd	3,x
	ldx	*_.frame
	addd	5,x
	ldx	*_.frame
	std	3,x
.LM5:
	ldx	*_.frame
	ldd	5,x
	addd	#1
	ldx	*_.frame
	std	5,x
	bra	.L2
.L3:
.LM6:
	ldx	*_.frame
	ldd	3,x
.LM7:
	pulx
	pulx
	pulx
	pulx
	stx	*_.frame
	rts
.LBE2:
.LFE3:
	.size	sigman, .-sigman
	.globl	driver
	.type	driver,@function
driver:
.LFB5:
.LM8:
	ldx	*_.frame
	pshx
	pshx
	sts	*_.frame
	ldx	*_.frame
	std	1,x
.LM9:
	ldx	*_.frame
	ldd	1,x
	bsr	sigman
.LM10:
	pulx
	pulx
	stx	*_.frame
	rts
.LFE5:
	.size	driver, .-driver
.Letext0:
	.section	.debug_line
	.4byte	.LELT0-.LSLT0
.LSLT0:
	.2byte	0x2
	.4byte	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf5
	.byte	0xa
	.byte	0x0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x1
	.byte	0x0
	.string	"driver.c"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.byte	0x0
.LELTP0:
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM2
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM3
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM4
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM5
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM6
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM7
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM8
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM9
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM10
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.Letext0
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_info
	.4byte	0xea
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.string	"driver.c"
	.string	"/home/student/diyorapr/csci261/Task6/Task6/sigman16C"
	.string	"GNU C 3.3.6-m68hc1x-20060122"
	.byte	0x1
	.uleb128 0x2
	.4byte	0xb9
	.byte	0x1
	.string	"sigman"
	.byte	0x1
	.byte	0x4
	.byte	0x1
	.4byte	0xb9
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x59
	.uleb128 0x3
	.string	"n"
	.byte	0x1
	.byte	0x4
	.4byte	0xb9
	.byte	0x2
	.byte	0x91
	.sleb128 1
	.uleb128 0x4
	.string	"sum"
	.byte	0x1
	.byte	0x5
	.4byte	0xb9
	.byte	0x2
	.byte	0x91
	.sleb128 3
	.uleb128 0x4
	.string	"i"
	.byte	0x1
	.byte	0x5
	.4byte	0xb9
	.byte	0x2
	.byte	0x91
	.sleb128 5
	.byte	0x0
	.uleb128 0x5
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0x6
	.byte	0x1
	.string	"driver"
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.4byte	0xb9
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x59
	.uleb128 0x3
	.string	"n"
	.byte	0x1
	.byte	0xe
	.4byte	0xb9
	.byte	0x2
	.byte	0x91
	.sleb128 1
	.byte	0x0
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x10
	.uleb128 0x6
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xee
	.4byte	0x74
	.string	"sigman"
	.4byte	0xc6
	.string	"driver"
	.4byte	0x0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.ident	"GCC: (GNU) 3.3.6-m68hc1x-20060122"
