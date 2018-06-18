	.386p
	ifdef ??version
	if    ??version GT 500H
	.mmx
	endif
	endif
	model flat
	ifndef	??version
	?debug	macro
	endm
	endif
	?debug	S "D:\develop\MidicontrollerPatchEditor\WindowsMidiControllerPatchEditor\About.cpp"
	?debug	T "D:\develop\MidicontrollerPatchEditor\WindowsMidiControllerPatchEditor\About.cpp"
_TEXT	segment dword public use32 'CODE'
_TEXT	ends
_DATA	segment dword public use32 'DATA'
_DATA	ends
_BSS	segment dword public use32 'BSS'
_BSS	ends
$$BSYMS	segment byte public use32 'DEBSYM'
$$BSYMS	ends
$$BTYPES	segment byte public use32 'DEBTYP'
$$BTYPES	ends
$$BNAMES	segment byte public use32 'DEBNAM'
$$BNAMES	ends
$$BROWSE	segment byte public use32 'DEBSYM'
$$BROWSE	ends
$$BROWFILE	segment byte public use32 'DEBSYM'
$$BROWFILE	ends
	?debug	C FB0C0100600000
DGROUP	group	_BSS,_DATA
_BSS	segment dword public use32 'BSS'
	align	4
_AboutForm	label	dword
	db	4	dup(?)
_BSS	ends
_DATA	segment dword public use32 'DATA'
@_$DCCC$@TAboutForm@$bctr$qqrp18Classes@TComponent	segment virtual
@@_$DCCC$@TAboutForm@$bctr$qqrp18Classes@TComponent	label	dword
	dd	@@$xt$p10TAboutForm
	dd	1029
	dd	-4
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-8
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-8
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-12
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-16
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-20
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-24
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-28
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-32
	dd	0
@_$DCCC$@TAboutForm@$bctr$qqrp18Classes@TComponent	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTDC$@TAboutForm@$bctr$qqrp18Classes@TComponent	segment virtual
@@_$ECTDC$@TAboutForm@$bctr$qqrp18Classes@TComponent	label	dword
	dd	0
	dd	-68
	dw	0
	dw	5
	dd	0
	dd	@@_$DCCC$@TAboutForm@$bctr$qqrp18Classes@TComponent
	dw	8
	dw	5
	dd	29
	dd	@@_$DCCC$@TAboutForm@$bctr$qqrp18Classes@TComponent+16
	dw	20
	dw	5
	dd	29
	dd	@@_$DCCC$@TAboutForm@$bctr$qqrp18Classes@TComponent+32
	dw	20
	dw	5
	dd	30
	dd	@@_$DCCC$@TAboutForm@$bctr$qqrp18Classes@TComponent+48
	dw	20
	dw	5
	dd	30
	dd	@@_$DCCC$@TAboutForm@$bctr$qqrp18Classes@TComponent+64
@_$ECTDC$@TAboutForm@$bctr$qqrp18Classes@TComponent	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@TAboutForm@$bctr$qqrp18Classes@TComponent	segment virtual
@@TAboutForm@$bctr$qqrp18Classes@TComponent	proc	near
?live16385@0:
	?debug L 11
	push      ebp
	mov       ebp,esp
	add       esp,-104
	mov       byte ptr [ebp-36],dl
	test      dl,dl
	jle       short @1
	call      __ClassCreate
@1:
	mov       dword ptr [ebp-76],ecx
	mov       byte ptr [ebp-69],dl
	mov       dword ptr [ebp-4],eax
@2:
	mov       eax,offset @@_$ECTDC$@TAboutForm@$bctr$qqrp18Classes@TComponent
	call      @__InitExceptBlockLDTC
	?debug L 12
	mov       word ptr [ebp-52],8
	mov       ecx,dword ptr [ebp-76]
	xor       edx,edx
	mov       eax,dword ptr [ebp-4]
	call      @@Forms@TForm@$bctr$qqrp18Classes@TComponent
	add       dword ptr [ebp-40],29
	?debug L 15
	mov       word ptr [ebp-52],32
	lea       eax,dword ptr [ebp-8]
	call      @@System@AnsiString@$bctr$qqrv
	mov       edx,eax
	inc       dword ptr [ebp-40]
	mov       ecx,dword ptr [@Forms@Application]
	mov       eax,dword ptr [ecx]
	call      @@Forms@TApplication@GetExeName$qqrv
	mov       word ptr [ebp-52],20
	?debug L 16
	lea       edx,dword ptr [ebp-84]
	push      edx
	lea       eax,dword ptr [ebp-8]
	call      @@System@AnsiString@c_str$xqqrv
	push      eax
	call      @GetFileVersionInfoSizeA
	mov       dword ptr [ebp-80],eax
	?debug L 17
	cmp       dword ptr [ebp-80],0
	je        @3
	?debug L 21
@4:
	push      dword ptr [ebp-80]
	call      @_malloc
	pop       ecx
	mov       dword ptr [ebp-96],eax
	?debug L 22
	push      dword ptr [ebp-96]
	push      dword ptr [ebp-80]
	push      0
	mov       word ptr [ebp-52],44
	lea       eax,dword ptr [ebp-12]
	call      @@System@AnsiString@$bctr$qqrv
	mov       edx,eax
	inc       dword ptr [ebp-40]
	mov       ecx,dword ptr [@Forms@Application]
	mov       eax,dword ptr [ecx]
	call      @@Forms@TApplication@GetExeName$qqrv
	lea       eax,dword ptr [ebp-12]
	call      @@System@AnsiString@c_str$xqqrv
	push      eax
	call      @GetFileVersionInfoA
	dec       dword ptr [ebp-40]
	lea       eax,dword ptr [ebp-12]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	?debug L 25
	lea       ecx,dword ptr [ebp-104]
	push      ecx
	lea       eax,dword ptr [ebp-100]
	push      eax
	push      offset s@
	push      dword ptr [ebp-96]
	call      @VerQueryValueA
	?debug L 26
	mov       edx,dword ptr [ebp-100]
	mov       ecx,dword ptr [edx+8]
	shr       ecx,16
	mov       dword ptr [ebp-88],ecx
	?debug L 27
	mov       eax,dword ptr [ebp-100]
	mov       edx,dword ptr [eax+8]
	and       edx,65535
	mov       dword ptr [ebp-92],edx
	?debug L 30
	mov       word ptr [ebp-52],56
	lea       eax,dword ptr [ebp-28]
	call      @@System@AnsiString@$bctr$qqrv
	mov       edx,eax
	inc       dword ptr [ebp-40]
	mov       eax,dword ptr [ebp-92]
	call      @@Sysutils@IntToStr$qqri
	lea       edx,dword ptr [ebp-28]
	push      edx
	lea       eax,dword ptr [ebp-16]
	call      @@System@AnsiString@$bctr$qqrv
	mov       edx,eax
	inc       dword ptr [ebp-40]
	mov       eax,dword ptr [ebp-88]
	call      @@Sysutils@IntToStr$qqri
	lea       edx,dword ptr [ebp-16]
	push      edx
	lea       eax,dword ptr [ebp-24]
	call      @@System@AnsiString@$bctr$qqrv
	push      eax
	inc       dword ptr [ebp-40]
	mov       edx,offset s@+2
	lea       eax,dword ptr [ebp-20]
	call      @@System@AnsiString@$bctr$qqrpxc
	mov       edx,eax
	inc       dword ptr [ebp-40]
	pop       ecx
	pop       eax
	call      @@System@AnsiString@$badd$xqqrrx17System@AnsiString
	lea       edx,dword ptr [ebp-24]
	push      edx
	lea       eax,dword ptr [ebp-32]
	call      @@System@AnsiString@$bctr$qqrv
	mov       ecx,eax
	inc       dword ptr [ebp-40]
	pop       eax
	pop       edx
	call      @@System@AnsiString@$badd$xqqrrx17System@AnsiString
	lea       edx,dword ptr [ebp-32]
	mov       edx,dword ptr [edx]
	mov       eax,dword ptr [ebp-4]
	mov       eax,dword ptr [eax+708]
	call      @@Controls@TControl@SetText$qqrx17System@AnsiString
	dec       dword ptr [ebp-40]
	lea       eax,dword ptr [ebp-32]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-40]
	lea       eax,dword ptr [ebp-28]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-40]
	lea       eax,dword ptr [ebp-24]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-40]
	lea       eax,dword ptr [ebp-20]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-40]
	lea       eax,dword ptr [ebp-16]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	?debug L 31
	push      dword ptr [ebp-96]
	call      @_free
	pop       ecx
	?debug L 34
@5:
@3:
	dec       dword ptr [ebp-40]
	lea       eax,dword ptr [ebp-8]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       word ptr [ebp-52],8
	mov       ecx,dword ptr [ebp-68]
	mov       dword ptr fs:[0],ecx
	mov       eax,dword ptr [ebp-4]
@7:
@6:
	cmp       byte ptr [ebp-69],0
	je        short @8
	call      __AfterConstruction
	?debug L 34
@8:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@TAboutForm@$bctr$qqrp18Classes@TComponent	endp
@TAboutForm@$bctr$qqrp18Classes@TComponent	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	db	2
	db	0
	db	0
	db	0
	dw	89
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch1
	dd	?patch2
	dd	?patch3
	df	@@TAboutForm@$bctr$qqrp18Classes@TComponent
	dw	0
	dw	4104
	dw	0
	dw	12
	dw	0
	dw	0
	dw	0
	db	42
	db	64
	db	84
	db	65
	db	98
	db	111
	db	117
	db	116
	db	70
	db	111
	db	114
	db	109
	db	64
	db	36
	db	98
	db	99
	db	116
	db	114
	db	36
	db	113
	db	113
	db	114
	db	112
	db	49
	db	56
	db	67
	db	108
	db	97
	db	115
	db	115
	db	101
	db	115
	db	64
	db	84
	db	67
	db	111
	db	109
	db	112
	db	111
	db	110
	db	101
	db	110
	db	116
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	4102
	dw	0
	dw	13
	dw	0
	dw	0
	dw	0
	dw	?patch4
	dw	529
	dw	?patch5
	dd	?live16385@0-@@TAboutForm@$bctr$qqrp18Classes@TComponent
	dd	?live16385@0-?live16385@0
	dw	17
?patch5	equ	1
?patch4	equ	14
	dw	18
	dw	512
	dw	65460
	dw	65535
	dw	65531
	dw	65535
	dw	14
	dw	0
	dw	0
	dw	0
	dw	?patch6
	dw	529
	dw	?patch7
	dd	?live16385@0-@@TAboutForm@$bctr$qqrp18Classes@TComponent
	dd	?live16385@0-?live16385@0
	dw	18
?patch7	equ	1
?patch6	equ	14
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	65530
	dw	65535
	dw	15
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65452
	dw	65535
	dw	34
	dw	0
	dw	16
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65456
	dw	65535
	dw	34
	dw	0
	dw	17
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch8
	df	@4
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65432
	dw	65535
	dw	117
	dw	0
	dw	18
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65436
	dw	65535
	dw	65529
	dw	65535
	dw	19
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65440
	dw	65535
	dw	1027
	dw	0
	dw	20
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65444
	dw	65535
	dw	116
	dw	0
	dw	21
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65448
	dw	65535
	dw	116
	dw	0
	dw	22
	dw	0
	dw	0
	dw	0
?patch8	equ	@5-@4
	dw	2
	dw	6
?patch1	equ	@7-@@TAboutForm@$bctr$qqrp18Classes@TComponent+15
?patch2	equ	0
?patch3	equ	@7-@@TAboutForm@$bctr$qqrp18Classes@TComponent
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@TAboutForm@Button1Click$qqrp14System@TObject	segment virtual
@@TAboutForm@Button1Click$qqrp14System@TObject	proc	near
?live16393@0:
	?debug L 36
	push      ebp
	mov       ebp,esp
	add       esp,-8
	mov       dword ptr [ebp-8],edx
	mov       dword ptr [ebp-4],eax
	?debug L 38
@9:
	mov       eax,dword ptr [ebp-4]
	call      @@Forms@TCustomForm@Close$qqrv
	?debug L 39
@10:
	pop       ecx
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@TAboutForm@Button1Click$qqrp14System@TObject	endp
@TAboutForm@Button1Click$qqrp14System@TObject	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	92
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch9
	dd	?patch10
	dd	?patch11
	df	@@TAboutForm@Button1Click$qqrp14System@TObject
	dw	0
	dw	4121
	dw	0
	dw	23
	dw	0
	dw	0
	dw	0
	db	45
	db	64
	db	84
	db	65
	db	98
	db	111
	db	117
	db	116
	db	70
	db	111
	db	114
	db	109
	db	64
	db	66
	db	117
	db	116
	db	116
	db	111
	db	110
	db	49
	db	67
	db	108
	db	105
	db	99
	db	107
	db	36
	db	113
	db	113
	db	114
	db	112
	db	49
	db	52
	db	83
	db	121
	db	115
	db	116
	db	101
	db	109
	db	64
	db	84
	db	79
	db	98
	db	106
	db	101
	db	99
	db	116
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	4102
	dw	0
	dw	24
	dw	0
	dw	0
	dw	0
	dw	?patch12
	dw	529
	dw	?patch13
	dd	?live16393@0-@@TAboutForm@Button1Click$qqrp14System@TObject
	dd	?live16393@0-?live16393@0
	dw	17
?patch13	equ	1
?patch12	equ	14
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	65532
	dw	65535
	dw	25
	dw	0
	dw	0
	dw	0
	dw	?patch14
	dw	529
	dw	?patch15
	dd	?live16393@0-@@TAboutForm@Button1Click$qqrp14System@TObject
	dd	?live16393@0-?live16393@0
	dw	19
?patch15	equ	1
?patch14	equ	14
?patch9	equ	@10-@@TAboutForm@Button1Click$qqrp14System@TObject+4
?patch10	equ	0
?patch11	equ	@10-@@TAboutForm@Button1Click$qqrp14System@TObject
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCEC$@Forms@TForm@$bctr$qqrp18Classes@TComponent	segment virtual
@@_$DCEC$@Forms@TForm@$bctr$qqrp18Classes@TComponent	label	dword
	dd	@@$xt$p11Forms@TForm
	dd	1029
	dd	-4
	dd	0
@_$DCEC$@Forms@TForm@$bctr$qqrp18Classes@TComponent	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTFC$@Forms@TForm@$bctr$qqrp18Classes@TComponent	segment virtual
@@_$ECTFC$@Forms@TForm@$bctr$qqrp18Classes@TComponent	label	dword
	dd	0
	dd	-40
	dw	0
	dw	5
	dd	0
	dd	@@_$DCEC$@Forms@TForm@$bctr$qqrp18Classes@TComponent
@_$ECTFC$@Forms@TForm@$bctr$qqrp18Classes@TComponent	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@Forms@TForm@$bctr$qqrp18Classes@TComponent	segment virtual
@@Forms@TForm@$bctr$qqrp18Classes@TComponent	proc	near
?live16386@0:
	?debug	T "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\forms.hpp"
	?debug L 827
	push      ebp
	mov       ebp,esp
	add       esp,-48
	mov       byte ptr [ebp-8],dl
	test      dl,dl
	jle       short @11
	call      __ClassCreate
@11:
	mov       dword ptr [ebp-48],ecx
	mov       byte ptr [ebp-41],dl
	mov       dword ptr [ebp-4],eax
@12:
	mov       eax,offset @@_$ECTFC$@Forms@TForm@$bctr$qqrp18Classes@TComponent
	call      @__InitExceptBlockLDTC
	mov       word ptr [ebp-24],8
	mov       ecx,dword ptr [ebp-48]
	xor       edx,edx
	mov       eax,dword ptr [ebp-4]
	call      @@Forms@TCustomForm@$bctr$qqrp18Classes@TComponent
	add       dword ptr [ebp-12],25
	?debug L 828
	mov       edx,dword ptr [ebp-40]
	mov       dword ptr fs:[0],edx
	mov       eax,dword ptr [ebp-4]
@14:
@13:
	cmp       byte ptr [ebp-41],0
	je        short @15
	call      __AfterConstruction
	?debug L 828
@15:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@Forms@TForm@$bctr$qqrp18Classes@TComponent	endp
@Forms@TForm@$bctr$qqrp18Classes@TComponent	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	90
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch16
	dd	?patch17
	dd	?patch18
	df	@@Forms@TForm@$bctr$qqrp18Classes@TComponent
	dw	0
	dw	4123
	dw	0
	dw	26
	dw	0
	dw	0
	dw	0
	db	43
	db	64
	db	70
	db	111
	db	114
	db	109
	db	115
	db	64
	db	84
	db	70
	db	111
	db	114
	db	109
	db	64
	db	36
	db	98
	db	99
	db	116
	db	114
	db	36
	db	113
	db	113
	db	114
	db	112
	db	49
	db	56
	db	67
	db	108
	db	97
	db	115
	db	115
	db	101
	db	115
	db	64
	db	84
	db	67
	db	111
	db	109
	db	112
	db	111
	db	110
	db	101
	db	110
	db	116
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	4124
	dw	0
	dw	27
	dw	0
	dw	0
	dw	0
	dw	?patch19
	dw	529
	dw	?patch20
	dd	?live16386@0-@@Forms@TForm@$bctr$qqrp18Classes@TComponent
	dd	?live16386@0-?live16386@0
	dw	17
?patch20	equ	1
?patch19	equ	14
	dw	18
	dw	512
	dw	65488
	dw	65535
	dw	65531
	dw	65535
	dw	28
	dw	0
	dw	0
	dw	0
	dw	?patch21
	dw	529
	dw	?patch22
	dd	?live16386@0-@@Forms@TForm@$bctr$qqrp18Classes@TComponent
	dd	?live16386@0-?live16386@0
	dw	18
?patch22	equ	1
?patch21	equ	14
?patch16	equ	@14-@@Forms@TForm@$bctr$qqrp18Classes@TComponent+15
?patch17	equ	0
?patch18	equ	@14-@@Forms@TForm@$bctr$qqrp18Classes@TComponent
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCGC$@System@AnsiString@$bctr$qqrv	segment virtual
@@_$DCGC$@System@AnsiString@$bctr$qqrv	label	dword
	dd	@@$xt$p17System@AnsiString
	dd	5
	dd	-4
	dd	0
@_$DCGC$@System@AnsiString@$bctr$qqrv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTHC$@System@AnsiString@$bctr$qqrv	segment virtual
@@_$ECTHC$@System@AnsiString@$bctr$qqrv	label	dword
	dd	0
	dd	-40
	dw	0
	dw	5
	dd	0
	dd	@@_$DCGC$@System@AnsiString@$bctr$qqrv
@_$ECTHC$@System@AnsiString@$bctr$qqrv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@System@AnsiString@$bctr$qqrv	segment virtual
@@System@AnsiString@$bctr$qqrv	proc	near
?live16387@0:
	?debug	T "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\dstring.h"
	?debug L 60
	push      ebp
	mov       ebp,esp
	add       esp,-40
	mov       dword ptr [ebp-4],eax
@16:
	mov       eax,offset @@_$ECTHC$@System@AnsiString@$bctr$qqrv
	call      @__InitExceptBlockLDTC
	mov       word ptr [ebp-24],8
	mov       edx,dword ptr [ebp-4]
	xor       ecx,ecx
	mov       dword ptr [edx],ecx
	mov       eax,dword ptr [ebp-40]
	mov       dword ptr fs:[0],eax
	mov       eax,dword ptr [ebp-4]
	?debug L 60
@18:
@17:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@System@AnsiString@$bctr$qqrv	endp
@System@AnsiString@$bctr$qqrv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	76
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch23
	dd	?patch24
	dd	?patch25
	df	@@System@AnsiString@$bctr$qqrv
	dw	0
	dw	4126
	dw	0
	dw	29
	dw	0
	dw	0
	dw	0
	db	29
	db	64
	db	83
	db	121
	db	115
	db	116
	db	101
	db	109
	db	64
	db	65
	db	110
	db	115
	db	105
	db	83
	db	116
	db	114
	db	105
	db	110
	db	103
	db	64
	db	36
	db	98
	db	99
	db	116
	db	114
	db	36
	db	113
	db	113
	db	114
	db	118
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	4127
	dw	0
	dw	30
	dw	0
	dw	0
	dw	0
	dw	?patch26
	dw	529
	dw	?patch27
	dd	?live16387@0-@@System@AnsiString@$bctr$qqrv
	dd	?live16387@0-?live16387@0
	dw	17
?patch27	equ	1
?patch26	equ	14
?patch23	equ	@18-@@System@AnsiString@$bctr$qqrv+4
?patch24	equ	0
?patch25	equ	@18-@@System@AnsiString@$bctr$qqrv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@System@AnsiString@c_str$xqqrv	segment virtual
@@System@AnsiString@c_str$xqqrv	proc	near
?live16388@0:
	?debug L 153
	push      ebp
	mov       ebp,esp
	push      ecx
	mov       dword ptr [ebp-4],eax
@19:
	mov       eax,dword ptr [ebp-4]
	cmp       dword ptr [eax],0
	je        short @20
	mov       edx,dword ptr [ebp-4]
	mov       eax,dword ptr [edx]
	jmp       short @22
@20:
	mov       eax,offset s@+4
	?debug L 153
@23:
@22:
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@System@AnsiString@c_str$xqqrv	endp
@System@AnsiString@c_str$xqqrv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	77
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch28
	dd	?patch29
	dd	?patch30
	df	@@System@AnsiString@c_str$xqqrv
	dw	0
	dw	4129
	dw	0
	dw	31
	dw	0
	dw	0
	dw	0
	db	30
	db	64
	db	83
	db	121
	db	115
	db	116
	db	101
	db	109
	db	64
	db	65
	db	110
	db	115
	db	105
	db	83
	db	116
	db	114
	db	105
	db	110
	db	103
	db	64
	db	99
	db	95
	db	115
	db	116
	db	114
	db	36
	db	120
	db	113
	db	113
	db	114
	db	118
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	4130
	dw	0
	dw	32
	dw	0
	dw	0
	dw	0
	dw	?patch31
	dw	529
	dw	?patch32
	dd	?live16388@0-@@System@AnsiString@c_str$xqqrv
	dd	?live16388@0-?live16388@0
	dw	17
?patch32	equ	1
?patch31	equ	14
?patch28	equ	@23-@@System@AnsiString@c_str$xqqrv+3
?patch29	equ	0
?patch30	equ	@23-@@System@AnsiString@c_str$xqqrv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@$xt$p17System@AnsiString	segment virtual
@@$xt$p17System@AnsiString	label	dword
	dd	4
	dw	16
	dw	12
	dd	@@$xt$17System@AnsiString
	db	65
	db	110
	db	115
	db	105
	db	83
	db	116
	db	114
	db	105
	db	110
	db	103
	db	32
	db	42
	db	0
@$xt$p17System@AnsiString	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$p11Forms@TForm	segment virtual
@@$xt$p11Forms@TForm	label	dword
	dd	4
	dw	144
	dw	12
	dd	@@$xt$11Forms@TForm
	db	84
	db	70
	db	111
	db	114
	db	109
	db	32
	db	42
	db	0
@$xt$p11Forms@TForm	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$17System@AnsiString	segment virtual
@@$xt$17System@AnsiString	label	byte
	dd	4
	dw	3
	dw	48
	dd	-1
	dd	3
	dw	60
	dw	64
	dd	0
	dw	0
	dw	0
	dd	0
	dd	1
	dd	1
	dd	@@System@AnsiString@$bdtr$qqrv
	dw	3
	dw	68
	db	65
	db	110
	db	115
	db	105
	db	83
	db	116
	db	114
	db	105
	db	110
	db	103
	db	0
	db	0
	dd	0
	dd	0
	dd	0
@$xt$17System@AnsiString	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$p10TAboutForm	segment virtual
@@$xt$p10TAboutForm	label	dword
	dd	4
	dw	144
	dw	12
	dd	@@$xt$10TAboutForm
	db	84
	db	65
	db	98
	db	111
	db	117
	db	116
	db	70
	db	111
	db	114
	db	109
	db	32
	db	42
	db	0
@$xt$p10TAboutForm	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
@TAboutForm@	segment virtual
	align	2
@@TAboutForm@	label	byte
@@TAboutForm@	label	byte
	dd	@@TAboutForm@+76
	dd	0
	dd	0
	dd	0
	dd	@@$xp$10TAboutForm+4
	dd	@@TAboutForm@+288
	dd	@@TAboutForm@+379
	dd	0
	dd	@@TAboutForm@+400
	dd	732
	dd	@Forms@TForm@
	dd	@@Classes@TComponent@SafeCallException$qqrp14System@TObjectpv
	dd	@@Forms@TCustomForm@AfterConstruction$qqrv
	dd	@@Forms@TCustomForm@BeforeDestruction$qqrv
	dd	@@System@TObject@Dispatch$qqrpv
	dd	@@Forms@TCustomForm@DefaultHandler$qqrpv
	dd	@@System@TObject@NewInstance$qqrp17System@TMetaClass
	dd	@@System@TObject@FreeInstance$qqrv
	dd	@@TAboutForm@$bdtr$qqrv
	dd	@@Controls@TWinControl@AssignTo$qqrp19Classes@TPersistent
	dd	@@Forms@TCustomForm@DefineProperties$qqrp14Classes@TFiler
	dd	@@Classes@TPersistent@Assign$qqrp19Classes@TPersistent
	dd	@@Forms@TCustomForm@Loaded$qqrv
	dd	@@Forms@TCustomForm@Notification$qqrp18Classes@TComponent18Classes@TOperation
	dd	@@Forms@TCustomForm@ReadState$qqrp15Classes@TReader
	dd	@@Controls@TControl@SetName$qqrx17System@AnsiString
	dd	@@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2
	dd	@@Forms@TCustomForm@ValidateRename$qqrp18Classes@TComponentx17System@AnsiStringxt2
	dd	@@Classes@TComponent@WriteState$qqrp15Classes@TWriter
	dd	@@Forms@TCustomForm@QueryInterface$qqsrx5_GUIDpv
	dd	@@TAboutForm@$bctr$qqrp18Classes@TComponent
	dd	@@Controls@TWinControl@UpdateLastResize$qqrii
	dd	@@Controls@TWinControl@CanResize$qqrrit1
	dd	@@Controls@TWinControl@CanAutoSize$qqrrit1
	dd	@@Controls@TWinControl@ConstrainedResize$qqrrit1t1t1
	dd	@@Controls@TWinControl@GetClientOrigin$qqrv
	dd	@@Forms@TCustomForm@GetClientRect$qqrv
	dd	@@Controls@TWinControl@GetDeviceContext$qqrrpv
	dd	@@Controls@TControl@GetDragImages$qqrv
	dd	@@Controls@TControl@GetEnabled$qqrv
	dd	@@Forms@TCustomForm@GetFloating$qqrv
	dd	@@Controls@TControl@GetFloatingDockSiteClass$qqrv
	dd	@@Controls@TControl@SetDragMode$qqr18Controls@TDragMode
	dd	@@Controls@TControl@SetEnabled$qqr4bool
	dd	@@Forms@TCustomForm@SetParent$qqrp20Controls@TWinControl
	dd	@@Forms@TCustomForm@SetParentBiDiMode$qqr4bool
	dd	@@Controls@TControl@SetBiDiMode$qqr17Classes@TBiDiMode
	dd	@@Forms@TCustomForm@WndProc$qqrr17Messages@TMessage
	dd	@@Controls@TControl@InitiateAction$qqrv
	dd	@@Controls@TWinControl@Invalidate$qqrv
	dd	@@Controls@TWinControl@Repaint$qqrv
	dd	@@Controls@TWinControl@SetBounds$qqriiii
	dd	@@Controls@TWinControl@Update$qqrv
	dd	@@Forms@TScrollingWinControl@AdjustClientRect$qqrr13Windows@TRect
	dd	@@Forms@TCustomForm@AlignControls$qqrp17Controls@TControlr13Windows@TRect
	dd	@@Controls@TWinControl@CreateHandle$qqrv
	dd	@@Forms@TCustomForm@CreateParams$qqrr22Controls@TCreateParams
	dd	@@Forms@TCustomForm@CreateWindowHandle$qqrrx22Controls@TCreateParams
	dd	@@Forms@TCustomForm@CreateWnd$qqrv
	dd	@@Forms@TCustomForm@DestroyWindowHandle$qqrv
	dd	@@Controls@TWinControl@DestroyWnd$qqrv
	dd	@@Controls@TWinControl@GetControlExtents$qqrv
	dd	@@Forms@TCustomForm@PaintWindow$qqrpv
	dd	@@Controls@TWinControl@ShowControl$qqrp17Controls@TControl
	dd	@@Forms@TCustomForm@SetFocus$qqrv
	dd	@@Forms@TScrollingWinControl@AutoScrollEnabled$qqrv
	dd	@@Forms@TCustomForm@UpdateActions$qqrv
	dd	@@Forms@TForm@$bctr$qqrp18Classes@TComponenti
	dd	@@Forms@TCustomForm@CloseQuery$qqrv
	dd	@@Forms@TCustomForm@SetFocusedControl$qqrp20Controls@TWinControl
	dd	@@Forms@TCustomForm@ShowModal$qqrv
	dd	@@Forms@TCustomForm@WantChildKey$qqrp17Controls@TControlr17Messages@TMessage
	dw	6
	dd	@@TAboutForm@+411
	dd	708
	dw	0
	db	12
	db        86,101,114,115,105,111,110,76,97,98,101,108
	dd	712
	dw	0
	db	6
	db        76,97,98,101,108,49
	dd	716
	dw	1
	db	7
	db        66,117,116,116,111,110,49
	dd	720
	dw	0
	db	6
	db        76,97,98,101,108,50
	dd	724
	dw	0
	db	6
	db        76,97,98,101,108,51
	dd	728
	dw	0
	db	6
	db        76,97,98,101,108,52
	dw	1
	dw	19
	dd	@@TAboutForm@Button1Click$qqrp14System@TObject
	db	12
	db        66,117,116,116,111,110,49,67,108,105,99,107
	db	10
	db        84,65,98,111,117,116,70,111,114,109
	dw	2
	dd	@Stdctrls@TLabel@
	dd	@Stdctrls@TButton@
@TAboutForm@	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@$xp$10TAboutForm	segment virtual
	align	2
@@$xp$10TAboutForm	label	byte
	dd	@@$xp$10TAboutForm+4
	db	7
	db	10
	db        84,65,98,111,117,116,70,111,114,109
	dd	@@TAboutForm@+76
	dd	@$xp$11Forms@TForm
	dw	85
	db	5
	db        65,98,111,117,116
	dw	0
@$xp$10TAboutForm	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$10TAboutForm	segment virtual
@@$xt$10TAboutForm	label	byte
	dd	732
	dw	3
	dw	48
	dd	0
	dd	183
	dw	60
	dw	76
	dd	0
	dw	0
	dw	0
	dd	0
	dd	30
	dd	30
	dd	@@TAboutForm@$bdtr$qqrv
	dw	3
	dw	80
	db	84
	db	65
	db	98
	db	111
	db	117
	db	116
	db	70
	db	111
	db	114
	db	109
	db	0
	db	0
	dd	@@$xt$11Forms@TForm
	dd	0
	dd	3
	dd	0
	dd	0
	dd	0
@$xt$10TAboutForm	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$11Forms@TForm	segment virtual
@@$xt$11Forms@TForm	label	byte
	dd	708
	dw	3
	dw	48
	dd	0
	dd	183
	dw	56
	dw	72
	dd	0
	dw	0
	dw	0
	dd	0
	dd	29
	dd	29
	dd	@@Forms@TForm@$bdtr$qqrv
	dw	3
	dw	76
	db	84
	db	70
	db	111
	db	114
	db	109
	db	0
	db	0
	db	0
	dd	@@$xt$17Forms@TCustomForm
	dd	0
	dd	3
	dd	0
	dd	0
	dd	@@$xt$49System@%DelphiInterface$t21Controls@IDockManager%
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	0
	dd	0
@$xt$11Forms@TForm	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
@_$ECTIC$@TAboutForm@$bdtr$qqrv	segment virtual
@@_$ECTIC$@TAboutForm@$bdtr$qqrv	label	dword
	dd	0
	dd	-36
@_$ECTIC$@TAboutForm@$bdtr$qqrv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@TAboutForm@$bdtr$qqrv	segment virtual
@@TAboutForm@$bdtr$qqrv	proc	near
?live16404@0:
	?debug L 0
	push      ebp
	mov       ebp,esp
	add       esp,-44
	call      __BeforeDestruction
	mov       byte ptr [ebp-41],dl
	mov       dword ptr [ebp-40],eax
@24:
	mov       eax,offset @@_$ECTIC$@TAboutForm@$bdtr$qqrv
	call      @__InitExceptBlockLDTC
	cmp       byte ptr [ebp-41],0
	jl        short @25
	sub       dword ptr [ebp-8],29
	xor       edx,edx
	mov       eax,dword ptr [ebp-40]
	call      @@Forms@TForm@$bdtr$qqrv
@25:
@26:
	mov       edx,dword ptr [ebp-36]
	mov       dword ptr fs:[0],edx
@28:
@27:
	cmp       byte ptr [ebp-41],0
	jle       short @29
	mov       eax,dword ptr [ebp-40]
	call      __ClassDestroy
	?debug L 153
@29:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@TAboutForm@$bdtr$qqrv	endp
@TAboutForm@$bdtr$qqrv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	69
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch33
	dd	?patch34
	dd	?patch35
	df	@@TAboutForm@$bdtr$qqrv
	dw	0
	dw	4133
	dw	0
	dw	33
	dw	0
	dw	0
	dw	0
	db	22
	db	64
	db	84
	db	65
	db	98
	db	111
	db	117
	db	116
	db	70
	db	111
	db	114
	db	109
	db	64
	db	36
	db	98
	db	100
	db	116
	db	114
	db	36
	db	113
	db	113
	db	114
	db	118
	dw	18
	dw	512
	dw	65496
	dw	65535
	dw	4102
	dw	0
	dw	34
	dw	0
	dw	0
	dw	0
	dw	?patch36
	dw	529
	dw	?patch37
	dd	?live16404@0-@@TAboutForm@$bdtr$qqrv
	dd	?live16404@0-?live16404@0
	dw	17
?patch37	equ	1
?patch36	equ	14
?patch33	equ	@28-@@TAboutForm@$bdtr$qqrv+18
?patch34	equ	0
?patch35	equ	@28-@@TAboutForm@$bdtr$qqrv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCJC$@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2	segment virtual
@@_$DCJC$@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2	label	dword
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-4
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	8
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-8
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-12
	dd	0
@_$DCJC$@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTKC$@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2	segment virtual
@@_$ECTKC$@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2	label	dword
	dd	0
	dd	-48
	dw	0
	dw	5
	dd	2
	dd	@@_$DCJC$@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2
	dw	8
	dw	5
	dd	4
	dd	@@_$DCJC$@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2+28
@_$ECTKC$@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2	segment virtual
@@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2	proc	near
?live16405@0:
	?debug	T "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\classes.hpp"
	?debug L 2094
	push      ebp
	mov       ebp,esp
	add       esp,-56
	mov       dword ptr [ebp-4],ecx
	mov       byte ptr [ebp-53],dl
	mov       dword ptr [ebp-52],eax
@30:
	mov       eax,offset @@_$ECTKC$@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2
	call      @__InitExceptBlockLDTC
	mov       dword ptr [ebp-20],2
	lea       edx,dword ptr [ebp-4]
	lea       eax,dword ptr [ebp-4]
	call      @@System@AnsiString@$bctr$qqrrx17System@AnsiString
	inc       dword ptr [ebp-20]
	?debug L 2095
	mov       word ptr [ebp-32],8
	lea       edx,dword ptr [ebp+8]
	lea       eax,dword ptr [ebp+8]
	call      @@System@AnsiString@$bctr$qqrrx17System@AnsiString
	inc       dword ptr [ebp-20]
	lea       edx,dword ptr [ebp+8]
	lea       eax,dword ptr [ebp-12]
	call      @@System@AnsiString@$bctr$qqrrx17System@AnsiString
	inc       dword ptr [ebp-20]
	push      dword ptr [eax]
	mov       word ptr [ebp-32],20
	lea       edx,dword ptr [ebp-4]
	lea       eax,dword ptr [ebp-8]
	call      @@System@AnsiString@$bctr$qqrrx17System@AnsiString
	inc       dword ptr [ebp-20]
	mov       ecx,dword ptr [eax]
	mov       dl,byte ptr [ebp-53]
	mov       eax,dword ptr [@Classes@TComponent@]
	call      @@Classes@TComponent@UpdateRegistry$qqrp17System@TMetaClass4boolx17System@AnsiStringxt3
	dec       dword ptr [ebp-20]
	lea       eax,dword ptr [ebp-12]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-20]
	lea       eax,dword ptr [ebp-8]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-20]
	lea       eax,dword ptr [ebp+8]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-20]
	lea       eax,dword ptr [ebp-4]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       ecx,dword ptr [ebp-48]
	mov       dword ptr fs:[0],ecx
	?debug L 2095
@31:
	mov       esp,ebp
	pop       ebp
	ret       4
	?debug L 0
@@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2	endp
@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	113
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch38
	dd	?patch39
	dd	?patch40
	df	@@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2
	dw	0
	dw	4135
	dw	0
	dw	35
	dw	0
	dw	0
	dw	0
	db	66
	db	64
	db	67
	db	108
	db	97
	db	115
	db	115
	db	101
	db	115
	db	64
	db	84
	db	67
	db	111
	db	109
	db	112
	db	111
	db	110
	db	101
	db	110
	db	116
	db	64
	db	85
	db	112
	db	100
	db	97
	db	116
	db	101
	db	82
	db	101
	db	103
	db	105
	db	115
	db	116
	db	114
	db	121
	db	36
	db	113
	db	113
	db	114
	db	52
	db	98
	db	111
	db	111
	db	108
	db	120
	db	49
	db	55
	db	83
	db	121
	db	115
	db	116
	db	101
	db	109
	db	64
	db	65
	db	110
	db	115
	db	105
	db	83
	db	116
	db	114
	db	105
	db	110
	db	103
	db	120
	db	116
	db	50
	dw	18
	dw	512
	dw	65484
	dw	65535
	dw	4136
	dw	0
	dw	36
	dw	0
	dw	0
	dw	0
	dw	?patch41
	dw	529
	dw	?patch42
	dd	?live16405@0-@@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2
	dd	?live16405@0-?live16405@0
	dw	17
?patch42	equ	1
?patch41	equ	14
	dw	18
	dw	512
	dw	65483
	dw	65535
	dw	48
	dw	0
	dw	37
	dw	0
	dw	0
	dw	0
	dw	?patch43
	dw	529
	dw	?patch44
	dd	?live16405@0-@@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2
	dd	?live16405@0-?live16405@0
	dw	3
?patch44	equ	1
?patch43	equ	14
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	4131
	dw	0
	dw	38
	dw	0
	dw	0
	dw	0
	dw	?patch45
	dw	529
	dw	?patch46
	dd	?live16405@0-@@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2
	dd	?live16405@0-?live16405@0
	dw	0
?patch46	equ	1
?patch45	equ	14
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4131
	dw	0
	dw	39
	dw	0
	dw	0
	dw	0
?patch38	equ	@31-@@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2+6
?patch39	equ	0
?patch40	equ	@31-@@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCLC$@Forms@TForm@$bctr$qqrp18Classes@TComponenti	segment virtual
@@_$DCLC$@Forms@TForm@$bctr$qqrp18Classes@TComponenti	label	dword
	dd	@@$xt$p11Forms@TForm
	dd	1029
	dd	-4
	dd	0
@_$DCLC$@Forms@TForm@$bctr$qqrp18Classes@TComponenti	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTMC$@Forms@TForm@$bctr$qqrp18Classes@TComponenti	segment virtual
@@_$ECTMC$@Forms@TForm@$bctr$qqrp18Classes@TComponenti	label	dword
	dd	0
	dd	-40
	dw	0
	dw	5
	dd	0
	dd	@@_$DCLC$@Forms@TForm@$bctr$qqrp18Classes@TComponenti
@_$ECTMC$@Forms@TForm@$bctr$qqrp18Classes@TComponenti	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@Forms@TForm@$bctr$qqrp18Classes@TComponenti	segment virtual
@@Forms@TForm@$bctr$qqrp18Classes@TComponenti	proc	near
?live16406@0:
	?debug	T "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\forms.hpp"
	?debug L 831
	push      ebp
	mov       ebp,esp
	add       esp,-48
	mov       byte ptr [ebp-8],dl
	test      dl,dl
	jle       short @32
	call      __ClassCreate
@32:
	mov       dword ptr [ebp-48],ecx
	mov       byte ptr [ebp-41],dl
	mov       dword ptr [ebp-4],eax
@33:
	mov       eax,offset @@_$ECTMC$@Forms@TForm@$bctr$qqrp18Classes@TComponenti
	call      @__InitExceptBlockLDTC
	?debug L 832
	mov       word ptr [ebp-24],8
	push      dword ptr [ebp+8]
	mov       ecx,dword ptr [ebp-48]
	xor       edx,edx
	mov       eax,dword ptr [ebp-4]
	call      @@Forms@TCustomForm@$bctr$qqrp18Classes@TComponenti
	add       dword ptr [ebp-12],25
	mov       edx,dword ptr [ebp-40]
	mov       dword ptr fs:[0],edx
	mov       eax,dword ptr [ebp-4]
@35:
@34:
	cmp       byte ptr [ebp-41],0
	je        short @36
	call      __AfterConstruction
	?debug L 832
@36:
	mov       esp,ebp
	pop       ebp
	ret       4
	?debug L 0
@@Forms@TForm@$bctr$qqrp18Classes@TComponenti	endp
@Forms@TForm@$bctr$qqrp18Classes@TComponenti	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	91
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch47
	dd	?patch48
	dd	?patch49
	df	@@Forms@TForm@$bctr$qqrp18Classes@TComponenti
	dw	0
	dw	4138
	dw	0
	dw	40
	dw	0
	dw	0
	dw	0
	db	44
	db	64
	db	70
	db	111
	db	114
	db	109
	db	115
	db	64
	db	84
	db	70
	db	111
	db	114
	db	109
	db	64
	db	36
	db	98
	db	99
	db	116
	db	114
	db	36
	db	113
	db	113
	db	114
	db	112
	db	49
	db	56
	db	67
	db	108
	db	97
	db	115
	db	115
	db	101
	db	115
	db	64
	db	84
	db	67
	db	111
	db	109
	db	112
	db	111
	db	110
	db	101
	db	110
	db	116
	db	105
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	4124
	dw	0
	dw	41
	dw	0
	dw	0
	dw	0
	dw	?patch50
	dw	529
	dw	?patch51
	dd	?live16406@0-@@Forms@TForm@$bctr$qqrp18Classes@TComponenti
	dd	?live16406@0-?live16406@0
	dw	17
?patch51	equ	1
?patch50	equ	14
	dw	18
	dw	512
	dw	65488
	dw	65535
	dw	65531
	dw	65535
	dw	42
	dw	0
	dw	0
	dw	0
	dw	?patch52
	dw	529
	dw	?patch53
	dd	?live16406@0-@@Forms@TForm@$bctr$qqrp18Classes@TComponenti
	dd	?live16406@0-?live16406@0
	dw	18
?patch53	equ	1
?patch52	equ	14
	dw	18
	dw	512
	dw	8
	dw	0
	dw	116
	dw	0
	dw	43
	dw	0
	dw	0
	dw	0
?patch47	equ	@35-@@Forms@TForm@$bctr$qqrp18Classes@TComponenti+17
?patch48	equ	0
?patch49	equ	@35-@@Forms@TForm@$bctr$qqrp18Classes@TComponenti
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCNC$@Forms@TForm@$bdtr$qqrv	segment virtual
@@_$DCNC$@Forms@TForm@$bdtr$qqrv	label	dword
	dd	@@$xt$p11Forms@TForm
	dd	1029
	dd	-4
	dd	0
@_$DCNC$@Forms@TForm@$bdtr$qqrv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTOC$@Forms@TForm@$bdtr$qqrv	segment virtual
@@_$ECTOC$@Forms@TForm@$bdtr$qqrv	label	dword
	dd	0
	dd	-40
	dw	0
	dw	5
	dd	0
	dd	@@_$DCNC$@Forms@TForm@$bdtr$qqrv
@_$ECTOC$@Forms@TForm@$bdtr$qqrv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@Forms@TForm@$bdtr$qqrv	segment virtual
@@Forms@TForm@$bdtr$qqrv	proc	near
?live16407@0:
	?debug L 835
	push      ebp
	mov       ebp,esp
	add       esp,-44
	call      __BeforeDestruction
	mov       byte ptr [ebp-41],dl
	mov       dword ptr [ebp-4],eax
@37:
	mov       eax,offset @@_$ECTOC$@Forms@TForm@$bdtr$qqrv
	call      @__InitExceptBlockLDTC
	mov       dword ptr [ebp-12],28
	cmp       byte ptr [ebp-41],0
	jl        short @38
	mov       word ptr [ebp-24],8
	sub       dword ptr [ebp-12],25
	xor       edx,edx
	mov       eax,dword ptr [ebp-4]
	call      @@Forms@TCustomForm@$bdtr$qqrv
@38:
	mov       edx,dword ptr [ebp-40]
	mov       dword ptr fs:[0],edx
@39:
	cmp       byte ptr [ebp-41],0
	jle       short @40
	mov       eax,dword ptr [ebp-4]
	call      __ClassDestroy
	?debug L 835
@40:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@Forms@TForm@$bdtr$qqrv	endp
@Forms@TForm@$bdtr$qqrv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	70
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch54
	dd	?patch55
	dd	?patch56
	df	@@Forms@TForm@$bdtr$qqrv
	dw	0
	dw	4140
	dw	0
	dw	44
	dw	0
	dw	0
	dw	0
	db	23
	db	64
	db	70
	db	111
	db	114
	db	109
	db	115
	db	64
	db	84
	db	70
	db	111
	db	114
	db	109
	db	64
	db	36
	db	98
	db	100
	db	116
	db	114
	db	36
	db	113
	db	113
	db	114
	db	118
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	4124
	dw	0
	dw	45
	dw	0
	dw	0
	dw	0
	dw	?patch57
	dw	529
	dw	?patch58
	dd	?live16407@0-@@Forms@TForm@$bdtr$qqrv
	dd	?live16407@0-?live16407@0
	dw	17
?patch58	equ	1
?patch57	equ	14
?patch54	equ	@39-@@Forms@TForm@$bdtr$qqrv+18
?patch55	equ	0
?patch56	equ	@39-@@Forms@TForm@$bdtr$qqrv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@$xt$49System@%DelphiInterface$t21Controls@IDockManager%	segment virtual
@@$xt$49System@%DelphiInterface$t21Controls@IDockManager%	label	byte
	dd	4
	dw	3
	dw	48
	dd	-1
	dd	3
	dw	68
	dw	72
	dd	0
	dw	0
	dw	0
	dd	0
	dd	1
	dd	1
	dd	@@System@%DelphiInterface$t21Controls@IDockManager%@$bdtr$qqrv
	dw	3
	dw	76
	db	95
	db	100
	db	105
	db	95
	db	73
	db	68
	db	111
	db	99
	db	107
	db	77
	db	97
	db	110
	db	97
	db	103
	db	101
	db	114
	db	0
	db	0
	db	0
	db	0
	dd	0
	dd	0
	dd	0
@$xt$49System@%DelphiInterface$t21Controls@IDockManager%	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$17Forms@TCustomForm	segment virtual
@@$xt$17Forms@TCustomForm	label	byte
	dd	708
	dw	3
	dw	48
	dd	0
	dd	183
	dw	60
	dw	76
	dd	0
	dw	0
	dw	0
	dd	0
	dd	25
	dd	25
	dd	@@Forms@TCustomForm@$bdtr$qqrv
	dw	3
	dw	80
	db	84
	db	67
	db	117
	db	115
	db	116
	db	111
	db	109
	db	70
	db	111
	db	114
	db	109
	db	0
	dd	@@$xt$26Forms@TScrollingWinControl
	dd	0
	dd	3
	dd	0
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	540
	dd	@@$xt$43System@%DelphiInterface$t15Forms@IDesigner%
	dd	560
	dd	@@$xt$42System@%DelphiInterface$t14Forms@IOleForm%
	dd	580
	dd	@@$xt$17System@AnsiString
	dd	0
	dd	@@$xt$43System@%DelphiInterface$t15Forms@IDesigner%
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	0
	dd	@@$xt$42System@%DelphiInterface$t14Forms@IOleForm%
	dd	0
	dd	0
@$xt$17Forms@TCustomForm	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@System@%DelphiInterface$t21Controls@IDockManager%@$bdtr$qqrv	segment virtual
@@System@%DelphiInterface$t21Controls@IDockManager%@$bdtr$qqrv	proc	near
?live16420@0:
	?debug	T "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\systobj.h"
	?debug L 224
	push      ebp
	mov       ebp,esp
	add       esp,-8
	mov       dword ptr [ebp-8],edx
	mov       dword ptr [ebp-4],eax
@41:
	cmp       dword ptr [ebp-4],0
	je        short @42
	?debug L 225
	mov       eax,dword ptr [ebp-4]
	cmp       dword ptr [eax],0
	je        short @43
	?debug L 226
	mov       edx,dword ptr [ebp-4]
	mov       ecx,dword ptr [edx]
	push      ecx
	mov       eax,dword ptr [ecx]
	call      dword ptr [eax+8]
	?debug L 227
@43:
	mov       edx,dword ptr [ebp-4]
	xor       ecx,ecx
	mov       dword ptr [edx],ecx
	test      byte ptr [ebp-8],1
	je        short @44
	push      dword ptr [ebp-4]
	call      @$bdele$qpv
	pop       ecx
	?debug L 228
@44:
@42:
@45:
	pop       ecx
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@System@%DelphiInterface$t21Controls@IDockManager%@$bdtr$qqrv	endp
@System@%DelphiInterface$t21Controls@IDockManager%@$bdtr$qqrv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	108
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch59
	dd	?patch60
	dd	?patch61
	df	@@System@%DelphiInterface$t21Controls@IDockManager%@$bdtr$qqrv
	dw	0
	dw	4154
	dw	0
	dw	57
	dw	0
	dw	0
	dw	0
	db	61
	db	64
	db	83
	db	121
	db	115
	db	116
	db	101
	db	109
	db	64
	db	37
	db	68
	db	101
	db	108
	db	112
	db	104
	db	105
	db	73
	db	110
	db	116
	db	101
	db	114
	db	102
	db	97
	db	99
	db	101
	db	36
	db	116
	db	50
	db	49
	db	67
	db	111
	db	110
	db	116
	db	114
	db	111
	db	108
	db	115
	db	64
	db	73
	db	68
	db	111
	db	99
	db	107
	db	77
	db	97
	db	110
	db	97
	db	103
	db	101
	db	114
	db	37
	db	64
	db	36
	db	98
	db	100
	db	116
	db	114
	db	36
	db	113
	db	113
	db	114
	db	118
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	4146
	dw	0
	dw	58
	dw	0
	dw	0
	dw	0
	dw	?patch62
	dw	529
	dw	?patch63
	dd	?live16420@0-@@System@%DelphiInterface$t21Controls@IDockManager%@$bdtr$qqrv
	dd	?live16420@0-?live16420@0
	dw	17
?patch63	equ	1
?patch62	equ	14
?patch59	equ	@45-@@System@%DelphiInterface$t21Controls@IDockManager%@$bdtr$qqrv+4
?patch60	equ	0
?patch61	equ	@45-@@System@%DelphiInterface$t21Controls@IDockManager%@$bdtr$qqrv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@$xt$42System@%DelphiInterface$t14Forms@IOleForm%	segment virtual
@@$xt$42System@%DelphiInterface$t14Forms@IOleForm%	label	byte
	dd	4
	dw	3
	dw	48
	dd	-1
	dd	3
	dw	64
	dw	68
	dd	0
	dw	0
	dw	0
	dd	0
	dd	1
	dd	1
	dd	@@System@%DelphiInterface$t14Forms@IOleForm%@$bdtr$qqrv
	dw	3
	dw	72
	db	95
	db	100
	db	105
	db	95
	db	73
	db	79
	db	108
	db	101
	db	70
	db	111
	db	114
	db	109
	db	0
	db	0
	db	0
	db	0
	dd	0
	dd	0
	dd	0
@$xt$42System@%DelphiInterface$t14Forms@IOleForm%	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$43System@%DelphiInterface$t15Forms@IDesigner%	segment virtual
@@$xt$43System@%DelphiInterface$t15Forms@IDesigner%	label	byte
	dd	4
	dw	3
	dw	48
	dd	-1
	dd	3
	dw	64
	dw	68
	dd	0
	dw	0
	dw	0
	dd	0
	dd	1
	dd	1
	dd	@@System@%DelphiInterface$t15Forms@IDesigner%@$bdtr$qqrv
	dw	3
	dw	72
	db	95
	db	100
	db	105
	db	95
	db	73
	db	68
	db	101
	db	115
	db	105
	db	103
	db	110
	db	101
	db	114
	db	0
	db	0
	db	0
	dd	0
	dd	0
	dd	0
@$xt$43System@%DelphiInterface$t15Forms@IDesigner%	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$26Forms@TScrollingWinControl	segment virtual
@@$xt$26Forms@TScrollingWinControl	label	byte
	dd	512
	dw	3
	dw	48
	dd	0
	dd	183
	dw	72
	dw	88
	dd	0
	dw	0
	dw	0
	dd	0
	dd	17
	dd	17
	dd	@@Forms@TScrollingWinControl@$bdtr$qqrv
	dw	3
	dw	92
	db	84
	db	83
	db	99
	db	114
	db	111
	db	108
	db	108
	db	105
	db	110
	db	103
	db	87
	db	105
	db	110
	db	67
	db	111
	db	110
	db	116
	db	114
	db	111
	db	108
	db	0
	db	0
	db	0
	db	0
	dd	@@$xt$20Controls@TWinControl
	dd	0
	dd	3
	dd	0
	dd	0
	dd	0
@$xt$26Forms@TScrollingWinControl	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@System@%DelphiInterface$t14Forms@IOleForm%@$bdtr$qqrv	segment virtual
@@System@%DelphiInterface$t14Forms@IOleForm%@$bdtr$qqrv	proc	near
?live16422@0:
	?debug L 224
	push      ebp
	mov       ebp,esp
	add       esp,-8
	mov       dword ptr [ebp-8],edx
	mov       dword ptr [ebp-4],eax
@46:
	cmp       dword ptr [ebp-4],0
	je        short @47
	?debug L 225
	mov       eax,dword ptr [ebp-4]
	cmp       dword ptr [eax],0
	je        short @48
	?debug L 226
	mov       edx,dword ptr [ebp-4]
	mov       ecx,dword ptr [edx]
	push      ecx
	mov       eax,dword ptr [ecx]
	call      dword ptr [eax+8]
	?debug L 227
@48:
	mov       edx,dword ptr [ebp-4]
	xor       ecx,ecx
	mov       dword ptr [edx],ecx
	test      byte ptr [ebp-8],1
	je        short @49
	push      dword ptr [ebp-4]
	call      @$bdele$qpv
	pop       ecx
	?debug L 228
@49:
@47:
@50:
	pop       ecx
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@System@%DelphiInterface$t14Forms@IOleForm%@$bdtr$qqrv	endp
@System@%DelphiInterface$t14Forms@IOleForm%@$bdtr$qqrv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	101
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch64
	dd	?patch65
	dd	?patch66
	df	@@System@%DelphiInterface$t14Forms@IOleForm%@$bdtr$qqrv
	dw	0
	dw	4197
	dw	0
	dw	70
	dw	0
	dw	0
	dw	0
	db	54
	db	64
	db	83
	db	121
	db	115
	db	116
	db	101
	db	109
	db	64
	db	37
	db	68
	db	101
	db	108
	db	112
	db	104
	db	105
	db	73
	db	110
	db	116
	db	101
	db	114
	db	102
	db	97
	db	99
	db	101
	db	36
	db	116
	db	49
	db	52
	db	70
	db	111
	db	114
	db	109
	db	115
	db	64
	db	73
	db	79
	db	108
	db	101
	db	70
	db	111
	db	114
	db	109
	db	37
	db	64
	db	36
	db	98
	db	100
	db	116
	db	114
	db	36
	db	113
	db	113
	db	114
	db	118
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	4189
	dw	0
	dw	71
	dw	0
	dw	0
	dw	0
	dw	?patch67
	dw	529
	dw	?patch68
	dd	?live16422@0-@@System@%DelphiInterface$t14Forms@IOleForm%@$bdtr$qqrv
	dd	?live16422@0-?live16422@0
	dw	17
?patch68	equ	1
?patch67	equ	14
?patch64	equ	@50-@@System@%DelphiInterface$t14Forms@IOleForm%@$bdtr$qqrv+4
?patch65	equ	0
?patch66	equ	@50-@@System@%DelphiInterface$t14Forms@IOleForm%@$bdtr$qqrv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@System@%DelphiInterface$t15Forms@IDesigner%@$bdtr$qqrv	segment virtual
@@System@%DelphiInterface$t15Forms@IDesigner%@$bdtr$qqrv	proc	near
?live16423@0:
	?debug L 224
	push      ebp
	mov       ebp,esp
	add       esp,-8
	mov       dword ptr [ebp-8],edx
	mov       dword ptr [ebp-4],eax
@51:
	cmp       dword ptr [ebp-4],0
	je        short @52
	?debug L 225
	mov       eax,dword ptr [ebp-4]
	cmp       dword ptr [eax],0
	je        short @53
	?debug L 226
	mov       edx,dword ptr [ebp-4]
	mov       ecx,dword ptr [edx]
	push      ecx
	mov       eax,dword ptr [ecx]
	call      dword ptr [eax+8]
	?debug L 227
@53:
	mov       edx,dword ptr [ebp-4]
	xor       ecx,ecx
	mov       dword ptr [edx],ecx
	test      byte ptr [ebp-8],1
	je        short @54
	push      dword ptr [ebp-4]
	call      @$bdele$qpv
	pop       ecx
	?debug L 228
@54:
@52:
@55:
	pop       ecx
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@System@%DelphiInterface$t15Forms@IDesigner%@$bdtr$qqrv	endp
@System@%DelphiInterface$t15Forms@IDesigner%@$bdtr$qqrv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	102
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch69
	dd	?patch70
	dd	?patch71
	df	@@System@%DelphiInterface$t15Forms@IDesigner%@$bdtr$qqrv
	dw	0
	dw	4240
	dw	0
	dw	83
	dw	0
	dw	0
	dw	0
	db	55
	db	64
	db	83
	db	121
	db	115
	db	116
	db	101
	db	109
	db	64
	db	37
	db	68
	db	101
	db	108
	db	112
	db	104
	db	105
	db	73
	db	110
	db	116
	db	101
	db	114
	db	102
	db	97
	db	99
	db	101
	db	36
	db	116
	db	49
	db	53
	db	70
	db	111
	db	114
	db	109
	db	115
	db	64
	db	73
	db	68
	db	101
	db	115
	db	105
	db	103
	db	110
	db	101
	db	114
	db	37
	db	64
	db	36
	db	98
	db	100
	db	116
	db	114
	db	36
	db	113
	db	113
	db	114
	db	118
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	4232
	dw	0
	dw	84
	dw	0
	dw	0
	dw	0
	dw	?patch72
	dw	529
	dw	?patch73
	dd	?live16423@0-@@System@%DelphiInterface$t15Forms@IDesigner%@$bdtr$qqrv
	dd	?live16423@0-?live16423@0
	dw	17
?patch73	equ	1
?patch72	equ	14
?patch69	equ	@55-@@System@%DelphiInterface$t15Forms@IDesigner%@$bdtr$qqrv+4
?patch70	equ	0
?patch71	equ	@55-@@System@%DelphiInterface$t15Forms@IDesigner%@$bdtr$qqrv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@$xt$20Controls@TWinControl	segment virtual
@@$xt$20Controls@TWinControl	label	byte
	dd	492
	dw	3
	dw	48
	dd	0
	dd	183
	dw	60
	dw	76
	dd	0
	dw	0
	dw	0
	dd	0
	dd	16
	dd	16
	dd	@@Controls@TWinControl@$bdtr$qqrv
	dw	3
	dw	80
	db	84
	db	87
	db	105
	db	110
	db	67
	db	111
	db	110
	db	116
	db	114
	db	111
	db	108
	db	0
	dd	@@$xt$17Controls@TControl
	dd	0
	dd	3
	dd	0
	dd	0
	dd	@@$xt$49System@%DelphiInterface$t21Controls@IDockManager%
	dd	316
	dd	@@$xt$17System@AnsiString
	dd	332
	dd	@@$xt$49System@%DelphiInterface$t21Controls@IDockManager%
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	0
	dd	0
@$xt$20Controls@TWinControl	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$17Controls@TControl	segment virtual
@@$xt$17Controls@TControl	label	byte
	dd	276
	dw	3
	dw	48
	dd	0
	dd	183
	dw	60
	dw	76
	dd	0
	dw	0
	dw	0
	dd	0
	dd	11
	dd	11
	dd	@@Controls@TControl@$bdtr$qqrv
	dw	3
	dw	80
	db	84
	db	67
	db	111
	db	110
	db	116
	db	114
	db	111
	db	108
	db	0
	db	0
	db	0
	db	0
	dd	@@$xt$18Classes@TComponent
	dd	0
	dd	3
	dd	0
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	116
	dd	@@$xt$17System@AnsiString
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	0
	dd	0
@$xt$17Controls@TControl	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$18Classes@TComponent	segment virtual
@@$xt$18Classes@TComponent	label	byte
	dd	36
	dw	3
	dw	48
	dd	0
	dd	183
	dw	60
	dw	76
	dd	0
	dw	0
	dw	0
	dd	0
	dd	6
	dd	6
	dd	@@Classes@TComponent@$bdtr$qqrv
	dw	3
	dw	80
	db	84
	db	67
	db	111
	db	109
	db	112
	db	111
	db	110
	db	101
	db	110
	db	116
	db	0
	db	0
	dd	@@$xt$19Classes@TPersistent
	dd	0
	dd	3
	dd	0
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	8
	dd	@@$xt$35System@%DelphiInterface$t8IUnknown%
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	0
	dd	0
@$xt$18Classes@TComponent	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$35System@%DelphiInterface$t8IUnknown%	segment virtual
@@$xt$35System@%DelphiInterface$t8IUnknown%	label	byte
	dd	4
	dw	3
	dw	48
	dd	-1
	dd	3
	dw	64
	dw	68
	dd	0
	dw	0
	dw	0
	dd	0
	dd	1
	dd	1
	dd	@@System@%DelphiInterface$t8IUnknown%@$bdtr$qqrv
	dw	3
	dw	72
	db	95
	db	100
	db	105
	db	95
	db	73
	db	85
	db	110
	db	107
	db	110
	db	111
	db	119
	db	110
	db	0
	db	0
	db	0
	db	0
	dd	0
	dd	0
	dd	0
@$xt$35System@%DelphiInterface$t8IUnknown%	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$19Classes@TPersistent	segment virtual
@@$xt$19Classes@TPersistent	label	byte
	dd	4
	dw	3
	dw	48
	dd	0
	dd	183
	dw	60
	dw	76
	dd	0
	dw	0
	dw	0
	dd	0
	dd	2
	dd	2
	dd	@@Classes@TPersistent@$bdtr$qqrv
	dw	3
	dw	80
	db	84
	db	80
	db	101
	db	114
	db	115
	db	105
	db	115
	db	116
	db	101
	db	110
	db	116
	db	0
	dd	@@$xt$14System@TObject
	dd	0
	dd	3
	dd	0
	dd	0
	dd	0
@$xt$19Classes@TPersistent	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@System@%DelphiInterface$t8IUnknown%@$bdtr$qqrv	segment virtual
@@System@%DelphiInterface$t8IUnknown%@$bdtr$qqrv	proc	near
?live16429@0:
	?debug L 224
	push      ebp
	mov       ebp,esp
	add       esp,-8
	mov       dword ptr [ebp-8],edx
	mov       dword ptr [ebp-4],eax
@56:
	cmp       dword ptr [ebp-4],0
	je        short @57
	?debug L 225
	mov       eax,dword ptr [ebp-4]
	cmp       dword ptr [eax],0
	je        short @58
	?debug L 226
	mov       edx,dword ptr [ebp-4]
	mov       ecx,dword ptr [edx]
	push      ecx
	mov       eax,dword ptr [ecx]
	call      dword ptr [eax+8]
	?debug L 227
@58:
	mov       edx,dword ptr [ebp-4]
	xor       ecx,ecx
	mov       dword ptr [edx],ecx
	test      byte ptr [ebp-8],1
	je        short @59
	push      dword ptr [ebp-4]
	call      @$bdele$qpv
	pop       ecx
	?debug L 228
@59:
@57:
@60:
	pop       ecx
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@System@%DelphiInterface$t8IUnknown%@$bdtr$qqrv	endp
@System@%DelphiInterface$t8IUnknown%@$bdtr$qqrv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	94
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch74
	dd	?patch75
	dd	?patch76
	df	@@System@%DelphiInterface$t8IUnknown%@$bdtr$qqrv
	dw	0
	dw	4283
	dw	0
	dw	96
	dw	0
	dw	0
	dw	0
	db	47
	db	64
	db	83
	db	121
	db	115
	db	116
	db	101
	db	109
	db	64
	db	37
	db	68
	db	101
	db	108
	db	112
	db	104
	db	105
	db	73
	db	110
	db	116
	db	101
	db	114
	db	102
	db	97
	db	99
	db	101
	db	36
	db	116
	db	56
	db	73
	db	85
	db	110
	db	107
	db	110
	db	111
	db	119
	db	110
	db	37
	db	64
	db	36
	db	98
	db	100
	db	116
	db	114
	db	36
	db	113
	db	113
	db	114
	db	118
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	4275
	dw	0
	dw	97
	dw	0
	dw	0
	dw	0
	dw	?patch77
	dw	529
	dw	?patch78
	dd	?live16429@0-@@System@%DelphiInterface$t8IUnknown%@$bdtr$qqrv
	dd	?live16429@0-?live16429@0
	dw	17
?patch78	equ	1
?patch77	equ	14
?patch74	equ	@60-@@System@%DelphiInterface$t8IUnknown%@$bdtr$qqrv+4
?patch75	equ	0
?patch76	equ	@60-@@System@%DelphiInterface$t8IUnknown%@$bdtr$qqrv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@$xt$14System@TObject	segment virtual
@@$xt$14System@TObject	label	byte
	dd	4
	dw	3
	dw	48
	dd	0
	dd	179
	dw	56
	dw	60
	dd	0
	dw	0
	dw	0
	dd	0
	dd	1
	dd	1
	dd	@@System@TObject@$bdtr$qqrv
	dw	3
	dw	64
	db	84
	db	79
	db	98
	db	106
	db	101
	db	99
	db	116
	db	0
	dd	0
	dd	0
	dd	0
@$xt$14System@TObject	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
s@	label	byte
	;	s@+0:
	db	"\",0
	;	s@+2:
	db	".",0,0
	align	4
_DATA	ends
_TEXT	segment dword public use32 'CODE'
_TEXT	ends
	?debug	C FB041240466F726D73404170706C69636174696F6E01000000
	?debug	C FB040C405441626F7574466F726D4004000000
	?debug	C FB0411402478702431305441626F7574466F726D04000000
	?debug	C FB040D40466F726D734054466F726D4004000000
	?debug	C FB0411405374646374726C7340544C6162656C4004000000
	?debug	C FB0412405374646374726C734054427574746F6E4004000000
	?debug	C FB041240247870243131466F726D734054466F726D04000000
	?debug	C FB041440436C61737365734054436F6D706F6E656E744004000000
	publicdll	_AboutForm
@@Forms@TApplication@GetExeName$qqrv	equ	@Forms@TApplication@GetExeName$qqrv
	extrn	@Forms@TApplication@GetExeName$qqrv:near
	extrn	@Forms@Application:dword
@GetFileVersionInfoSizeA	equ	GetFileVersionInfoSizeA
	extrn	GetFileVersionInfoSizeA:near
@_malloc	equ	_malloc
	extrn	_malloc:near
@GetFileVersionInfoA	equ	GetFileVersionInfoA
	extrn	GetFileVersionInfoA:near
@@System@AnsiString@$bdtr$qqrv	equ	@System@AnsiString@$bdtr$qqrv
	extrn	@System@AnsiString@$bdtr$qqrv:near
@VerQueryValueA	equ	VerQueryValueA
	extrn	VerQueryValueA:near
@@Controls@TControl@SetText$qqrx17System@AnsiString	equ	@Controls@TControl@SetText$qqrx17System@AnsiString
	extrn	@Controls@TControl@SetText$qqrx17System@AnsiString:near
@@System@AnsiString@$badd$xqqrrx17System@AnsiString	equ	@System@AnsiString@$badd$xqqrrx17System@AnsiString
	extrn	@System@AnsiString@$badd$xqqrrx17System@AnsiString:near
@@Sysutils@IntToStr$qqri	equ	@Sysutils@IntToStr$qqri
	extrn	@Sysutils@IntToStr$qqri:near
@@System@AnsiString@$bctr$qqrpxc	equ	@System@AnsiString@$bctr$qqrpxc
	extrn	@System@AnsiString@$bctr$qqrpxc:near
@_free	equ	_free
	extrn	_free:near
	extrn	__Exception_list:dword
	extrn	@__InitExceptBlockLDTC:near
	extrn	__ClassCreate:near
	extrn	__AfterConstruction:near
@@Forms@TCustomForm@Close$qqrv	equ	@Forms@TCustomForm@Close$qqrv
	extrn	@Forms@TCustomForm@Close$qqrv:near
@@Forms@TCustomForm@$bctr$qqrp18Classes@TComponent	equ	@Forms@TCustomForm@$bctr$qqrp18Classes@TComponent
	extrn	@Forms@TCustomForm@$bctr$qqrp18Classes@TComponent:near
	extrn	@Forms@TForm@:byte
@@Classes@TComponent@SafeCallException$qqrp14System@TObjectpv	equ	@Classes@TComponent@SafeCallException$qqrp14System@TObjectpv
	extrn	@Classes@TComponent@SafeCallException$qqrp14System@TObjectpv:near
@@Forms@TCustomForm@AfterConstruction$qqrv	equ	@Forms@TCustomForm@AfterConstruction$qqrv
	extrn	@Forms@TCustomForm@AfterConstruction$qqrv:near
@@Forms@TCustomForm@BeforeDestruction$qqrv	equ	@Forms@TCustomForm@BeforeDestruction$qqrv
	extrn	@Forms@TCustomForm@BeforeDestruction$qqrv:near
@@System@TObject@Dispatch$qqrpv	equ	@System@TObject@Dispatch$qqrpv
	extrn	@System@TObject@Dispatch$qqrpv:near
@@Forms@TCustomForm@DefaultHandler$qqrpv	equ	@Forms@TCustomForm@DefaultHandler$qqrpv
	extrn	@Forms@TCustomForm@DefaultHandler$qqrpv:near
@@System@TObject@NewInstance$qqrp17System@TMetaClass	equ	@System@TObject@NewInstance$qqrp17System@TMetaClass
	extrn	@System@TObject@NewInstance$qqrp17System@TMetaClass:near
@@System@TObject@FreeInstance$qqrv	equ	@System@TObject@FreeInstance$qqrv
	extrn	@System@TObject@FreeInstance$qqrv:near
@@Controls@TWinControl@AssignTo$qqrp19Classes@TPersistent	equ	@Controls@TWinControl@AssignTo$qqrp19Classes@TPersistent
	extrn	@Controls@TWinControl@AssignTo$qqrp19Classes@TPersistent:near
@@Forms@TCustomForm@DefineProperties$qqrp14Classes@TFiler	equ	@Forms@TCustomForm@DefineProperties$qqrp14Classes@TFiler
	extrn	@Forms@TCustomForm@DefineProperties$qqrp14Classes@TFiler:near
@@Classes@TPersistent@Assign$qqrp19Classes@TPersistent	equ	@Classes@TPersistent@Assign$qqrp19Classes@TPersistent
	extrn	@Classes@TPersistent@Assign$qqrp19Classes@TPersistent:near
@@Forms@TCustomForm@Loaded$qqrv	equ	@Forms@TCustomForm@Loaded$qqrv
	extrn	@Forms@TCustomForm@Loaded$qqrv:near
@@Forms@TCustomForm@Notification$qqrp18Classes@TComponent18Classes@TOperation	equ	@Forms@TCustomForm@Notification$qqrp18Classes@TComponent18Classes@TOperation
	extrn	@Forms@TCustomForm@Notification$qqrp18Classes@TComponent18Classes@TOperation:near
@@Forms@TCustomForm@ReadState$qqrp15Classes@TReader	equ	@Forms@TCustomForm@ReadState$qqrp15Classes@TReader
	extrn	@Forms@TCustomForm@ReadState$qqrp15Classes@TReader:near
@@Controls@TControl@SetName$qqrx17System@AnsiString	equ	@Controls@TControl@SetName$qqrx17System@AnsiString
	extrn	@Controls@TControl@SetName$qqrx17System@AnsiString:near
@@Forms@TCustomForm@ValidateRename$qqrp18Classes@TComponentx17System@AnsiStringxt2	equ	@Forms@TCustomForm@ValidateRename$qqrp18Classes@TComponentx17System@AnsiStringxt2
	extrn	@Forms@TCustomForm@ValidateRename$qqrp18Classes@TComponentx17System@AnsiStringxt2:near
@@Classes@TComponent@WriteState$qqrp15Classes@TWriter	equ	@Classes@TComponent@WriteState$qqrp15Classes@TWriter
	extrn	@Classes@TComponent@WriteState$qqrp15Classes@TWriter:near
@@Forms@TCustomForm@QueryInterface$qqsrx5_GUIDpv	equ	@Forms@TCustomForm@QueryInterface$qqsrx5_GUIDpv
	extrn	@Forms@TCustomForm@QueryInterface$qqsrx5_GUIDpv:near
@@Controls@TWinControl@UpdateLastResize$qqrii	equ	@Controls@TWinControl@UpdateLastResize$qqrii
	extrn	@Controls@TWinControl@UpdateLastResize$qqrii:near
@@Controls@TWinControl@CanResize$qqrrit1	equ	@Controls@TWinControl@CanResize$qqrrit1
	extrn	@Controls@TWinControl@CanResize$qqrrit1:near
@@Controls@TWinControl@CanAutoSize$qqrrit1	equ	@Controls@TWinControl@CanAutoSize$qqrrit1
	extrn	@Controls@TWinControl@CanAutoSize$qqrrit1:near
@@Controls@TWinControl@ConstrainedResize$qqrrit1t1t1	equ	@Controls@TWinControl@ConstrainedResize$qqrrit1t1t1
	extrn	@Controls@TWinControl@ConstrainedResize$qqrrit1t1t1:near
@@Controls@TWinControl@GetClientOrigin$qqrv	equ	@Controls@TWinControl@GetClientOrigin$qqrv
	extrn	@Controls@TWinControl@GetClientOrigin$qqrv:near
@@Forms@TCustomForm@GetClientRect$qqrv	equ	@Forms@TCustomForm@GetClientRect$qqrv
	extrn	@Forms@TCustomForm@GetClientRect$qqrv:near
@@Controls@TWinControl@GetDeviceContext$qqrrpv	equ	@Controls@TWinControl@GetDeviceContext$qqrrpv
	extrn	@Controls@TWinControl@GetDeviceContext$qqrrpv:near
@@Controls@TControl@GetDragImages$qqrv	equ	@Controls@TControl@GetDragImages$qqrv
	extrn	@Controls@TControl@GetDragImages$qqrv:near
@@Controls@TControl@GetEnabled$qqrv	equ	@Controls@TControl@GetEnabled$qqrv
	extrn	@Controls@TControl@GetEnabled$qqrv:near
@@Forms@TCustomForm@GetFloating$qqrv	equ	@Forms@TCustomForm@GetFloating$qqrv
	extrn	@Forms@TCustomForm@GetFloating$qqrv:near
@@Controls@TControl@GetFloatingDockSiteClass$qqrv	equ	@Controls@TControl@GetFloatingDockSiteClass$qqrv
	extrn	@Controls@TControl@GetFloatingDockSiteClass$qqrv:near
@@Controls@TControl@SetDragMode$qqr18Controls@TDragMode	equ	@Controls@TControl@SetDragMode$qqr18Controls@TDragMode
	extrn	@Controls@TControl@SetDragMode$qqr18Controls@TDragMode:near
@@Controls@TControl@SetEnabled$qqr4bool	equ	@Controls@TControl@SetEnabled$qqr4bool
	extrn	@Controls@TControl@SetEnabled$qqr4bool:near
@@Forms@TCustomForm@SetParent$qqrp20Controls@TWinControl	equ	@Forms@TCustomForm@SetParent$qqrp20Controls@TWinControl
	extrn	@Forms@TCustomForm@SetParent$qqrp20Controls@TWinControl:near
@@Forms@TCustomForm@SetParentBiDiMode$qqr4bool	equ	@Forms@TCustomForm@SetParentBiDiMode$qqr4bool
	extrn	@Forms@TCustomForm@SetParentBiDiMode$qqr4bool:near
@@Controls@TControl@SetBiDiMode$qqr17Classes@TBiDiMode	equ	@Controls@TControl@SetBiDiMode$qqr17Classes@TBiDiMode
	extrn	@Controls@TControl@SetBiDiMode$qqr17Classes@TBiDiMode:near
@@Forms@TCustomForm@WndProc$qqrr17Messages@TMessage	equ	@Forms@TCustomForm@WndProc$qqrr17Messages@TMessage
	extrn	@Forms@TCustomForm@WndProc$qqrr17Messages@TMessage:near
@@Controls@TControl@InitiateAction$qqrv	equ	@Controls@TControl@InitiateAction$qqrv
	extrn	@Controls@TControl@InitiateAction$qqrv:near
@@Controls@TWinControl@Invalidate$qqrv	equ	@Controls@TWinControl@Invalidate$qqrv
	extrn	@Controls@TWinControl@Invalidate$qqrv:near
@@Controls@TWinControl@Repaint$qqrv	equ	@Controls@TWinControl@Repaint$qqrv
	extrn	@Controls@TWinControl@Repaint$qqrv:near
@@Controls@TWinControl@SetBounds$qqriiii	equ	@Controls@TWinControl@SetBounds$qqriiii
	extrn	@Controls@TWinControl@SetBounds$qqriiii:near
@@Controls@TWinControl@Update$qqrv	equ	@Controls@TWinControl@Update$qqrv
	extrn	@Controls@TWinControl@Update$qqrv:near
@@Forms@TScrollingWinControl@AdjustClientRect$qqrr13Windows@TRect	equ	@Forms@TScrollingWinControl@AdjustClientRect$qqrr13Windows@TRect
	extrn	@Forms@TScrollingWinControl@AdjustClientRect$qqrr13Windows@TRect:near
@@Forms@TCustomForm@AlignControls$qqrp17Controls@TControlr13Windows@TRect	equ	@Forms@TCustomForm@AlignControls$qqrp17Controls@TControlr13Windows@TRect
	extrn	@Forms@TCustomForm@AlignControls$qqrp17Controls@TControlr13Windows@TRect:near
@@Controls@TWinControl@CreateHandle$qqrv	equ	@Controls@TWinControl@CreateHandle$qqrv
	extrn	@Controls@TWinControl@CreateHandle$qqrv:near
@@Forms@TCustomForm@CreateParams$qqrr22Controls@TCreateParams	equ	@Forms@TCustomForm@CreateParams$qqrr22Controls@TCreateParams
	extrn	@Forms@TCustomForm@CreateParams$qqrr22Controls@TCreateParams:near
@@Forms@TCustomForm@CreateWindowHandle$qqrrx22Controls@TCreateParams	equ	@Forms@TCustomForm@CreateWindowHandle$qqrrx22Controls@TCreateParams
	extrn	@Forms@TCustomForm@CreateWindowHandle$qqrrx22Controls@TCreateParams:near
@@Forms@TCustomForm@CreateWnd$qqrv	equ	@Forms@TCustomForm@CreateWnd$qqrv
	extrn	@Forms@TCustomForm@CreateWnd$qqrv:near
@@Forms@TCustomForm@DestroyWindowHandle$qqrv	equ	@Forms@TCustomForm@DestroyWindowHandle$qqrv
	extrn	@Forms@TCustomForm@DestroyWindowHandle$qqrv:near
@@Controls@TWinControl@DestroyWnd$qqrv	equ	@Controls@TWinControl@DestroyWnd$qqrv
	extrn	@Controls@TWinControl@DestroyWnd$qqrv:near
@@Controls@TWinControl@GetControlExtents$qqrv	equ	@Controls@TWinControl@GetControlExtents$qqrv
	extrn	@Controls@TWinControl@GetControlExtents$qqrv:near
@@Forms@TCustomForm@PaintWindow$qqrpv	equ	@Forms@TCustomForm@PaintWindow$qqrpv
	extrn	@Forms@TCustomForm@PaintWindow$qqrpv:near
@@Controls@TWinControl@ShowControl$qqrp17Controls@TControl	equ	@Controls@TWinControl@ShowControl$qqrp17Controls@TControl
	extrn	@Controls@TWinControl@ShowControl$qqrp17Controls@TControl:near
@@Forms@TCustomForm@SetFocus$qqrv	equ	@Forms@TCustomForm@SetFocus$qqrv
	extrn	@Forms@TCustomForm@SetFocus$qqrv:near
@@Forms@TScrollingWinControl@AutoScrollEnabled$qqrv	equ	@Forms@TScrollingWinControl@AutoScrollEnabled$qqrv
	extrn	@Forms@TScrollingWinControl@AutoScrollEnabled$qqrv:near
@@Forms@TCustomForm@UpdateActions$qqrv	equ	@Forms@TCustomForm@UpdateActions$qqrv
	extrn	@Forms@TCustomForm@UpdateActions$qqrv:near
@@Forms@TCustomForm@CloseQuery$qqrv	equ	@Forms@TCustomForm@CloseQuery$qqrv
	extrn	@Forms@TCustomForm@CloseQuery$qqrv:near
@@Forms@TCustomForm@SetFocusedControl$qqrp20Controls@TWinControl	equ	@Forms@TCustomForm@SetFocusedControl$qqrp20Controls@TWinControl
	extrn	@Forms@TCustomForm@SetFocusedControl$qqrp20Controls@TWinControl:near
@@Forms@TCustomForm@ShowModal$qqrv	equ	@Forms@TCustomForm@ShowModal$qqrv
	extrn	@Forms@TCustomForm@ShowModal$qqrv:near
@@Forms@TCustomForm@WantChildKey$qqrp17Controls@TControlr17Messages@TMessage	equ	@Forms@TCustomForm@WantChildKey$qqrp17Controls@TControlr17Messages@TMessage
	extrn	@Forms@TCustomForm@WantChildKey$qqrp17Controls@TControlr17Messages@TMessage:near
	extrn	@Stdctrls@TLabel@:byte
	extrn	@Stdctrls@TButton@:byte
	extrn	@$xp$11Forms@TForm:byte
	extrn	__BeforeDestruction:near
	extrn	__ClassDestroy:near
@@System@AnsiString@$bctr$qqrrx17System@AnsiString	equ	@System@AnsiString@$bctr$qqrrx17System@AnsiString
	extrn	@System@AnsiString@$bctr$qqrrx17System@AnsiString:near
@@Classes@TComponent@UpdateRegistry$qqrp17System@TMetaClass4boolx17System@AnsiStringxt3	equ	@Classes@TComponent@UpdateRegistry$qqrp17System@TMetaClass4boolx17System@AnsiStringxt3
	extrn	@Classes@TComponent@UpdateRegistry$qqrp17System@TMetaClass4boolx17System@AnsiStringxt3:near
	extrn	@Classes@TComponent@:byte
@@Forms@TCustomForm@$bctr$qqrp18Classes@TComponenti	equ	@Forms@TCustomForm@$bctr$qqrp18Classes@TComponenti
	extrn	@Forms@TCustomForm@$bctr$qqrp18Classes@TComponenti:near
@@Forms@TCustomForm@$bdtr$qqrv	equ	@Forms@TCustomForm@$bdtr$qqrv
	extrn	@Forms@TCustomForm@$bdtr$qqrv:near
	extrn	@$bdele$qpv:near
@@Forms@TScrollingWinControl@$bdtr$qqrv	equ	@Forms@TScrollingWinControl@$bdtr$qqrv
	extrn	@Forms@TScrollingWinControl@$bdtr$qqrv:near
@@Controls@TWinControl@$bdtr$qqrv	equ	@Controls@TWinControl@$bdtr$qqrv
	extrn	@Controls@TWinControl@$bdtr$qqrv:near
@@Controls@TControl@$bdtr$qqrv	equ	@Controls@TControl@$bdtr$qqrv
	extrn	@Controls@TControl@$bdtr$qqrv:near
@@Classes@TComponent@$bdtr$qqrv	equ	@Classes@TComponent@$bdtr$qqrv
	extrn	@Classes@TComponent@$bdtr$qqrv:near
@@Classes@TPersistent@$bdtr$qqrv	equ	@Classes@TPersistent@$bdtr$qqrv
	extrn	@Classes@TPersistent@$bdtr$qqrv:near
@@System@TObject@$bdtr$qqrv	equ	@System@TObject@$bdtr$qqrv
	extrn	@System@TObject@$bdtr$qqrv:near
	?debug	C FB0941626F75742E64666D00
	?debug	C FB0A41626F757400
	?debug	C 9F757569642E6C6962
	?debug	C 9F757569642E6C6962
	?debug	C 9F757569642E6C6962
	?debug	C 9F757569642E6C6962
	?debug	C 9F76636C6534302E6C6962
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	22
	dw	514
	df	_AboutForm
	dw	0
	dw	4097
	dw	0
	dw	98
	dw	0
	dw	0
	dw	0
	dw	?patch79
	dw	37
	dw	99
	dw	0
	dw	0
	dw	0
	dw	0
?patch79	equ	12
	dw	?patch80
	dw	37
	dw	100
	dw	0
	dw	0
	dw	0
	dw	0
?patch80	equ	12
	dw	?patch81
	dw	3
	dw	4314
	dw	0
	dw	101
	dw	0
	dw	0
	dw	0
	dw	2
?patch81	equ	16
	dw	?patch82
	dw	3
	dw	4314
	dw	0
	dw	102
	dw	0
	dw	0
	dw	0
	dw	3
?patch82	equ	16
	dw	?patch83
	dw	3
	dw	4314
	dw	0
	dw	103
	dw	0
	dw	0
	dw	0
	dw	4
?patch83	equ	16
	dw	?patch84
	dw	3
	dw	4314
	dw	0
	dw	104
	dw	0
	dw	0
	dw	0
	dw	5
?patch84	equ	16
	dw	?patch85
	dw	3
	dw	4314
	dw	0
	dw	105
	dw	0
	dw	0
	dw	0
	dw	6
?patch85	equ	16
	dw	?patch86
	dw	3
	dw	4314
	dw	0
	dw	106
	dw	0
	dw	0
	dw	0
	dw	7
?patch86	equ	16
	dw	?patch87
	dw	3
	dw	4314
	dw	0
	dw	107
	dw	0
	dw	0
	dw	0
	dw	8
?patch87	equ	16
	dw	?patch88
	dw	3
	dw	4314
	dw	0
	dw	108
	dw	0
	dw	0
	dw	0
	dw	9
?patch88	equ	16
	dw	?patch89
	dw	3
	dw	4314
	dw	0
	dw	109
	dw	0
	dw	0
	dw	0
	dw	11
?patch89	equ	16
	dw	?patch90
	dw	3
	dw	4314
	dw	0
	dw	110
	dw	0
	dw	0
	dw	0
	dw	12
?patch90	equ	16
	dw	?patch91
	dw	3
	dw	4314
	dw	0
	dw	111
	dw	0
	dw	0
	dw	0
	dw	13
?patch91	equ	16
	dw	?patch92
	dw	3
	dw	4314
	dw	0
	dw	112
	dw	0
	dw	0
	dw	0
	dw	17
?patch92	equ	16
	dw	?patch93
	dw	3
	dw	4315
	dw	0
	dw	113
	dw	0
	dw	0
	dw	0
	dw	16384
?patch93	equ	16
	dw	?patch94
	dw	3
	dw	4314
	dw	0
	dw	114
	dw	0
	dw	0
	dw	0
	dw	0
?patch94	equ	16
	dw	?patch95
	dw	3
	dw	4314
	dw	0
	dw	115
	dw	0
	dw	0
	dw	0
	dw	1
?patch95	equ	16
	dw	?patch96
	dw	3
	dw	4314
	dw	0
	dw	116
	dw	0
	dw	0
	dw	0
	dw	2
?patch96	equ	16
	dw	?patch97
	dw	3
	dw	4314
	dw	0
	dw	117
	dw	0
	dw	0
	dw	0
	dw	3
?patch97	equ	16
	dw	?patch98
	dw	3
	dw	4314
	dw	0
	dw	118
	dw	0
	dw	0
	dw	0
	dw	4
?patch98	equ	16
	dw	?patch99
	dw	3
	dw	4314
	dw	0
	dw	119
	dw	0
	dw	0
	dw	0
	dw	5
?patch99	equ	16
	dw	?patch100
	dw	3
	dw	4314
	dw	0
	dw	120
	dw	0
	dw	0
	dw	0
	dw	6
?patch100	equ	16
	dw	?patch101
	dw	3
	dw	4314
	dw	0
	dw	121
	dw	0
	dw	0
	dw	0
	dw	7
?patch101	equ	16
	dw	?patch102
	dw	3
	dw	4314
	dw	0
	dw	122
	dw	0
	dw	0
	dw	0
	dw	8
?patch102	equ	16
	dw	?patch103
	dw	3
	dw	4314
	dw	0
	dw	123
	dw	0
	dw	0
	dw	0
	dw	9
?patch103	equ	16
	dw	?patch104
	dw	3
	dw	4314
	dw	0
	dw	124
	dw	0
	dw	0
	dw	0
	dw	10
?patch104	equ	16
	dw	?patch105
	dw	3
	dw	4314
	dw	0
	dw	125
	dw	0
	dw	0
	dw	0
	dw	11
?patch105	equ	16
	dw	?patch106
	dw	3
	dw	4314
	dw	0
	dw	126
	dw	0
	dw	0
	dw	0
	dw	12
?patch106	equ	16
	dw	?patch107
	dw	3
	dw	4314
	dw	0
	dw	127
	dw	0
	dw	0
	dw	0
	dw	13
?patch107	equ	16
	dw	?patch108
	dw	37
	dw	128
	dw	0
	dw	0
	dw	0
	dw	0
?patch108	equ	12
	dw	?patch109
	dw	37
	dw	129
	dw	0
	dw	0
	dw	0
	dw	0
?patch109	equ	12
	dw	?patch110
	dw	37
	dw	130
	dw	0
	dw	0
	dw	0
	dw	0
?patch110	equ	12
	dw	?patch111
	dw	37
	dw	131
	dw	0
	dw	0
	dw	0
	dw	0
?patch111	equ	12
	dw	?patch112
	dw	37
	dw	132
	dw	0
	dw	0
	dw	0
	dw	0
?patch112	equ	12
	dw	?patch113
	dw	37
	dw	133
	dw	0
	dw	0
	dw	0
	dw	0
?patch113	equ	12
	dw	?patch114
	dw	37
	dw	134
	dw	0
	dw	0
	dw	0
	dw	0
?patch114	equ	12
	dw	?patch115
	dw	37
	dw	135
	dw	0
	dw	0
	dw	0
	dw	0
?patch115	equ	12
	dw	?patch116
	dw	37
	dw	136
	dw	0
	dw	0
	dw	0
	dw	0
?patch116	equ	12
	dw	?patch117
	dw	37
	dw	137
	dw	0
	dw	0
	dw	0
	dw	0
?patch117	equ	12
	dw	?patch118
	dw	37
	dw	138
	dw	0
	dw	0
	dw	0
	dw	0
?patch118	equ	12
	dw	?patch119
	dw	37
	dw	139
	dw	0
	dw	0
	dw	0
	dw	0
?patch119	equ	12
	dw	?patch120
	dw	37
	dw	140
	dw	0
	dw	0
	dw	0
	dw	0
?patch120	equ	12
	dw	?patch121
	dw	37
	dw	141
	dw	0
	dw	0
	dw	0
	dw	0
?patch121	equ	12
	dw	?patch122
	dw	37
	dw	142
	dw	0
	dw	0
	dw	0
	dw	0
?patch122	equ	12
	dw	?patch123
	dw	37
	dw	143
	dw	0
	dw	0
	dw	0
	dw	0
?patch123	equ	12
	dw	?patch124
	dw	37
	dw	144
	dw	0
	dw	0
	dw	0
	dw	0
?patch124	equ	12
	dw	?patch125
	dw	37
	dw	145
	dw	0
	dw	0
	dw	0
	dw	0
?patch125	equ	12
	dw	?patch126
	dw	37
	dw	146
	dw	0
	dw	0
	dw	0
	dw	0
?patch126	equ	12
	dw	?patch127
	dw	37
	dw	147
	dw	0
	dw	0
	dw	0
	dw	0
?patch127	equ	12
	dw	?patch128
	dw	37
	dw	148
	dw	0
	dw	0
	dw	0
	dw	0
?patch128	equ	12
	dw	?patch129
	dw	37
	dw	149
	dw	0
	dw	0
	dw	0
	dw	0
?patch129	equ	12
	dw	?patch130
	dw	37
	dw	150
	dw	0
	dw	0
	dw	0
	dw	0
?patch130	equ	12
	dw	?patch131
	dw	37
	dw	151
	dw	0
	dw	0
	dw	0
	dw	0
?patch131	equ	12
	dw	?patch132
	dw	37
	dw	152
	dw	0
	dw	0
	dw	0
	dw	0
?patch132	equ	12
	dw	?patch133
	dw	37
	dw	153
	dw	0
	dw	0
	dw	0
	dw	0
?patch133	equ	12
	dw	?patch134
	dw	37
	dw	154
	dw	0
	dw	0
	dw	0
	dw	0
?patch134	equ	12
	dw	?patch135
	dw	37
	dw	155
	dw	0
	dw	0
	dw	0
	dw	0
?patch135	equ	12
	dw	?patch136
	dw	37
	dw	156
	dw	0
	dw	0
	dw	0
	dw	0
?patch136	equ	12
	dw	?patch137
	dw	37
	dw	157
	dw	0
	dw	0
	dw	0
	dw	0
?patch137	equ	12
	dw	?patch138
	dw	37
	dw	158
	dw	0
	dw	0
	dw	0
	dw	0
?patch138	equ	12
	dw	?patch139
	dw	37
	dw	159
	dw	0
	dw	0
	dw	0
	dw	0
?patch139	equ	12
	dw	?patch140
	dw	37
	dw	160
	dw	0
	dw	0
	dw	0
	dw	0
?patch140	equ	12
	dw	?patch141
	dw	37
	dw	161
	dw	0
	dw	0
	dw	0
	dw	0
?patch141	equ	12
	dw	?patch142
	dw	37
	dw	162
	dw	0
	dw	0
	dw	0
	dw	0
?patch142	equ	12
	dw	?patch143
	dw	37
	dw	163
	dw	0
	dw	0
	dw	0
	dw	0
?patch143	equ	12
	dw	?patch144
	dw	37
	dw	164
	dw	0
	dw	0
	dw	0
	dw	0
?patch144	equ	12
	dw	?patch145
	dw	37
	dw	165
	dw	0
	dw	0
	dw	0
	dw	0
?patch145	equ	12
	dw	16
	dw	4
	dw	4098
	dw	0
	dw	1
	dw	166
	dw	0
	dw	0
	dw	0
	dw	?patch146
	dw	38
	dw	320
	dw	167
	dw	0
	dw	168
	dw	0
	dw	169
	dw	0
	dw	170
	dw	0
	dw	171
	dw	0
	dw	172
	dw	0
	dw	173
	dw	0
	dw	174
	dw	0
	dw	175
	dw	0
	dw	176
	dw	0
	dw	177
	dw	0
	dw	178
	dw	0
	dw	179
	dw	0
	dw	180
	dw	0
	dw	181
	dw	0
	dw	182
	dw	0
	dw	183
	dw	0
	dw	184
	dw	0
	dw	185
	dw	0
	dw	186
	dw	0
	dw	187
	dw	0
	dw	188
	dw	0
	dw	189
	dw	0
	dw	190
	dw	0
	dw	191
	dw	0
	dw	192
	dw	0
	dw	193
	dw	0
	dw	194
	dw	0
	dw	195
	dw	0
	dw	196
	dw	0
	dw	197
	dw	0
	dw	198
	dw	0
	dw	199
	dw	0
	dw	200
	dw	0
	dw	201
	dw	0
	dw	202
	dw	0
	dw	203
	dw	0
	dw	204
	dw	0
	dw	205
	dw	0
	dw	206
	dw	0
	dw	207
	dw	0
	dw	208
	dw	0
	dw	209
	dw	0
	dw	210
	dw	0
	dw	211
	dw	0
	dw	212
	dw	0
	dw	213
	dw	0
	dw	214
	dw	0
	dw	215
	dw	0
	dw	216
	dw	0
	dw	217
	dw	0
	dw	218
	dw	0
	dw	219
	dw	0
	dw	220
	dw	0
	dw	221
	dw	0
	dw	222
	dw	0
	dw	223
	dw	0
	dw	224
	dw	0
	dw	225
	dw	0
	dw	226
	dw	0
	dw	227
	dw	0
	dw	228
	dw	0
	dw	229
	dw	0
	dw	230
	dw	0
	dw	231
	dw	0
	dw	232
	dw	0
	dw	233
	dw	0
	dw	234
	dw	0
	dw	235
	dw	0
	dw	236
	dw	0
	dw	237
	dw	0
	dw	238
	dw	0
	dw	239
	dw	0
	dw	240
	dw	0
	dw	241
	dw	0
	dw	242
	dw	0
	dw	243
	dw	0
	dw	244
	dw	0
	dw	245
	dw	0
	dw	246
	dw	0
	dw	247
	dw	0
	dw	248
	dw	0
	dw	249
	dw	0
	dw	250
	dw	0
	dw	251
	dw	0
	dw	252
	dw	0
	dw	253
	dw	0
	dw	254
	dw	0
	dw	255
	dw	0
	dw	256
	dw	0
	dw	257
	dw	0
	dw	258
	dw	0
	dw	259
	dw	0
	dw	260
	dw	0
	dw	261
	dw	0
	dw	262
	dw	0
	dw	263
	dw	0
	dw	264
	dw	0
	dw	265
	dw	0
	dw	266
	dw	0
	dw	267
	dw	0
	dw	268
	dw	0
	dw	269
	dw	0
	dw	270
	dw	0
	dw	271
	dw	0
	dw	272
	dw	0
	dw	273
	dw	0
	dw	274
	dw	0
	dw	275
	dw	0
	dw	276
	dw	0
	dw	277
	dw	0
	dw	278
	dw	0
	dw	279
	dw	0
	dw	280
	dw	0
	dw	281
	dw	0
	dw	282
	dw	0
	dw	283
	dw	0
	dw	284
	dw	0
	dw	285
	dw	0
	dw	286
	dw	0
	dw	287
	dw	0
	dw	288
	dw	0
	dw	289
	dw	0
	dw	290
	dw	0
	dw	291
	dw	0
	dw	292
	dw	0
	dw	293
	dw	0
	dw	294
	dw	0
	dw	295
	dw	0
	dw	296
	dw	0
	dw	297
	dw	0
	dw	298
	dw	0
	dw	299
	dw	0
	dw	300
	dw	0
	dw	301
	dw	0
	dw	302
	dw	0
	dw	303
	dw	0
	dw	304
	dw	0
	dw	305
	dw	0
	dw	306
	dw	0
	dw	307
	dw	0
	dw	308
	dw	0
	dw	309
	dw	0
	dw	310
	dw	0
	dw	311
	dw	0
	dw	312
	dw	0
	dw	313
	dw	0
	dw	314
	dw	0
	dw	315
	dw	0
	dw	316
	dw	0
	dw	317
	dw	0
	dw	318
	dw	0
	dw	319
	dw	0
	dw	320
	dw	0
	dw	321
	dw	0
	dw	322
	dw	0
	dw	323
	dw	0
	dw	324
	dw	0
	dw	325
	dw	0
	dw	326
	dw	0
	dw	327
	dw	0
	dw	328
	dw	0
	dw	329
	dw	0
	dw	330
	dw	0
	dw	331
	dw	0
	dw	332
	dw	0
	dw	333
	dw	0
	dw	334
	dw	0
	dw	335
	dw	0
	dw	336
	dw	0
	dw	337
	dw	0
	dw	338
	dw	0
	dw	339
	dw	0
	dw	340
	dw	0
	dw	341
	dw	0
	dw	342
	dw	0
	dw	343
	dw	0
	dw	344
	dw	0
	dw	345
	dw	0
	dw	346
	dw	0
	dw	347
	dw	0
	dw	348
	dw	0
	dw	349
	dw	0
	dw	350
	dw	0
	dw	351
	dw	0
	dw	352
	dw	0
	dw	353
	dw	0
	dw	354
	dw	0
	dw	355
	dw	0
	dw	356
	dw	0
	dw	357
	dw	0
	dw	358
	dw	0
	dw	359
	dw	0
	dw	360
	dw	0
	dw	361
	dw	0
	dw	362
	dw	0
	dw	363
	dw	0
	dw	364
	dw	0
	dw	365
	dw	0
	dw	366
	dw	0
	dw	367
	dw	0
	dw	368
	dw	0
	dw	369
	dw	0
	dw	370
	dw	0
	dw	371
	dw	0
	dw	372
	dw	0
	dw	373
	dw	0
	dw	374
	dw	0
	dw	375
	dw	0
	dw	376
	dw	0
	dw	377
	dw	0
	dw	378
	dw	0
	dw	379
	dw	0
	dw	380
	dw	0
	dw	381
	dw	0
	dw	382
	dw	0
	dw	383
	dw	0
	dw	384
	dw	0
	dw	385
	dw	0
	dw	386
	dw	0
	dw	387
	dw	0
	dw	388
	dw	0
	dw	389
	dw	0
	dw	390
	dw	0
	dw	391
	dw	0
	dw	392
	dw	0
	dw	393
	dw	0
	dw	394
	dw	0
	dw	395
	dw	0
	dw	396
	dw	0
	dw	397
	dw	0
	dw	398
	dw	0
	dw	399
	dw	0
	dw	400
	dw	0
	dw	401
	dw	0
	dw	402
	dw	0
	dw	403
	dw	0
	dw	404
	dw	0
	dw	405
	dw	0
	dw	406
	dw	0
	dw	407
	dw	0
	dw	408
	dw	0
	dw	409
	dw	0
	dw	410
	dw	0
	dw	411
	dw	0
	dw	412
	dw	0
	dw	413
	dw	0
	dw	414
	dw	0
	dw	415
	dw	0
	dw	416
	dw	0
	dw	417
	dw	0
	dw	418
	dw	0
	dw	419
	dw	0
	dw	420
	dw	0
	dw	421
	dw	0
	dw	422
	dw	0
	dw	423
	dw	0
	dw	424
	dw	0
	dw	425
	dw	0
	dw	426
	dw	0
	dw	427
	dw	0
	dw	428
	dw	0
	dw	429
	dw	0
	dw	430
	dw	0
	dw	431
	dw	0
	dw	432
	dw	0
	dw	433
	dw	0
	dw	434
	dw	0
	dw	435
	dw	0
	dw	436
	dw	0
	dw	437
	dw	0
	dw	438
	dw	0
	dw	439
	dw	0
	dw	440
	dw	0
	dw	441
	dw	0
	dw	442
	dw	0
	dw	443
	dw	0
	dw	444
	dw	0
	dw	445
	dw	0
	dw	446
	dw	0
	dw	447
	dw	0
	dw	448
	dw	0
	dw	449
	dw	0
	dw	450
	dw	0
	dw	451
	dw	0
	dw	452
	dw	0
	dw	453
	dw	0
	dw	454
	dw	0
	dw	455
	dw	0
	dw	456
	dw	0
	dw	457
	dw	0
	dw	458
	dw	0
	dw	459
	dw	0
	dw	460
	dw	0
	dw	461
	dw	0
	dw	462
	dw	0
	dw	463
	dw	0
	dw	464
	dw	0
	dw	465
	dw	0
	dw	466
	dw	0
	dw	467
	dw	0
	dw	468
	dw	0
	dw	469
	dw	0
	dw	470
	dw	0
	dw	471
	dw	0
	dw	472
	dw	0
	dw	473
	dw	0
	dw	474
	dw	0
	dw	475
	dw	0
	dw	476
	dw	0
	dw	477
	dw	0
	dw	478
	dw	0
	dw	479
	dw	0
	dw	480
	dw	0
	dw	481
	dw	0
	dw	482
	dw	0
	dw	483
	dw	0
	dw	484
	dw	0
	dw	485
	dw	0
	dw	486
	dw	0
?patch146	equ	1284
	dw	?patch147
	dw	1
	db	2
	db	1
	db	8
	db	24
	db	6
	db	66
	db	67
	db	52
	db	46
	db	48
	db	48
?patch147	equ	13
$$BSYMS	ends
$$BTYPES	segment byte public use32 'DEBTYP'
	db        2,0,0,0,26,0,9,0,1,16,0,0,2,16,0,0
	db        6,16,0,0,4,0,1,0,24,16,0,0,0,0,0,0
	db        8,0,2,0,10,0,2,16,0,0,28,0,4,0,12,0
	db        23,16,0,0,34,1,0,0,0,0,0,0,0,0,3,16
	db        0,0,1,0,0,0,220,2,5,0,10,0,2,0,85,8
	db        0,2,0,10,0,3,16,0,0,26,0,9,0,3,0,0
	db        0,2,16,0,0,6,16,0,0,4,0,1,0,7,16,0
	db        0,0,0,0,0,8,0,2,0,10,4,2,16,0,0,8
	db        0,1,2,1,0,252,255,255,255,26,0,9,0,1,16,0
	db        0,2,16,0,0,6,16,0,0,4,0,1,0,9,16,0
	db        0,0,0,0,0,8,0,1,2,1,0,251,255,255,255,26
	db        0,9,0,1,16,0,0,2,16,0,0,6,16,0,0,0
	db        0,1,0,13,16,0,0,0,0,0,0,8,0,2,0,42
	db        0,12,16,0,0,8,0,1,0,1,0,2,16,0,0,8
	db        0,1,2,1,0,11,16,0,0,26,0,9,0,15,16,0
	db        0,2,16,0,0,6,16,0,0,0,0,1,0,16,16,0
	db        0,0,0,0,0,8,0,2,0,42,0,2,16,0,0,8
	db        0,1,2,1,0,15,16,0,0,26,0,9,0,3,0,0
	db        0,2,16,0,0,6,16,0,0,4,0,0,0,18,16,0
	db        0,0,0,0,0,4,0,1,2,0,0,12,0,7,2,3
	db        0,5,16,0,0,0,0,0,0,26,0,7,2,19,4,8
	db        16,0,0,0,0,0,0,44,0,0,0,35,20,10,16,0
	db        0,0,0,0,0,12,0,7,2,35,17,14,16,0,0,0
	db        0,0,0,16,0,7,2,51,24,17,16,0,0,0,0,0
	db        0,252,255,255,255,190,0,4,2,10,4,4,16,0,0,0
	db        0,0,4,255,255,255,255,3,0,0,0,242,241,6,4,254
	db        255,255,255,3,0,2,0,0,0,0,0,0,0,196,2,242
	db        241,6,4,254,255,255,255,3,0,3,0,0,0,0,0,0
	db        0,200,2,242,241,6,4,253,255,255,255,3,0,4,0,0
	db        0,0,0,0,0,204,2,242,241,6,4,254,255,255,255,3
	db        0,5,0,0,0,0,0,0,0,208,2,242,241,6,4,254
	db        255,255,255,3,0,6,0,0,0,0,0,0,0,212,2,242
	db        241,6,4,254,255,255,255,3,0,7,0,0,0,0,0,0
	db        0,216,2,242,241,8,4,1,0,19,16,0,0,8,0,0
	db        0,8,4,2,0,20,16,0,0,9,0,0,0,8,4,1
	db        0,21,16,0,0,10,0,0,0,8,4,1,0,22,16,0
	db        0,11,0,0,0,8,0,1,2,1,0,251,255,255,255,26
	db        0,9,0,3,0,0,0,2,16,0,0,6,16,0,0,4
	db        0,1,0,26,16,0,0,0,0,0,0,8,0,1,2,1
	db        0,252,255,255,255,26,0,9,0,248,255,255,255,255,255,255
	db        255,28,16,0,0,4,0,1,0,29,16,0,0,0,0,0
	db        0,8,0,2,0,10,4,255,255,255,255,8,0,1,2,1
	db        0,251,255,255,255,26,0,9,0,247,255,255,255,250,255,255
	db        255,31,16,0,0,4,0,0,0,32,16,0,0,0,0,0
	db        0,8,0,2,0,10,4,250,255,255,255,4,0,1,2,0
	db        0,26,0,9,0,112,4,0,0,250,255,255,255,34,16,0
	db        0,4,0,0,0,36,16,0,0,0,0,0,0,8,0,2
	db        0,10,4,35,16,0,0,8,0,1,0,1,0,250,255,255
	db        255,4,0,1,2,0,0,26,0,9,0,3,0,0,0,2
	db        16,0,0,6,16,0,0,4,0,0,0,38,16,0,0,0
	db        0,0,0,4,0,1,2,0,0,26,0,9,0,3,0,0
	db        0,246,255,255,255,40,16,0,0,4,0,3,0,41,16,0
	db        0,0,0,0,0,8,0,2,0,10,4,246,255,255,255,16
	db        0,1,2,3,0,48,0,0,0,35,16,0,0,35,16,0
	db        0,26,0,9,0,248,255,255,255,255,255,255,255,28,16,0
	db        0,4,0,2,0,43,16,0,0,0,0,0,0,12,0,1
	db        2,2,0,251,255,255,255,116,0,0,0,26,0,9,0,3
	db        0,0,0,255,255,255,255,28,16,0,0,4,0,0,0,45
	db        16,0,0,0,0,0,0,4,0,1,2,0,0,26,0,9
	db        0,3,0,0,0,47,16,0,0,50,16,0,0,4,0,0
	db        0,88,16,0,0,0,0,0,0,28,0,4,0,10,0,87
	db        16,0,0,34,1,0,0,0,0,0,0,0,0,0,0,0
	db        0,46,0,0,0,4,0,26,0,9,0,49,16,0,0,47
	db        16,0,0,50,16,0,0,4,0,0,0,51,16,0,0,0
	db        0,0,0,8,0,2,0,10,0,47,16,0,0,8,0,2
	db        0,10,4,47,16,0,0,4,0,1,2,0,0,26,0,9
	db        0,49,16,0,0,47,16,0,0,50,16,0,0,4,0,1
	db        0,55,16,0,0,0,0,0,0,8,0,2,0,42,0,54
	db        16,0,0,8,0,1,0,1,0,47,16,0,0,8,0,1
	db        2,1,0,53,16,0,0,26,0,9,0,49,16,0,0,47
	db        16,0,0,50,16,0,0,4,0,1,0,57,16,0,0,0
	db        0,0,0,8,0,1,2,1,0,245,255,255,255,26,0,9
	db        0,3,0,0,0,47,16,0,0,50,16,0,0,4,0,0
	db        0,59,16,0,0,0,0,0,0,4,0,1,2,0,0,26
	db        0,9,0,61,16,0,0,47,16,0,0,50,16,0,0,4
	db        0,1,0,62,16,0,0,0,0,0,0,8,0,2,0,42
	db        0,47,16,0,0,8,0,1,2,1,0,61,16,0,0,26
	db        0,9,0,61,16,0,0,47,16,0,0,50,16,0,0,4
	db        0,1,0,64,16,0,0,0,0,0,0,8,0,1,2,1
	db        0,245,255,255,255,26,0,9,0,245,255,255,255,47,16,0
	db        0,66,16,0,0,4,0,0,0,67,16,0,0,0,0,0
	db        0,8,0,2,0,10,4,54,16,0,0,4,0,1,2,0
	db        0,26,0,9,0,48,0,0,0,47,16,0,0,66,16,0
	db        0,0,0,0,0,69,16,0,0,0,0,0,0,4,0,1
	db        2,0,0,26,0,9,0,245,255,255,255,47,16,0,0,66
	db        16,0,0,4,0,0,0,71,16,0,0,0,0,0,0,4
	db        0,1,2,0,0,26,0,9,0,244,255,255,255,47,16,0
	db        0,50,16,0,0,4,0,0,0,73,16,0,0,0,0,0
	db        0,4,0,1,2,0,0,26,0,9,0,3,0,0,0,47
	db        16,0,0,50,16,0,0,0,0,0,0,75,16,0,0,0
	db        0,0,0,4,0,1,2,0,0,26,0,9,0,243,255,255
	db        255,47,16,0,0,50,16,0,0,4,0,0,0,77,16,0
	db        0,0,0,0,0,4,0,1,2,0,0,32,0,7,2,3
	db        4,48,16,0,0,0,0,0,0,3,4,52,16,0,0,0
	db        0,0,0,3,4,56,16,0,0,0,0,0,0,12,0,7
	db        2,3,8,58,16,0,0,0,0,0,0,22,0,7,2,3
	db        1,60,16,0,0,0,0,0,0,3,1,63,16,0,0,0
	db        0,0,0,12,0,7,2,3,1,65,16,0,0,0,0,0
	db        0,12,0,7,2,3,1,68,16,0,0,0,0,0,0,12
	db        0,7,2,3,2,70,16,0,0,0,0,0,0,12,0,7
	db        2,3,1,72,16,0,0,0,0,0,0,12,0,7,2,3
	db        0,74,16,0,0,0,0,0,0,12,0,7,2,3,1,76
	db        16,0,0,0,0,0,0,130,0,4,2,6,4,245,255,255
	db        255,1,0,47,0,0,0,0,0,0,0,0,0,242,241,8
	db        4,3,0,78,16,0,0,48,0,0,0,8,4,1,0,79
	db        16,0,0,49,0,0,0,8,4,2,0,80,16,0,0,50
	db        0,0,0,8,4,1,0,81,16,0,0,51,0,0,0,8
	db        4,1,0,82,16,0,0,52,0,0,0,8,4,1,0,83
	db        16,0,0,53,0,0,0,8,4,1,0,84,16,0,0,54
	db        0,0,0,8,4,1,0,85,16,0,0,55,0,0,0,8
	db        4,1,0,86,16,0,0,56,0,0,0,4,0,1,2,0
	db        0,26,0,9,0,3,0,0,0,90,16,0,0,93,16,0
	db        0,4,0,0,0,131,16,0,0,0,0,0,0,28,0,4
	db        0,10,0,130,16,0,0,34,1,0,0,0,0,0,0,0
	db        0,0,0,0,0,59,0,0,0,4,0,26,0,9,0,92
	db        16,0,0,90,16,0,0,93,16,0,0,4,0,0,0,94
	db        16,0,0,0,0,0,0,8,0,2,0,10,0,90,16,0
	db        0,8,0,2,0,10,4,90,16,0,0,4,0,1,2,0
	db        0,26,0,9,0,92,16,0,0,90,16,0,0,93,16,0
	db        0,4,0,1,0,98,16,0,0,0,0,0,0,8,0,2
	db        0,42,0,97,16,0,0,8,0,1,0,1,0,90,16,0
	db        0,8,0,1,2,1,0,96,16,0,0,26,0,9,0,92
	db        16,0,0,90,16,0,0,93,16,0,0,4,0,1,0,100
	db        16,0,0,0,0,0,0,8,0,1,2,1,0,242,255,255
	db        255,26,0,9,0,3,0,0,0,90,16,0,0,93,16,0
	db        0,4,0,0,0,102,16,0,0,0,0,0,0,4,0,1
	db        2,0,0,26,0,9,0,104,16,0,0,90,16,0,0,93
	db        16,0,0,4,0,1,0,105,16,0,0,0,0,0,0,8
	db        0,2,0,42,0,90,16,0,0,8,0,1,2,1,0,104
	db        16,0,0,26,0,9,0,104,16,0,0,90,16,0,0,93
	db        16,0,0,4,0,1,0,107,16,0,0,0,0,0,0,8
	db        0,1,2,1,0,242,255,255,255,26,0,9,0,242,255,255
	db        255,90,16,0,0,109,16,0,0,4,0,0,0,110,16,0
	db        0,0,0,0,0,8,0,2,0,10,4,97,16,0,0,4
	db        0,1,2,0,0,26,0,9,0,48,0,0,0,90,16,0
	db        0,109,16,0,0,0,0,0,0,112,16,0,0,0,0,0
	db        0,4,0,1,2,0,0,26,0,9,0,242,255,255,255,90
	db        16,0,0,109,16,0,0,4,0,0,0,114,16,0,0,0
	db        0,0,0,4,0,1,2,0,0,26,0,9,0,241,255,255
	db        255,90,16,0,0,93,16,0,0,4,0,0,0,116,16,0
	db        0,0,0,0,0,4,0,1,2,0,0,26,0,9,0,3
	db        0,0,0,90,16,0,0,93,16,0,0,0,0,0,0,118
	db        16,0,0,0,0,0,0,4,0,1,2,0,0,26,0,9
	db        0,240,255,255,255,90,16,0,0,93,16,0,0,4,0,0
	db        0,120,16,0,0,0,0,0,0,4,0,1,2,0,0,32
	db        0,7,2,3,4,91,16,0,0,0,0,0,0,3,4,95
	db        16,0,0,0,0,0,0,3,4,99,16,0,0,0,0,0
	db        0,12,0,7,2,3,8,101,16,0,0,0,0,0,0,22
	db        0,7,2,3,1,103,16,0,0,0,0,0,0,3,1,106
	db        16,0,0,0,0,0,0,12,0,7,2,3,1,108,16,0
	db        0,0,0,0,0,12,0,7,2,3,1,111,16,0,0,0
	db        0,0,0,12,0,7,2,3,2,113,16,0,0,0,0,0
	db        0,12,0,7,2,3,1,115,16,0,0,0,0,0,0,12
	db        0,7,2,3,0,117,16,0,0,0,0,0,0,12,0,7
	db        2,3,1,119,16,0,0,0,0,0,0,130,0,4,2,6
	db        4,242,255,255,255,1,0,60,0,0,0,0,0,0,0,0
	db        0,242,241,8,4,3,0,121,16,0,0,61,0,0,0,8
	db        4,1,0,122,16,0,0,62,0,0,0,8,4,2,0,123
	db        16,0,0,63,0,0,0,8,4,1,0,124,16,0,0,64
	db        0,0,0,8,4,1,0,125,16,0,0,65,0,0,0,8
	db        4,1,0,126,16,0,0,66,0,0,0,8,4,1,0,127
	db        16,0,0,67,0,0,0,8,4,1,0,128,16,0,0,68
	db        0,0,0,8,4,1,0,129,16,0,0,69,0,0,0,4
	db        0,1,2,0,0,26,0,9,0,3,0,0,0,133,16,0
	db        0,136,16,0,0,4,0,0,0,174,16,0,0,0,0,0
	db        0,28,0,4,0,10,0,173,16,0,0,34,1,0,0,0
	db        0,0,0,0,0,0,0,0,0,72,0,0,0,4,0,26
	db        0,9,0,135,16,0,0,133,16,0,0,136,16,0,0,4
	db        0,0,0,137,16,0,0,0,0,0,0,8,0,2,0,10
	db        0,133,16,0,0,8,0,2,0,10,4,133,16,0,0,4
	db        0,1,2,0,0,26,0,9,0,135,16,0,0,133,16,0
	db        0,136,16,0,0,4,0,1,0,141,16,0,0,0,0,0
	db        0,8,0,2,0,42,0,140,16,0,0,8,0,1,0,1
	db        0,133,16,0,0,8,0,1,2,1,0,139,16,0,0,26
	db        0,9,0,135,16,0,0,133,16,0,0,136,16,0,0,4
	db        0,1,0,143,16,0,0,0,0,0,0,8,0,1,2,1
	db        0,239,255,255,255,26,0,9,0,3,0,0,0,133,16,0
	db        0,136,16,0,0,4,0,0,0,145,16,0,0,0,0,0
	db        0,4,0,1,2,0,0,26,0,9,0,147,16,0,0,133
	db        16,0,0,136,16,0,0,4,0,1,0,148,16,0,0,0
	db        0,0,0,8,0,2,0,42,0,133,16,0,0,8,0,1
	db        2,1,0,147,16,0,0,26,0,9,0,147,16,0,0,133
	db        16,0,0,136,16,0,0,4,0,1,0,150,16,0,0,0
	db        0,0,0,8,0,1,2,1,0,239,255,255,255,26,0,9
	db        0,239,255,255,255,133,16,0,0,152,16,0,0,4,0,0
	db        0,153,16,0,0,0,0,0,0,8,0,2,0,10,4,140
	db        16,0,0,4,0,1,2,0,0,26,0,9,0,48,0,0
	db        0,133,16,0,0,152,16,0,0,0,0,0,0,155,16,0
	db        0,0,0,0,0,4,0,1,2,0,0,26,0,9,0,239
	db        255,255,255,133,16,0,0,152,16,0,0,4,0,0,0,157
	db        16,0,0,0,0,0,0,4,0,1,2,0,0,26,0,9
	db        0,238,255,255,255,133,16,0,0,136,16,0,0,4,0,0
	db        0,159,16,0,0,0,0,0,0,4,0,1,2,0,0,26
	db        0,9,0,3,0,0,0,133,16,0,0,136,16,0,0,0
	db        0,0,0,161,16,0,0,0,0,0,0,4,0,1,2,0
	db        0,26,0,9,0,237,255,255,255,133,16,0,0,136,16,0
	db        0,4,0,0,0,163,16,0,0,0,0,0,0,4,0,1
	db        2,0,0,32,0,7,2,3,4,134,16,0,0,0,0,0
	db        0,3,4,138,16,0,0,0,0,0,0,3,4,142,16,0
	db        0,0,0,0,0,12,0,7,2,3,8,144,16,0,0,0
	db        0,0,0,22,0,7,2,3,1,146,16,0,0,0,0,0
	db        0,3,1,149,16,0,0,0,0,0,0,12,0,7,2,3
	db        1,151,16,0,0,0,0,0,0,12,0,7,2,3,1,154
	db        16,0,0,0,0,0,0,12,0,7,2,3,2,156,16,0
	db        0,0,0,0,0,12,0,7,2,3,1,158,16,0,0,0
	db        0,0,0,12,0,7,2,3,0,160,16,0,0,0,0,0
	db        0,12,0,7,2,3,1,162,16,0,0,0,0,0,0,130
	db        0,4,2,6,4,239,255,255,255,1,0,73,0,0,0,0
	db        0,0,0,0,0,242,241,8,4,3,0,164,16,0,0,74
	db        0,0,0,8,4,1,0,165,16,0,0,75,0,0,0,8
	db        4,2,0,166,16,0,0,76,0,0,0,8,4,1,0,167
	db        16,0,0,77,0,0,0,8,4,1,0,168,16,0,0,78
	db        0,0,0,8,4,1,0,169,16,0,0,79,0,0,0,8
	db        4,1,0,170,16,0,0,80,0,0,0,8,4,1,0,171
	db        16,0,0,81,0,0,0,8,4,1,0,172,16,0,0,82
	db        0,0,0,4,0,1,2,0,0,26,0,9,0,3,0,0
	db        0,176,16,0,0,179,16,0,0,4,0,0,0,217,16,0
	db        0,0,0,0,0,28,0,4,0,10,0,216,16,0,0,34
	db        1,0,0,0,0,0,0,0,0,0,0,0,0,85,0,0
	db        0,4,0,26,0,9,0,178,16,0,0,176,16,0,0,179
	db        16,0,0,4,0,0,0,180,16,0,0,0,0,0,0,8
	db        0,2,0,10,0,176,16,0,0,8,0,2,0,10,4,176
	db        16,0,0,4,0,1,2,0,0,26,0,9,0,178,16,0
	db        0,176,16,0,0,179,16,0,0,4,0,1,0,184,16,0
	db        0,0,0,0,0,8,0,2,0,42,0,183,16,0,0,8
	db        0,1,0,1,0,176,16,0,0,8,0,1,2,1,0,182
	db        16,0,0,26,0,9,0,178,16,0,0,176,16,0,0,179
	db        16,0,0,4,0,1,0,186,16,0,0,0,0,0,0,8
	db        0,1,2,1,0,236,255,255,255,26,0,9,0,3,0,0
	db        0,176,16,0,0,179,16,0,0,4,0,0,0,188,16,0
	db        0,0,0,0,0,4,0,1,2,0,0,26,0,9,0,190
	db        16,0,0,176,16,0,0,179,16,0,0,4,0,1,0,191
	db        16,0,0,0,0,0,0,8,0,2,0,42,0,176,16,0
	db        0,8,0,1,2,1,0,190,16,0,0,26,0,9,0,190
	db        16,0,0,176,16,0,0,179,16,0,0,4,0,1,0,193
	db        16,0,0,0,0,0,0,8,0,1,2,1,0,236,255,255
	db        255,26,0,9,0,236,255,255,255,176,16,0,0,195,16,0
	db        0,4,0,0,0,196,16,0,0,0,0,0,0,8,0,2
	db        0,10,4,183,16,0,0,4,0,1,2,0,0,26,0,9
	db        0,48,0,0,0,176,16,0,0,195,16,0,0,0,0,0
	db        0,198,16,0,0,0,0,0,0,4,0,1,2,0,0,26
	db        0,9,0,236,255,255,255,176,16,0,0,195,16,0,0,4
	db        0,0,0,200,16,0,0,0,0,0,0,4,0,1,2,0
	db        0,26,0,9,0,235,255,255,255,176,16,0,0,179,16,0
	db        0,4,0,0,0,202,16,0,0,0,0,0,0,4,0,1
	db        2,0,0,26,0,9,0,3,0,0,0,176,16,0,0,179
	db        16,0,0,0,0,0,0,204,16,0,0,0,0,0,0,4
	db        0,1,2,0,0,26,0,9,0,234,255,255,255,176,16,0
	db        0,179,16,0,0,4,0,0,0,206,16,0,0,0,0,0
	db        0,4,0,1,2,0,0,32,0,7,2,3,4,177,16,0
	db        0,0,0,0,0,3,4,181,16,0,0,0,0,0,0,3
	db        4,185,16,0,0,0,0,0,0,12,0,7,2,3,8,187
	db        16,0,0,0,0,0,0,22,0,7,2,3,1,189,16,0
	db        0,0,0,0,0,3,1,192,16,0,0,0,0,0,0,12
	db        0,7,2,3,1,194,16,0,0,0,0,0,0,12,0,7
	db        2,3,1,197,16,0,0,0,0,0,0,12,0,7,2,3
	db        2,199,16,0,0,0,0,0,0,12,0,7,2,3,1,201
	db        16,0,0,0,0,0,0,12,0,7,2,3,0,203,16,0
	db        0,0,0,0,0,12,0,7,2,3,1,205,16,0,0,0
	db        0,0,0,130,0,4,2,6,4,236,255,255,255,1,0,86
	db        0,0,0,0,0,0,0,0,0,242,241,8,4,3,0,207
	db        16,0,0,87,0,0,0,8,4,1,0,208,16,0,0,88
	db        0,0,0,8,4,2,0,209,16,0,0,89,0,0,0,8
	db        4,1,0,210,16,0,0,90,0,0,0,8,4,1,0,211
	db        16,0,0,91,0,0,0,8,4,1,0,212,16,0,0,92
	db        0,0,0,8,4,1,0,213,16,0,0,93,0,0,0,8
	db        4,1,0,214,16,0,0,94,0,0,0,8,4,1,0,215
	db        16,0,0,95,0,0,0,4,0,1,2,0,0,8,0,1
	db        0,1,0,16,0,0,0,8,0,1,0,1,0,33,0,0
	db        0,14,0,8,0,250,255,255,255,4,0,1,0,222,16,0
	db        0,8,0,2,0,10,4,233,255,255,255,8,0,1,2,1
	db        0,221,16,0,0,14,0,8,0,34,0,0,0,7,0,2
	db        0,224,16,0,0,12,0,1,2,2,0,112,4,0,0,34
	db        4,0,0,14,0,8,0,3,4,0,0,0,0,1,0,226
	db        16,0,0,8,0,1,2,1,0,117,0,0,0,14,0,8
	db        0,116,0,0,0,7,0,4,0,228,16,0,0,20,0,1
	db        2,4,0,112,4,0,0,34,0,0,0,34,0,0,0,3
	db        4,0,0,14,0,8,0,3,0,0,0,4,0,2,0,230
	db        16,0,0,12,0,1,2,2,0,31,16,0,0,116,0,0
	db        0,14,0,8,0,116,0,0,0,7,0,4,0,234,16,0
	db        0,8,0,2,0,10,4,3,0,0,0,8,0,2,0,10
	db        0,3,4,0,0,20,0,1,2,4,0,232,16,0,0,112
	db        4,0,0,233,16,0,0,117,4,0,0,14,0,8,0,3
	db        0,0,0,4,0,2,0,237,16,0,0,8,0,2,0,10
	db        4,231,255,255,255,12,0,1,2,2,0,236,16,0,0,35
	db        16,0,0,8,0,1,0,1,0,239,16,0,0,14,0,8
	db        0,250,255,255,255,4,0,2,0,240,16,0,0,12,0,1
	db        2,2,0,34,16,0,0,230,255,255,255,14,0,8,0,250
	db        255,255,255,4,0,1,0,242,16,0,0,8,0,1,2,1
	db        0,116,0,0,0,14,0,8,0,247,255,255,255,4,0,2
	db        0,246,16,0,0,8,0,2,0,10,0,245,16,0,0,8
	db        0,1,0,1,0,112,0,0,0,12,0,1,2,2,0,31
	db        16,0,0,244,16,0,0,14,0,8,0,3,0,0,0,0
	db        0,1,0,248,16,0,0,8,0,1,2,1,0,3,4,0
	db        0,8,0,2,0,10,2,3,0,0,0,14,0,8,0,3
	db        0,0,0,4,0,1,0,251,16,0,0,8,0,1,2,1
	db        0,3,4,0,0,14,0,8,0,116,0,0,0,2,0,0
	db        0,253,16,0,0,4,0,1,2,0,0,14,0,8,0,3
	db        0,0,0,4,0,1,0,0,17,0,0,8,0,2,0,10
	db        4,229,255,255,255,8,0,1,2,1,0,255,16,0,0,14
	db        0,8,0,228,255,255,255,4,0,3,0,2,17,0,0,16
	db        0,1,2,3,0,255,16,0,0,16,0,0,0,251,255,255
	db        255,14,0,8,0,18,0,0,0,4,0,3,0,4,17,0
	db        0,16,0,1,2,3,0,40,16,0,0,252,255,255,255,3
	db        4,0,0,14,0,8,0,3,0,0,0,4,0,1,0,6
	db        17,0,0,8,0,1,2,1,0,255,16,0,0,14,0,8
	db        0,3,0,0,0,4,0,1,0,8,17,0,0,8,0,1
	db        2,1,0,255,16,0,0,14,0,8,0,3,0,0,0,4
	db        0,2,0,11,17,0,0,8,0,2,0,10,4,227,255,255
	db        255,12,0,1,2,2,0,10,17,0,0,3,4,0,0,14
	db        0,8,0,3,0,0,0,4,0,2,0,13,17,0,0,12
	db        0,1,2,2,0,255,16,0,0,3,4,0,0,14,0,8
	db        0,252,255,255,255,4,0,2,0,15,17,0,0,12,0,1
	db        2,2,0,10,17,0,0,226,255,255,255,14,0,8,0,3
	db        0,0,0,4,0,1,0,17,17,0,0,8,0,1,2,1
	db        0,10,17,0,0,14,0,8,0,3,0,0,0,4,0,2
	db        0,20,17,0,0,8,0,2,0,10,4,225,255,255,255,12
	db        0,1,2,2,0,19,17,0,0,224,255,255,255,14,0,8
	db        0,3,0,0,0,4,0,2,0,22,17,0,0,12,0,1
	db        2,2,0,255,16,0,0,223,255,255,255,14,0,8,0,3
	db        0,0,0,4,0,2,0,25,17,0,0,8,0,2,0,10
	db        4,222,255,255,255,12,0,1,2,2,0,24,17,0,0,224
	db        255,255,255,14,0,8,0,3,0,0,0,4,0,1,0,27
	db        17,0,0,8,0,1,2,1,0,255,16,0,0,14,0,8
	db        0,3,0,0,0,4,0,3,0,29,17,0,0,16,0,1
	db        2,3,0,255,16,0,0,251,255,255,255,221,255,255,255,14
	db        0,8,0,3,0,0,0,4,0,2,0,31,17,0,0,12
	db        0,1,2,2,0,255,16,0,0,220,255,255,255,14,0,8
	db        0,3,0,0,0,4,0,2,0,33,17,0,0,12,0,1
	db        2,2,0,236,16,0,0,35,16,0,0,14,0,8,0,3
	db        0,0,0,4,0,4,0,35,17,0,0,20,0,1,2,4
	db        0,255,16,0,0,251,255,255,255,35,16,0,0,35,16,0
	db        0,14,0,8,0,3,0,0,0,4,0,2,0,37,17,0
	db        0,12,0,1,2,2,0,40,16,0,0,219,255,255,255,14
	db        0,8,0,18,0,0,0,7,0,3,0,39,17,0,0,16
	db        0,1,2,3,0,255,16,0,0,218,255,255,255,3,4,0
	db        0,14,0,8,0,3,0,0,0,4,0,3,0,41,17,0
	db        0,16,0,1,2,3,0,19,17,0,0,116,0,0,0,116
	db        0,0,0,14,0,8,0,48,0,0,0,4,0,3,0,44
	db        17,0,0,8,0,2,0,42,0,116,0,0,0,16,0,1
	db        2,3,0,19,17,0,0,43,17,0,0,43,17,0,0,14
	db        0,8,0,48,0,0,0,4,0,3,0,46,17,0,0,16
	db        0,1,2,3,0,19,17,0,0,43,17,0,0,43,17,0
	db        0,14,0,8,0,3,0,0,0,4,0,5,0,48,17,0
	db        0,24,0,1,2,5,0,19,17,0,0,43,17,0,0,43
	db        17,0,0,43,17,0,0,43,17,0,0,14,0,8,0,217
	db        255,255,255,4,0,1,0,50,17,0,0,8,0,1,2,1
	db        0,19,17,0,0,14,0,8,0,216,255,255,255,4,0,1
	db        0,52,17,0,0,8,0,1,2,1,0,255,16,0,0,14
	db        0,8,0,3,4,0,0,4,0,2,0,55,17,0,0,8
	db        0,2,0,42,0,3,4,0,0,12,0,1,2,2,0,19
	db        17,0,0,54,17,0,0,14,0,8,0,215,255,255,255,4
	db        0,1,0,57,17,0,0,8,0,1,2,1,0,236,16,0
	db        0,14,0,8,0,48,0,0,0,4,0,1,0,59,17,0
	db        0,8,0,1,2,1,0,236,16,0,0,14,0,8,0,48
	db        0,0,0,4,0,1,0,61,17,0,0,8,0,1,2,1
	db        0,255,16,0,0,14,0,8,0,226,255,255,255,4,0,1
	db        0,63,17,0,0,8,0,1,2,1,0,236,16,0,0,14
	db        0,8,0,3,0,0,0,4,0,2,0,65,17,0,0,12
	db        0,1,2,2,0,236,16,0,0,214,255,255,255,14,0,8
	db        0,3,0,0,0,4,0,2,0,67,17,0,0,12,0,1
	db        2,2,0,236,16,0,0,48,0,0,0,14,0,8,0,3
	db        0,0,0,4,0,2,0,69,17,0,0,12,0,1,2,2
	db        0,255,16,0,0,213,255,255,255,14,0,8,0,3,0,0
	db        0,4,0,2,0,71,17,0,0,12,0,1,2,2,0,255
	db        16,0,0,48,0,0,0,14,0,8,0,3,0,0,0,4
	db        0,2,0,73,17,0,0,12,0,1,2,2,0,236,16,0
	db        0,212,255,255,255,14,0,8,0,3,0,0,0,4,0,2
	db        0,75,17,0,0,12,0,1,2,2,0,255,16,0,0,211
	db        255,255,255,14,0,8,0,3,0,0,0,4,0,1,0,77
	db        17,0,0,8,0,1,2,1,0,236,16,0,0,14,0,8
	db        0,3,0,0,0,4,0,1,0,79,17,0,0,8,0,1
	db        2,1,0,19,17,0,0,14,0,8,0,3,0,0,0,4
	db        0,1,0,81,17,0,0,8,0,1,2,1,0,19,17,0
	db        0,14,0,8,0,3,0,0,0,4,0,5,0,83,17,0
	db        0,24,0,1,2,5,0,19,17,0,0,116,0,0,0,116
	db        0,0,0,116,0,0,0,116,0,0,0,14,0,8,0,3
	db        0,0,0,4,0,1,0,85,17,0,0,8,0,1,2,1
	db        0,19,17,0,0,14,0,8,0,3,0,0,0,4,0,2
	db        0,88,17,0,0,8,0,2,0,10,4,210,255,255,255,12
	db        0,1,2,2,0,87,17,0,0,209,255,255,255,14,0,8
	db        0,3,0,0,0,4,0,3,0,90,17,0,0,16,0,1
	db        2,3,0,255,16,0,0,208,255,255,255,209,255,255,255,14
	db        0,8,0,3,0,0,0,4,0,1,0,92,17,0,0,8
	db        0,1,2,1,0,19,17,0,0,14,0,8,0,3,0,0
	db        0,4,0,2,0,94,17,0,0,12,0,1,2,2,0,255
	db        16,0,0,207,255,255,255,14,0,8,0,3,0,0,0,4
	db        0,2,0,96,17,0,0,12,0,1,2,2,0,255,16,0
	db        0,207,255,255,255,14,0,8,0,3,0,0,0,4,0,1
	db        0,98,17,0,0,8,0,1,2,1,0,255,16,0,0,14
	db        0,8,0,3,0,0,0,4,0,1,0,100,17,0,0,8
	db        0,1,2,1,0,255,16,0,0,14,0,8,0,3,0,0
	db        0,4,0,1,0,102,17,0,0,8,0,1,2,1,0,19
	db        17,0,0,14,0,8,0,216,255,255,255,4,0,1,0,104
	db        17,0,0,8,0,1,2,1,0,19,17,0,0,14,0,8
	db        0,3,0,0,0,4,0,2,0,106,17,0,0,12,0,1
	db        2,2,0,255,16,0,0,3,4,0,0,14,0,8,0,3
	db        0,0,0,4,0,2,0,108,17,0,0,12,0,1,2,2
	db        0,19,17,0,0,208,255,255,255,14,0,8,0,3,0,0
	db        0,4,0,1,0,110,17,0,0,8,0,1,2,1,0,255
	db        16,0,0,14,0,8,0,48,0,0,0,4,0,1,0,112
	db        17,0,0,8,0,1,2,1,0,87,17,0,0,14,0,8
	db        0,3,0,0,0,4,0,1,0,114,17,0,0,8,0,1
	db        2,1,0,255,16,0,0,14,0,8,0,48,0,0,0,4
	db        0,1,0,116,17,0,0,8,0,1,2,1,0,255,16,0
	db        0,14,0,8,0,48,0,0,0,4,0,2,0,118,17,0
	db        0,12,0,1,2,2,0,255,16,0,0,213,255,255,255,14
	db        0,8,0,116,0,0,0,4,0,1,0,120,17,0,0,8
	db        0,1,2,1,0,255,16,0,0,14,0,8,0,48,0,0
	db        0,4,0,3,0,122,17,0,0,16,0,1,2,3,0,255
	db        16,0,0,208,255,255,255,211,255,255,255,14,0,8,0,247
	db        255,255,255,4,0,2,0,124,17,0,0,12,0,1,2,2
	db        0,31,16,0,0,230,255,255,255,14,0,8,0,3,0,0
	db        0,4,0,4,0,126,17,0,0,20,0,1,2,4,0,226
	db        255,255,255,48,0,0,0,35,16,0,0,35,16,0,0,14
	db        0,8,0,228,255,255,255,4,0,4,0,128,17,0,0,20
	db        0,1,2,4,0,255,16,0,0,16,0,0,0,251,255,255
	db        255,116,0,0,0,14,0,8,0,3,0,0,0,4,0,2
	db        0,130,17,0,0,12,0,1,2,2,0,255,16,0,0,16
	db        0,0,0,14,0,8,0,3,0,0,0,0,0,1,0,132
	db        17,0,0,8,0,1,2,1,0,3,4,0,0,14,0,8
	db        0,3,0,0,0,4,0,2,0,134,17,0,0,12,0,1
	db        2,2,0,87,17,0,0,16,0,0,0,14,0,8,0,3
	db        0,0,0,4,0,2,0,136,17,0,0,12,0,1,2,2
	db        0,19,17,0,0,16,0,0,0,14,0,8,0,3,0,0
	db        0,4,0,2,0,138,17,0,0,12,0,1,2,2,0,236
	db        16,0,0,16,0,0,0,14,0,8,0,3,0,0,0,4
	db        0,2,0,140,17,0,0,12,0,1,2,2,0,40,16,0
	db        0,16,0,0,0,14,0,8,0,3,0,0,0,4,0,2
	db        0,142,17,0,0,12,0,1,2,2,0,24,17,0,0,16
	db        0,0,0,14,0,8,0,3,0,0,0,4,0,2,0,144
	db        17,0,0,12,0,1,2,2,0,10,17,0,0,16,0,0
	db        0
$$BTYPES	ends
$$BNAMES	segment byte public use32 'DEBNAM'
	db	10,'TAboutForm'
	db	12,'VersionLabel'
	db	6,'Label1'
	db	7,'Button1'
	db	6,'Label2'
	db	6,'Label3'
	db	6,'Label4'
	db	12,'Button1Click'
	db	42,'@TAboutForm@$bctr$qqrp18Classes@TComponent'
	db	32,'@TAboutForm@$basg$qr10TAboutForm'
	db	22,'@TAboutForm@$bdtr$qqrv'
	db	42,'@TAboutForm@$bctr$qqrp18Classes@TComponent'
	db	4,'this'
	db	5,'Owner'
	db	8,'app_name'
	db	6,'handle'
	db	4,'size'
	db	7,'ffisize'
	db	4,'ffip'
	db	3,'buf'
	db	12,'VersionMinor'
	db	12,'VersionMajor'
	db	24,'@TAboutForm@Button1Click'
	db	4,'this'
	db	6,'Sender'
	db	43,'@Forms@TForm@$bctr$qqrp18Classes@TComponent'
	db	4,'this'
	db	6,'AOwner'
	db	29,'@System@AnsiString@$bctr$qqrv'
	db	4,'this'
	db	24,'@System@AnsiString@c_str'
	db	4,'this'
	db	22,'@TAboutForm@$bdtr$qqrv'
	db	4,'this'
	db	34,'@Classes@TComponent@UpdateRegistry'
	db	4,'this'
	db	8,'Register'
	db	7,'ClassID'
	db	6,'ProgID'
	db	44,'@Forms@TForm@$bctr$qqrp18Classes@TComponenti'
	db	4,'this'
	db	6,'AOwner'
	db	5,'Dummy'
	db	23,'@Forms@TForm@$bdtr$qqrv'
	db	4,'this'
	db	50,'@System@%DelphiInterface$t21Controls@IDockManager%'
	db	4,'intf'
	db	61,'@System@%DelphiInterface$t21Controls@IDockManager%@$bctr$qqrv'
	db	61,'@System@%DelphiInterface$t21Controls@IDockManager%@$bdtr$qqrv'
	db	112,'@System@%DelphiInterface$t21Controls@IDockManager%@$basg$qqrr49System@%DelphiInterface$t21Controls@IDockManager%'
	db	63,'@System@%DelphiInterface$t21Controls@IDockManager%@$barow$xqqrv'
	db	60,'@System@%DelphiInterface$t21Controls@IDockManager%@$bnot$xqv'
	db	23,'operator IDockManager *'
	db	61,'@System@%DelphiInterface$t21Controls@IDockManager%@$bind$qqrv'
	db	7,'Release'
	db	61,'@System@%DelphiInterface$t21Controls@IDockManager%@$badr$qqrv'
	db	61,'@System@%DelphiInterface$t21Controls@IDockManager%@$bdtr$qqrv'
	db	4,'this'
	db	43,'@System@%DelphiInterface$t14Forms@IOleForm%'
	db	4,'intf'
	db	54,'@System@%DelphiInterface$t14Forms@IOleForm%@$bctr$qqrv'
	db	54,'@System@%DelphiInterface$t14Forms@IOleForm%@$bdtr$qqrv'
	db	98,'@System@%DelphiInterface$t14Forms@IOleForm%@$basg$qqrr42System@%DelphiInterface$t14Forms@IOleForm%'
	db	56,'@System@%DelphiInterface$t14Forms@IOleForm%@$barow$xqqrv'
	db	53,'@System@%DelphiInterface$t14Forms@IOleForm%@$bnot$xqv'
	db	19,'operator IOleForm *'
	db	54,'@System@%DelphiInterface$t14Forms@IOleForm%@$bind$qqrv'
	db	7,'Release'
	db	54,'@System@%DelphiInterface$t14Forms@IOleForm%@$badr$qqrv'
	db	54,'@System@%DelphiInterface$t14Forms@IOleForm%@$bdtr$qqrv'
	db	4,'this'
	db	44,'@System@%DelphiInterface$t15Forms@IDesigner%'
	db	4,'intf'
	db	55,'@System@%DelphiInterface$t15Forms@IDesigner%@$bctr$qqrv'
	db	55,'@System@%DelphiInterface$t15Forms@IDesigner%@$bdtr$qqrv'
	db	100,'@System@%DelphiInterface$t15Forms@IDesigner%@$basg$qqrr43System@%DelphiInterface$t15Forms@IDesigner%'
	db	57,'@System@%DelphiInterface$t15Forms@IDesigner%@$barow$xqqrv'
	db	54,'@System@%DelphiInterface$t15Forms@IDesigner%@$bnot$xqv'
	db	20,'operator IDesigner *'
	db	55,'@System@%DelphiInterface$t15Forms@IDesigner%@$bind$qqrv'
	db	7,'Release'
	db	55,'@System@%DelphiInterface$t15Forms@IDesigner%@$badr$qqrv'
	db	55,'@System@%DelphiInterface$t15Forms@IDesigner%@$bdtr$qqrv'
	db	4,'this'
	db	36,'@System@%DelphiInterface$t8IUnknown%'
	db	4,'intf'
	db	47,'@System@%DelphiInterface$t8IUnknown%@$bctr$qqrv'
	db	47,'@System@%DelphiInterface$t8IUnknown%@$bdtr$qqrv'
	db	84,'@System@%DelphiInterface$t8IUnknown%@$basg$qqrr35System@%DelphiInterface$t8IUnknown%'
	db	49,'@System@%DelphiInterface$t8IUnknown%@$barow$xqqrv'
	db	46,'@System@%DelphiInterface$t8IUnknown%@$bnot$xqv'
	db	19,'operator IUnknown *'
	db	47,'@System@%DelphiInterface$t8IUnknown%@$bind$qqrv'
	db	7,'Release'
	db	47,'@System@%DelphiInterface$t8IUnknown%@$badr$qqrv'
	db	47,'@System@%DelphiInterface$t8IUnknown%@$bdtr$qqrv'
	db	4,'this'
	db	9,'AboutForm'
	db	3,'std'
	db	6,'System'
	db	19,'@System@varSmallint'
	db	18,'@System@varInteger'
	db	17,'@System@varSingle'
	db	17,'@System@varDouble'
	db	19,'@System@varCurrency'
	db	15,'@System@varDate'
	db	17,'@System@varOleStr'
	db	19,'@System@varDispatch'
	db	18,'@System@varBoolean'
	db	18,'@System@varVariant'
	db	18,'@System@varUnknown'
	db	15,'@System@varByte'
	db	16,'@System@varByRef'
	db	17,'@System@vtInteger'
	db	17,'@System@vtBoolean'
	db	14,'@System@vtChar'
	db	18,'@System@vtExtended'
	db	16,'@System@vtString'
	db	17,'@System@vtPointer'
	db	15,'@System@vtPChar'
	db	16,'@System@vtObject'
	db	15,'@System@vtClass'
	db	18,'@System@vtWideChar'
	db	19,'@System@vtPWideChar'
	db	20,'@System@vtAnsiString'
	db	18,'@System@vtCurrency'
	db	17,'@System@vtVariant'
	db	8,'Sysutils'
	db	7,'Sysinit'
	db	7,'Windows'
	db	8,'Messages'
	db	8,'Sysconst'
	db	7,'Classes'
	db	8,'Graphics'
	db	8,'Commctrl'
	db	7,'Imglist'
	db	8,'Actnlist'
	db	3,'Imm'
	db	5,'Menus'
	db	8,'Multimon'
	db	8,'Controls'
	db	5,'Forms'
	db	8,'Stdctrls'
	db	7,'Commdlg'
	db	7,'Dialogs'
	db	8,'Extctrls'
	db	2,'Db'
	db	7,'Toolwin'
	db	8,'Richedit'
	db	8,'Comctrls'
	db	7,'Buttons'
	db	4,'Mask'
	db	7,'Dbctrls'
	db	6,'Stdvcl'
	db	6,'Smintf'
	db	3,'Bde'
	db	8,'Dbcommon'
	db	8,'Dbtables'
	db	7,'Activex'
	db	6,'Comobj'
	db	7,'Axctrls'
	db	7,'Databkr'
	db	6,'Oledlg'
	db	8,'Olectnrs'
	db	8,'Olectrls'
	db	10,'TAboutForm'
	db	8,'Olectrls'
	db	8,'Olectnrs'
	db	6,'Oledlg'
	db	7,'Databkr'
	db	7,'Axctrls'
	db	6,'Comobj'
	db	7,'Activex'
	db	8,'Dbtables'
	db	8,'Dbcommon'
	db	3,'Bde'
	db	6,'Smintf'
	db	6,'Stdvcl'
	db	7,'Dbctrls'
	db	4,'Mask'
	db	7,'Buttons'
	db	8,'Comctrls'
	db	8,'Richedit'
	db	7,'Toolwin'
	db	2,'Db'
	db	8,'Extctrls'
	db	7,'Dialogs'
	db	7,'Commdlg'
	db	8,'Stdctrls'
	db	5,'Forms'
	db	8,'Controls'
	db	8,'Multimon'
	db	5,'Menus'
	db	3,'Imm'
	db	8,'Actnlist'
	db	7,'Imglist'
	db	8,'Commctrl'
	db	8,'Graphics'
	db	7,'Classes'
	db	8,'Sysutils'
	db	8,'Sysconst'
	db	8,'Messages'
	db	7,'Windows'
	db	7,'Sysinit'
	db	6,'System'
	db	8,'heapwalk'
	db	13,'heapchecknode'
	db	13,'heapcheckfree'
	db	12,'heapfillfree'
	db	9,'heapcheck'
	db	11,'_wgetcurdir'
	db	8,'_wgetcwd'
	db	9,'_wfnmerge'
	db	9,'_wfnsplit'
	db	11,'_wfindclose'
	db	10,'_wfindnext'
	db	11,'_wfindfirst'
	db	8,'_wmktemp'
	db	11,'wsearchpath'
	db	7,'_wrmdir'
	db	7,'_wmkdir'
	db	7,'_wchdir'
	db	5,'rmdir'
	db	6,'mktemp'
	db	5,'mkdir'
	db	7,'setdisk'
	db	10,'searchpath'
	db	6,'_rmdir'
	db	7,'_mktemp'
	db	6,'_mkdir'
	db	7,'getdisk'
	db	6,'getcwd'
	db	9,'getcurdir'
	db	7,'fnsplit'
	db	7,'fnmerge'
	db	9,'findclose'
	db	8,'findnext'
	db	9,'findfirst'
	db	5,'chdir'
	db	5,'_rotr'
	db	5,'_rotl'
	db	6,'_crotr'
	db	6,'_lrotr'
	db	6,'_lrotl'
	db	6,'_crotl'
	db	3,'abs'
	db	6,'wctomb'
	db	7,'wcstoul'
	db	8,'wcstombs'
	db	6,'wcstol'
	db	6,'wcstod'
	db	5,'ultoa'
	db	4,'time'
	db	6,'system'
	db	4,'swab'
	db	7,'strtoul'
	db	6,'strtol'
	db	6,'strtod'
	db	5,'srand'
	db	7,'realloc'
	db	4,'rand'
	db	6,'putenv'
	db	6,'perror'
	db	6,'mbtowc'
	db	8,'mbstowcs'
	db	5,'mblen'
	db	26,'@std@%max$T1%$qrxT1t1$rxT1'
	db	26,'@std@%min$T1%$qrxT1t1$rxT1'
	db	17,'@std@randomize$qv'
	db	14,'@std@random$qi'
	db	4,'ltoa'
	db	4,'gcvt'
	db	4,'fcvt'
	db	4,'ecvt'
	db	6,'malloc'
	db	4,'ldiv'
	db	4,'labs'
	db	4,'itoa'
	db	6,'getenv'
	db	4,'free'
	db	4,'exit'
	db	3,'div'
	db	6,'calloc'
	db	4,'atol'
	db	4,'atoi'
	db	4,'atof'
	db	6,'atexit'
	db	5,'abort'
	db	6,'_wtold'
	db	5,'_wtol'
	db	5,'_wtoi'
	db	5,'_wtof'
	db	8,'_wsystem'
	db	11,'_wsplitpath'
	db	11,'_wsearchstr'
	db	11,'_wsearchenv'
	db	8,'_wputenv'
	db	8,'_wperror'
	db	10,'_wmakepath'
	db	8,'_wgetenv'
	db	10,'_wfullpath'
	db	8,'_wcstold'
	db	8,'_strtold'
	db	10,'_splitpath'
	db	10,'_searchstr'
	db	10,'_searchenv'
	db	9,'_makepath'
	db	7,'_wtoi64'
	db	8,'_ui64tow'
	db	8,'_ui64toa'
	db	7,'_i64tow'
	db	7,'_i64toa'
	db	7,'_atoi64'
	db	5,'_ltow'
	db	5,'_ltoa'
	db	6,'_lrand'
	db	5,'_itow'
	db	6,'_ultow'
	db	5,'_gcvt'
	db	5,'_fcvt'
	db	9,'_fullpath'
	db	5,'_exit'
	db	6,'_atold'
	db	5,'_ecvt'
	db	7,'__errno'
	db	10,'__doserrno'
	db	5,'qsort'
	db	7,'lsearch'
	db	5,'lfind'
	db	7,'bsearch'
	db	7,'wcsxfrm'
	db	6,'wcstok'
	db	6,'wcsstr'
	db	6,'wcsspn'
	db	7,'wcsrchr'
	db	7,'wcspcpy'
	db	7,'wcspbrk'
	db	7,'wcsncpy'
	db	7,'wcsncmp'
	db	7,'wcsncat'
	db	6,'wcslen'
	db	7,'wcscspn'
	db	6,'wcscpy'
	db	7,'wcscoll'
	db	6,'wcscmp'
	db	6,'wcschr'
	db	6,'wcscat'
	db	7,'strcoll'
	db	7,'strxfrm'
	db	6,'strtok'
	db	18,'@std@strstr$qpxct1'
	db	18,'@std@strstr$qpcpxc'
	db	6,'strspn'
	db	19,'@std@strpbrk$qpxct1'
	db	19,'@std@strpbrk$qpcpxc'
	db	8,'strerror'
	db	7,'strcspn'
	db	18,'@std@strrchr$qpxci'
	db	17,'@std@strrchr$qpci'
	db	7,'strncpy'
	db	7,'strncmp'
	db	7,'strncat'
	db	6,'strlen'
	db	6,'strcpy'
	db	6,'strcmp'
	db	17,'@std@strchr$qpxci'
	db	16,'@std@strchr$qpci'
	db	6,'strcat'
	db	6,'strset'
	db	6,'stpcpy'
	db	7,'strnset'
	db	7,'_wcsupr'
	db	7,'_wcsset'
	db	7,'_wcsrev'
	db	8,'_wcspcpy'
	db	8,'_wcsnset'
	db	10,'_wcsnicoll'
	db	9,'_wcsnicmp'
	db	9,'_wcsncoll'
	db	7,'_wcslwr'
	db	9,'_wcsicoll'
	db	8,'_wcsicmp'
	db	7,'_wcsdup'
	db	10,'_strnicoll'
	db	9,'_strncoll'
	db	9,'_stricoll'
	db	9,'_strerror'
	db	9,'_lwcsxfrm'
	db	8,'_lwcsupr'
	db	11,'_lwcsnicoll'
	db	10,'_lwcsncoll'
	db	8,'_lwcslwr'
	db	10,'_lwcsicoll'
	db	9,'_lwcscoll'
	db	9,'_lstrxfrm'
	db	11,'_lstrnicoll'
	db	10,'_lstrncoll'
	db	10,'_lstricoll'
	db	9,'_lstrcoll'
	db	6,'strupr'
	db	6,'strrev'
	db	8,'strnicmp'
	db	6,'strlwr'
	db	7,'stricmp'
	db	6,'strdup'
	db	7,'_stpcpy'
	db	8,'_lstrupr'
	db	8,'_lstrlwr'
	db	10,'_ltowlower'
	db	10,'_ltowupper'
	db	8,'towupper'
	db	8,'towlower'
	db	9,'_ltoupper'
	db	7,'toupper'
	db	9,'_ltolower'
	db	7,'tolower'
	db	8,'iswascii'
	db	9,'iswxdigit'
	db	8,'iswupper'
	db	8,'iswspace'
	db	8,'iswpunct'
	db	8,'iswprint'
	db	8,'iswlower'
	db	8,'iswgraph'
	db	8,'iswdigit'
	db	8,'iswcntrl'
	db	8,'iswalpha'
	db	8,'iswalnum'
	db	7,'isascii'
	db	8,'isxdigit'
	db	7,'isupper'
	db	7,'isspace'
	db	7,'ispunct'
	db	7,'isprint'
	db	7,'islower'
	db	7,'isgraph'
	db	7,'isdigit'
	db	7,'iscntrl'
	db	7,'isalpha'
	db	7,'isalnum'
	db	6,'memset'
	db	6,'memcpy'
	db	6,'memcmp'
	db	19,'@std@memchr$qpxviui'
	db	18,'@std@memchr$qpviui'
	db	7,'memmove'
	db	7,'memicmp'
	db	7,'memccpy'
	db	8,'_wmemset'
	db	8,'_wmemcpy'
	db	21,'@std@_wmemchr$qpxviui'
	db	20,'@std@_wmemchr$qpviui'
	db	10,'__threadid'
	db	14,'@std@ptrdiff_t'
	db	11,'@std@size_t'
	db	11,'@std@wint_t'
	db	13,'@std@wctype_t'
	db	12,'@std@va_list'
	db	9,'_chartype'
	db	6,'_lower'
	db	6,'_upper'
	db	5,'_argc'
	db	5,'_argv'
	db	12,'__mb_cur_max'
	db	16,'_cmdline_escapes'
	db	8,'_environ'
	db	9,'_fileinfo'
	db	6,'_fmode'
	db	8,'_osmajor'
	db	8,'_osminor'
	db	7,'_osmode'
	db	10,'_osversion'
	db	12,'_sys_errlist'
	db	9,'_sys_nerr'
	db	9,'_wenviron'
	db	13,'@std@atexit_t'
	db	10,'@std@div_t'
	db	11,'@std@ldiv_t'
	db	6,'_TCHAR'
	db	7,'_TSCHAR'
	db	7,'_TUCHAR'
	db	7,'_TXCHAR'
	db	5,'_TINT'
	db	10,'@std@ffblk'
	db	12,'@std@_wffblk'
	db	13,'@std@heapinfo'
$$BNAMES	ends
	?debug	D "D:\develop\MidicontrollerPatchEditor\WindowsMidiControllerPatchEditor\aBOUT.h" 11364 31842
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\OleCtrls.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\DocObj.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\dlgs.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\oledlg.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\OleDlg.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\OleCtnrs.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\databkr.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\objsafe.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\docobj.H" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\ocidl.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\olectl.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\ActiveX.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\ComObj.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\AxCtrls.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\stddef.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\shellapi.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\oleauto.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\ole2.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\oaidl.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\msxml.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\servprov.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\oleidl.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\urlmon.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\objidl.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\pshpack8.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\objbase.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\alloc.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\malloc.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\tchar.h" 9921 8224
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\dir.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\cguid.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\DBCommon.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\Bde.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\SMIntf.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\StdVCL.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\dbtables.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\Mask.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\Buttons.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\RichEdit.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\RichEdit.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\ToolWin.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\ComCtrls.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\Db.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\dbctrls.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\extctrls.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\commdlg.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\CommDlg.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\StdCtrls.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\dialogs.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\forms.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\multimon.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\MultiMon.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\Menus.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\Imm.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\prsht.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\CommCtrl.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\Commctrl.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\ImgList.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\ActnList.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\controls.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\graphics.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\classes.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\SysConst.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\sysutils.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\messages.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\dde.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\SysInit.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\windows.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\unknwn.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\sysvari.h" 9921 8224
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\sysopen.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\search.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\stdlib.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\sysdyn.h" 9921 8224
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\systvar.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\sysset.h" 9921 8224
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\syscomp.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\syscurr.h" 9921 8224
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\systdate.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\systobj.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\rpcnsip.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\rpcndr.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\rpcnterr.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\rpcnsi.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\rpcdcep.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\rpcdce.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\rpc.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\wtypes.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\wstring.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\sysmac.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\dstring.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\sysclass.H" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\basetyps.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\imm.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\mcx.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\winsvc.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\winnetwk.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\winreg.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\winver.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\wincon.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\winnls.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\winuser.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\pshpack1.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\wingdi.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\winerror.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\winbase.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\string.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\pshpack2.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\poppack.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\pshpack4.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\ctype.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\winnt.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\windef.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\stdarg.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\excpt.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\_null.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\_defs.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\_stddef.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\mem.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\windows.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\sysmac.H" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\system.hpp" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\vcl0.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\VCL3.H" 9787 8192
	?debug	D "D:\develop\MidicontrollerPatchEditor\WindowsMidiControllerPatchEditor\About.cpp" 11364 31841
	?debug	C FB062A633A5C50524F4752417E315C626F726C616E645C434255494C447E315C6C69625C76636C34302E2330308BA32500C5635B30
	?debug	C FB05062354466F726D
	?debug	C FB0508232A544C6162656C
	?debug	C FB0509232A54427574746F6E
	?debug	C FB0509232A544F626A656374
	?debug	C FB050C232A54436F6D706F6E656E74
	?debug	C FB050B23416E7369537472696E67
	?debug	C FB0515232A74616756535F464958454446494C45494E464F
	?debug	C FB0507232A54466F726D
	?debug	C FB050C232A416E7369537472696E67
	?debug	C FB050B2354436F6D706F6E656E74
	?debug	C FB050E232A49446F636B4D616E61676572
	?debug	C FB050E232649446F636B4D616E61676572
	?debug	C FB050F232A2A49446F636B4D616E61676572
	?debug	C FB050A232A494F6C65466F726D
	?debug	C FB050A2326494F6C65466F726D
	?debug	C FB050B232A2A494F6C65466F726D
	?debug	C FB050B232A4944657369676E6572
	?debug	C FB050B23264944657369676E6572
	?debug	C FB050C232A2A4944657369676E6572
	?debug	C FB050A232A49556E6B6E6F776E
	?debug	C FB050A232649556E6B6E6F776E
	?debug	C FB050B232A2A49556E6B6E6F776E
	?debug	C FB050D23544170706C69636174696F6E
	?debug	C FB050E232A544170706C69636174696F6E
	?debug	C FB05092354436F6E74726F6C
	?debug	C FB050C2326416E7369537472696E67
	?debug	C FB050C2354437573746F6D466F726D
	?debug	C FB050D232A54437573746F6D466F726D
	?debug	C FB050823544F626A656374
	?debug	C FB050C232A544D657461436C617373
	?debug	C FB050C235457696E436F6E74726F6C
	?debug	C FB050D232A5450657273697374656E74
	?debug	C FB0508232A5446696C6572
	?debug	C FB050C235450657273697374656E74
	?debug	C FB050B23544F7065726174696F6E
	?debug	C FB0509232A54526561646572
	?debug	C FB0509232A54577269746572
	?debug	C FB050723265F47554944
	?debug	C FB05072354506F696E74
	?debug	C FB0506235452656374
	?debug	C FB0510232A5444726167496D6167654C697374
	?debug	C FB050A2354447261674D6F6465
	?debug	C FB050D232A5457696E436F6E74726F6C
	?debug	C FB050A2354426944694D6F6465
	?debug	C FB050A2326544D657373616765
	?debug	C FB051523545363726F6C6C696E6757696E436F6E74726F6C
	?debug	C FB050723265452656374
	?debug	C FB050A232A54436F6E74726F6C
	?debug	C FB050F232654437265617465506172616D73
	end
