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
	?debug	S "D:\develop\MidicontrollerPatchEditor\WindowsMidiControllerPatchEditor\PatchEditor.cpp"
	?debug	T "D:\develop\MidicontrollerPatchEditor\WindowsMidiControllerPatchEditor\PatchEditor.cpp"
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
DGROUP	group	_BSS,_DATA
_DATA	segment dword public use32 'DATA'
_ANA_OUT_CONTROLLER	label	byte
	db	1
	db	2
	db	4
	db	7
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@DoMidiMerge$qv	segment virtual
@@DoMidiMerge$qv	proc	near
?live16385@0:
	?debug	T "..\MIDICONTROLLER\CODE\midicfg.h"
	?debug L 74
	push      ebp
	mov       ebp,esp
	?debug L 76
@1:
	push      2
	call      @@ReadConfigByte$qi
	pop       ecx
	and       eax,255
	?debug L 77
@3:
@2:
	pop       ebp
	ret 
	?debug L 0
@@DoMidiMerge$qv	endp
@DoMidiMerge$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	db	2
	db	0
	db	0
	db	0
	dw	62
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
	df	@@DoMidiMerge$qv
	dw	0
	dw	4096
	dw	0
	dw	1
	dw	0
	dw	0
	dw	0
	db	15
	db	64
	db	68
	db	111
	db	77
	db	105
	db	100
	db	105
	db	77
	db	101
	db	114
	db	103
	db	101
	db	36
	db	113
	db	118
?patch1	equ	@3-@@DoMidiMerge$qv+2
?patch2	equ	0
?patch3	equ	@3-@@DoMidiMerge$qv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@ReadMidiConfig$qp14str_midiconfiguc	segment virtual
@@ReadMidiConfig$qp14str_midiconfiguc	proc	near
?live16386@0:
	?debug L 81
	push      ebp
	mov       ebp,esp
	add       esp,-12
	?debug L 87
@4:
	mov       eax,dword ptr [ebp+8]
	mov       dword ptr [ebp-8],eax
	?debug L 88
	mov       dl,byte ptr [ebp+12]
	shl       edx,2
	add       dl,32
	mov       byte ptr [ebp-9],dl
	?debug L 91
	mov       byte ptr [ebp-1],0
	?debug L 93
@5:
	mov       cl,byte ptr [ebp-9]
	add       cl,byte ptr [ebp-1]
	xor       eax,eax
	mov       al,cl
	push      eax
	call      @@ReadConfigByte$qi
	pop       ecx
	xor       edx,edx
	mov       dl,byte ptr [ebp-1]
	mov       ecx,dword ptr [ebp-8]
	mov       byte ptr [ecx+edx],al
	inc       byte ptr [ebp-1]
	cmp       byte ptr [ebp-1],4
	jb        short @5
	?debug L 95
@8:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@ReadMidiConfig$qp14str_midiconfiguc	endp
@ReadMidiConfig$qp14str_midiconfiguc	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	83
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch4
	dd	?patch5
	dd	?patch6
	df	@@ReadMidiConfig$qp14str_midiconfiguc
	dw	0
	dw	4098
	dw	0
	dw	7
	dw	0
	dw	0
	dw	0
	db	36
	db	64
	db	82
	db	101
	db	97
	db	100
	db	77
	db	105
	db	100
	db	105
	db	67
	db	111
	db	110
	db	102
	db	105
	db	103
	db	36
	db	113
	db	112
	db	49
	db	52
	db	115
	db	116
	db	114
	db	95
	db	109
	db	105
	db	100
	db	105
	db	99
	db	111
	db	110
	db	102
	db	105
	db	103
	db	117
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4099
	dw	0
	dw	8
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	32
	dw	0
	dw	9
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65527
	dw	65535
	dw	32
	dw	0
	dw	10
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	1056
	dw	0
	dw	11
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65535
	dw	65535
	dw	32
	dw	0
	dw	12
	dw	0
	dw	0
	dw	0
?patch4	equ	@8-@@ReadMidiConfig$qp14str_midiconfiguc+4
?patch5	equ	0
?patch6	equ	@8-@@ReadMidiConfig$qp14str_midiconfiguc
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@WriteMidiConfig$qp14str_midiconfiguc	segment virtual
@@WriteMidiConfig$qp14str_midiconfiguc	proc	near
?live16387@0:
	?debug L 99
	push      ebp
	mov       ebp,esp
	add       esp,-12
	?debug L 105
@9:
	mov       eax,dword ptr [ebp+8]
	mov       dword ptr [ebp-8],eax
	?debug L 107
	mov       dl,byte ptr [ebp+12]
	shl       edx,2
	add       dl,32
	mov       byte ptr [ebp-9],dl
	?debug L 110
	mov       byte ptr [ebp-1],0
	?debug L 112
@10:
	xor       ecx,ecx
	mov       cl,byte ptr [ebp-1]
	mov       eax,dword ptr [ebp-8]
	mov       dl,byte ptr [eax+ecx]
	push      edx
	mov       cl,byte ptr [ebp-9]
	add       cl,byte ptr [ebp-1]
	xor       eax,eax
	mov       al,cl
	push      eax
	call      @@WriteConfigByte$qiuc
	add       esp,8
	inc       byte ptr [ebp-1]
	cmp       byte ptr [ebp-1],4
	jb        short @10
	?debug L 114
@13:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@WriteMidiConfig$qp14str_midiconfiguc	endp
@WriteMidiConfig$qp14str_midiconfiguc	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	84
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch7
	dd	?patch8
	dd	?patch9
	df	@@WriteMidiConfig$qp14str_midiconfiguc
	dw	0
	dw	4103
	dw	0
	dw	13
	dw	0
	dw	0
	dw	0
	db	37
	db	64
	db	87
	db	114
	db	105
	db	116
	db	101
	db	77
	db	105
	db	100
	db	105
	db	67
	db	111
	db	110
	db	102
	db	105
	db	103
	db	36
	db	113
	db	112
	db	49
	db	52
	db	115
	db	116
	db	114
	db	95
	db	109
	db	105
	db	100
	db	105
	db	99
	db	111
	db	110
	db	102
	db	105
	db	103
	db	117
	db	99
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4099
	dw	0
	dw	14
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	32
	dw	0
	dw	15
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65527
	dw	65535
	dw	32
	dw	0
	dw	16
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	1056
	dw	0
	dw	17
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65535
	dw	65535
	dw	32
	dw	0
	dw	18
	dw	0
	dw	0
	dw	0
?patch7	equ	@13-@@WriteMidiConfig$qp14str_midiconfiguc+4
?patch8	equ	0
?patch9	equ	@13-@@WriteMidiConfig$qp14str_midiconfiguc
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@ReadAnalogueInConfig$qp14str_midiconfigi	segment virtual
@@ReadAnalogueInConfig$qp14str_midiconfigi	proc	near
?live16388@0:
	?debug L 118
	push      ebp
	mov       ebp,esp
	?debug L 120
@14:
	mov       al,byte ptr [ebp+12]
	push      eax
	push      dword ptr [ebp+8]
	call      @@ReadMidiConfig$qp14str_midiconfiguc
	add       esp,8
	?debug L 121
@15:
	pop       ebp
	ret 
	?debug L 0
@@ReadAnalogueInConfig$qp14str_midiconfigi	endp
@ReadAnalogueInConfig$qp14str_midiconfigi	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	88
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch10
	dd	?patch11
	dd	?patch12
	df	@@ReadAnalogueInConfig$qp14str_midiconfigi
	dw	0
	dw	4105
	dw	0
	dw	19
	dw	0
	dw	0
	dw	0
	db	41
	db	64
	db	82
	db	101
	db	97
	db	100
	db	65
	db	110
	db	97
	db	108
	db	111
	db	103
	db	117
	db	101
	db	73
	db	110
	db	67
	db	111
	db	110
	db	102
	db	105
	db	103
	db	36
	db	113
	db	112
	db	49
	db	52
	db	115
	db	116
	db	114
	db	95
	db	109
	db	105
	db	100
	db	105
	db	99
	db	111
	db	110
	db	102
	db	105
	db	103
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4099
	dw	0
	dw	20
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	116
	dw	0
	dw	21
	dw	0
	dw	0
	dw	0
?patch10	equ	@15-@@ReadAnalogueInConfig$qp14str_midiconfigi+2
?patch11	equ	0
?patch12	equ	@15-@@ReadAnalogueInConfig$qp14str_midiconfigi
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@ReadDigitalInConfig$qp14str_midiconfigi	segment virtual
@@ReadDigitalInConfig$qp14str_midiconfigi	proc	near
?live16389@0:
	?debug L 125
	push      ebp
	mov       ebp,esp
	?debug L 127
@16:
	mov       al,byte ptr [ebp+12]
	add       al,16
	push      eax
	push      dword ptr [ebp+8]
	call      @@ReadMidiConfig$qp14str_midiconfiguc
	add       esp,8
	?debug L 128
@17:
	pop       ebp
	ret 
	?debug L 0
@@ReadDigitalInConfig$qp14str_midiconfigi	endp
@ReadDigitalInConfig$qp14str_midiconfigi	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	87
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch13
	dd	?patch14
	dd	?patch15
	df	@@ReadDigitalInConfig$qp14str_midiconfigi
	dw	0
	dw	4107
	dw	0
	dw	22
	dw	0
	dw	0
	dw	0
	db	40
	db	64
	db	82
	db	101
	db	97
	db	100
	db	68
	db	105
	db	103
	db	105
	db	116
	db	97
	db	108
	db	73
	db	110
	db	67
	db	111
	db	110
	db	102
	db	105
	db	103
	db	36
	db	113
	db	112
	db	49
	db	52
	db	115
	db	116
	db	114
	db	95
	db	109
	db	105
	db	100
	db	105
	db	99
	db	111
	db	110
	db	102
	db	105
	db	103
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4099
	dw	0
	dw	23
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	116
	dw	0
	dw	24
	dw	0
	dw	0
	dw	0
?patch13	equ	@17-@@ReadDigitalInConfig$qp14str_midiconfigi+2
?patch14	equ	0
?patch15	equ	@17-@@ReadDigitalInConfig$qp14str_midiconfigi
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@ReadAnalogueOutConfig$qp14str_midiconfigi	segment virtual
@@ReadAnalogueOutConfig$qp14str_midiconfigi	proc	near
?live16390@0:
	?debug L 132
	push      ebp
	mov       ebp,esp
	?debug L 134
@18:
	mov       al,byte ptr [ebp+12]
	add       al,32
	push      eax
	push      dword ptr [ebp+8]
	call      @@ReadMidiConfig$qp14str_midiconfiguc
	add       esp,8
	?debug L 135
@19:
	pop       ebp
	ret 
	?debug L 0
@@ReadAnalogueOutConfig$qp14str_midiconfigi	endp
@ReadAnalogueOutConfig$qp14str_midiconfigi	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	89
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
	df	@@ReadAnalogueOutConfig$qp14str_midiconfigi
	dw	0
	dw	4109
	dw	0
	dw	25
	dw	0
	dw	0
	dw	0
	db	42
	db	64
	db	82
	db	101
	db	97
	db	100
	db	65
	db	110
	db	97
	db	108
	db	111
	db	103
	db	117
	db	101
	db	79
	db	117
	db	116
	db	67
	db	111
	db	110
	db	102
	db	105
	db	103
	db	36
	db	113
	db	112
	db	49
	db	52
	db	115
	db	116
	db	114
	db	95
	db	109
	db	105
	db	100
	db	105
	db	99
	db	111
	db	110
	db	102
	db	105
	db	103
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4099
	dw	0
	dw	26
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	116
	dw	0
	dw	27
	dw	0
	dw	0
	dw	0
?patch16	equ	@19-@@ReadAnalogueOutConfig$qp14str_midiconfigi+2
?patch17	equ	0
?patch18	equ	@19-@@ReadAnalogueOutConfig$qp14str_midiconfigi
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@ReadDigitalOutConfig$qp14str_midiconfigi	segment virtual
@@ReadDigitalOutConfig$qp14str_midiconfigi	proc	near
?live16391@0:
	?debug L 139
	push      ebp
	mov       ebp,esp
	?debug L 141
@20:
	mov       al,byte ptr [ebp+12]
	add       al,40
	push      eax
	push      dword ptr [ebp+8]
	call      @@ReadMidiConfig$qp14str_midiconfiguc
	add       esp,8
	?debug L 142
@21:
	pop       ebp
	ret 
	?debug L 0
@@ReadDigitalOutConfig$qp14str_midiconfigi	endp
@ReadDigitalOutConfig$qp14str_midiconfigi	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	88
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch19
	dd	?patch20
	dd	?patch21
	df	@@ReadDigitalOutConfig$qp14str_midiconfigi
	dw	0
	dw	4111
	dw	0
	dw	28
	dw	0
	dw	0
	dw	0
	db	41
	db	64
	db	82
	db	101
	db	97
	db	100
	db	68
	db	105
	db	103
	db	105
	db	116
	db	97
	db	108
	db	79
	db	117
	db	116
	db	67
	db	111
	db	110
	db	102
	db	105
	db	103
	db	36
	db	113
	db	112
	db	49
	db	52
	db	115
	db	116
	db	114
	db	95
	db	109
	db	105
	db	100
	db	105
	db	99
	db	111
	db	110
	db	102
	db	105
	db	103
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4099
	dw	0
	dw	29
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	116
	dw	0
	dw	30
	dw	0
	dw	0
	dw	0
?patch19	equ	@21-@@ReadDigitalOutConfig$qp14str_midiconfigi+2
?patch20	equ	0
?patch21	equ	@21-@@ReadDigitalOutConfig$qp14str_midiconfigi
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@GetDefaultAnalogueIn$qp14str_midiconfigi	segment virtual
@@GetDefaultAnalogueIn$qp14str_midiconfigi	proc	near
?live16392@0:
	?debug L 144
	push      ebp
	mov       ebp,esp
	?debug L 146
@22:
	mov       eax,dword ptr [ebp+8]
	mov       byte ptr [eax],-80
	?debug L 147
	mov       dl,byte ptr [ebp+12]
	add       dl,12
	mov       ecx,dword ptr [ebp+8]
	mov       byte ptr [ecx+1],dl
	?debug L 148
	mov       eax,dword ptr [ebp+8]
	mov       byte ptr [eax+2],0
	?debug L 149
	mov       edx,dword ptr [ebp+8]
	mov       byte ptr [edx+3],0
	?debug L 150
@23:
	pop       ebp
	ret 
	?debug L 0
@@GetDefaultAnalogueIn$qp14str_midiconfigi	endp
@GetDefaultAnalogueIn$qp14str_midiconfigi	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	88
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch22
	dd	?patch23
	dd	?patch24
	df	@@GetDefaultAnalogueIn$qp14str_midiconfigi
	dw	0
	dw	4113
	dw	0
	dw	31
	dw	0
	dw	0
	dw	0
	db	41
	db	64
	db	71
	db	101
	db	116
	db	68
	db	101
	db	102
	db	97
	db	117
	db	108
	db	116
	db	65
	db	110
	db	97
	db	108
	db	111
	db	103
	db	117
	db	101
	db	73
	db	110
	db	36
	db	113
	db	112
	db	49
	db	52
	db	115
	db	116
	db	114
	db	95
	db	109
	db	105
	db	100
	db	105
	db	99
	db	111
	db	110
	db	102
	db	105
	db	103
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4099
	dw	0
	dw	32
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	116
	dw	0
	dw	33
	dw	0
	dw	0
	dw	0
?patch22	equ	@23-@@GetDefaultAnalogueIn$qp14str_midiconfigi+2
?patch23	equ	0
?patch24	equ	@23-@@GetDefaultAnalogueIn$qp14str_midiconfigi
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@GetDefaultDigitalIn$qp14str_midiconfigi	segment virtual
@@GetDefaultDigitalIn$qp14str_midiconfigi	proc	near
?live16393@0:
	?debug L 152
	push      ebp
	mov       ebp,esp
	?debug L 154
@24:
	mov       eax,dword ptr [ebp+8]
	mov       byte ptr [eax],-80
	?debug L 155
	mov       dl,byte ptr [ebp+12]
	add       dl,64
	mov       ecx,dword ptr [ebp+8]
	mov       byte ptr [ecx+1],dl
	?debug L 156
	mov       eax,dword ptr [ebp+8]
	mov       byte ptr [eax+2],0
	?debug L 157
	mov       edx,dword ptr [ebp+8]
	mov       byte ptr [edx+3],0
	?debug L 158
@25:
	pop       ebp
	ret 
	?debug L 0
@@GetDefaultDigitalIn$qp14str_midiconfigi	endp
@GetDefaultDigitalIn$qp14str_midiconfigi	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	87
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch25
	dd	?patch26
	dd	?patch27
	df	@@GetDefaultDigitalIn$qp14str_midiconfigi
	dw	0
	dw	4115
	dw	0
	dw	34
	dw	0
	dw	0
	dw	0
	db	40
	db	64
	db	71
	db	101
	db	116
	db	68
	db	101
	db	102
	db	97
	db	117
	db	108
	db	116
	db	68
	db	105
	db	103
	db	105
	db	116
	db	97
	db	108
	db	73
	db	110
	db	36
	db	113
	db	112
	db	49
	db	52
	db	115
	db	116
	db	114
	db	95
	db	109
	db	105
	db	100
	db	105
	db	99
	db	111
	db	110
	db	102
	db	105
	db	103
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4099
	dw	0
	dw	35
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	116
	dw	0
	dw	36
	dw	0
	dw	0
	dw	0
?patch25	equ	@25-@@GetDefaultDigitalIn$qp14str_midiconfigi+2
?patch26	equ	0
?patch27	equ	@25-@@GetDefaultDigitalIn$qp14str_midiconfigi
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@GetDefaultDigitalOut$qp14str_midiconfigi	segment virtual
@@GetDefaultDigitalOut$qp14str_midiconfigi	proc	near
?live16394@0:
	?debug L 160
	push      ebp
	mov       ebp,esp
	?debug L 162
@26:
	mov       eax,dword ptr [ebp+8]
	mov       byte ptr [eax],-80
	?debug L 163
	mov       dl,byte ptr [ebp+12]
	add       dl,80
	mov       ecx,dword ptr [ebp+8]
	mov       byte ptr [ecx+1],dl
	?debug L 164
	mov       eax,dword ptr [ebp+8]
	mov       byte ptr [eax+2],0
	?debug L 165
	mov       edx,dword ptr [ebp+8]
	mov       byte ptr [edx+3],0
	?debug L 166
@27:
	pop       ebp
	ret 
	?debug L 0
@@GetDefaultDigitalOut$qp14str_midiconfigi	endp
@GetDefaultDigitalOut$qp14str_midiconfigi	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	88
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
	df	@@GetDefaultDigitalOut$qp14str_midiconfigi
	dw	0
	dw	4117
	dw	0
	dw	37
	dw	0
	dw	0
	dw	0
	db	41
	db	64
	db	71
	db	101
	db	116
	db	68
	db	101
	db	102
	db	97
	db	117
	db	108
	db	116
	db	68
	db	105
	db	103
	db	105
	db	116
	db	97
	db	108
	db	79
	db	117
	db	116
	db	36
	db	113
	db	112
	db	49
	db	52
	db	115
	db	116
	db	114
	db	95
	db	109
	db	105
	db	100
	db	105
	db	99
	db	111
	db	110
	db	102
	db	105
	db	103
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4099
	dw	0
	dw	38
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	116
	dw	0
	dw	39
	dw	0
	dw	0
	dw	0
?patch28	equ	@27-@@GetDefaultDigitalOut$qp14str_midiconfigi+2
?patch29	equ	0
?patch30	equ	@27-@@GetDefaultDigitalOut$qp14str_midiconfigi
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@GetDefaultAnalogueOut$qp14str_midiconfigi	segment virtual
@@GetDefaultAnalogueOut$qp14str_midiconfigi	proc	near
?live16395@0:
	?debug L 168
	push      ebp
	mov       ebp,esp
	?debug L 170
@28:
	mov       eax,dword ptr [ebp+12]
	shr       eax,2
	or        al,-80
	mov       edx,dword ptr [ebp+8]
	mov       byte ptr [edx],al
	?debug L 171
	mov       ecx,dword ptr [ebp+12]
	and       ecx,3
	mov       al,byte ptr [ecx+_ANA_OUT_CONTROLLER]
	mov       edx,dword ptr [ebp+8]
	mov       byte ptr [edx+1],al
	?debug L 172
	mov       ecx,dword ptr [ebp+8]
	mov       byte ptr [ecx+2],0
	?debug L 173
	mov       eax,dword ptr [ebp+8]
	mov       byte ptr [eax+3],0
	?debug L 174
@29:
	pop       ebp
	ret 
	?debug L 0
@@GetDefaultAnalogueOut$qp14str_midiconfigi	endp
@GetDefaultAnalogueOut$qp14str_midiconfigi	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	89
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch31
	dd	?patch32
	dd	?patch33
	df	@@GetDefaultAnalogueOut$qp14str_midiconfigi
	dw	0
	dw	4119
	dw	0
	dw	40
	dw	0
	dw	0
	dw	0
	db	42
	db	64
	db	71
	db	101
	db	116
	db	68
	db	101
	db	102
	db	97
	db	117
	db	108
	db	116
	db	65
	db	110
	db	97
	db	108
	db	111
	db	103
	db	117
	db	101
	db	79
	db	117
	db	116
	db	36
	db	113
	db	112
	db	49
	db	52
	db	115
	db	116
	db	114
	db	95
	db	109
	db	105
	db	100
	db	105
	db	99
	db	111
	db	110
	db	102
	db	105
	db	103
	db	105
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4099
	dw	0
	dw	41
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	116
	dw	0
	dw	42
	dw	0
	dw	0
	dw	0
?patch31	equ	@29-@@GetDefaultAnalogueOut$qp14str_midiconfigi+2
?patch32	equ	0
?patch33	equ	@29-@@GetDefaultAnalogueOut$qp14str_midiconfigi
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@ResetConfiguration$qv	segment virtual
@@ResetConfiguration$qv	proc	near
?live16396@0:
	?debug L 177
	push      ebp
	mov       ebp,esp
	add       esp,-8
	?debug L 183
@30:
	xor       eax,eax
	mov       dword ptr [ebp-8],eax
	?debug L 185
@31:
	push      dword ptr [ebp-8]
	lea       edx,dword ptr [ebp-4]
	push      edx
	call      @@GetDefaultAnalogueIn$qp14str_midiconfigi
	add       esp,8
	?debug L 187
	mov       cl,byte ptr [ebp-8]
	push      ecx
	lea       eax,dword ptr [ebp-4]
	push      eax
	call      @@WriteMidiConfig$qp14str_midiconfiguc
	add       esp,8
	inc       dword ptr [ebp-8]
	cmp       dword ptr [ebp-8],16
	jl        short @31
	?debug L 191
	xor       edx,edx
	mov       dword ptr [ebp-8],edx
	?debug L 193
@34:
	push      dword ptr [ebp-8]
	lea       ecx,dword ptr [ebp-4]
	push      ecx
	call      @@GetDefaultDigitalIn$qp14str_midiconfigi
	add       esp,8
	?debug L 195
	mov       al,byte ptr [ebp-8]
	add       al,16
	push      eax
	lea       edx,dword ptr [ebp-4]
	push      edx
	call      @@WriteMidiConfig$qp14str_midiconfiguc
	add       esp,8
	inc       dword ptr [ebp-8]
	cmp       dword ptr [ebp-8],16
	jl        short @34
	?debug L 198
	xor       ecx,ecx
	mov       dword ptr [ebp-8],ecx
	?debug L 200
@37:
	push      dword ptr [ebp-8]
	lea       eax,dword ptr [ebp-4]
	push      eax
	call      @@GetDefaultAnalogueOut$qp14str_midiconfigi
	add       esp,8
	?debug L 202
	mov       dl,byte ptr [ebp-8]
	add       dl,32
	push      edx
	lea       ecx,dword ptr [ebp-4]
	push      ecx
	call      @@WriteMidiConfig$qp14str_midiconfiguc
	add       esp,8
	inc       dword ptr [ebp-8]
	cmp       dword ptr [ebp-8],8
	jl        short @37
	?debug L 205
	xor       eax,eax
	mov       dword ptr [ebp-8],eax
	?debug L 207
@40:
	push      dword ptr [ebp-8]
	lea       edx,dword ptr [ebp-4]
	push      edx
	call      @@GetDefaultDigitalOut$qp14str_midiconfigi
	add       esp,8
	?debug L 209
	mov       cl,byte ptr [ebp-8]
	add       cl,40
	push      ecx
	lea       eax,dword ptr [ebp-4]
	push      eax
	call      @@WriteMidiConfig$qp14str_midiconfiguc
	add       esp,8
	inc       dword ptr [ebp-8]
	cmp       dword ptr [ebp-8],16
	jl        short @40
	?debug L 212
	push      0
	push      0
	call      @@WriteConfigByte$qiuc
	add       esp,8
	?debug L 213
@43:
	pop       ecx
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@ResetConfiguration$qv	endp
@ResetConfiguration$qv	ends
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
	dd	?patch34
	dd	?patch35
	dd	?patch36
	df	@@ResetConfiguration$qv
	dw	0
	dw	4121
	dw	0
	dw	43
	dw	0
	dw	0
	dw	0
	db	22
	db	64
	db	82
	db	101
	db	115
	db	101
	db	116
	db	67
	db	111
	db	110
	db	102
	db	105
	db	103
	db	117
	db	114
	db	97
	db	116
	db	105
	db	111
	db	110
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	116
	dw	0
	dw	44
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	4100
	dw	0
	dw	45
	dw	0
	dw	0
	dw	0
?patch34	equ	@43-@@ResetConfiguration$qv+4
?patch35	equ	0
?patch36	equ	@43-@@ResetConfiguration$qv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@ValidConfig$qv	segment virtual
@@ValidConfig$qv	proc	near
?live16397@0:
	?debug L 216
	push      ebp
	mov       ebp,esp
	?debug L 218
@44:
	push      0
	call      @@ReadConfigByte$qi
	pop       ecx
	test      al,al
	sete      al
	and       eax,1
	?debug L 219
@46:
@45:
	pop       ebp
	ret 
	?debug L 0
@@ValidConfig$qv	endp
@ValidConfig$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	62
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch37
	dd	?patch38
	dd	?patch39
	df	@@ValidConfig$qv
	dw	0
	dw	4123
	dw	0
	dw	46
	dw	0
	dw	0
	dw	0
	db	15
	db	64
	db	86
	db	97
	db	108
	db	105
	db	100
	db	67
	db	111
	db	110
	db	102
	db	105
	db	103
	db	36
	db	113
	db	118
?patch37	equ	@46-@@ValidConfig$qv+2
?patch38	equ	0
?patch39	equ	@46-@@ValidConfig$qv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@ReadDeviceId$qv	segment virtual
@@ReadDeviceId$qv	proc	near
?live16398@0:
	?debug L 221
	push      ebp
	mov       ebp,esp
	push      ecx
	?debug L 224
@47:
	push      1
	call      @@ReadConfigByte$qi
	pop       ecx
	and       eax,255
	mov       dword ptr [ebp-4],eax
	?debug L 225
	mov       eax,dword ptr [ebp-4]
	?debug L 226
@49:
@48:
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@ReadDeviceId$qv	endp
@ReadDeviceId$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	63
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch40
	dd	?patch41
	dd	?patch42
	df	@@ReadDeviceId$qv
	dw	0
	dw	4125
	dw	0
	dw	47
	dw	0
	dw	0
	dw	0
	db	16
	db	64
	db	82
	db	101
	db	97
	db	100
	db	68
	db	101
	db	118
	db	105
	db	99
	db	101
	db	73
	db	100
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	116
	dw	0
	dw	48
	dw	0
	dw	0
	dw	0
?patch40	equ	@49-@@ReadDeviceId$qv+3
?patch41	equ	0
?patch42	equ	@49-@@ReadDeviceId$qv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@ValidateStoredConfig$qv	segment virtual
@@ValidateStoredConfig$qv	proc	near
?live16399@0:
	?debug L 229
	push      ebp
	mov       ebp,esp
	?debug L 231
@50:
	call      @@ValidConfig$qv
	test      ax,ax
	jne       short @51
	?debug L 233
	call      @@ResetConfiguration$qv
	?debug L 236
@51:
@52:
	pop       ebp
	ret 
	?debug L 0
@@ValidateStoredConfig$qv	endp
@ValidateStoredConfig$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	71
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch43
	dd	?patch44
	dd	?patch45
	df	@@ValidateStoredConfig$qv
	dw	0
	dw	4127
	dw	0
	dw	49
	dw	0
	dw	0
	dw	0
	db	24
	db	64
	db	86
	db	97
	db	108
	db	105
	db	100
	db	97
	db	116
	db	101
	db	83
	db	116
	db	111
	db	114
	db	101
	db	100
	db	67
	db	111
	db	110
	db	102
	db	105
	db	103
	db	36
	db	113
	db	118
?patch43	equ	@52-@@ValidateStoredConfig$qv+2
?patch44	equ	0
?patch45	equ	@52-@@ValidateStoredConfig$qv
	dw	2
	dw	6
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@NumTxBytes$qp14str_midiconfig	segment virtual
@@NumTxBytes$qp14str_midiconfig	proc	near
?live16400@0:
	?debug L 241
	push      ebp
	mov       ebp,esp
	push      ecx
	?debug L 245
@53:
	mov       eax,dword ptr [ebp+8]
	xor       edx,edx
	mov       dl,byte ptr [eax]
	and       edx,240
	mov       dword ptr [ebp-4],edx
	?debug L 247
	mov       ecx,dword ptr [ebp-4]
	cmp       ecx,176
	jg        short @58
	je        short @56
	sub       ecx,128
	je        short @56
	sub       ecx,16
	je        short @56
	sub       ecx,16
	je        short @56
	jmp       short @54
@58:
	sub       ecx,192
	je        short @57
	sub       ecx,16
	je        short @57
	sub       ecx,16
	je        short @56
	jmp       short @54
	?debug L 254
@56:
	mov       eax,3
@63:
	pop       ecx
	pop       ebp
	ret 
	?debug L 258
@57:
	mov       eax,2
@64:
	pop       ecx
	pop       ebp
	ret 
	?debug L 260
@54:
	xor       eax,eax
	?debug L 263
@62:
@60:
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@NumTxBytes$qp14str_midiconfig	endp
@NumTxBytes$qp14str_midiconfig	ends
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
	dd	?patch46
	dd	?patch47
	dd	?patch48
	df	@@NumTxBytes$qp14str_midiconfig
	dw	0
	dw	4129
	dw	0
	dw	50
	dw	0
	dw	0
	dw	0
	db	30
	db	64
	db	78
	db	117
	db	109
	db	84
	db	120
	db	66
	db	121
	db	116
	db	101
	db	115
	db	36
	db	113
	db	112
	db	49
	db	52
	db	115
	db	116
	db	114
	db	95
	db	109
	db	105
	db	100
	db	105
	db	99
	db	111
	db	110
	db	102
	db	105
	db	103
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4099
	dw	0
	dw	51
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	116
	dw	0
	dw	52
	dw	0
	dw	0
	dw	0
	dw	8
	dw	530
	dd	@64-@@NumTxBytes$qp14str_midiconfig
	dw	3
	dw	8
	dw	530
	dd	@63-@@NumTxBytes$qp14str_midiconfig
	dw	3
?patch46	equ	@62-@@NumTxBytes$qp14str_midiconfig+3
?patch47	equ	0
?patch48	equ	@62-@@NumTxBytes$qp14str_midiconfig
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
	?debug	C FB0C0100600000
$$BSYMS	ends
_BSS	segment dword public use32 'BSS'
	align	4
_MidiController	label	dword
	db	4	dup(?)
_BSS	ends
_DATA	segment dword public use32 'DATA'
@_$DCUV$@TMidiController@$bctr$qqrp18Classes@TComponent	segment virtual
@@_$DCUV$@TMidiController@$bctr$qqrp18Classes@TComponent	label	dword
	dd	@@$xt$p15TMidiController
	dd	1029
	dd	-4
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
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-20
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-24
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-28
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-20
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-32
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-36
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-40
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-32
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-44
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-48
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-52
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-44
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-56
	dd	0
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-60
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-64
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-56
	dd	0
@_$DCUV$@TMidiController@$bctr$qqrp18Classes@TComponent	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTVV$@TMidiController@$bctr$qqrp18Classes@TComponent	segment virtual
@@_$ECTVV$@TMidiController@$bctr$qqrp18Classes@TComponent	label	dword
	dd	0
	dd	-100
	dw	0
	dw	5
	dd	0
	dd	@@_$DCUV$@TMidiController@$bctr$qqrp18Classes@TComponent
	dw	8
	dw	5
	dd	29
	dd	@@_$DCUV$@TMidiController@$bctr$qqrp18Classes@TComponent+16
	dw	8
	dw	5
	dd	29
	dd	@@_$DCUV$@TMidiController@$bctr$qqrp18Classes@TComponent+32
	dw	8
	dw	5
	dd	29
	dd	@@_$DCUV$@TMidiController@$bctr$qqrp18Classes@TComponent+48
	dw	8
	dw	5
	dd	29
	dd	@@_$DCUV$@TMidiController@$bctr$qqrp18Classes@TComponent+64
	dw	56
	dw	5
	dd	29
	dd	@@_$DCUV$@TMidiController@$bctr$qqrp18Classes@TComponent+80
	dw	8
	dw	5
	dd	29
	dd	@@_$DCUV$@TMidiController@$bctr$qqrp18Classes@TComponent+120
	dw	80
	dw	5
	dd	29
	dd	@@_$DCUV$@TMidiController@$bctr$qqrp18Classes@TComponent+136
	dw	8
	dw	5
	dd	29
	dd	@@_$DCUV$@TMidiController@$bctr$qqrp18Classes@TComponent+176
	dw	104
	dw	5
	dd	29
	dd	@@_$DCUV$@TMidiController@$bctr$qqrp18Classes@TComponent+192
	dw	8
	dw	5
	dd	29
	dd	@@_$DCUV$@TMidiController@$bctr$qqrp18Classes@TComponent+232
	dw	128
	dw	5
	dd	29
	dd	@@_$DCUV$@TMidiController@$bctr$qqrp18Classes@TComponent+248
@_$ECTVV$@TMidiController@$bctr$qqrp18Classes@TComponent	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@TMidiController@$bctr$qqrp18Classes@TComponent	segment virtual
@@TMidiController@$bctr$qqrp18Classes@TComponent	proc	near
?live16401@0:
	?debug	T "D:\develop\MidicontrollerPatchEditor\WindowsMidiControllerPatchEditor\PatchEditor.cpp"
	?debug L 19
	push      ebp
	mov       ebp,esp
	add       esp,-160
	mov       byte ptr [ebp-68],dl
	test      dl,dl
	jle       short @65
	call      __ClassCreate
@65:
	mov       dword ptr [ebp-108],ecx
	mov       byte ptr [ebp-101],dl
	mov       dword ptr [ebp-4],eax
@66:
	mov       eax,offset @@_$ECTVV$@TMidiController@$bctr$qqrp18Classes@TComponent
	call      @__InitExceptBlockLDTC
	?debug L 20
	mov       word ptr [ebp-84],8
	mov       ecx,dword ptr [ebp-108]
	xor       edx,edx
	mov       eax,dword ptr [ebp-4]
	call      @@Forms@TForm@$bctr$qqrp18Classes@TComponent
	add       dword ptr [ebp-72],29
	?debug L 23
@67:
	mov       dword ptr [ebp-112],1
	?debug L 24
@68:
	mov       edx,dword ptr [ebp-4]
	mov       ecx,dword ptr [edx+716]
	add       ecx,492
	mov       dword ptr [ebp-116],ecx
	mov       word ptr [ebp-84],20
	lea       eax,dword ptr [ebp-8]
	call      @@System@AnsiString@$bctr$qqrv
	mov       edx,eax
	inc       dword ptr [ebp-72]
	mov       eax,dword ptr [ebp-112]
	call      @@IntToStr$qqrui
	lea       edx,dword ptr [ebp-8]
	mov       edx,dword ptr [edx]
	mov       eax,dword ptr [ebp-116]
	mov       eax,dword ptr [eax]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx+52]
	dec       dword ptr [ebp-72]
	lea       eax,dword ptr [ebp-8]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	?debug L 23
@70:
	inc       dword ptr [ebp-112]
	cmp       dword ptr [ebp-112],16
	jbe       short @68
	?debug L 28
@72:
	xor       ecx,ecx
	mov       dword ptr [ebp-120],ecx
	mov       word ptr [ebp-84],8
	cmp       dword ptr [ebp-120],127
	ja        @74
	?debug L 30
@73:
	mov       eax,dword ptr [ebp-4]
	mov       edx,dword ptr [eax+720]
	add       edx,492
	mov       dword ptr [ebp-124],edx
	mov       word ptr [ebp-84],32
	lea       eax,dword ptr [ebp-12]
	call      @@System@AnsiString@$bctr$qqrv
	mov       edx,eax
	inc       dword ptr [ebp-72]
	mov       eax,dword ptr [ebp-120]
	call      @@IntToStr$qqrui
	lea       edx,dword ptr [ebp-12]
	mov       edx,dword ptr [edx]
	mov       eax,dword ptr [ebp-124]
	mov       eax,dword ptr [eax]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx+52]
	dec       dword ptr [ebp-72]
	lea       eax,dword ptr [ebp-12]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	?debug L 31
	mov       ecx,dword ptr [ebp-4]
	mov       eax,dword ptr [ecx+724]
	add       eax,492
	mov       dword ptr [ebp-128],eax
	mov       word ptr [ebp-84],44
	lea       eax,dword ptr [ebp-16]
	call      @@System@AnsiString@$bctr$qqrv
	mov       edx,eax
	inc       dword ptr [ebp-72]
	mov       eax,dword ptr [ebp-120]
	call      @@IntToStr$qqrui
	lea       edx,dword ptr [ebp-16]
	mov       edx,dword ptr [edx]
	mov       eax,dword ptr [ebp-128]
	mov       eax,dword ptr [eax]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx+52]
	dec       dword ptr [ebp-72]
	lea       eax,dword ptr [ebp-16]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	?debug L 28
@75:
	inc       dword ptr [ebp-120]
	cmp       dword ptr [ebp-120],127
	jbe       @73
	?debug L 34
@74:
@77:
	mov       dword ptr [ebp-132],1
	mov       word ptr [ebp-84],8
	cmp       dword ptr [ebp-132],16
	ja        @79
	?debug L 36
@78:
@80:
	mov       word ptr [ebp-84],68
	lea       eax,dword ptr [ebp-28]
	call      @@System@AnsiString@$bctr$qqrv
	mov       edx,eax
	inc       dword ptr [ebp-72]
	mov       eax,dword ptr [ebp-132]
	call      @@IntToStr$qqrui
	lea       edx,dword ptr [ebp-28]
	push      edx
	lea       eax,dword ptr [ebp-20]
	call      @@System@AnsiString@$bctr$qqrv
	push      eax
	inc       dword ptr [ebp-72]
	mov       edx,offset s@
	lea       eax,dword ptr [ebp-24]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-72]
	pop       ecx
	pop       edx
	call      @@System@AnsiString@$badd$xqqrrx17System@AnsiString
	dec       dword ptr [ebp-72]
	lea       eax,dword ptr [ebp-28]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-72]
	lea       eax,dword ptr [ebp-24]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       word ptr [ebp-84],56
	?debug L 37
	mov       ecx,dword ptr [ebp-4]
	mov       eax,dword ptr [ecx+708]
	add       eax,492
	mov       dword ptr [ebp-136],eax
	mov       edx,dword ptr [ebp-136]
	mov       eax,dword ptr [edx]
	mov       edx,dword ptr [ebp-20]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx+52]
	?debug L 38
	dec       dword ptr [ebp-72]
	lea       eax,dword ptr [ebp-20]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       word ptr [ebp-84],8
	?debug L 34
@81:
@82:
	inc       dword ptr [ebp-132]
	cmp       dword ptr [ebp-132],16
	jbe       @78
	?debug L 40
@79:
@84:
	mov       dword ptr [ebp-140],1
	mov       word ptr [ebp-84],8
	cmp       dword ptr [ebp-140],16
	ja        @86
	?debug L 42
@85:
@87:
	mov       word ptr [ebp-84],92
	lea       eax,dword ptr [ebp-40]
	call      @@System@AnsiString@$bctr$qqrv
	mov       edx,eax
	inc       dword ptr [ebp-72]
	mov       eax,dword ptr [ebp-140]
	call      @@IntToStr$qqrui
	lea       edx,dword ptr [ebp-40]
	push      edx
	lea       eax,dword ptr [ebp-32]
	call      @@System@AnsiString@$bctr$qqrv
	push      eax
	inc       dword ptr [ebp-72]
	mov       edx,offset s@+9
	lea       eax,dword ptr [ebp-36]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-72]
	pop       ecx
	pop       edx
	call      @@System@AnsiString@$badd$xqqrrx17System@AnsiString
	dec       dword ptr [ebp-72]
	lea       eax,dword ptr [ebp-40]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-72]
	lea       eax,dword ptr [ebp-36]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       word ptr [ebp-84],80
	?debug L 43
	mov       ecx,dword ptr [ebp-4]
	mov       eax,dword ptr [ecx+708]
	add       eax,492
	mov       dword ptr [ebp-144],eax
	mov       edx,dword ptr [ebp-144]
	mov       eax,dword ptr [edx]
	mov       edx,dword ptr [ebp-32]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx+52]
	?debug L 44
	dec       dword ptr [ebp-72]
	lea       eax,dword ptr [ebp-32]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       word ptr [ebp-84],8
	?debug L 40
@88:
@89:
	inc       dword ptr [ebp-140]
	cmp       dword ptr [ebp-140],16
	jbe       @85
	?debug L 46
@86:
@91:
	mov       dword ptr [ebp-148],1
	mov       word ptr [ebp-84],8
	cmp       dword ptr [ebp-148],8
	ja        @93
	?debug L 48
@92:
@94:
	mov       word ptr [ebp-84],116
	lea       eax,dword ptr [ebp-52]
	call      @@System@AnsiString@$bctr$qqrv
	mov       edx,eax
	inc       dword ptr [ebp-72]
	mov       eax,dword ptr [ebp-148]
	call      @@IntToStr$qqrui
	lea       edx,dword ptr [ebp-52]
	push      edx
	lea       eax,dword ptr [ebp-44]
	call      @@System@AnsiString@$bctr$qqrv
	push      eax
	inc       dword ptr [ebp-72]
	mov       edx,offset s@+22
	lea       eax,dword ptr [ebp-48]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-72]
	pop       ecx
	pop       edx
	call      @@System@AnsiString@$badd$xqqrrx17System@AnsiString
	dec       dword ptr [ebp-72]
	lea       eax,dword ptr [ebp-52]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-72]
	lea       eax,dword ptr [ebp-48]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       word ptr [ebp-84],104
	?debug L 49
	mov       ecx,dword ptr [ebp-4]
	mov       eax,dword ptr [ecx+708]
	add       eax,492
	mov       dword ptr [ebp-152],eax
	mov       edx,dword ptr [ebp-152]
	mov       eax,dword ptr [edx]
	mov       edx,dword ptr [ebp-44]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx+52]
	?debug L 50
	dec       dword ptr [ebp-72]
	lea       eax,dword ptr [ebp-44]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       word ptr [ebp-84],8
	?debug L 46
@95:
@96:
	inc       dword ptr [ebp-148]
	cmp       dword ptr [ebp-148],8
	jbe       @92
	?debug L 52
@93:
@98:
	mov       dword ptr [ebp-156],1
	mov       word ptr [ebp-84],8
	cmp       dword ptr [ebp-156],8
	ja        @100
	?debug L 54
@99:
@101:
	mov       word ptr [ebp-84],140
	lea       eax,dword ptr [ebp-64]
	call      @@System@AnsiString@$bctr$qqrv
	mov       edx,eax
	inc       dword ptr [ebp-72]
	mov       eax,dword ptr [ebp-156]
	call      @@IntToStr$qqrui
	lea       edx,dword ptr [ebp-64]
	push      edx
	lea       eax,dword ptr [ebp-56]
	call      @@System@AnsiString@$bctr$qqrv
	push      eax
	inc       dword ptr [ebp-72]
	mov       edx,offset s@+38
	lea       eax,dword ptr [ebp-60]
	call      @@System@AnsiString@$bctr$qqrpxc
	inc       dword ptr [ebp-72]
	pop       ecx
	pop       edx
	call      @@System@AnsiString@$badd$xqqrrx17System@AnsiString
	dec       dword ptr [ebp-72]
	lea       eax,dword ptr [ebp-64]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	dec       dword ptr [ebp-72]
	lea       eax,dword ptr [ebp-60]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       word ptr [ebp-84],128
	?debug L 55
	mov       ecx,dword ptr [ebp-4]
	mov       eax,dword ptr [ecx+708]
	add       eax,492
	mov       dword ptr [ebp-160],eax
	mov       edx,dword ptr [ebp-160]
	mov       eax,dword ptr [edx]
	mov       edx,dword ptr [ebp-56]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx+52]
	?debug L 56
	dec       dword ptr [ebp-72]
	lea       eax,dword ptr [ebp-56]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	mov       word ptr [ebp-84],8
	?debug L 52
@102:
@103:
	inc       dword ptr [ebp-156]
	cmp       dword ptr [ebp-156],8
	jbe       @99
	?debug L 58
@100:
	mov       ecx,dword ptr [ebp-4]
	mov       eax,dword ptr [ecx+712]
	mov       edx,1
	call      @@Stdctrls@TCustomComboBox@SetItemIndex$qqri
	?debug L 59
	mov       ecx,dword ptr [ebp-4]
	mov       eax,dword ptr [ecx+716]
	xor       edx,edx
	call      @@Stdctrls@TCustomComboBox@SetItemIndex$qqri
	?debug L 60
	mov       ecx,dword ptr [ebp-4]
	mov       eax,dword ptr [ecx+720]
	mov       edx,1
	call      @@Stdctrls@TCustomComboBox@SetItemIndex$qqri
	?debug L 61
	mov       ecx,dword ptr [ebp-4]
	mov       eax,dword ptr [ecx+724]
	xor       edx,edx
	call      @@Stdctrls@TCustomComboBox@SetItemIndex$qqri
	?debug L 62
	mov       ecx,dword ptr [ebp-4]
	mov       eax,dword ptr [ecx+708]
	xor       edx,edx
	call      @@Stdctrls@TCustomComboBox@SetItemIndex$qqri
	?debug L 64
	mov       ecx,dword ptr [ebp-100]
	mov       dword ptr fs:[0],ecx
	mov       eax,dword ptr [ebp-4]
@106:
@105:
	cmp       byte ptr [ebp-101],0
	je        short @107
	call      __AfterConstruction
	?debug L 64
@107:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@TMidiController@$bctr$qqrp18Classes@TComponent	endp
@TMidiController@$bctr$qqrp18Classes@TComponent	ends
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
	dd	?patch49
	dd	?patch50
	dd	?patch51
	df	@@TMidiController@$bctr$qqrp18Classes@TComponent
	dw	0
	dw	4147
	dw	0
	dw	81
	dw	0
	dw	0
	dw	0
	db	47
	db	64
	db	84
	db	77
	db	105
	db	100
	db	105
	db	67
	db	111
	db	110
	db	116
	db	114
	db	111
	db	108
	db	108
	db	101
	db	114
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
	dw	4137
	dw	0
	dw	82
	dw	0
	dw	0
	dw	0
	dw	?patch52
	dw	529
	dw	?patch53
	dd	?live16401@0-@@TMidiController@$bctr$qqrp18Classes@TComponent
	dd	?live16401@0-?live16401@0
	dw	17
?patch53	equ	1
?patch52	equ	14
	dw	18
	dw	512
	dw	65428
	dw	65535
	dw	65528
	dw	65535
	dw	83
	dw	0
	dw	0
	dw	0
	dw	?patch54
	dw	529
	dw	?patch55
	dd	?live16401@0-@@TMidiController@$bctr$qqrp18Classes@TComponent
	dd	?live16401@0-?live16401@0
	dw	18
?patch55	equ	1
?patch54	equ	14
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch56
	df	@67
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65424
	dw	65535
	dw	117
	dw	0
	dw	84
	dw	0
	dw	0
	dw	0
?patch56	equ	@70-@67
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch57
	df	@72
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65416
	dw	65535
	dw	117
	dw	0
	dw	85
	dw	0
	dw	0
	dw	0
?patch57	equ	@75-@72
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch58
	df	@77
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65404
	dw	65535
	dw	117
	dw	0
	dw	86
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch59
	df	@80
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65516
	dw	65535
	dw	65527
	dw	65535
	dw	87
	dw	0
	dw	0
	dw	0
?patch59	equ	@81-@80
	dw	2
	dw	6
?patch58	equ	@82-@77
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch60
	df	@84
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65396
	dw	65535
	dw	117
	dw	0
	dw	88
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch61
	df	@87
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65504
	dw	65535
	dw	65527
	dw	65535
	dw	89
	dw	0
	dw	0
	dw	0
?patch61	equ	@88-@87
	dw	2
	dw	6
?patch60	equ	@89-@84
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch62
	df	@91
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65388
	dw	65535
	dw	117
	dw	0
	dw	90
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch63
	df	@94
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65492
	dw	65535
	dw	65527
	dw	65535
	dw	91
	dw	0
	dw	0
	dw	0
?patch63	equ	@95-@94
	dw	2
	dw	6
?patch62	equ	@96-@91
	dw	2
	dw	6
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch64
	df	@98
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65380
	dw	65535
	dw	117
	dw	0
	dw	92
	dw	0
	dw	0
	dw	0
	dw	24
	dw	519
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch65
	df	@101
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65480
	dw	65535
	dw	65527
	dw	65535
	dw	93
	dw	0
	dw	0
	dw	0
?patch65	equ	@102-@101
	dw	2
	dw	6
?patch64	equ	@103-@98
	dw	2
	dw	6
?patch49	equ	@106-@@TMidiController@$bctr$qqrp18Classes@TComponent+15
?patch50	equ	0
?patch51	equ	@106-@@TMidiController@$bctr$qqrp18Classes@TComponent
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@TMidiController@WriteConfigButtonClick$qqrp14System@TObject	segment virtual
@@TMidiController@WriteConfigButtonClick$qqrp14System@TObject	proc	near
?live16409@0:
	?debug L 66
	push      ebp
	mov       ebp,esp
	add       esp,-24
	mov       dword ptr [ebp-8],edx
	mov       dword ptr [ebp-4],eax
	?debug L 69
@108:
	mov       eax,dword ptr [ebp-4]
	mov       eax,dword ptr [eax+712]
	call      @@Stdctrls@TCustomComboBox@GetItemIndex$qqrv
	add       eax,8
	shl       eax,4
	mov       dword ptr [ebp-20],eax
	?debug L 70
	mov       edx,dword ptr [ebp-4]
	mov       eax,dword ptr [edx+716]
	call      @@Stdctrls@TCustomComboBox@GetItemIndex$qqrv
	mov       dword ptr [ebp-24],eax
	?debug L 73
	mov       edx,dword ptr [ebp-4]
	mov       eax,dword ptr [edx+708]
	call      @@Stdctrls@TCustomComboBox@GetItemIndex$qqrv
	shl       eax,2
	add       al,32
	mov       byte ptr [ebp-16],al
	?debug L 74
	mov       dl,byte ptr [ebp-20]
	add       dl,byte ptr [ebp-24]
	mov       byte ptr [ebp-15],dl
	?debug L 75
	mov       ecx,dword ptr [ebp-4]
	mov       eax,dword ptr [ecx+720]
	call      @@Stdctrls@TCustomComboBox@GetItemIndex$qqrv
	mov       byte ptr [ebp-14],al
	?debug L 76
	mov       edx,dword ptr [ebp-4]
	mov       eax,dword ptr [edx+724]
	call      @@Stdctrls@TCustomComboBox@GetItemIndex$qqrv
	mov       byte ptr [ebp-13],al
	?debug L 77
	mov       byte ptr [ebp-12],0
	?debug L 79
	mov       edx,dword ptr [ebp-4]
	mov       eax,dword ptr [edx+732]
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+184]
	test      al,al
	je        short @109
	?debug L 81
	or        byte ptr [ebp-12],1
	?debug L 84
@109:
	mov       ecx,dword ptr [ebp-4]
	mov       eax,dword ptr [ecx+744]
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+184]
	test      al,al
	je        short @110
	?debug L 86
	or        byte ptr [ebp-12],4
	?debug L 89
@110:
	mov       ecx,dword ptr [ebp-4]
	mov       eax,dword ptr [ecx+740]
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+184]
	test      al,al
	je        short @111
	?debug L 91
	or        byte ptr [ebp-12],2
	?debug L 94
@111:
	mov       ecx,dword ptr [ebp-4]
	mov       eax,dword ptr [ecx+728]
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+184]
	test      al,al
	je        short @112
	?debug L 96
	or        byte ptr [ebp-12],8
	?debug L 99
@112:
	mov       ecx,dword ptr [ebp-4]
	mov       eax,dword ptr [ecx+748]
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+184]
	test      al,al
	je        short @113
	?debug L 101
	or        byte ptr [ebp-12],16
	?debug L 104
@113:
	push      0
	mov       ecx,dword ptr [_TestWrapperForm]
	push      dword ptr [ecx]
	call      @@TTestWrapperForm@EnableButtons$q4bool
	add       esp,8
	?debug L 105
	mov       al,byte ptr [ebp-12]
	push      eax
	push      dword ptr [ebp-16]
	mov       edx,dword ptr [_TestWrapperForm]
	push      dword ptr [edx]
	call      @@TTestWrapperForm@WriteConfigChannel$q10STR_CONFIG
	add       esp,12
	?debug L 106
@114:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@TMidiController@WriteConfigButtonClick$qqrp14System@TObject	endp
@TMidiController@WriteConfigButtonClick$qqrp14System@TObject	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	107
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch66
	dd	?patch67
	dd	?patch68
	df	@@TMidiController@WriteConfigButtonClick$qqrp14System@TObject
	dw	0
	dw	4174
	dw	0
	dw	94
	dw	0
	dw	0
	dw	0
	db	60
	db	64
	db	84
	db	77
	db	105
	db	100
	db	105
	db	67
	db	111
	db	110
	db	116
	db	114
	db	111
	db	108
	db	108
	db	101
	db	114
	db	64
	db	87
	db	114
	db	105
	db	116
	db	101
	db	67
	db	111
	db	110
	db	102
	db	105
	db	103
	db	66
	db	117
	db	116
	db	116
	db	111
	db	110
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
	dw	4137
	dw	0
	dw	95
	dw	0
	dw	0
	dw	0
	dw	?patch69
	dw	529
	dw	?patch70
	dd	?live16409@0-@@TMidiController@WriteConfigButtonClick$qqrp14System@TObject
	dd	?live16409@0-?live16409@0
	dw	17
?patch70	equ	1
?patch69	equ	14
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	65529
	dw	65535
	dw	96
	dw	0
	dw	0
	dw	0
	dw	?patch71
	dw	529
	dw	?patch72
	dd	?live16409@0-@@TMidiController@WriteConfigButtonClick$qqrp14System@TObject
	dd	?live16409@0-?live16409@0
	dw	19
?patch72	equ	1
?patch71	equ	14
	dw	18
	dw	512
	dw	65512
	dw	65535
	dw	117
	dw	0
	dw	103
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65516
	dw	65535
	dw	117
	dw	0
	dw	104
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65520
	dw	65535
	dw	4176
	dw	0
	dw	105
	dw	0
	dw	0
	dw	0
?patch66	equ	@114-@@TMidiController@WriteConfigButtonClick$qqrp14System@TObject+4
?patch67	equ	0
?patch68	equ	@114-@@TMidiController@WriteConfigButtonClick$qqrp14System@TObject
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@TMidiController@UpdateConfig$qv	segment virtual
@@TMidiController@UpdateConfig$qv	proc	near
?live16410@0:
	?debug L 110
	push      ebp
	mov       ebp,esp
	add       esp,-8
	?debug L 114
@115:
	mov       eax,dword ptr [ebp+8]
	mov       eax,dword ptr [eax+708]
	call      @@Stdctrls@TCustomComboBox@GetItemIndex$qqrv
	push      eax
	lea       edx,dword ptr [ebp-4]
	push      edx
	call      @@ReadMidiConfig$qp14str_midiconfiguc
	add       esp,8
	?debug L 116
	xor       ecx,ecx
	mov       cl,byte ptr [ebp-4]
	test      ecx,ecx
	jns       short @116
	add       ecx,15
@116:
	sar       ecx,4
	add       ecx,-8
	mov       dword ptr [ebp-8],ecx
	?debug L 117
	mov       edx,dword ptr [ebp-8]
	mov       eax,dword ptr [ebp+8]
	mov       eax,dword ptr [eax+712]
	call      @@Stdctrls@TCustomComboBox@SetItemIndex$qqri
	?debug L 120
	xor       edx,edx
	mov       dl,byte ptr [ebp-4]
	and       edx,15
	mov       ecx,dword ptr [ebp+8]
	mov       eax,dword ptr [ecx+716]
	call      @@Stdctrls@TCustomComboBox@SetItemIndex$qqri
	?debug L 122
	xor       edx,edx
	mov       dl,byte ptr [ebp-3]
	mov       ecx,dword ptr [ebp+8]
	mov       eax,dword ptr [ecx+720]
	call      @@Stdctrls@TCustomComboBox@SetItemIndex$qqri
	?debug L 124
	xor       edx,edx
	mov       dl,byte ptr [ebp-2]
	mov       ecx,dword ptr [ebp+8]
	mov       eax,dword ptr [ecx+724]
	call      @@Stdctrls@TCustomComboBox@SetItemIndex$qqri
	?debug L 126
	test      byte ptr [ebp-1],1
	setne     dl
	and       edx,1
	mov       ecx,dword ptr [ebp+8]
	mov       eax,dword ptr [ecx+732]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx+188]
	?debug L 127
	mov       edx,dword ptr [ebp+8]
	mov       eax,dword ptr [edx+732]
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+184]
	xor       edx,edx
	mov       dl,al
	cmp       edx,1
	sbb       edx,edx
	neg       edx
	mov       eax,dword ptr [ebp+8]
	mov       eax,dword ptr [eax+736]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx+188]
	?debug L 129
	test      byte ptr [ebp-1],4
	setne     dl
	and       edx,1
	mov       eax,dword ptr [ebp+8]
	mov       eax,dword ptr [eax+744]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx+188]
	?debug L 131
	test      byte ptr [ebp-1],2
	setne     dl
	and       edx,1
	mov       eax,dword ptr [ebp+8]
	mov       eax,dword ptr [eax+740]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx+188]
	?debug L 133
	test      byte ptr [ebp-1],8
	setne     dl
	and       edx,1
	mov       eax,dword ptr [ebp+8]
	mov       eax,dword ptr [eax+728]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx+188]
	?debug L 135
	test      byte ptr [ebp-1],16
	setne     dl
	and       edx,1
	mov       eax,dword ptr [ebp+8]
	mov       eax,dword ptr [eax+748]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx+188]
	?debug L 138
@117:
	pop       ecx
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@TMidiController@UpdateConfig$qv	endp
@TMidiController@UpdateConfig$qv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	79
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch73
	dd	?patch74
	dd	?patch75
	df	@@TMidiController@UpdateConfig$qv
	dw	0
	dw	4178
	dw	0
	dw	106
	dw	0
	dw	0
	dw	0
	db	32
	db	64
	db	84
	db	77
	db	105
	db	100
	db	105
	db	67
	db	111
	db	110
	db	116
	db	114
	db	111
	db	108
	db	108
	db	101
	db	114
	db	64
	db	85
	db	112
	db	100
	db	97
	db	116
	db	101
	db	67
	db	111
	db	110
	db	102
	db	105
	db	103
	db	36
	db	113
	db	118
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4137
	dw	0
	dw	107
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	116
	dw	0
	dw	108
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	4100
	dw	0
	dw	109
	dw	0
	dw	0
	dw	0
?patch73	equ	@117-@@TMidiController@UpdateConfig$qv+4
?patch74	equ	0
?patch75	equ	@117-@@TMidiController@UpdateConfig$qv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@TMidiController@ConfigPortChange$qqrp14System@TObject	segment virtual
@@TMidiController@ConfigPortChange$qqrp14System@TObject	proc	near
?live16411@0:
	?debug L 139
	push      ebp
	mov       ebp,esp
	add       esp,-8
	mov       dword ptr [ebp-8],edx
	mov       dword ptr [ebp-4],eax
	?debug L 141
@118:
	mov       eax,dword ptr [ebp-4]
	mov       eax,dword ptr [eax+708]
	call      @@Stdctrls@TCustomComboBox@GetItemIndex$qqrv
	cmp       eax,32
	setl      dl
	and       edx,1
	mov       ecx,dword ptr [ebp-4]
	mov       eax,dword ptr [ecx+728]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx+96]
	?debug L 142
	push      dword ptr [ebp-4]
	call      @@TMidiController@UpdateConfig$qv
	pop       ecx
	?debug L 143
@119:
	pop       ecx
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@TMidiController@ConfigPortChange$qqrp14System@TObject	endp
@TMidiController@ConfigPortChange$qqrp14System@TObject	ends
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
	dd	?patch76
	dd	?patch77
	dd	?patch78
	df	@@TMidiController@ConfigPortChange$qqrp14System@TObject
	dw	0
	dw	4180
	dw	0
	dw	110
	dw	0
	dw	0
	dw	0
	db	54
	db	64
	db	84
	db	77
	db	105
	db	100
	db	105
	db	67
	db	111
	db	110
	db	116
	db	114
	db	111
	db	108
	db	108
	db	101
	db	114
	db	64
	db	67
	db	111
	db	110
	db	102
	db	105
	db	103
	db	80
	db	111
	db	114
	db	116
	db	67
	db	104
	db	97
	db	110
	db	103
	db	101
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
	dw	4137
	dw	0
	dw	111
	dw	0
	dw	0
	dw	0
	dw	?patch79
	dw	529
	dw	?patch80
	dd	?live16411@0-@@TMidiController@ConfigPortChange$qqrp14System@TObject
	dd	?live16411@0-?live16411@0
	dw	17
?patch80	equ	1
?patch79	equ	14
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	65529
	dw	65535
	dw	112
	dw	0
	dw	0
	dw	0
	dw	?patch81
	dw	529
	dw	?patch82
	dd	?live16411@0-@@TMidiController@ConfigPortChange$qqrp14System@TObject
	dd	?live16411@0-?live16411@0
	dw	19
?patch82	equ	1
?patch81	equ	14
?patch76	equ	@119-@@TMidiController@ConfigPortChange$qqrp14System@TObject+4
?patch77	equ	0
?patch78	equ	@119-@@TMidiController@ConfigPortChange$qqrp14System@TObject
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@TMidiController@ConfigStatusChange$qqrp14System@TObject	segment virtual
@@TMidiController@ConfigStatusChange$qqrp14System@TObject	proc	near
?live16412@0:
	?debug L 145
	push      ebp
	mov       ebp,esp
	add       esp,-8
	mov       dword ptr [ebp-8],edx
	mov       dword ptr [ebp-4],eax
	?debug L 147
@120:
	mov       eax,dword ptr [ebp-4]
	mov       eax,dword ptr [eax+712]
	call      @@Stdctrls@TCustomComboBox@GetItemIndex$qqrv
	add       al,-4
	sub       al,2
	jb        short @123
	jmp       short @121
	?debug L 151
@123:
	mov       dl,1
	mov       ecx,dword ptr [ebp-4]
	mov       eax,dword ptr [ecx+732]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx+188]
	?debug L 152
	xor       edx,edx
	mov       eax,dword ptr [ebp-4]
	mov       eax,dword ptr [eax+736]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx+96]
	?debug L 153
	jmp       short @125
	?debug L 156
@121:
	mov       dl,1
	mov       eax,dword ptr [ebp-4]
	mov       eax,dword ptr [eax+736]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx+96]
	?debug L 157
	mov       dl,1
	mov       eax,dword ptr [ebp-4]
	mov       eax,dword ptr [eax+736]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx+188]
	?debug L 159
@125:
	mov       edx,dword ptr [ebp-8]
	mov       eax,dword ptr [ebp-4]
	call      @@TMidiController@ConfigChannelChange$qqrp14System@TObject
	?debug L 160
@126:
	pop       ecx
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@TMidiController@ConfigStatusChange$qqrp14System@TObject	endp
@TMidiController@ConfigStatusChange$qqrp14System@TObject	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	103
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch83
	dd	?patch84
	dd	?patch85
	df	@@TMidiController@ConfigStatusChange$qqrp14System@TObject
	dw	0
	dw	4182
	dw	0
	dw	113
	dw	0
	dw	0
	dw	0
	db	56
	db	64
	db	84
	db	77
	db	105
	db	100
	db	105
	db	67
	db	111
	db	110
	db	116
	db	114
	db	111
	db	108
	db	108
	db	101
	db	114
	db	64
	db	67
	db	111
	db	110
	db	102
	db	105
	db	103
	db	83
	db	116
	db	97
	db	116
	db	117
	db	115
	db	67
	db	104
	db	97
	db	110
	db	103
	db	101
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
	dw	4137
	dw	0
	dw	114
	dw	0
	dw	0
	dw	0
	dw	?patch86
	dw	529
	dw	?patch87
	dd	?live16412@0-@@TMidiController@ConfigStatusChange$qqrp14System@TObject
	dd	?live16412@0-?live16412@0
	dw	17
?patch87	equ	1
?patch86	equ	14
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	65529
	dw	65535
	dw	115
	dw	0
	dw	0
	dw	0
	dw	?patch88
	dw	529
	dw	?patch89
	dd	?live16412@0-@@TMidiController@ConfigStatusChange$qqrp14System@TObject
	dd	?live16412@0-?live16412@0
	dw	19
?patch89	equ	1
?patch88	equ	14
?patch83	equ	@126-@@TMidiController@ConfigStatusChange$qqrp14System@TObject+4
?patch84	equ	0
?patch85	equ	@126-@@TMidiController@ConfigStatusChange$qqrp14System@TObject
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@TMidiController@ConfigChannelChange$qqrp14System@TObject	segment virtual
@@TMidiController@ConfigChannelChange$qqrp14System@TObject	proc	near
?live16413@0:
	?debug L 162
	push      ebp
	mov       ebp,esp
	add       esp,-24
	mov       dword ptr [ebp-8],edx
	mov       dword ptr [ebp-4],eax
	?debug L 166
@127:
	mov       eax,dword ptr [ebp-4]
	mov       eax,dword ptr [eax+712]
	call      @@Stdctrls@TCustomComboBox@GetItemIndex$qqrv
	add       eax,8
	shl       eax,4
	mov       dword ptr [ebp-20],eax
	?debug L 167
	mov       edx,dword ptr [ebp-4]
	mov       eax,dword ptr [edx+716]
	call      @@Stdctrls@TCustomComboBox@GetItemIndex$qqrv
	mov       dword ptr [ebp-24],eax
	?debug L 170
	mov       edx,dword ptr [ebp-4]
	mov       eax,dword ptr [edx+708]
	call      @@Stdctrls@TCustomComboBox@GetItemIndex$qqrv
	shl       eax,2
	add       al,32
	mov       byte ptr [ebp-16],al
	?debug L 171
	mov       dl,byte ptr [ebp-20]
	add       dl,byte ptr [ebp-24]
	mov       byte ptr [ebp-15],dl
	?debug L 172
	mov       ecx,dword ptr [ebp-4]
	mov       eax,dword ptr [ecx+720]
	call      @@Stdctrls@TCustomComboBox@GetItemIndex$qqrv
	mov       byte ptr [ebp-14],al
	?debug L 173
	mov       edx,dword ptr [ebp-4]
	mov       eax,dword ptr [edx+724]
	call      @@Stdctrls@TCustomComboBox@GetItemIndex$qqrv
	mov       byte ptr [ebp-13],al
	?debug L 174
	mov       byte ptr [ebp-12],0
	?debug L 176
	mov       edx,dword ptr [ebp-4]
	mov       eax,dword ptr [edx+732]
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+184]
	test      al,al
	je        short @128
	?debug L 178
	or        byte ptr [ebp-12],1
	?debug L 181
@128:
	mov       ecx,dword ptr [ebp-4]
	mov       eax,dword ptr [ecx+744]
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+184]
	test      al,al
	je        short @129
	?debug L 183
	or        byte ptr [ebp-12],4
	?debug L 186
@129:
	mov       ecx,dword ptr [ebp-4]
	mov       eax,dword ptr [ecx+740]
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+184]
	test      al,al
	je        short @130
	?debug L 188
	or        byte ptr [ebp-12],2
	?debug L 191
@130:
	mov       ecx,dword ptr [ebp-4]
	mov       eax,dword ptr [ecx+728]
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+184]
	test      al,al
	je        short @131
	?debug L 193
	or        byte ptr [ebp-12],8
	?debug L 196
@131:
	mov       ecx,dword ptr [ebp-4]
	mov       eax,dword ptr [ecx+748]
	mov       edx,dword ptr [eax]
	call      dword ptr [edx+184]
	test      al,al
	je        short @132
	?debug L 198
	or        byte ptr [ebp-12],16
	?debug L 202
@132:
	mov       cl,byte ptr [ebp-15]
	push      ecx
	mov       al,byte ptr [ebp-16]
	inc       byte ptr [ebp-16]
	xor       edx,edx
	mov       dl,al
	push      edx
	call      @@WriteConfigByte$qiuc
	add       esp,8
	?debug L 203
	mov       cl,byte ptr [ebp-14]
	push      ecx
	mov       al,byte ptr [ebp-16]
	inc       byte ptr [ebp-16]
	xor       edx,edx
	mov       dl,al
	push      edx
	call      @@WriteConfigByte$qiuc
	add       esp,8
	?debug L 204
	mov       cl,byte ptr [ebp-13]
	push      ecx
	mov       al,byte ptr [ebp-16]
	inc       byte ptr [ebp-16]
	xor       edx,edx
	mov       dl,al
	push      edx
	call      @@WriteConfigByte$qiuc
	add       esp,8
	?debug L 205
	mov       cl,byte ptr [ebp-12]
	push      ecx
	mov       al,byte ptr [ebp-16]
	inc       byte ptr [ebp-16]
	xor       edx,edx
	mov       dl,al
	push      edx
	call      @@WriteConfigByte$qiuc
	add       esp,8
	?debug L 208
	mov       ecx,dword ptr [_TestWrapperForm]
	push      dword ptr [ecx]
	call      @@TTestWrapperForm@UpdateConfig$qv
	pop       ecx
	?debug L 210
@133:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@TMidiController@ConfigChannelChange$qqrp14System@TObject	endp
@TMidiController@ConfigChannelChange$qqrp14System@TObject	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	104
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch90
	dd	?patch91
	dd	?patch92
	df	@@TMidiController@ConfigChannelChange$qqrp14System@TObject
	dw	0
	dw	4184
	dw	0
	dw	116
	dw	0
	dw	0
	dw	0
	db	57
	db	64
	db	84
	db	77
	db	105
	db	100
	db	105
	db	67
	db	111
	db	110
	db	116
	db	114
	db	111
	db	108
	db	108
	db	101
	db	114
	db	64
	db	67
	db	111
	db	110
	db	102
	db	105
	db	103
	db	67
	db	104
	db	97
	db	110
	db	110
	db	101
	db	108
	db	67
	db	104
	db	97
	db	110
	db	103
	db	101
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
	dw	4137
	dw	0
	dw	117
	dw	0
	dw	0
	dw	0
	dw	?patch93
	dw	529
	dw	?patch94
	dd	?live16413@0-@@TMidiController@ConfigChannelChange$qqrp14System@TObject
	dd	?live16413@0-?live16413@0
	dw	17
?patch94	equ	1
?patch93	equ	14
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	65529
	dw	65535
	dw	118
	dw	0
	dw	0
	dw	0
	dw	?patch95
	dw	529
	dw	?patch96
	dd	?live16413@0-@@TMidiController@ConfigChannelChange$qqrp14System@TObject
	dd	?live16413@0-?live16413@0
	dw	19
?patch96	equ	1
?patch95	equ	14
	dw	18
	dw	512
	dw	65512
	dw	65535
	dw	117
	dw	0
	dw	119
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65516
	dw	65535
	dw	117
	dw	0
	dw	120
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	65520
	dw	65535
	dw	4176
	dw	0
	dw	121
	dw	0
	dw	0
	dw	0
?patch90	equ	@133-@@TMidiController@ConfigChannelChange$qqrp14System@TObject+4
?patch91	equ	0
?patch92	equ	@133-@@TMidiController@ConfigChannelChange$qqrp14System@TObject
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@TMidiController@FormShow$qqrp14System@TObject	segment virtual
@@TMidiController@FormShow$qqrp14System@TObject	proc	near
?live16414@0:
	?debug L 213
	push      ebp
	mov       ebp,esp
	add       esp,-8
	mov       dword ptr [ebp-8],edx
	mov       dword ptr [ebp-4],eax
	?debug L 215
@134:
	push      dword ptr [ebp-4]
	call      @@TMidiController@UpdateConfig$qv
	pop       ecx
	?debug L 216
@135:
	pop       ecx
	pop       ecx
	pop       ebp
	ret 
	?debug L 0
@@TMidiController@FormShow$qqrp14System@TObject	endp
@TMidiController@FormShow$qqrp14System@TObject	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	93
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch97
	dd	?patch98
	dd	?patch99
	df	@@TMidiController@FormShow$qqrp14System@TObject
	dw	0
	dw	4186
	dw	0
	dw	122
	dw	0
	dw	0
	dw	0
	db	46
	db	64
	db	84
	db	77
	db	105
	db	100
	db	105
	db	67
	db	111
	db	110
	db	116
	db	114
	db	111
	db	108
	db	108
	db	101
	db	114
	db	64
	db	70
	db	111
	db	114
	db	109
	db	83
	db	104
	db	111
	db	119
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
	dw	4137
	dw	0
	dw	123
	dw	0
	dw	0
	dw	0
	dw	?patch100
	dw	529
	dw	?patch101
	dd	?live16414@0-@@TMidiController@FormShow$qqrp14System@TObject
	dd	?live16414@0-?live16414@0
	dw	17
?patch101	equ	1
?patch100	equ	14
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	65529
	dw	65535
	dw	124
	dw	0
	dw	0
	dw	0
	dw	?patch102
	dw	529
	dw	?patch103
	dd	?live16414@0-@@TMidiController@FormShow$qqrp14System@TObject
	dd	?live16414@0-?live16414@0
	dw	19
?patch103	equ	1
?patch102	equ	14
?patch97	equ	@135-@@TMidiController@FormShow$qqrp14System@TObject+4
?patch98	equ	0
?patch99	equ	@135-@@TMidiController@FormShow$qqrp14System@TObject
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@TMidiController@EnableButtons$q4bool	segment virtual
@@TMidiController@EnableButtons$q4bool	proc	near
?live16415@0:
	?debug L 220
	push      ebp
	mov       ebp,esp
	?debug L 223
@136:
	mov       dl,byte ptr [ebp+12]
	mov       eax,dword ptr [ebp+8]
	mov       eax,dword ptr [eax+772]
	mov       ecx,dword ptr [eax]
	call      dword ptr [ecx+96]
	?debug L 224
@137:
	pop       ebp
	ret 
	?debug L 0
@@TMidiController@EnableButtons$q4bool	endp
@TMidiController@EnableButtons$q4bool	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	84
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch104
	dd	?patch105
	dd	?patch106
	df	@@TMidiController@EnableButtons$q4bool
	dw	0
	dw	4188
	dw	0
	dw	125
	dw	0
	dw	0
	dw	0
	db	37
	db	64
	db	84
	db	77
	db	105
	db	100
	db	105
	db	67
	db	111
	db	110
	db	116
	db	114
	db	111
	db	108
	db	108
	db	101
	db	114
	db	64
	db	69
	db	110
	db	97
	db	98
	db	108
	db	101
	db	66
	db	117
	db	116
	db	116
	db	111
	db	110
	db	115
	db	36
	db	113
	db	52
	db	98
	db	111
	db	111
	db	108
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4137
	dw	0
	dw	126
	dw	0
	dw	0
	dw	0
	dw	18
	dw	512
	dw	12
	dw	0
	dw	48
	dw	0
	dw	127
	dw	0
	dw	0
	dw	0
?patch104	equ	@137-@@TMidiController@EnableButtons$q4bool+2
?patch105	equ	0
?patch106	equ	@137-@@TMidiController@EnableButtons$q4bool
	dw	2
	dw	6
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCWV$@Forms@TForm@$bctr$qqrp18Classes@TComponent	segment virtual
@@_$DCWV$@Forms@TForm@$bctr$qqrp18Classes@TComponent	label	dword
	dd	@@$xt$p11Forms@TForm
	dd	1029
	dd	-4
	dd	0
@_$DCWV$@Forms@TForm@$bctr$qqrp18Classes@TComponent	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTXV$@Forms@TForm@$bctr$qqrp18Classes@TComponent	segment virtual
@@_$ECTXV$@Forms@TForm@$bctr$qqrp18Classes@TComponent	label	dword
	dd	0
	dd	-40
	dw	0
	dw	5
	dd	0
	dd	@@_$DCWV$@Forms@TForm@$bctr$qqrp18Classes@TComponent
@_$ECTXV$@Forms@TForm@$bctr$qqrp18Classes@TComponent	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@Forms@TForm@$bctr$qqrp18Classes@TComponent	segment virtual
@@Forms@TForm@$bctr$qqrp18Classes@TComponent	proc	near
?live16402@0:
	?debug	T "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\forms.hpp"
	?debug L 827
	push      ebp
	mov       ebp,esp
	add       esp,-48
	mov       byte ptr [ebp-8],dl
	test      dl,dl
	jle       short @138
	call      __ClassCreate
@138:
	mov       dword ptr [ebp-48],ecx
	mov       byte ptr [ebp-41],dl
	mov       dword ptr [ebp-4],eax
@139:
	mov       eax,offset @@_$ECTXV$@Forms@TForm@$bctr$qqrp18Classes@TComponent
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
@141:
@140:
	cmp       byte ptr [ebp-41],0
	je        short @142
	call      __AfterConstruction
	?debug L 828
@142:
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
	dd	?patch107
	dd	?patch108
	dd	?patch109
	df	@@Forms@TForm@$bctr$qqrp18Classes@TComponent
	dw	0
	dw	4190
	dw	0
	dw	128
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
	dw	4191
	dw	0
	dw	129
	dw	0
	dw	0
	dw	0
	dw	?patch110
	dw	529
	dw	?patch111
	dd	?live16402@0-@@Forms@TForm@$bctr$qqrp18Classes@TComponent
	dd	?live16402@0-?live16402@0
	dw	17
?patch111	equ	1
?patch110	equ	14
	dw	18
	dw	512
	dw	65488
	dw	65535
	dw	65528
	dw	65535
	dw	130
	dw	0
	dw	0
	dw	0
	dw	?patch112
	dw	529
	dw	?patch113
	dd	?live16402@0-@@Forms@TForm@$bctr$qqrp18Classes@TComponent
	dd	?live16402@0-?live16402@0
	dw	18
?patch113	equ	1
?patch112	equ	14
?patch107	equ	@141-@@Forms@TForm@$bctr$qqrp18Classes@TComponent+15
?patch108	equ	0
?patch109	equ	@141-@@Forms@TForm@$bctr$qqrp18Classes@TComponent
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCYV$@IntToStr$qqrui	segment virtual
@@_$DCYV$@IntToStr$qqrui	label	dword
	dd	@@$xt$17System@AnsiString
	dd	4
	dd	-4
	dd	@@$xt$p17System@AnsiString
	dd	20
	dd	-8
	dd	0
	dd	@@$xt$p17System@AnsiString
	dd	52
	dd	-8
	dd	0
@_$DCYV$@IntToStr$qqrui	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTZV$@IntToStr$qqrui	segment virtual
@@_$ECTZV$@IntToStr$qqrui	label	dword
	dd	0
	dd	-44
	dw	0
	dw	5
	dd	0
	dd	@@_$DCYV$@IntToStr$qqrui
	dw	8
	dw	5
	dd	1
	dd	@@_$DCYV$@IntToStr$qqrui+28
@_$ECTZV$@IntToStr$qqrui	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@IntToStr$qqrui	segment virtual
@@IntToStr$qqrui	proc	near
?live16403@0:
	?debug	T "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\dstring.h"
	?debug L 318
	push      ebp
	mov       ebp,esp
	add       esp,-48
	mov       dword ptr [ebp-8],edx
	mov       dword ptr [ebp-48],eax
@143:
	mov       eax,offset @@_$ECTZV$@IntToStr$qqrui
	call      @__InitExceptBlockLDTC
	?debug L 320
	mov       word ptr [ebp-28],8
	lea       eax,dword ptr [ebp-4]
	call      @@System@AnsiString@$bctr$qqrv
	mov       edx,eax
	inc       dword ptr [ebp-16]
	mov       eax,dword ptr [ebp-48]
	call      @@Sysutils@IntToStr$qqri
	lea       edx,dword ptr [ebp-4]
	mov       eax,dword ptr [ebp-8]
	call      @@System@AnsiString@$basg$qqrrx17System@AnsiString
	mov       eax,dword ptr [ebp-8]
	mov       word ptr [ebp-28],20
	push      eax
	dec       dword ptr [ebp-16]
	lea       eax,dword ptr [ebp-4]
	mov       edx,2
	call      @@System@AnsiString@$bdtr$qqrv
	pop       eax
	mov       word ptr [ebp-28],8
	inc       dword ptr [ebp-16]
	mov       edx,dword ptr [ebp-44]
	mov       dword ptr fs:[0],edx
	?debug L 321
@145:
@144:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@IntToStr$qqrui	endp
@IntToStr$qqrui	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	62
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch114
	dd	?patch115
	dd	?patch116
	df	@@IntToStr$qqrui
	dw	0
	dw	4193
	dw	0
	dw	131
	dw	0
	dw	0
	dw	0
	db	15
	db	64
	db	73
	db	110
	db	116
	db	84
	db	111
	db	83
	db	116
	db	114
	db	36
	db	113
	db	113
	db	114
	db	117
	db	105
	dw	18
	dw	512
	dw	65528
	dw	65535
	dw	65525
	dw	65535
	dw	132
	dw	0
	dw	0
	dw	0
	dw	?patch117
	dw	529
	dw	?patch118
	dd	?live16403@0-@@IntToStr$qqrui
	dd	?live16403@0-?live16403@0
	dw	19
?patch118	equ	1
?patch117	equ	14
	dw	18
	dw	512
	dw	65488
	dw	65535
	dw	117
	dw	0
	dw	133
	dw	0
	dw	0
	dw	0
	dw	?patch119
	dw	529
	dw	?patch120
	dd	?live16403@0-@@IntToStr$qqrui
	dd	?live16403@0-?live16403@0
	dw	17
?patch120	equ	1
?patch119	equ	14
?patch114	equ	@145-@@IntToStr$qqrui+4
?patch115	equ	0
?patch116	equ	@145-@@IntToStr$qqrui
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCAW$@System@AnsiString@$bctr$qqrv	segment virtual
@@_$DCAW$@System@AnsiString@$bctr$qqrv	label	dword
	dd	@@$xt$p17System@AnsiString
	dd	5
	dd	-4
	dd	0
@_$DCAW$@System@AnsiString@$bctr$qqrv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTBW$@System@AnsiString@$bctr$qqrv	segment virtual
@@_$ECTBW$@System@AnsiString@$bctr$qqrv	label	dword
	dd	0
	dd	-40
	dw	0
	dw	5
	dd	0
	dd	@@_$DCAW$@System@AnsiString@$bctr$qqrv
@_$ECTBW$@System@AnsiString@$bctr$qqrv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@System@AnsiString@$bctr$qqrv	segment virtual
@@System@AnsiString@$bctr$qqrv	proc	near
?live16404@0:
	?debug L 60
	push      ebp
	mov       ebp,esp
	add       esp,-40
	mov       dword ptr [ebp-4],eax
@146:
	mov       eax,offset @@_$ECTBW$@System@AnsiString@$bctr$qqrv
	call      @__InitExceptBlockLDTC
	mov       word ptr [ebp-24],8
	mov       edx,dword ptr [ebp-4]
	xor       ecx,ecx
	mov       dword ptr [edx],ecx
	mov       eax,dword ptr [ebp-40]
	mov       dword ptr fs:[0],eax
	mov       eax,dword ptr [ebp-4]
	?debug L 60
@148:
@147:
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
	dd	?patch121
	dd	?patch122
	dd	?patch123
	df	@@System@AnsiString@$bctr$qqrv
	dw	0
	dw	4195
	dw	0
	dw	134
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
	dw	4196
	dw	0
	dw	135
	dw	0
	dw	0
	dw	0
	dw	?patch124
	dw	529
	dw	?patch125
	dd	?live16404@0-@@System@AnsiString@$bctr$qqrv
	dd	?live16404@0-?live16404@0
	dw	17
?patch125	equ	1
?patch124	equ	14
?patch121	equ	@148-@@System@AnsiString@$bctr$qqrv+4
?patch122	equ	0
?patch123	equ	@148-@@System@AnsiString@$bctr$qqrv
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
@$xt$p15TMidiController	segment virtual
@@$xt$p15TMidiController	label	dword
	dd	4
	dw	144
	dw	12
	dd	@@$xt$15TMidiController
	db	84
	db	77
	db	105
	db	100
	db	105
	db	67
	db	111
	db	110
	db	116
	db	114
	db	111
	db	108
	db	108
	db	101
	db	114
	db	32
	db	42
	db	0
@$xt$p15TMidiController	ends
_TEXT	ends
_DATA	segment dword public use32 'DATA'
@TMidiController@	segment virtual
	align	2
@@TMidiController@	label	byte
@@TMidiController@	label	byte
	dd	@@TMidiController@+76
	dd	0
	dd	0
	dd	0
	dd	@@$xp$15TMidiController+4
	dd	@@TMidiController@+288
	dd	@@TMidiController@+585
	dd	0
	dd	@@TMidiController@+705
	dd	776
	dd	@Forms@TForm@
	dd	@@Classes@TComponent@SafeCallException$qqrp14System@TObjectpv
	dd	@@Forms@TCustomForm@AfterConstruction$qqrv
	dd	@@Forms@TCustomForm@BeforeDestruction$qqrv
	dd	@@System@TObject@Dispatch$qqrpv
	dd	@@Forms@TCustomForm@DefaultHandler$qqrpv
	dd	@@System@TObject@NewInstance$qqrp17System@TMetaClass
	dd	@@System@TObject@FreeInstance$qqrv
	dd	@@TMidiController@$bdtr$qqrv
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
	dd	@@TMidiController@$bctr$qqrp18Classes@TComponent
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
	dw	17
	dd	@@TMidiController@+721
	dd	708
	dw	0
	db	10
	db        67,111,110,102,105,103,80,111,114,116
	dd	712
	dw	0
	db	12
	db        67,111,110,102,105,103,83,116,97,116,117,115
	dd	716
	dw	0
	db	13
	db        67,111,110,102,105,103,67,104,97,110,110,101,108
	dd	720
	dw	0
	db	11
	db        67,111,110,102,105,103,68,97,116,97,49
	dd	724
	dw	0
	db	11
	db        67,111,110,102,105,103,68,97,116,97,50
	dd	728
	dw	1
	db	8
	db        77,105,100,105,79,117,116,50
	dd	732
	dw	2
	db	9
	db        68,97,116,97,49,86,97,114,121
	dd	736
	dw	2
	db	9
	db        68,97,116,97,50,86,97,114,121
	dd	740
	dw	1
	db	11
	db        73,110,118,101,114,116,67,104,101,99,107
	dd	744
	dw	1
	db	9
	db        77,117,116,101,67,104,101,99,107
	dd	748
	dw	1
	db	20
	db        71,101,110,101,114,97,116,101,73,110,105,116,105,97,108,67
	db        104,101,99,107
	dd	752
	dw	3
	db	6
	db        76,97,98,101,108,55
	dd	756
	dw	3
	db	6
	db        76,97,98,101,108,56
	dd	760
	dw	3
	db	7
	db        76,97,98,101,108,49,48
	dd	764
	dw	3
	db	6
	db        76,97,98,101,108,57
	dd	768
	dw	3
	db	7
	db        76,97,98,101,108,49,49
	dd	772
	dw	4
	db	17
	db        87,114,105,116,101,67,111,110,102,105,103,66,117,116,116,111
	db        110
	dw	5
	dw	29
	dd	@@TMidiController@WriteConfigButtonClick$qqrp14System@TObject
	db	22
	db        87,114,105,116,101,67,111,110,102,105,103,66,117,116,116,111
	db        110,67,108,105,99,107
	dw	23
	dd	@@TMidiController@ConfigPortChange$qqrp14System@TObject
	db	16
	db        67,111,110,102,105,103,80,111,114,116,67,104,97,110,103,101
	dw	25
	dd	@@TMidiController@ConfigStatusChange$qqrp14System@TObject
	db	18
	db        67,111,110,102,105,103,83,116,97,116,117,115,67,104,97,110
	db        103,101
	dw	26
	dd	@@TMidiController@ConfigChannelChange$qqrp14System@TObject
	db	19
	db        67,111,110,102,105,103,67,104,97,110,110,101,108,67,104,97
	db        110,103,101
	dw	15
	dd	@@TMidiController@FormShow$qqrp14System@TObject
	db	8
	db        70,111,114,109,83,104,111,119
	db	15
	db        84,77,105,100,105,67,111,110,116,114,111,108,108,101,114
	dw	5
	dd	@Stdctrls@TComboBox@
	dd	@Stdctrls@TCheckBox@
	dd	@Stdctrls@TRadioButton@
	dd	@Stdctrls@TLabel@
	dd	@Stdctrls@TButton@
@TMidiController@	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@$xp$15TMidiController	segment virtual
	align	2
@@$xp$15TMidiController	label	byte
	dd	@@$xp$15TMidiController+4
	db	7
	db	15
	db        84,77,105,100,105,67,111,110,116,114,111,108,108,101,114
	dd	@@TMidiController@+76
	dd	@$xp$11Forms@TForm
	dw	85
	db	11
	db        80,97,116,99,104,69,100,105,116,111,114
	dw	0
@$xp$15TMidiController	ends
_TEXT	ends
_TEXT	segment dword public use32 'CODE'
@$xt$15TMidiController	segment virtual
@@$xt$15TMidiController	label	byte
	dd	776
	dw	3
	dw	48
	dd	0
	dd	183
	dw	64
	dw	80
	dd	0
	dw	0
	dw	0
	dd	0
	dd	30
	dd	30
	dd	@@TMidiController@$bdtr$qqrv
	dw	3
	dw	84
	db	84
	db	77
	db	105
	db	100
	db	105
	db	67
	db	111
	db	110
	db	116
	db	114
	db	111
	db	108
	db	108
	db	101
	db	114
	db	0
	dd	@@$xt$11Forms@TForm
	dd	0
	dd	3
	dd	0
	dd	0
	dd	0
@$xt$15TMidiController	ends
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
@_$ECTCW$@TMidiController@$bdtr$qqrv	segment virtual
@@_$ECTCW$@TMidiController@$bdtr$qqrv	label	dword
	dd	0
	dd	-36
@_$ECTCW$@TMidiController@$bdtr$qqrv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@TMidiController@$bdtr$qqrv	segment virtual
@@TMidiController@$bdtr$qqrv	proc	near
?live16428@0:
	?debug L 0
	push      ebp
	mov       ebp,esp
	add       esp,-44
	call      __BeforeDestruction
	mov       byte ptr [ebp-41],dl
	mov       dword ptr [ebp-40],eax
@149:
	mov       eax,offset @@_$ECTCW$@TMidiController@$bdtr$qqrv
	call      @__InitExceptBlockLDTC
	cmp       byte ptr [ebp-41],0
	jl        short @150
	sub       dword ptr [ebp-8],29
	xor       edx,edx
	mov       eax,dword ptr [ebp-40]
	call      @@Forms@TForm@$bdtr$qqrv
@150:
@151:
	mov       edx,dword ptr [ebp-36]
	mov       dword ptr fs:[0],edx
@153:
@152:
	cmp       byte ptr [ebp-41],0
	jle       short @154
	mov       eax,dword ptr [ebp-40]
	call      __ClassDestroy
	?debug L 60
@154:
	mov       esp,ebp
	pop       ebp
	ret 
	?debug L 0
@@TMidiController@$bdtr$qqrv	endp
@TMidiController@$bdtr$qqrv	ends
_TEXT	ends
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	74
	dw	517
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dw	0
	dd	?patch126
	dd	?patch127
	dd	?patch128
	df	@@TMidiController@$bdtr$qqrv
	dw	0
	dw	4198
	dw	0
	dw	136
	dw	0
	dw	0
	dw	0
	db	27
	db	64
	db	84
	db	77
	db	105
	db	100
	db	105
	db	67
	db	111
	db	110
	db	116
	db	114
	db	111
	db	108
	db	108
	db	101
	db	114
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
	dw	4137
	dw	0
	dw	137
	dw	0
	dw	0
	dw	0
	dw	?patch129
	dw	529
	dw	?patch130
	dd	?live16428@0-@@TMidiController@$bdtr$qqrv
	dd	?live16428@0-?live16428@0
	dw	17
?patch130	equ	1
?patch129	equ	14
?patch126	equ	@153-@@TMidiController@$bdtr$qqrv+18
?patch127	equ	0
?patch128	equ	@153-@@TMidiController@$bdtr$qqrv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCDW$@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2	segment virtual
@@_$DCDW$@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2	label	dword
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
@_$DCDW$@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTEW$@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2	segment virtual
@@_$ECTEW$@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2	label	dword
	dd	0
	dd	-48
	dw	0
	dw	5
	dd	2
	dd	@@_$DCDW$@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2
	dw	8
	dw	5
	dd	4
	dd	@@_$DCDW$@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2+28
@_$ECTEW$@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2	segment virtual
@@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2	proc	near
?live16429@0:
	?debug	T "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\classes.hpp"
	?debug L 2094
	push      ebp
	mov       ebp,esp
	add       esp,-56
	mov       dword ptr [ebp-4],ecx
	mov       byte ptr [ebp-53],dl
	mov       dword ptr [ebp-52],eax
@155:
	mov       eax,offset @@_$ECTEW$@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2
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
@156:
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
	dd	?patch131
	dd	?patch132
	dd	?patch133
	df	@@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2
	dw	0
	dw	4200
	dw	0
	dw	138
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
	dw	4201
	dw	0
	dw	139
	dw	0
	dw	0
	dw	0
	dw	?patch134
	dw	529
	dw	?patch135
	dd	?live16429@0-@@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2
	dd	?live16429@0-?live16429@0
	dw	17
?patch135	equ	1
?patch134	equ	14
	dw	18
	dw	512
	dw	65483
	dw	65535
	dw	48
	dw	0
	dw	140
	dw	0
	dw	0
	dw	0
	dw	?patch136
	dw	529
	dw	?patch137
	dd	?live16429@0-@@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2
	dd	?live16429@0-?live16429@0
	dw	3
?patch137	equ	1
?patch136	equ	14
	dw	18
	dw	512
	dw	65532
	dw	65535
	dw	4202
	dw	0
	dw	141
	dw	0
	dw	0
	dw	0
	dw	?patch138
	dw	529
	dw	?patch139
	dd	?live16429@0-@@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2
	dd	?live16429@0-?live16429@0
	dw	0
?patch139	equ	1
?patch138	equ	14
	dw	18
	dw	512
	dw	8
	dw	0
	dw	4202
	dw	0
	dw	142
	dw	0
	dw	0
	dw	0
?patch131	equ	@156-@@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2+6
?patch132	equ	0
?patch133	equ	@156-@@Classes@TComponent@UpdateRegistry$qqr4boolx17System@AnsiStringxt2
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCFW$@Forms@TForm@$bctr$qqrp18Classes@TComponenti	segment virtual
@@_$DCFW$@Forms@TForm@$bctr$qqrp18Classes@TComponenti	label	dword
	dd	@@$xt$p11Forms@TForm
	dd	1029
	dd	-4
	dd	0
@_$DCFW$@Forms@TForm@$bctr$qqrp18Classes@TComponenti	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTGW$@Forms@TForm@$bctr$qqrp18Classes@TComponenti	segment virtual
@@_$ECTGW$@Forms@TForm@$bctr$qqrp18Classes@TComponenti	label	dword
	dd	0
	dd	-40
	dw	0
	dw	5
	dd	0
	dd	@@_$DCFW$@Forms@TForm@$bctr$qqrp18Classes@TComponenti
@_$ECTGW$@Forms@TForm@$bctr$qqrp18Classes@TComponenti	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@Forms@TForm@$bctr$qqrp18Classes@TComponenti	segment virtual
@@Forms@TForm@$bctr$qqrp18Classes@TComponenti	proc	near
?live16430@0:
	?debug	T "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\forms.hpp"
	?debug L 831
	push      ebp
	mov       ebp,esp
	add       esp,-48
	mov       byte ptr [ebp-8],dl
	test      dl,dl
	jle       short @157
	call      __ClassCreate
@157:
	mov       dword ptr [ebp-48],ecx
	mov       byte ptr [ebp-41],dl
	mov       dword ptr [ebp-4],eax
@158:
	mov       eax,offset @@_$ECTGW$@Forms@TForm@$bctr$qqrp18Classes@TComponenti
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
@160:
@159:
	cmp       byte ptr [ebp-41],0
	je        short @161
	call      __AfterConstruction
	?debug L 832
@161:
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
	dd	?patch140
	dd	?patch141
	dd	?patch142
	df	@@Forms@TForm@$bctr$qqrp18Classes@TComponenti
	dw	0
	dw	4204
	dw	0
	dw	143
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
	dw	4191
	dw	0
	dw	144
	dw	0
	dw	0
	dw	0
	dw	?patch143
	dw	529
	dw	?patch144
	dd	?live16430@0-@@Forms@TForm@$bctr$qqrp18Classes@TComponenti
	dd	?live16430@0-?live16430@0
	dw	17
?patch144	equ	1
?patch143	equ	14
	dw	18
	dw	512
	dw	65488
	dw	65535
	dw	65528
	dw	65535
	dw	145
	dw	0
	dw	0
	dw	0
	dw	?patch145
	dw	529
	dw	?patch146
	dd	?live16430@0-@@Forms@TForm@$bctr$qqrp18Classes@TComponenti
	dd	?live16430@0-?live16430@0
	dw	18
?patch146	equ	1
?patch145	equ	14
	dw	18
	dw	512
	dw	8
	dw	0
	dw	116
	dw	0
	dw	146
	dw	0
	dw	0
	dw	0
?patch140	equ	@160-@@Forms@TForm@$bctr$qqrp18Classes@TComponenti+17
?patch141	equ	0
?patch142	equ	@160-@@Forms@TForm@$bctr$qqrp18Classes@TComponenti
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_DATA	segment dword public use32 'DATA'
@_$DCHW$@Forms@TForm@$bdtr$qqrv	segment virtual
@@_$DCHW$@Forms@TForm@$bdtr$qqrv	label	dword
	dd	@@$xt$p11Forms@TForm
	dd	1029
	dd	-4
	dd	0
@_$DCHW$@Forms@TForm@$bdtr$qqrv	ends
_DATA	ends
_DATA	segment dword public use32 'DATA'
@_$ECTIW$@Forms@TForm@$bdtr$qqrv	segment virtual
@@_$ECTIW$@Forms@TForm@$bdtr$qqrv	label	dword
	dd	0
	dd	-40
	dw	0
	dw	5
	dd	0
	dd	@@_$DCHW$@Forms@TForm@$bdtr$qqrv
@_$ECTIW$@Forms@TForm@$bdtr$qqrv	ends
_DATA	ends
_TEXT	segment dword public use32 'CODE'
@Forms@TForm@$bdtr$qqrv	segment virtual
@@Forms@TForm@$bdtr$qqrv	proc	near
?live16431@0:
	?debug L 835
	push      ebp
	mov       ebp,esp
	add       esp,-44
	call      __BeforeDestruction
	mov       byte ptr [ebp-41],dl
	mov       dword ptr [ebp-4],eax
@162:
	mov       eax,offset @@_$ECTIW$@Forms@TForm@$bdtr$qqrv
	call      @__InitExceptBlockLDTC
	mov       dword ptr [ebp-12],28
	cmp       byte ptr [ebp-41],0
	jl        short @163
	mov       word ptr [ebp-24],8
	sub       dword ptr [ebp-12],25
	xor       edx,edx
	mov       eax,dword ptr [ebp-4]
	call      @@Forms@TCustomForm@$bdtr$qqrv
@163:
	mov       edx,dword ptr [ebp-40]
	mov       dword ptr fs:[0],edx
@164:
	cmp       byte ptr [ebp-41],0
	jle       short @165
	mov       eax,dword ptr [ebp-4]
	call      __ClassDestroy
	?debug L 835
@165:
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
	dd	?patch147
	dd	?patch148
	dd	?patch149
	df	@@Forms@TForm@$bdtr$qqrv
	dw	0
	dw	4206
	dw	0
	dw	147
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
	dw	4191
	dw	0
	dw	148
	dw	0
	dw	0
	dw	0
	dw	?patch150
	dw	529
	dw	?patch151
	dd	?live16431@0-@@Forms@TForm@$bdtr$qqrv
	dd	?live16431@0-?live16431@0
	dw	17
?patch151	equ	1
?patch150	equ	14
?patch147	equ	@164-@@Forms@TForm@$bdtr$qqrv+18
?patch148	equ	0
?patch149	equ	@164-@@Forms@TForm@$bdtr$qqrv
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
?live16444@0:
	?debug	T "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\VCL\systobj.h"
	?debug L 224
	push      ebp
	mov       ebp,esp
	add       esp,-8
	mov       dword ptr [ebp-8],edx
	mov       dword ptr [ebp-4],eax
@166:
	cmp       dword ptr [ebp-4],0
	je        short @167
	?debug L 225
	mov       eax,dword ptr [ebp-4]
	cmp       dword ptr [eax],0
	je        short @168
	?debug L 226
	mov       edx,dword ptr [ebp-4]
	mov       ecx,dword ptr [edx]
	push      ecx
	mov       eax,dword ptr [ecx]
	call      dword ptr [eax+8]
	?debug L 227
@168:
	mov       edx,dword ptr [ebp-4]
	xor       ecx,ecx
	mov       dword ptr [edx],ecx
	test      byte ptr [ebp-8],1
	je        short @169
	push      dword ptr [ebp-4]
	call      @$bdele$qpv
	pop       ecx
	?debug L 228
@169:
@167:
@170:
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
	dd	?patch152
	dd	?patch153
	dd	?patch154
	df	@@System@%DelphiInterface$t21Controls@IDockManager%@$bdtr$qqrv
	dw	0
	dw	4220
	dw	0
	dw	160
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
	dw	4212
	dw	0
	dw	161
	dw	0
	dw	0
	dw	0
	dw	?patch155
	dw	529
	dw	?patch156
	dd	?live16444@0-@@System@%DelphiInterface$t21Controls@IDockManager%@$bdtr$qqrv
	dd	?live16444@0-?live16444@0
	dw	17
?patch156	equ	1
?patch155	equ	14
?patch152	equ	@170-@@System@%DelphiInterface$t21Controls@IDockManager%@$bdtr$qqrv+4
?patch153	equ	0
?patch154	equ	@170-@@System@%DelphiInterface$t21Controls@IDockManager%@$bdtr$qqrv
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
?live16446@0:
	?debug L 224
	push      ebp
	mov       ebp,esp
	add       esp,-8
	mov       dword ptr [ebp-8],edx
	mov       dword ptr [ebp-4],eax
@171:
	cmp       dword ptr [ebp-4],0
	je        short @172
	?debug L 225
	mov       eax,dword ptr [ebp-4]
	cmp       dword ptr [eax],0
	je        short @173
	?debug L 226
	mov       edx,dword ptr [ebp-4]
	mov       ecx,dword ptr [edx]
	push      ecx
	mov       eax,dword ptr [ecx]
	call      dword ptr [eax+8]
	?debug L 227
@173:
	mov       edx,dword ptr [ebp-4]
	xor       ecx,ecx
	mov       dword ptr [edx],ecx
	test      byte ptr [ebp-8],1
	je        short @174
	push      dword ptr [ebp-4]
	call      @$bdele$qpv
	pop       ecx
	?debug L 228
@174:
@172:
@175:
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
	dd	?patch157
	dd	?patch158
	dd	?patch159
	df	@@System@%DelphiInterface$t14Forms@IOleForm%@$bdtr$qqrv
	dw	0
	dw	4263
	dw	0
	dw	173
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
	dw	4255
	dw	0
	dw	174
	dw	0
	dw	0
	dw	0
	dw	?patch160
	dw	529
	dw	?patch161
	dd	?live16446@0-@@System@%DelphiInterface$t14Forms@IOleForm%@$bdtr$qqrv
	dd	?live16446@0-?live16446@0
	dw	17
?patch161	equ	1
?patch160	equ	14
?patch157	equ	@175-@@System@%DelphiInterface$t14Forms@IOleForm%@$bdtr$qqrv+4
?patch158	equ	0
?patch159	equ	@175-@@System@%DelphiInterface$t14Forms@IOleForm%@$bdtr$qqrv
	dw	2
	dw	6
	dw	4
	dw	531
	dw	0
$$BSYMS	ends
_TEXT	segment dword public use32 'CODE'
@System@%DelphiInterface$t15Forms@IDesigner%@$bdtr$qqrv	segment virtual
@@System@%DelphiInterface$t15Forms@IDesigner%@$bdtr$qqrv	proc	near
?live16447@0:
	?debug L 224
	push      ebp
	mov       ebp,esp
	add       esp,-8
	mov       dword ptr [ebp-8],edx
	mov       dword ptr [ebp-4],eax
@176:
	cmp       dword ptr [ebp-4],0
	je        short @177
	?debug L 225
	mov       eax,dword ptr [ebp-4]
	cmp       dword ptr [eax],0
	je        short @178
	?debug L 226
	mov       edx,dword ptr [ebp-4]
	mov       ecx,dword ptr [edx]
	push      ecx
	mov       eax,dword ptr [ecx]
	call      dword ptr [eax+8]
	?debug L 227
@178:
	mov       edx,dword ptr [ebp-4]
	xor       ecx,ecx
	mov       dword ptr [edx],ecx
	test      byte ptr [ebp-8],1
	je        short @179
	push      dword ptr [ebp-4]
	call      @$bdele$qpv
	pop       ecx
	?debug L 228
@179:
@177:
@180:
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
	dd	?patch162
	dd	?patch163
	dd	?patch164
	df	@@System@%DelphiInterface$t15Forms@IDesigner%@$bdtr$qqrv
	dw	0
	dw	4306
	dw	0
	dw	186
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
	dw	4298
	dw	0
	dw	187
	dw	0
	dw	0
	dw	0
	dw	?patch165
	dw	529
	dw	?patch166
	dd	?live16447@0-@@System@%DelphiInterface$t15Forms@IDesigner%@$bdtr$qqrv
	dd	?live16447@0-?live16447@0
	dw	17
?patch166	equ	1
?patch165	equ	14
?patch162	equ	@180-@@System@%DelphiInterface$t15Forms@IDesigner%@$bdtr$qqrv+4
?patch163	equ	0
?patch164	equ	@180-@@System@%DelphiInterface$t15Forms@IDesigner%@$bdtr$qqrv
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
?live16453@0:
	?debug L 224
	push      ebp
	mov       ebp,esp
	add       esp,-8
	mov       dword ptr [ebp-8],edx
	mov       dword ptr [ebp-4],eax
@181:
	cmp       dword ptr [ebp-4],0
	je        short @182
	?debug L 225
	mov       eax,dword ptr [ebp-4]
	cmp       dword ptr [eax],0
	je        short @183
	?debug L 226
	mov       edx,dword ptr [ebp-4]
	mov       ecx,dword ptr [edx]
	push      ecx
	mov       eax,dword ptr [ecx]
	call      dword ptr [eax+8]
	?debug L 227
@183:
	mov       edx,dword ptr [ebp-4]
	xor       ecx,ecx
	mov       dword ptr [edx],ecx
	test      byte ptr [ebp-8],1
	je        short @184
	push      dword ptr [ebp-4]
	call      @$bdele$qpv
	pop       ecx
	?debug L 228
@184:
@182:
@185:
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
	dd	?patch167
	dd	?patch168
	dd	?patch169
	df	@@System@%DelphiInterface$t8IUnknown%@$bdtr$qqrv
	dw	0
	dw	4349
	dw	0
	dw	199
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
	dw	4341
	dw	0
	dw	200
	dw	0
	dw	0
	dw	0
	dw	?patch170
	dw	529
	dw	?patch171
	dd	?live16453@0-@@System@%DelphiInterface$t8IUnknown%@$bdtr$qqrv
	dd	?live16453@0-?live16453@0
	dw	17
?patch171	equ	1
?patch170	equ	14
?patch167	equ	@185-@@System@%DelphiInterface$t8IUnknown%@$bdtr$qqrv+4
?patch168	equ	0
?patch169	equ	@185-@@System@%DelphiInterface$t8IUnknown%@$bdtr$qqrv
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
	db	"CV Input",0
	;	s@+9:
	db	"Switch Input",0
	;	s@+22:
	db	"Analogue Output",0
	;	s@+38:
	db	"Digital Output",0
	align	4
_DATA	ends
_TEXT	segment dword public use32 'CODE'
_TEXT	ends
	?debug	C FB04105F5465737457726170706572466F726D01000000
	?debug	C FB041140544D696469436F6E74726F6C6C65724004000000
	?debug	C FB041640247870243135544D696469436F6E74726F6C6C657204000000
	?debug	C FB040D40466F726D734054466F726D4004000000
	?debug	C FB0414405374646374726C734054436F6D626F426F784004000000
	?debug	C FB0414405374646374726C734054436865636B426F784004000000
	?debug	C FB0417405374646374726C734054526164696F427574746F6E4004000000
	?debug	C FB0411405374646374726C7340544C6162656C4004000000
	?debug	C FB0412405374646374726C734054427574746F6E4004000000
	?debug	C FB041240247870243131466F726D734054466F726D04000000
	?debug	C FB041440436C61737365734054436F6D706F6E656E744004000000
	extrn	_TestWrapperForm:dword
@@ReadConfigByte$qi	equ	@ReadConfigByte$qi
	extrn	@ReadConfigByte$qi:near
@@WriteConfigByte$qiuc	equ	@WriteConfigByte$qiuc
	extrn	@WriteConfigByte$qiuc:near
	publicdll	_MidiController
@@System@AnsiString@$bdtr$qqrv	equ	@System@AnsiString@$bdtr$qqrv
	extrn	@System@AnsiString@$bdtr$qqrv:near
@@System@AnsiString@$badd$xqqrrx17System@AnsiString	equ	@System@AnsiString@$badd$xqqrrx17System@AnsiString
	extrn	@System@AnsiString@$badd$xqqrrx17System@AnsiString:near
@@System@AnsiString@$bctr$qqrpxc	equ	@System@AnsiString@$bctr$qqrpxc
	extrn	@System@AnsiString@$bctr$qqrpxc:near
@@Stdctrls@TCustomComboBox@SetItemIndex$qqri	equ	@Stdctrls@TCustomComboBox@SetItemIndex$qqri
	extrn	@Stdctrls@TCustomComboBox@SetItemIndex$qqri:near
	extrn	__Exception_list:dword
	extrn	@__InitExceptBlockLDTC:near
	extrn	__ClassCreate:near
	extrn	__AfterConstruction:near
@@Stdctrls@TCustomComboBox@GetItemIndex$qqrv	equ	@Stdctrls@TCustomComboBox@GetItemIndex$qqrv
	extrn	@Stdctrls@TCustomComboBox@GetItemIndex$qqrv:near
@@TTestWrapperForm@EnableButtons$q4bool	equ	@TTestWrapperForm@EnableButtons$q4bool
	extrn	@TTestWrapperForm@EnableButtons$q4bool:near
@@TTestWrapperForm@WriteConfigChannel$q10STR_CONFIG	equ	@TTestWrapperForm@WriteConfigChannel$q10STR_CONFIG
	extrn	@TTestWrapperForm@WriteConfigChannel$q10STR_CONFIG:near
@@TTestWrapperForm@UpdateConfig$qv	equ	@TTestWrapperForm@UpdateConfig$qv
	extrn	@TTestWrapperForm@UpdateConfig$qv:near
@@Forms@TCustomForm@$bctr$qqrp18Classes@TComponent	equ	@Forms@TCustomForm@$bctr$qqrp18Classes@TComponent
	extrn	@Forms@TCustomForm@$bctr$qqrp18Classes@TComponent:near
@@System@AnsiString@$basg$qqrrx17System@AnsiString	equ	@System@AnsiString@$basg$qqrrx17System@AnsiString
	extrn	@System@AnsiString@$basg$qqrrx17System@AnsiString:near
@@Sysutils@IntToStr$qqri	equ	@Sysutils@IntToStr$qqri
	extrn	@Sysutils@IntToStr$qqri:near
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
	extrn	@Stdctrls@TComboBox@:byte
	extrn	@Stdctrls@TCheckBox@:byte
	extrn	@Stdctrls@TRadioButton@:byte
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
	?debug	C FB095061746368456469746F722E64666D00
	?debug	C FB0A5061746368456469746F7200
	?debug	C 9F757569642E6C6962
	?debug	C 9F757569642E6C6962
	?debug	C 9F757569642E6C6962
	?debug	C 9F757569642E6C6962
	?debug	C 9F76636C6534302E6C6962
$$BSYMS	segment byte public use32 'DEBSYM'
	dw	22
	dw	514
	df	_MidiController
	dw	0
	dw	4132
	dw	0
	dw	267
	dw	0
	dw	0
	dw	0
	dw	?patch172
	dw	37
	dw	268
	dw	0
	dw	0
	dw	0
	dw	0
?patch172	equ	12
	dw	?patch173
	dw	37
	dw	269
	dw	0
	dw	0
	dw	0
	dw	0
?patch173	equ	12
	dw	?patch174
	dw	3
	dw	4380
	dw	0
	dw	270
	dw	0
	dw	0
	dw	0
	dw	2
?patch174	equ	16
	dw	?patch175
	dw	3
	dw	4380
	dw	0
	dw	271
	dw	0
	dw	0
	dw	0
	dw	3
?patch175	equ	16
	dw	?patch176
	dw	3
	dw	4380
	dw	0
	dw	272
	dw	0
	dw	0
	dw	0
	dw	4
?patch176	equ	16
	dw	?patch177
	dw	3
	dw	4380
	dw	0
	dw	273
	dw	0
	dw	0
	dw	0
	dw	5
?patch177	equ	16
	dw	?patch178
	dw	3
	dw	4380
	dw	0
	dw	274
	dw	0
	dw	0
	dw	0
	dw	6
?patch178	equ	16
	dw	?patch179
	dw	3
	dw	4380
	dw	0
	dw	275
	dw	0
	dw	0
	dw	0
	dw	7
?patch179	equ	16
	dw	?patch180
	dw	3
	dw	4380
	dw	0
	dw	276
	dw	0
	dw	0
	dw	0
	dw	8
?patch180	equ	16
	dw	?patch181
	dw	3
	dw	4380
	dw	0
	dw	277
	dw	0
	dw	0
	dw	0
	dw	9
?patch181	equ	16
	dw	?patch182
	dw	3
	dw	4380
	dw	0
	dw	278
	dw	0
	dw	0
	dw	0
	dw	11
?patch182	equ	16
	dw	?patch183
	dw	3
	dw	4380
	dw	0
	dw	279
	dw	0
	dw	0
	dw	0
	dw	12
?patch183	equ	16
	dw	?patch184
	dw	3
	dw	4380
	dw	0
	dw	280
	dw	0
	dw	0
	dw	0
	dw	13
?patch184	equ	16
	dw	?patch185
	dw	3
	dw	4380
	dw	0
	dw	281
	dw	0
	dw	0
	dw	0
	dw	17
?patch185	equ	16
	dw	?patch186
	dw	3
	dw	4381
	dw	0
	dw	282
	dw	0
	dw	0
	dw	0
	dw	16384
?patch186	equ	16
	dw	?patch187
	dw	3
	dw	4380
	dw	0
	dw	283
	dw	0
	dw	0
	dw	0
	dw	0
?patch187	equ	16
	dw	?patch188
	dw	3
	dw	4380
	dw	0
	dw	284
	dw	0
	dw	0
	dw	0
	dw	1
?patch188	equ	16
	dw	?patch189
	dw	3
	dw	4380
	dw	0
	dw	285
	dw	0
	dw	0
	dw	0
	dw	2
?patch189	equ	16
	dw	?patch190
	dw	3
	dw	4380
	dw	0
	dw	286
	dw	0
	dw	0
	dw	0
	dw	3
?patch190	equ	16
	dw	?patch191
	dw	3
	dw	4380
	dw	0
	dw	287
	dw	0
	dw	0
	dw	0
	dw	4
?patch191	equ	16
	dw	?patch192
	dw	3
	dw	4380
	dw	0
	dw	288
	dw	0
	dw	0
	dw	0
	dw	5
?patch192	equ	16
	dw	?patch193
	dw	3
	dw	4380
	dw	0
	dw	289
	dw	0
	dw	0
	dw	0
	dw	6
?patch193	equ	16
	dw	?patch194
	dw	3
	dw	4380
	dw	0
	dw	290
	dw	0
	dw	0
	dw	0
	dw	7
?patch194	equ	16
	dw	?patch195
	dw	3
	dw	4380
	dw	0
	dw	291
	dw	0
	dw	0
	dw	0
	dw	8
?patch195	equ	16
	dw	?patch196
	dw	3
	dw	4380
	dw	0
	dw	292
	dw	0
	dw	0
	dw	0
	dw	9
?patch196	equ	16
	dw	?patch197
	dw	3
	dw	4380
	dw	0
	dw	293
	dw	0
	dw	0
	dw	0
	dw	10
?patch197	equ	16
	dw	?patch198
	dw	3
	dw	4380
	dw	0
	dw	294
	dw	0
	dw	0
	dw	0
	dw	11
?patch198	equ	16
	dw	?patch199
	dw	3
	dw	4380
	dw	0
	dw	295
	dw	0
	dw	0
	dw	0
	dw	12
?patch199	equ	16
	dw	?patch200
	dw	3
	dw	4380
	dw	0
	dw	296
	dw	0
	dw	0
	dw	0
	dw	13
?patch200	equ	16
	dw	?patch201
	dw	37
	dw	297
	dw	0
	dw	0
	dw	0
	dw	0
?patch201	equ	12
	dw	?patch202
	dw	37
	dw	298
	dw	0
	dw	0
	dw	0
	dw	0
?patch202	equ	12
	dw	?patch203
	dw	37
	dw	299
	dw	0
	dw	0
	dw	0
	dw	0
?patch203	equ	12
	dw	?patch204
	dw	37
	dw	300
	dw	0
	dw	0
	dw	0
	dw	0
?patch204	equ	12
	dw	?patch205
	dw	37
	dw	301
	dw	0
	dw	0
	dw	0
	dw	0
?patch205	equ	12
	dw	?patch206
	dw	37
	dw	302
	dw	0
	dw	0
	dw	0
	dw	0
?patch206	equ	12
	dw	?patch207
	dw	37
	dw	303
	dw	0
	dw	0
	dw	0
	dw	0
?patch207	equ	12
	dw	?patch208
	dw	37
	dw	304
	dw	0
	dw	0
	dw	0
	dw	0
?patch208	equ	12
	dw	?patch209
	dw	37
	dw	305
	dw	0
	dw	0
	dw	0
	dw	0
?patch209	equ	12
	dw	?patch210
	dw	37
	dw	306
	dw	0
	dw	0
	dw	0
	dw	0
?patch210	equ	12
	dw	?patch211
	dw	37
	dw	307
	dw	0
	dw	0
	dw	0
	dw	0
?patch211	equ	12
	dw	?patch212
	dw	37
	dw	308
	dw	0
	dw	0
	dw	0
	dw	0
?patch212	equ	12
	dw	?patch213
	dw	37
	dw	309
	dw	0
	dw	0
	dw	0
	dw	0
?patch213	equ	12
	dw	?patch214
	dw	37
	dw	310
	dw	0
	dw	0
	dw	0
	dw	0
?patch214	equ	12
	dw	?patch215
	dw	37
	dw	311
	dw	0
	dw	0
	dw	0
	dw	0
?patch215	equ	12
	dw	?patch216
	dw	37
	dw	312
	dw	0
	dw	0
	dw	0
	dw	0
?patch216	equ	12
	dw	?patch217
	dw	37
	dw	313
	dw	0
	dw	0
	dw	0
	dw	0
?patch217	equ	12
	dw	?patch218
	dw	37
	dw	314
	dw	0
	dw	0
	dw	0
	dw	0
?patch218	equ	12
	dw	?patch219
	dw	37
	dw	315
	dw	0
	dw	0
	dw	0
	dw	0
?patch219	equ	12
	dw	?patch220
	dw	37
	dw	316
	dw	0
	dw	0
	dw	0
	dw	0
?patch220	equ	12
	dw	?patch221
	dw	37
	dw	317
	dw	0
	dw	0
	dw	0
	dw	0
?patch221	equ	12
	dw	?patch222
	dw	37
	dw	318
	dw	0
	dw	0
	dw	0
	dw	0
?patch222	equ	12
	dw	?patch223
	dw	37
	dw	319
	dw	0
	dw	0
	dw	0
	dw	0
?patch223	equ	12
	dw	?patch224
	dw	37
	dw	320
	dw	0
	dw	0
	dw	0
	dw	0
?patch224	equ	12
	dw	?patch225
	dw	37
	dw	321
	dw	0
	dw	0
	dw	0
	dw	0
?patch225	equ	12
	dw	?patch226
	dw	37
	dw	322
	dw	0
	dw	0
	dw	0
	dw	0
?patch226	equ	12
	dw	?patch227
	dw	37
	dw	323
	dw	0
	dw	0
	dw	0
	dw	0
?patch227	equ	12
	dw	?patch228
	dw	37
	dw	324
	dw	0
	dw	0
	dw	0
	dw	0
?patch228	equ	12
	dw	?patch229
	dw	37
	dw	325
	dw	0
	dw	0
	dw	0
	dw	0
?patch229	equ	12
	dw	?patch230
	dw	37
	dw	326
	dw	0
	dw	0
	dw	0
	dw	0
?patch230	equ	12
	dw	?patch231
	dw	37
	dw	327
	dw	0
	dw	0
	dw	0
	dw	0
?patch231	equ	12
	dw	?patch232
	dw	37
	dw	328
	dw	0
	dw	0
	dw	0
	dw	0
?patch232	equ	12
	dw	?patch233
	dw	37
	dw	329
	dw	0
	dw	0
	dw	0
	dw	0
?patch233	equ	12
	dw	?patch234
	dw	37
	dw	330
	dw	0
	dw	0
	dw	0
	dw	0
?patch234	equ	12
	dw	?patch235
	dw	37
	dw	331
	dw	0
	dw	0
	dw	0
	dw	0
?patch235	equ	12
	dw	?patch236
	dw	37
	dw	332
	dw	0
	dw	0
	dw	0
	dw	0
?patch236	equ	12
	dw	?patch237
	dw	37
	dw	333
	dw	0
	dw	0
	dw	0
	dw	0
?patch237	equ	12
	dw	?patch238
	dw	37
	dw	334
	dw	0
	dw	0
	dw	0
	dw	0
?patch238	equ	12
	dw	16
	dw	4
	dw	4176
	dw	0
	dw	1
	dw	335
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4176
	dw	0
	dw	0
	dw	336
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	18
	dw	0
	dw	0
	dw	337
	dw	0
	dw	0
	dw	0
	dw	?patch239
	dw	37
	dw	338
	dw	0
	dw	0
	dw	0
	dw	0
?patch239	equ	12
	dw	?patch240
	dw	37
	dw	339
	dw	0
	dw	0
	dw	0
	dw	0
?patch240	equ	12
	dw	16
	dw	4
	dw	18
	dw	0
	dw	0
	dw	340
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	18
	dw	0
	dw	0
	dw	341
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4383
	dw	0
	dw	1
	dw	342
	dw	0
	dw	0
	dw	0
	dw	22
	dw	513
	df	_ANA_OUT_CONTROLLER
	dw	0
	dw	4482
	dw	0
	dw	343
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4100
	dw	0
	dw	1
	dw	344
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4100
	dw	0
	dw	0
	dw	345
	dw	0
	dw	0
	dw	0
	dw	16
	dw	4
	dw	4133
	dw	0
	dw	1
	dw	346
	dw	0
	dw	0
	dw	0
	dw	?patch241
	dw	38
	dw	320
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
	dw	487
	dw	0
	dw	488
	dw	0
	dw	489
	dw	0
	dw	490
	dw	0
	dw	491
	dw	0
	dw	492
	dw	0
	dw	493
	dw	0
	dw	494
	dw	0
	dw	495
	dw	0
	dw	496
	dw	0
	dw	497
	dw	0
	dw	498
	dw	0
	dw	499
	dw	0
	dw	500
	dw	0
	dw	501
	dw	0
	dw	502
	dw	0
	dw	503
	dw	0
	dw	504
	dw	0
	dw	505
	dw	0
	dw	506
	dw	0
	dw	507
	dw	0
	dw	508
	dw	0
	dw	509
	dw	0
	dw	510
	dw	0
	dw	511
	dw	0
	dw	512
	dw	0
	dw	513
	dw	0
	dw	514
	dw	0
	dw	515
	dw	0
	dw	516
	dw	0
	dw	517
	dw	0
	dw	518
	dw	0
	dw	519
	dw	0
	dw	520
	dw	0
	dw	521
	dw	0
	dw	522
	dw	0
	dw	523
	dw	0
	dw	524
	dw	0
	dw	525
	dw	0
	dw	526
	dw	0
	dw	527
	dw	0
	dw	528
	dw	0
	dw	529
	dw	0
	dw	530
	dw	0
	dw	531
	dw	0
	dw	532
	dw	0
	dw	533
	dw	0
	dw	534
	dw	0
	dw	535
	dw	0
	dw	536
	dw	0
	dw	537
	dw	0
	dw	538
	dw	0
	dw	539
	dw	0
	dw	540
	dw	0
	dw	541
	dw	0
	dw	542
	dw	0
	dw	543
	dw	0
	dw	544
	dw	0
	dw	545
	dw	0
	dw	546
	dw	0
	dw	547
	dw	0
	dw	548
	dw	0
	dw	549
	dw	0
	dw	550
	dw	0
	dw	551
	dw	0
	dw	552
	dw	0
	dw	553
	dw	0
	dw	554
	dw	0
	dw	555
	dw	0
	dw	556
	dw	0
	dw	557
	dw	0
	dw	558
	dw	0
	dw	559
	dw	0
	dw	560
	dw	0
	dw	561
	dw	0
	dw	562
	dw	0
	dw	563
	dw	0
	dw	564
	dw	0
	dw	565
	dw	0
	dw	566
	dw	0
	dw	567
	dw	0
	dw	568
	dw	0
	dw	569
	dw	0
	dw	570
	dw	0
	dw	571
	dw	0
	dw	572
	dw	0
	dw	573
	dw	0
	dw	574
	dw	0
	dw	575
	dw	0
	dw	576
	dw	0
	dw	577
	dw	0
	dw	578
	dw	0
	dw	579
	dw	0
	dw	580
	dw	0
	dw	581
	dw	0
	dw	582
	dw	0
	dw	583
	dw	0
	dw	584
	dw	0
	dw	585
	dw	0
	dw	586
	dw	0
	dw	587
	dw	0
	dw	588
	dw	0
	dw	589
	dw	0
	dw	590
	dw	0
	dw	591
	dw	0
	dw	592
	dw	0
	dw	593
	dw	0
	dw	594
	dw	0
	dw	595
	dw	0
	dw	596
	dw	0
	dw	597
	dw	0
	dw	598
	dw	0
	dw	599
	dw	0
	dw	600
	dw	0
	dw	601
	dw	0
	dw	602
	dw	0
	dw	603
	dw	0
	dw	604
	dw	0
	dw	605
	dw	0
	dw	606
	dw	0
	dw	607
	dw	0
	dw	608
	dw	0
	dw	609
	dw	0
	dw	610
	dw	0
	dw	611
	dw	0
	dw	612
	dw	0
	dw	613
	dw	0
	dw	614
	dw	0
	dw	615
	dw	0
	dw	616
	dw	0
	dw	617
	dw	0
	dw	618
	dw	0
	dw	619
	dw	0
	dw	620
	dw	0
	dw	621
	dw	0
	dw	622
	dw	0
	dw	623
	dw	0
	dw	624
	dw	0
	dw	625
	dw	0
	dw	626
	dw	0
	dw	627
	dw	0
	dw	628
	dw	0
	dw	629
	dw	0
	dw	630
	dw	0
	dw	631
	dw	0
	dw	632
	dw	0
	dw	633
	dw	0
	dw	634
	dw	0
	dw	635
	dw	0
	dw	636
	dw	0
	dw	637
	dw	0
	dw	638
	dw	0
	dw	639
	dw	0
	dw	640
	dw	0
	dw	641
	dw	0
	dw	642
	dw	0
	dw	643
	dw	0
	dw	644
	dw	0
	dw	645
	dw	0
	dw	646
	dw	0
	dw	647
	dw	0
	dw	648
	dw	0
	dw	649
	dw	0
	dw	650
	dw	0
	dw	651
	dw	0
	dw	652
	dw	0
	dw	653
	dw	0
	dw	654
	dw	0
	dw	655
	dw	0
	dw	656
	dw	0
	dw	657
	dw	0
	dw	658
	dw	0
	dw	659
	dw	0
	dw	660
	dw	0
	dw	661
	dw	0
	dw	662
	dw	0
	dw	663
	dw	0
	dw	664
	dw	0
	dw	665
	dw	0
	dw	666
	dw	0
?patch241	equ	1284
	dw	?patch242
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
?patch242	equ	13
$$BSYMS	ends
$$BTYPES	segment byte public use32 'DEBTYP'
	db        2,0,0,0,14,0,8,0,17,0,0,0,0,0,0,0
	db        1,16,0,0,4,0,1,2,0,0,14,0,8,0,3,0
	db        0,0,0,0,2,0,6,16,0,0,8,0,2,0,10,0
	db        4,16,0,0,28,0,5,0,4,0,5,16,0,0,0,0
	db        0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0
	db        4,0,80,0,4,2,6,4,32,0,0,0,3,0,3,0
	db        0,0,0,0,0,0,0,0,242,241,6,4,32,0,0,0
	db        3,0,4,0,0,0,0,0,0,0,1,0,242,241,6,4
	db        32,0,0,0,3,0,5,0,0,0,0,0,0,0,2,0
	db        242,241,6,4,32,0,0,0,3,0,6,0,0,0,0,0
	db        0,0,3,0,12,0,1,2,2,0,3,16,0,0,32,0
	db        0,0,14,0,8,0,3,0,0,0,0,0,2,0,8,16
	db        0,0,12,0,1,2,2,0,3,16,0,0,32,0,0,0
	db        14,0,8,0,3,0,0,0,0,0,2,0,10,16,0,0
	db        12,0,1,2,2,0,3,16,0,0,116,0,0,0,14,0
	db        8,0,3,0,0,0,0,0,2,0,12,16,0,0,12,0
	db        1,2,2,0,3,16,0,0,116,0,0,0,14,0,8,0
	db        3,0,0,0,0,0,2,0,14,16,0,0,12,0,1,2
	db        2,0,3,16,0,0,116,0,0,0,14,0,8,0,3,0
	db        0,0,0,0,2,0,16,16,0,0,12,0,1,2,2,0
	db        3,16,0,0,116,0,0,0,14,0,8,0,3,0,0,0
	db        0,0,2,0,18,16,0,0,12,0,1,2,2,0,3,16
	db        0,0,116,0,0,0,14,0,8,0,3,0,0,0,0,0
	db        2,0,20,16,0,0,12,0,1,2,2,0,3,16,0,0
	db        116,0,0,0,14,0,8,0,3,0,0,0,0,0,2,0
	db        22,16,0,0,12,0,1,2,2,0,3,16,0,0,116,0
	db        0,0,14,0,8,0,3,0,0,0,0,0,2,0,24,16
	db        0,0,12,0,1,2,2,0,3,16,0,0,116,0,0,0
	db        14,0,8,0,3,0,0,0,0,0,0,0,26,16,0,0
	db        4,0,1,2,0,0,14,0,8,0,17,0,0,0,0,0
	db        0,0,28,16,0,0,4,0,1,2,0,0,14,0,8,0
	db        116,0,0,0,0,0,0,0,30,16,0,0,4,0,1,2
	db        0,0,14,0,8,0,3,0,0,0,0,0,0,0,32,16
	db        0,0,4,0,1,2,0,0,14,0,8,0,116,0,0,0
	db        0,0,1,0,34,16,0,0,8,0,1,2,1,0,3,16
	db        0,0,26,0,9,0,36,16,0,0,37,16,0,0,41,16
	db        0,0,4,0,1,0,77,16,0,0,0,0,0,0,8,0
	db        2,0,10,0,37,16,0,0,28,0,4,0,29,0,76,16
	db        0,0,34,1,0,0,0,0,0,0,0,0,38,16,0,0
	db        53,0,0,0,8,3,5,0,10,0,2,0,85,8,0,2
	db        0,10,0,38,16,0,0,26,0,9,0,3,0,0,0,37
	db        16,0,0,41,16,0,0,4,0,1,0,42,16,0,0,0
	db        0,0,0,8,0,2,0,10,4,37,16,0,0,8,0,1
	db        2,1,0,249,255,255,255,26,0,9,0,3,0,0,0,37
	db        16,0,0,41,16,0,0,4,0,1,0,44,16,0,0,0
	db        0,0,0,8,0,1,2,1,0,249,255,255,255,26,0,9
	db        0,3,0,0,0,37,16,0,0,41,16,0,0,4,0,1
	db        0,46,16,0,0,0,0,0,0,8,0,1,2,1,0,249
	db        255,255,255,26,0,9,0,3,0,0,0,37,16,0,0,41
	db        16,0,0,4,0,1,0,48,16,0,0,0,0,0,0,8
	db        0,1,2,1,0,249,255,255,255,26,0,9,0,3,0,0
	db        0,37,16,0,0,41,16,0,0,4,0,1,0,50,16,0
	db        0,0,0,0,0,8,0,1,2,1,0,249,255,255,255,26
	db        0,9,0,36,16,0,0,37,16,0,0,41,16,0,0,4
	db        0,1,0,52,16,0,0,0,0,0,0,8,0,1,2,1
	db        0,248,255,255,255,26,0,9,0,36,16,0,0,37,16,0
	db        0,41,16,0,0,0,0,1,0,56,16,0,0,0,0,0
	db        0,8,0,2,0,42,0,55,16,0,0,8,0,1,0,1
	db        0,37,16,0,0,8,0,1,2,1,0,54,16,0,0,26
	db        0,9,0,3,0,0,0,37,16,0,0,41,16,0,0,0
	db        0,0,0,58,16,0,0,0,0,0,0,4,0,1,2,0
	db        0,26,0,9,0,3,0,0,0,37,16,0,0,41,16,0
	db        0,0,0,1,0,60,16,0,0,0,0,0,0,8,0,1
	db        2,1,0,48,0,0,0,26,0,9,0,62,16,0,0,37
	db        16,0,0,41,16,0,0,0,0,1,0,63,16,0,0,0
	db        0,0,0,8,0,2,0,42,0,37,16,0,0,8,0,1
	db        2,1,0,62,16,0,0,26,0,9,0,3,0,0,0,37
	db        16,0,0,41,16,0,0,4,0,0,0,65,16,0,0,0
	db        0,0,0,4,0,1,2,0,0,12,0,7,2,3,0,40
	db        16,0,0,0,0,0,0,12,0,7,2,3,0,43,16,0
	db        0,0,0,0,0,12,0,7,2,3,0,45,16,0,0,0
	db        0,0,0,12,0,7,2,3,0,47,16,0,0,0,0,0
	db        0,12,0,7,2,3,0,49,16,0,0,0,0,0,0,26
	db        0,7,2,19,4,51,16,0,0,0,0,0,0,44,0,0
	db        0,35,20,53,16,0,0,0,0,0,0,12,0,7,2,3
	db        0,57,16,0,0,0,0,0,0,12,0,7,2,3,0,59
	db        16,0,0,0,0,0,0,12,0,7,2,35,17,61,16,0
	db        0,0,0,0,0,16,0,7,2,51,24,64,16,0,0,0
	db        0,0,0,252,255,255,255,226,1,4,2,10,4,39,16,0
	db        0,0,0,0,4,255,255,255,255,3,0,0,0,242,241,6
	db        4,254,255,255,255,3,0,54,0,0,0,0,0,0,0,196
	db        2,242,241,6,4,254,255,255,255,3,0,55,0,0,0,0
	db        0,0,0,200,2,242,241,6,4,254,255,255,255,3,0,56
	db        0,0,0,0,0,0,0,204,2,242,241,6,4,254,255,255
	db        255,3,0,57,0,0,0,0,0,0,0,208,2,242,241,6
	db        4,254,255,255,255,3,0,58,0,0,0,0,0,0,0,212
	db        2,242,241,6,4,253,255,255,255,3,0,59,0,0,0,0
	db        0,0,0,216,2,242,241,6,4,252,255,255,255,3,0,60
	db        0,0,0,0,0,0,0,220,2,242,241,6,4,252,255,255
	db        255,3,0,61,0,0,0,0,0,0,0,224,2,242,241,6
	db        4,253,255,255,255,3,0,62,0,0,0,0,0,0,0,228
	db        2,242,241,6,4,253,255,255,255,3,0,63,0,0,0,0
	db        0,0,0,232,2,242,241,6,4,253,255,255,255,3,0,64
	db        0,0,0,0,0,0,0,236,2,242,241,6,4,251,255,255
	db        255,3,0,65,0,0,0,0,0,0,0,240,2,242,241,6
	db        4,251,255,255,255,3,0,66,0,0,0,0,0,0,0,244
	db        2,242,241,6,4,251,255,255,255,3,0,67,0,0,0,0
	db        0,0,0,248,2,242,241,6,4,251,255,255,255,3,0,68
	db        0,0,0,0,0,0,0,252,2,242,241,6,4,251,255,255
	db        255,3,0,69,0,0,0,0,0,0,0,0,3,242,241,6
	db        4,250,255,255,255,3,0,70,0,0,0,0,0,0,0,4
	db        3,242,241,8,4,1,0,66,16,0,0,71,0,0,0,8
	db        4,1,0,67,16,0,0,72,0,0,0,8,4,1,0,68
	db        16,0,0,73,0,0,0,8,4,1,0,69,16,0,0,74
	db        0,0,0,8,4,1,0,70,16,0,0,75,0,0,0,8
	db        4,2,0,71,16,0,0,76,0,0,0,8,4,1,0,72
	db        16,0,0,77,0,0,0,8,4,1,0,73,16,0,0,78
	db        0,0,0,8,4,1,0,74,16,0,0,79,0,0,0,8
	db        4,1,0,75,16,0,0,80,0,0,0,8,0,1,2,1
	db        0,248,255,255,255,26,0,9,0,3,0,0,0,37,16,0
	db        0,41,16,0,0,4,0,1,0,79,16,0,0,0,0,0
	db        0,8,0,1,2,1,0,249,255,255,255,28,0,5,0,5
	db        0,81,16,0,0,0,0,0,0,0,0,0,0,0,0,0
	db        0,0,0,97,0,0,0,5,0,100,0,4,2,6,4,32
	db        0,0,0,3,0,98,0,0,0,0,0,0,0,0,0,242
	db        241,6,4,32,0,0,0,3,0,99,0,0,0,0,0,0
	db        0,1,0,242,241,6,4,32,0,0,0,3,0,100,0,0
	db        0,0,0,0,0,2,0,242,241,6,4,32,0,0,0,3
	db        0,101,0,0,0,0,0,0,0,3,0,242,241,6,4,32
	db        0,0,0,3,0,102,0,0,0,0,0,0,0,4,0,26
	db        0,9,0,3,0,0,0,37,16,0,0,41,16,0,0,0
	db        0,0,0,83,16,0,0,0,0,0,0,4,0,1,2,0
	db        0,26,0,9,0,3,0,0,0,37,16,0,0,41,16,0
	db        0,4,0,1,0,85,16,0,0,0,0,0,0,8,0,1
	db        2,1,0,249,255,255,255,26,0,9,0,3,0,0,0,37
	db        16,0,0,41,16,0,0,4,0,1,0,87,16,0,0,0
	db        0,0,0,8,0,1,2,1,0,249,255,255,255,26,0,9
	db        0,3,0,0,0,37,16,0,0,41,16,0,0,4,0,1
	db        0,89,16,0,0,0,0,0,0,8,0,1,2,1,0,249
	db        255,255,255,26,0,9,0,3,0,0,0,37,16,0,0,41
	db        16,0,0,4,0,1,0,91,16,0,0,0,0,0,0,8
	db        0,1,2,1,0,249,255,255,255,26,0,9,0,3,0,0
	db        0,37,16,0,0,41,16,0,0,0,0,1,0,93,16,0
	db        0,0,0,0,0,8,0,1,2,1,0,48,0,0,0,26
	db        0,9,0,246,255,255,255,255,255,255,255,95,16,0,0,4
	db        0,1,0,96,16,0,0,0,0,0,0,8,0,2,0,10
	db        4,255,255,255,255,8,0,1,2,1,0,248,255,255,255,14
	db        0,8,0,247,255,255,255,4,0,1,0,98,16,0,0,8
	db        0,1,2,1,0,117,0,0,0,26,0,9,0,245,255,255
	db        255,247,255,255,255,100,16,0,0,4,0,0,0,101,16,0
	db        0,0,0,0,0,8,0,2,0,10,4,247,255,255,255,4
	db        0,1,2,0,0,26,0,9,0,3,0,0,0,37,16,0
	db        0,41,16,0,0,4,0,0,0,103,16,0,0,0,0,0
	db        0,4,0,1,2,0,0,26,0,9,0,3,0,0,0,244
	db        255,255,255,105,16,0,0,4,0,3,0,107,16,0,0,0
	db        0,0,0,8,0,2,0,10,4,244,255,255,255,8,0,1
	db        0,1,0,247,255,255,255,16,0,1,2,3,0,48,0,0
	db        0,106,16,0,0,106,16,0,0,26,0,9,0,246,255,255
	db        255,255,255,255,255,95,16,0,0,4,0,2,0,109,16,0
	db        0,0,0,0,0,12,0,1,2,2,0,248,255,255,255,116
	db        0,0,0,26,0,9,0,3,0,0,0,255,255,255,255,95
	db        16,0,0,4,0,0,0,111,16,0,0,0,0,0,0,4
	db        0,1,2,0,0,26,0,9,0,3,0,0,0,113,16,0
	db        0,116,16,0,0,4,0,0,0,154,16,0,0,0,0,0
	db        0,28,0,4,0,10,0,153,16,0,0,34,1,0,0,0
	db        0,0,0,0,0,0,0,0,0,149,0,0,0,4,0,26
	db        0,9,0,115,16,0,0,113,16,0,0,116,16,0,0,4
	db        0,0,0,117,16,0,0,0,0,0,0,8,0,2,0,10
	db        0,113,16,0,0,8,0,2,0,10,4,113,16,0,0,4
	db        0,1,2,0,0,26,0,9,0,115,16,0,0,113,16,0
	db        0,116,16,0,0,4,0,1,0,121,16,0,0,0,0,0
	db        0,8,0,2,0,42,0,120,16,0,0,8,0,1,0,1
	db        0,113,16,0,0,8,0,1,2,1,0,119,16,0,0,26
	db        0,9,0,115,16,0,0,113,16,0,0,116,16,0,0,4
	db        0,1,0,123,16,0,0,0,0,0,0,8,0,1,2,1
	db        0,243,255,255,255,26,0,9,0,3,0,0,0,113,16,0
	db        0,116,16,0,0,4,0,0,0,125,16,0,0,0,0,0
	db        0,4,0,1,2,0,0,26,0,9,0,127,16,0,0,113
	db        16,0,0,116,16,0,0,4,0,1,0,128,16,0,0,0
	db        0,0,0,8,0,2,0,42,0,113,16,0,0,8,0,1
	db        2,1,0,127,16,0,0,26,0,9,0,127,16,0,0,113
	db        16,0,0,116,16,0,0,4,0,1,0,130,16,0,0,0
	db        0,0,0,8,0,1,2,1,0,243,255,255,255,26,0,9
	db        0,243,255,255,255,113,16,0,0,132,16,0,0,4,0,0
	db        0,133,16,0,0,0,0,0,0,8,0,2,0,10,4,120
	db        16,0,0,4,0,1,2,0,0,26,0,9,0,48,0,0
	db        0,113,16,0,0,132,16,0,0,0,0,0,0,135,16,0
	db        0,0,0,0,0,4,0,1,2,0,0,26,0,9,0,243
	db        255,255,255,113,16,0,0,132,16,0,0,4,0,0,0,137
	db        16,0,0,0,0,0,0,4,0,1,2,0,0,26,0,9
	db        0,242,255,255,255,113,16,0,0,116,16,0,0,4,0,0
	db        0,139,16,0,0,0,0,0,0,4,0,1,2,0,0,26
	db        0,9,0,3,0,0,0,113,16,0,0,116,16,0,0,0
	db        0,0,0,141,16,0,0,0,0,0,0,4,0,1,2,0
	db        0,26,0,9,0,241,255,255,255,113,16,0,0,116,16,0
	db        0,4,0,0,0,143,16,0,0,0,0,0,0,4,0,1
	db        2,0,0,32,0,7,2,3,4,114,16,0,0,0,0,0
	db        0,3,4,118,16,0,0,0,0,0,0,3,4,122,16,0
	db        0,0,0,0,0,12,0,7,2,3,8,124,16,0,0,0
	db        0,0,0,22,0,7,2,3,1,126,16,0,0,0,0,0
	db        0,3,1,129,16,0,0,0,0,0,0,12,0,7,2,3
	db        1,131,16,0,0,0,0,0,0,12,0,7,2,3,1,134
	db        16,0,0,0,0,0,0,12,0,7,2,3,2,136,16,0
	db        0,0,0,0,0,12,0,7,2,3,1,138,16,0,0,0
	db        0,0,0,12,0,7,2,3,0,140,16,0,0,0,0,0
	db        0,12,0,7,2,3,1,142,16,0,0,0,0,0,0,130
	db        0,4,2,6,4,243,255,255,255,1,0,150,0,0,0,0
	db        0,0,0,0,0,242,241,8,4,3,0,144,16,0,0,151
	db        0,0,0,8,4,1,0,145,16,0,0,152,0,0,0,8
	db        4,2,0,146,16,0,0,153,0,0,0,8,4,1,0,147
	db        16,0,0,154,0,0,0,8,4,1,0,148,16,0,0,155
	db        0,0,0,8,4,1,0,149,16,0,0,156,0,0,0,8
	db        4,1,0,150,16,0,0,157,0,0,0,8,4,1,0,151
	db        16,0,0,158,0,0,0,8,4,1,0,152,16,0,0,159
	db        0,0,0,4,0,1,2,0,0,26,0,9,0,3,0,0
	db        0,156,16,0,0,159,16,0,0,4,0,0,0,197,16,0
	db        0,0,0,0,0,28,0,4,0,10,0,196,16,0,0,34
	db        1,0,0,0,0,0,0,0,0,0,0,0,0,162,0,0
	db        0,4,0,26,0,9,0,158,16,0,0,156,16,0,0,159
	db        16,0,0,4,0,0,0,160,16,0,0,0,0,0,0,8
	db        0,2,0,10,0,156,16,0,0,8,0,2,0,10,4,156
	db        16,0,0,4,0,1,2,0,0,26,0,9,0,158,16,0
	db        0,156,16,0,0,159,16,0,0,4,0,1,0,164,16,0
	db        0,0,0,0,0,8,0,2,0,42,0,163,16,0,0,8
	db        0,1,0,1,0,156,16,0,0,8,0,1,2,1,0,162
	db        16,0,0,26,0,9,0,158,16,0,0,156,16,0,0,159
	db        16,0,0,4,0,1,0,166,16,0,0,0,0,0,0,8
	db        0,1,2,1,0,240,255,255,255,26,0,9,0,3,0,0
	db        0,156,16,0,0,159,16,0,0,4,0,0,0,168,16,0
	db        0,0,0,0,0,4,0,1,2,0,0,26,0,9,0,170
	db        16,0,0,156,16,0,0,159,16,0,0,4,0,1,0,171
	db        16,0,0,0,0,0,0,8,0,2,0,42,0,156,16,0
	db        0,8,0,1,2,1,0,170,16,0,0,26,0,9,0,170
	db        16,0,0,156,16,0,0,159,16,0,0,4,0,1,0,173
	db        16,0,0,0,0,0,0,8,0,1,2,1,0,240,255,255
	db        255,26,0,9,0,240,255,255,255,156,16,0,0,175,16,0
	db        0,4,0,0,0,176,16,0,0,0,0,0,0,8,0,2
	db        0,10,4,163,16,0,0,4,0,1,2,0,0,26,0,9
	db        0,48,0,0,0,156,16,0,0,175,16,0,0,0,0,0
	db        0,178,16,0,0,0,0,0,0,4,0,1,2,0,0,26
	db        0,9,0,240,255,255,255,156,16,0,0,175,16,0,0,4
	db        0,0,0,180,16,0,0,0,0,0,0,4,0,1,2,0
	db        0,26,0,9,0,239,255,255,255,156,16,0,0,159,16,0
	db        0,4,0,0,0,182,16,0,0,0,0,0,0,4,0,1
	db        2,0,0,26,0,9,0,3,0,0,0,156,16,0,0,159
	db        16,0,0,0,0,0,0,184,16,0,0,0,0,0,0,4
	db        0,1,2,0,0,26,0,9,0,238,255,255,255,156,16,0
	db        0,159,16,0,0,4,0,0,0,186,16,0,0,0,0,0
	db        0,4,0,1,2,0,0,32,0,7,2,3,4,157,16,0
	db        0,0,0,0,0,3,4,161,16,0,0,0,0,0,0,3
	db        4,165,16,0,0,0,0,0,0,12,0,7,2,3,8,167
	db        16,0,0,0,0,0,0,22,0,7,2,3,1,169,16,0
	db        0,0,0,0,0,3,1,172,16,0,0,0,0,0,0,12
	db        0,7,2,3,1,174,16,0,0,0,0,0,0,12,0,7
	db        2,3,1,177,16,0,0,0,0,0,0,12,0,7,2,3
	db        2,179,16,0,0,0,0,0,0,12,0,7,2,3,1,181
	db        16,0,0,0,0,0,0,12,0,7,2,3,0,183,16,0
	db        0,0,0,0,0,12,0,7,2,3,1,185,16,0,0,0
	db        0,0,0,130,0,4,2,6,4,240,255,255,255,1,0,163
	db        0,0,0,0,0,0,0,0,0,242,241,8,4,3,0,187
	db        16,0,0,164,0,0,0,8,4,1,0,188,16,0,0,165
	db        0,0,0,8,4,2,0,189,16,0,0,166,0,0,0,8
	db        4,1,0,190,16,0,0,167,0,0,0,8,4,1,0,191
	db        16,0,0,168,0,0,0,8,4,1,0,192,16,0,0,169
	db        0,0,0,8,4,1,0,193,16,0,0,170,0,0,0,8
	db        4,1,0,194,16,0,0,171,0,0,0,8,4,1,0,195
	db        16,0,0,172,0,0,0,4,0,1,2,0,0,26,0,9
	db        0,3,0,0,0,199,16,0,0,202,16,0,0,4,0,0
	db        0,240,16,0,0,0,0,0,0,28,0,4,0,10,0,239
	db        16,0,0,34,1,0,0,0,0,0,0,0,0,0,0,0
	db        0,175,0,0,0,4,0,26,0,9,0,201,16,0,0,199
	db        16,0,0,202,16,0,0,4,0,0,0,203,16,0,0,0
	db        0,0,0,8,0,2,0,10,0,199,16,0,0,8,0,2
	db        0,10,4,199,16,0,0,4,0,1,2,0,0,26,0,9
	db        0,201,16,0,0,199,16,0,0,202,16,0,0,4,0,1
	db        0,207,16,0,0,0,0,0,0,8,0,2,0,42,0,206
	db        16,0,0,8,0,1,0,1,0,199,16,0,0,8,0,1
	db        2,1,0,205,16,0,0,26,0,9,0,201,16,0,0,199
	db        16,0,0,202,16,0,0,4,0,1,0,209,16,0,0,0
	db        0,0,0,8,0,1,2,1,0,237,255,255,255,26,0,9
	db        0,3,0,0,0,199,16,0,0,202,16,0,0,4,0,0
	db        0,211,16,0,0,0,0,0,0,4,0,1,2,0,0,26
	db        0,9,0,213,16,0,0,199,16,0,0,202,16,0,0,4
	db        0,1,0,214,16,0,0,0,0,0,0,8,0,2,0,42
	db        0,199,16,0,0,8,0,1,2,1,0,213,16,0,0,26
	db        0,9,0,213,16,0,0,199,16,0,0,202,16,0,0,4
	db        0,1,0,216,16,0,0,0,0,0,0,8,0,1,2,1
	db        0,237,255,255,255,26,0,9,0,237,255,255,255,199,16,0
	db        0,218,16,0,0,4,0,0,0,219,16,0,0,0,0,0
	db        0,8,0,2,0,10,4,206,16,0,0,4,0,1,2,0
	db        0,26,0,9,0,48,0,0,0,199,16,0,0,218,16,0
	db        0,0,0,0,0,221,16,0,0,0,0,0,0,4,0,1
	db        2,0,0,26,0,9,0,237,255,255,255,199,16,0,0,218
	db        16,0,0,4,0,0,0,223,16,0,0,0,0,0,0,4
	db        0,1,2,0,0,26,0,9,0,236,255,255,255,199,16,0
	db        0,202,16,0,0,4,0,0,0,225,16,0,0,0,0,0
	db        0,4,0,1,2,0,0,26,0,9,0,3,0,0,0,199
	db        16,0,0,202,16,0,0,0,0,0,0,227,16,0,0,0
	db        0,0,0,4,0,1,2,0,0,26,0,9,0,235,255,255
	db        255,199,16,0,0,202,16,0,0,4,0,0,0,229,16,0
	db        0,0,0,0,0,4,0,1,2,0,0,32,0,7,2,3
	db        4,200,16,0,0,0,0,0,0,3,4,204,16,0,0,0
	db        0,0,0,3,4,208,16,0,0,0,0,0,0,12,0,7
	db        2,3,8,210,16,0,0,0,0,0,0,22,0,7,2,3
	db        1,212,16,0,0,0,0,0,0,3,1,215,16,0,0,0
	db        0,0,0,12,0,7,2,3,1,217,16,0,0,0,0,0
	db        0,12,0,7,2,3,1,220,16,0,0,0,0,0,0,12
	db        0,7,2,3,2,222,16,0,0,0,0,0,0,12,0,7
	db        2,3,1,224,16,0,0,0,0,0,0,12,0,7,2,3
	db        0,226,16,0,0,0,0,0,0,12,0,7,2,3,1,228
	db        16,0,0,0,0,0,0,130,0,4,2,6,4,237,255,255
	db        255,1,0,176,0,0,0,0,0,0,0,0,0,242,241,8
	db        4,3,0,230,16,0,0,177,0,0,0,8,4,1,0,231
	db        16,0,0,178,0,0,0,8,4,2,0,232,16,0,0,179
	db        0,0,0,8,4,1,0,233,16,0,0,180,0,0,0,8
	db        4,1,0,234,16,0,0,181,0,0,0,8,4,1,0,235
	db        16,0,0,182,0,0,0,8,4,1,0,236,16,0,0,183
	db        0,0,0,8,4,1,0,237,16,0,0,184,0,0,0,8
	db        4,1,0,238,16,0,0,185,0,0,0,4,0,1,2,0
	db        0,26,0,9,0,3,0,0,0,242,16,0,0,245,16,0
	db        0,4,0,0,0,27,17,0,0,0,0,0,0,28,0,4
	db        0,10,0,26,17,0,0,34,1,0,0,0,0,0,0,0
	db        0,0,0,0,0,188,0,0,0,4,0,26,0,9,0,244
	db        16,0,0,242,16,0,0,245,16,0,0,4,0,0,0,246
	db        16,0,0,0,0,0,0,8,0,2,0,10,0,242,16,0
	db        0,8,0,2,0,10,4,242,16,0,0,4,0,1,2,0
	db        0,26,0,9,0,244,16,0,0,242,16,0,0,245,16,0
	db        0,4,0,1,0,250,16,0,0,0,0,0,0,8,0,2
	db        0,42,0,249,16,0,0,8,0,1,0,1,0,242,16,0
	db        0,8,0,1,2,1,0,248,16,0,0,26,0,9,0,244
	db        16,0,0,242,16,0,0,245,16,0,0,4,0,1,0,252
	db        16,0,0,0,0,0,0,8,0,1,2,1,0,234,255,255
	db        255,26,0,9,0,3,0,0,0,242,16,0,0,245,16,0
	db        0,4,0,0,0,254,16,0,0,0,0,0,0,4,0,1
	db        2,0,0,26,0,9,0,0,17,0,0,242,16,0,0,245
	db        16,0,0,4,0,1,0,1,17,0,0,0,0,0,0,8
	db        0,2,0,42,0,242,16,0,0,8,0,1,2,1,0,0
	db        17,0,0,26,0,9,0,0,17,0,0,242,16,0,0,245
	db        16,0,0,4,0,1,0,3,17,0,0,0,0,0,0,8
	db        0,1,2,1,0,234,255,255,255,26,0,9,0,234,255,255
	db        255,242,16,0,0,5,17,0,0,4,0,0,0,6,17,0
	db        0,0,0,0,0,8,0,2,0,10,4,249,16,0,0,4
	db        0,1,2,0,0,26,0,9,0,48,0,0,0,242,16,0
	db        0,5,17,0,0,0,0,0,0,8,17,0,0,0,0,0
	db        0,4,0,1,2,0,0,26,0,9,0,234,255,255,255,242
	db        16,0,0,5,17,0,0,4,0,0,0,10,17,0,0,0
	db        0,0,0,4,0,1,2,0,0,26,0,9,0,233,255,255
	db        255,242,16,0,0,245,16,0,0,4,0,0,0,12,17,0
	db        0,0,0,0,0,4,0,1,2,0,0,26,0,9,0,3
	db        0,0,0,242,16,0,0,245,16,0,0,0,0,0,0,14
	db        17,0,0,0,0,0,0,4,0,1,2,0,0,26,0,9
	db        0,232,255,255,255,242,16,0,0,245,16,0,0,4,0,0
	db        0,16,17,0,0,0,0,0,0,4,0,1,2,0,0,32
	db        0,7,2,3,4,243,16,0,0,0,0,0,0,3,4,247
	db        16,0,0,0,0,0,0,3,4,251,16,0,0,0,0,0
	db        0,12,0,7,2,3,8,253,16,0,0,0,0,0,0,22
	db        0,7,2,3,1,255,16,0,0,0,0,0,0,3,1,2
	db        17,0,0,0,0,0,0,12,0,7,2,3,1,4,17,0
	db        0,0,0,0,0,12,0,7,2,3,1,7,17,0,0,0
	db        0,0,0,12,0,7,2,3,2,9,17,0,0,0,0,0
	db        0,12,0,7,2,3,1,11,17,0,0,0,0,0,0,12
	db        0,7,2,3,0,13,17,0,0,0,0,0,0,12,0,7
	db        2,3,1,15,17,0,0,0,0,0,0,130,0,4,2,6
	db        4,234,255,255,255,1,0,189,0,0,0,0,0,0,0,0
	db        0,242,241,8,4,3,0,17,17,0,0,190,0,0,0,8
	db        4,1,0,18,17,0,0,191,0,0,0,8,4,2,0,19
	db        17,0,0,192,0,0,0,8,4,1,0,20,17,0,0,193
	db        0,0,0,8,4,1,0,21,17,0,0,194,0,0,0,8
	db        4,1,0,22,17,0,0,195,0,0,0,8,4,1,0,23
	db        17,0,0,196,0,0,0,8,4,1,0,24,17,0,0,197
	db        0,0,0,8,4,1,0,25,17,0,0,198,0,0,0,4
	db        0,1,2,0,0,8,0,1,0,1,0,16,0,0,0,8
	db        0,1,0,1,0,33,0,0,0,8,0,2,0,10,0,31
	db        17,0,0,28,0,4,0,67,0,128,17,0,0,34,1,0
	db        0,0,0,0,0,0,0,32,17,0,0,201,0,0,0,84
	db        3,5,0,10,0,2,0,85,8,0,2,0,10,0,32,17
	db        0,0,26,0,9,0,3,0,0,0,31,17,0,0,35,17
	db        0,0,4,0,1,0,36,17,0,0,0,0,0,0,8,0
	db        2,0,10,4,31,17,0,0,8,0,1,2,1,0,249,255
	db        255,255,26,0,9,0,3,0,0,0,31,17,0,0,35,17
	db        0,0,4,0,2,0,39,17,0,0,0,0,0,0,8,0
	db        2,0,42,0,48,0,0,0,12,0,1,2,2,0,249,255
	db        255,255,38,17,0,0,26,0,9,0,3,0,0,0,31,17
	db        0,0,35,17,0,0,4,0,1,0,41,17,0,0,0,0
	db        0,0,8,0,1,2,1,0,249,255,255,255,26,0,9,0
	db        3,0,0,0,31,17,0,0,35,17,0,0,4,0,1,0
	db        43,17,0,0,0,0,0,0,8,0,1,2,1,0,249,255
	db        255,255,26,0,9,0,3,0,0,0,31,17,0,0,35,17
	db        0,0,4,0,1,0,45,17,0,0,0,0,0,0,8,0
	db        1,2,1,0,249,255,255,255,26,0,9,0,3,0,0,0
	db        31,17,0,0,35,17,0,0,4,0,1,0,47,17,0,0
	db        0,0,0,0,8,0,1,2,1,0,249,255,255,255,26,0
	db        9,0,3,0,0,0,31,17,0,0,35,17,0,0,4,0
	db        1,0,49,17,0,0,0,0,0,0,8,0,1,2,1,0
	db        249,255,255,255,26,0,9,0,3,0,0,0,31,17,0,0
	db        35,17,0,0,4,0,1,0,51,17,0,0,0,0,0,0
	db        8,0,1,2,1,0,249,255,255,255,26,0,9,0,3,0
	db        0,0,31,17,0,0,35,17,0,0,4,0,1,0,53,17
	db        0,0,0,0,0,0,8,0,1,2,1,0,249,255,255,255
	db        26,0,9,0,3,0,0,0,31,17,0,0,35,17,0,0
	db        4,0,1,0,55,17,0,0,0,0,0,0,8,0,1,2
	db        1,0,249,255,255,255,26,0,9,0,3,0,0,0,31,17
	db        0,0,35,17,0,0,4,0,1,0,57,17,0,0,0,0
	db        0,0,8,0,1,2,1,0,249,255,255,255,26,0,9,0
	db        3,0,0,0,31,17,0,0,35,17,0,0,4,0,1,0
	db        59,17,0,0,0,0,0,0,8,0,1,2,1,0,249,255
	db        255,255,26,0,9,0,3,0,0,0,31,17,0,0,35,17
	db        0,0,4,0,1,0,61,17,0,0,0,0,0,0,8,0
	db        1,2,1,0,249,255,255,255,26,0,9,0,3,0,0,0
	db        31,17,0,0,35,17,0,0,4,0,1,0,63,17,0,0
	db        0,0,0,0,8,0,1,2,1,0,249,255,255,255,26,0
	db        9,0,3,0,0,0,31,17,0,0,35,17,0,0,4,0
	db        1,0,65,17,0,0,0,0,0,0,8,0,1,2,1,0
	db        249,255,255,255,26,0,9,0,3,0,0,0,31,17,0,0
	db        35,17,0,0,4,0,1,0,67,17,0,0,0,0,0,0
	db        8,0,1,2,1,0,249,255,255,255,26,0,9,0,3,0
	db        0,0,31,17,0,0,35,17,0,0,4,0,1,0,69,17
	db        0,0,0,0,0,0,8,0,1,2,1,0,249,255,255,255
	db        26,0,9,0,3,0,0,0,31,17,0,0,35,17,0,0
	db        4,0,1,0,71,17,0,0,0,0,0,0,8,0,1,2
	db        1,0,249,255,255,255,26,0,9,0,3,0,0,0,31,17
	db        0,0,35,17,0,0,4,0,1,0,73,17,0,0,0,0
	db        0,0,8,0,1,2,1,0,249,255,255,255,26,0,9,0
	db        48,0,0,0,31,17,0,0,35,17,0,0,0,0,0,0
	db        75,17,0,0,0,0,0,0,4,0,1,2,0,0,26,0
	db        9,0,3,0,0,0,31,17,0,0,35,17,0,0,0,0
	db        0,0,77,17,0,0,0,0,0,0,4,0,1,2,0,0
	db        26,0,9,0,3,0,0,0,31,17,0,0,35,17,0,0
	db        0,0,0,0,79,17,0,0,0,0,0,0,4,0,1,2
	db        0,0,26,0,9,0,30,17,0,0,31,17,0,0,35,17
	db        0,0,4,0,1,0,81,17,0,0,0,0,0,0,8,0
	db        1,2,1,0,248,255,255,255,26,0,9,0,30,17,0,0
	db        31,17,0,0,35,17,0,0,0,0,1,0,85,17,0,0
	db        0,0,0,0,8,0,2,0,42,0,84,17,0,0,8,0
	db        1,0,1,0,31,17,0,0,8,0,1,2,1,0,83,17
	db        0,0,26,0,9,0,3,0,0,0,31,17,0,0,35,17
	db        0,0,0,0,1,0,87,17,0,0,0,0,0,0,8,0
	db        1,2,1,0,32,0,0,0,26,0,9,0,3,0,0,0
	db        31,17,0,0,35,17,0,0,0,0,1,0,89,17,0,0
	db        0,0,0,0,8,0,1,2,1,0,80,16,0,0,26,0
	db        9,0,3,0,0,0,31,17,0,0,35,17,0,0,0,0
	db        0,0,91,17,0,0,0,0,0,0,4,0,1,2,0,0
	db        26,0,9,0,3,0,0,0,31,17,0,0,35,17,0,0
	db        0,0,1,0,93,17,0,0,0,0,0,0,8,0,1,2
	db        1,0,48,0,0,0,26,0,9,0,95,17,0,0,31,17
	db        0,0,35,17,0,0,0,0,1,0,96,17,0,0,0,0
	db        0,0,8,0,2,0,42,0,31,17,0,0,8,0,1,2
	db        1,0,95,17,0,0,26,0,9,0,3,0,0,0,31,17
	db        0,0,35,17,0,0,4,0,0,0,98,17,0,0,0,0
	db        0,0,4,0,1,2,0,0,12,0,7,2,3,0,34,17
	db        0,0,0,0,0,0,12,0,7,2,3,0,37,17,0,0
	db        0,0,0,0,12,0,7,2,3,0,40,17,0,0,0,0
	db        0,0,12,0,7,2,3,0,42,17,0,0,0,0,0,0
	db        12,0,7,2,3,0,44,17,0,0,0,0,0,0,12,0
	db        7,2,3,0,46,17,0,0,0,0,0,0,12,0,7,2
	db        3,0,48,17,0,0,0,0,0,0,12,0,7,2,3,0
	db        50,17,0,0,0,0,0,0,12,0,7,2,3,0,52,17
	db        0,0,0,0,0,0,12,0,7,2,3,0,54,17,0,0
	db        0,0,0,0,12,0,7,2,3,0,56,17,0,0,0,0
	db        0,0,12,0,7,2,3,0,58,17,0,0,0,0,0,0
	db        12,0,7,2,3,0,60,17,0,0,0,0,0,0,12,0
	db        7,2,3,0,62,17,0,0,0,0,0,0,12,0,7,2
	db        3,0,64,17,0,0,0,0,0,0,12,0,7,2,3,0
	db        66,17,0,0,0,0,0,0,12,0,7,2,3,0,68,17
	db        0,0,0,0,0,0,12,0,7,2,3,0,70,17,0,0
	db        0,0,0,0,12,0,7,2,3,0,72,17,0,0,0,0
	db        0,0,12,0,7,2,1,0,74,17,0,0,0,0,0,0
	db        12,0,7,2,1,0,76,17,0,0,0,0,0,0,12,0
	db        7,2,1,0,78,17,0,0,0,0,0,0,26,0,7,2
	db        19,4,80,17,0,0,0,0,0,0,44,0,0,0,35,20
	db        82,17,0,0,0,0,0,0,12,0,7,2,3,0,86,17
	db        0,0,0,0,0,0,12,0,7,2,3,0,88,17,0,0
	db        0,0,0,0,12,0,7,2,3,0,90,17,0,0,0,0
	db        0,0,12,0,7,2,3,0,92,17,0,0,0,0,0,0
	db        12,0,7,2,35,17,94,17,0,0,0,0,0,0,16,0
	db        7,2,51,24,97,17,0,0,0,0,0,0,252,255,255,255
	db        232,3,4,2,10,4,33,17,0,0,0,0,0,4,255,255
	db        255,255,3,0,0,0,242,241,6,4,231,255,255,255,3,0
	db        202,0,0,0,0,0,0,0,196,2,242,241,6,4,230,255
	db        255,255,3,0,203,0,0,0,0,0,0,0,200,2,242,241
	db        6,4,230,255,255,255,3,0,204,0,0,0,0,0,0,0
	db        204,2,242,241,6,4,230,255,255,255,3,0,205,0,0,0
	db        0,0,0,0,208,2,242,241,6,4,230,255,255,255,3,0
	db        206,0,0,0,0,0,0,0,212,2,242,241,6,4,230,255
	db        255,255,3,0,207,0,0,0,0,0,0,0,216,2,242,241
	db        6,4,230,255,255,255,3,0,208,0,0,0,0,0,0,0
	db        220,2,242,241,6,4,230,255,255,255,3,0,209,0,0,0
	db        0,0,0,0,224,2,242,241,6,4,229,255,255,255,3,0
	db        210,0,0,0,0,0,0,0,228,2,242,241,6,4,228,255
	db        255,255,3,0,211,0,0,0,0,0,0,0,232,2,242,241
	db        6,4,230,255,255,255,3,0,212,0,0,0,0,0,0,0
	db        236,2,242,241,6,4,230,255,255,255,3,0,213,0,0,0
	db        0,0,0,0,240,2,242,241,6,4,230,255,255,255,3,0
	db        214,0,0,0,0,0,0,0,244,2,242,241,6,4,230,255
	db        255,255,3,0,215,0,0,0,0,0,0,0,248,2,242,241
	db        6,4,227,255,255,255,3,0,216,0,0,0,0,0,0,0
	db        252,2,242,241,6,4,226,255,255,255,3,0,217,0,0,0
	db        0,0,0,0,0,3,242,241,6,4,225,255,255,255,3,0
	db        218,0,0,0,0,0,0,0,4,3,242,241,6,4,250,255
	db        255,255,3,0,219,0,0,0,0,0,0,0,8,3,242,241
	db        6,4,250,255,255,255,3,0,220,0,0,0,0,0,0,0
	db        12,3,242,241,6,4,250,255,255,255,3,0,221,0,0,0
	db        0,0,0,0,16,3,242,241,6,4,251,255,255,255,3,0
	db        222,0,0,0,0,0,0,0,20,3,242,241,6,4,254,255
	db        255,255,3,0,223,0,0,0,0,0,0,0,24,3,242,241
	db        6,4,251,255,255,255,3,0,224,0,0,0,0,0,0,0
	db        28,3,242,241,6,4,254,255,255,255,3,0,225,0,0,0
	db        0,0,0,0,32,3,242,241,6,4,254,255,255,255,3,0
	db        226,0,0,0,0,0,0,0,36,3,242,241,6,4,251,255
	db        255,255,3,0,227,0,0,0,0,0,0,0,40,3,242,241
	db        6,4,251,255,255,255,3,0,228,0,0,0,0,0,0,0
	db        44,3,242,241,6,4,254,255,255,255,3,0,229,0,0,0
	db        0,0,0,0,48,3,242,241,6,4,254,255,255,255,3,0
	db        230,0,0,0,0,0,0,0,52,3,242,241,6,4,254,255
	db        255,255,3,0,231,0,0,0,0,0,0,0,56,3,242,241
	db        6,4,251,255,255,255,3,0,232,0,0,0,0,0,0,0
	db        60,3,242,241,6,4,250,255,255,255,3,0,233,0,0,0
	db        0,0,0,0,64,3,242,241,6,4,251,255,255,255,3,0
	db        234,0,0,0,0,0,0,0,68,3,242,241,6,4,253,255
	db        255,255,3,0,235,0,0,0,0,0,0,0,72,3,242,241
	db        6,4,250,255,255,255,3,0,236,0,0,0,0,0,0,0
	db        76,3,242,241,6,4,230,255,255,255,3,0,237,0,0,0
	db        0,0,0,0,80,3,242,241,8,4,1,0,99,17,0,0
	db        238,0,0,0,8,4,1,0,100,17,0,0,239,0,0,0
	db        8,4,1,0,101,17,0,0,240,0,0,0,8,4,1,0
	db        102,17,0,0,241,0,0,0,8,4,1,0,103,17,0,0
	db        242,0,0,0,8,4,1,0,104,17,0,0,243,0,0,0
	db        8,4,1,0,105,17,0,0,244,0,0,0,8,4,1,0
	db        106,17,0,0,245,0,0,0,8,4,1,0,107,17,0,0
	db        246,0,0,0,8,4,1,0,108,17,0,0,247,0,0,0
	db        8,4,1,0,109,17,0,0,248,0,0,0,8,4,1,0
	db        110,17,0,0,249,0,0,0,8,4,1,0,111,17,0,0
	db        250,0,0,0,8,4,1,0,112,17,0,0,251,0,0,0
	db        8,4,1,0,113,17,0,0,252,0,0,0,8,4,1,0
	db        114,17,0,0,253,0,0,0,8,4,1,0,115,17,0,0
	db        254,0,0,0,8,4,1,0,116,17,0,0,255,0,0,0
	db        8,4,1,0,117,17,0,0,0,1,0,0,8,4,1,0
	db        118,17,0,0,1,1,0,0,8,4,1,0,119,17,0,0
	db        2,1,0,0,5,4,129,17,0,0,98,0,4,2,8,4
	db        1,0,120,17,0,0,3,1,0,0,8,4,2,0,121,17
	db        0,0,4,1,0,0,8,4,1,0,122,17,0,0,5,1
	db        0,0,8,4,1,0,123,17,0,0,6,1,0,0,8,4
	db        1,0,124,17,0,0,7,1,0,0,8,4,1,0,125,17
	db        0,0,8,1,0,0,8,4,1,0,126,17,0,0,9,1
	db        0,0,8,4,1,0,127,17,0,0,10,1,0,0,8,0
	db        1,0,1,0,131,17,0,0,18,0,3,0,32,0,0,0
	db        17,0,0,0,0,0,0,0,4,0,4,0,14,0,8,0
	db        32,0,0,0,0,0,1,0,133,17,0,0,8,0,1,2
	db        1,0,116,0,0,0,14,0,8,0,3,0,0,0,0,0
	db        2,0,135,17,0,0,12,0,1,2,2,0,116,0,0,0
	db        32,0,0,0,14,0,8,0,3,0,0,0,4,0,2,0
	db        137,17,0,0,12,0,1,2,2,0,100,16,0,0,116,0
	db        0,0,8,0,1,0,1,0,139,17,0,0,14,0,8,0
	db        247,255,255,255,4,0,2,0,141,17,0,0,8,0,2,0
	db        10,4,106,16,0,0,12,0,1,2,2,0,140,17,0,0
	db        224,255,255,255,14,0,8,0,245,255,255,255,4,0,2,0
	db        145,17,0,0,8,0,2,0,10,0,144,17,0,0,8,0
	db        1,0,1,0,112,0,0,0,12,0,1,2,2,0,100,16
	db        0,0,143,17,0,0,14,0,8,0,3,0,0,0,4,0
	db        2,0,148,17,0,0,8,0,2,0,10,4,223,255,255,255
	db        12,0,1,2,2,0,147,17,0,0,116,0,0,0,8,0
	db        2,0,10,2,3,0,0,0,14,0,8,0,3,0,0,0
	db        4,0,1,0,151,17,0,0,8,0,1,2,1,0,3,4
	db        0,0,14,0,8,0,116,0,0,0,2,0,0,0,153,17
	db        0,0,4,0,1,2,0,0,14,0,8,0,116,0,0,0
	db        4,0,1,0,155,17,0,0,8,0,1,2,1,0,147,17
	db        0,0,14,0,8,0,222,255,255,255,4,0,3,0,158,17
	db        0,0,8,0,2,0,10,4,221,255,255,255,16,0,1,2
	db        3,0,157,17,0,0,16,0,0,0,248,255,255,255,14,0
	db        8,0,224,255,255,255,4,0,2,0,160,17,0,0,12,0
	db        1,2,2,0,100,16,0,0,224,255,255,255,14,0,8,0
	db        247,255,255,255,4,0,1,0,162,17,0,0,8,0,1,2
	db        1,0,116,0,0,0,14,0,8,0,18,0,0,0,4,0
	db        3,0,164,17,0,0,16,0,1,2,3,0,105,16,0,0
	db        249,255,255,255,3,4,0,0,14,0,8,0,3,0,0,0
	db        4,0,1,0,166,17,0,0,8,0,1,2,1,0,157,17
	db        0,0,14,0,8,0,3,0,0,0,4,0,1,0,168,17
	db        0,0,8,0,1,2,1,0,157,17,0,0,14,0,8,0
	db        3,0,0,0,4,0,2,0,171,17,0,0,8,0,2,0
	db        10,4,220,255,255,255,12,0,1,2,2,0,170,17,0,0
	db        3,4,0,0,14,0,8,0,3,0,0,0,4,0,2,0
	db        173,17,0,0,12,0,1,2,2,0,157,17,0,0,3,4
	db        0,0,14,0,8,0,249,255,255,255,4,0,2,0,175,17
	db        0,0,12,0,1,2,2,0,170,17,0,0,219,255,255,255
	db        14,0,8,0,3,0,0,0,4,0,1,0,177,17,0,0
	db        8,0,1,2,1,0,170,17,0,0,14,0,8,0,3,0
	db        0,0,4,0,2,0,180,17,0,0,8,0,2,0,10,4
	db        218,255,255,255,12,0,1,2,2,0,179,17,0,0,217,255
	db        255,255,14,0,8,0,3,0,0,0,4,0,2,0,182,17
	db        0,0,12,0,1,2,2,0,157,17,0,0,216,255,255,255
	db        14,0,8,0,3,0,0,0,4,0,2,0,185,17,0,0
	db        8,0,2,0,10,4,215,255,255,255,12,0,1,2,2,0
	db        184,17,0,0,217,255,255,255,14,0,8,0,3,0,0,0
	db        4,0,1,0,187,17,0,0,8,0,1,2,1,0,157,17
	db        0,0,14,0,8,0,3,0,0,0,4,0,3,0,189,17
	db        0,0,16,0,1,2,3,0,157,17,0,0,248,255,255,255
	db        214,255,255,255,14,0,8,0,3,0,0,0,4,0,2,0
	db        191,17,0,0,12,0,1,2,2,0,157,17,0,0,213,255
	db        255,255,14,0,8,0,3,0,0,0,4,0,2,0,194,17
	db        0,0,8,0,2,0,10,4,212,255,255,255,12,0,1,2
	db        2,0,193,17,0,0,106,16,0,0,14,0,8,0,3,0
	db        0,0,4,0,4,0,196,17,0,0,20,0,1,2,4,0
	db        157,17,0,0,248,255,255,255,106,16,0,0,106,16,0,0
	db        14,0,8,0,3,0,0,0,4,0,2,0,198,17,0,0
	db        12,0,1,2,2,0,105,16,0,0,211,255,255,255,14,0
	db        8,0,18,0,0,0,7,0,3,0,200,17,0,0,16,0
	db        1,2,3,0,157,17,0,0,210,255,255,255,3,4,0,0
	db        14,0,8,0,3,0,0,0,4,0,3,0,202,17,0,0
	db        16,0,1,2,3,0,179,17,0,0,116,0,0,0,116,0
	db        0,0,14,0,8,0,48,0,0,0,4,0,3,0,205,17
	db        0,0,8,0,2,0,42,0,116,0,0,0,16,0,1,2
	db        3,0,179,17,0,0,204,17,0,0,204,17,0,0,14,0
	db        8,0,48,0,0,0,4,0,3,0,207,17,0,0,16,0
	db        1,2,3,0,179,17,0,0,204,17,0,0,204,17,0,0
	db        14,0,8,0,3,0,0,0,4,0,5,0,209,17,0,0
	db        24,0,1,2,5,0,179,17,0,0,204,17,0,0,204,17
	db        0,0,204,17,0,0,204,17,0,0,14,0,8,0,209,255
	db        255,255,4,0,1,0,211,17,0,0,8,0,1,2,1,0
	db        179,17,0,0,14,0,8,0,208,255,255,255,4,0,1,0
	db        213,17,0,0,8,0,1,2,1,0,157,17,0,0,14,0
	db        8,0,3,4,0,0,4,0,2,0,216,17,0,0,8,0
	db        2,0,42,0,3,4,0,0,12,0,1,2,2,0,179,17
	db        0,0,215,17,0,0,14,0,8,0,207,255,255,255,4,0
	db        1,0,218,17,0,0,8,0,1,2,1,0,193,17,0,0
	db        14,0,8,0,48,0,0,0,4,0,1,0,220,17,0,0
	db        8,0,1,2,1,0,193,17,0,0,14,0,8,0,48,0
	db        0,0,4,0,1,0,222,17,0,0,8,0,1,2,1,0
	db        157,17,0,0,14,0,8,0,219,255,255,255,4,0,1,0
	db        224,17,0,0,8,0,1,2,1,0,193,17,0,0,14,0
	db        8,0,3,0,0,0,4,0,2,0,226,17,0,0,12,0
	db        1,2,2,0,193,17,0,0,206,255,255,255,14,0,8,0
	db        3,0,0,0,4,0,2,0,228,17,0,0,12,0,1,2
	db        2,0,193,17,0,0,48,0,0,0,14,0,8,0,3,0
	db        0,0,4,0,2,0,230,17,0,0,12,0,1,2,2,0
	db        157,17,0,0,205,255,255,255,14,0,8,0,3,0,0,0
	db        4,0,2,0,232,17,0,0,12,0,1,2,2,0,157,17
	db        0,0,48,0,0,0,14,0,8,0,3,0,0,0,4,0
	db        2,0,234,17,0,0,12,0,1,2,2,0,193,17,0,0
	db        204,255,255,255,14,0,8,0,3,0,0,0,4,0,2,0
	db        236,17,0,0,12,0,1,2,2,0,157,17,0,0,203,255
	db        255,255,14,0,8,0,3,0,0,0,4,0,1,0,238,17
	db        0,0,8,0,1,2,1,0,193,17,0,0,14,0,8,0
	db        3,0,0,0,4,0,1,0,240,17,0,0,8,0,1,2
	db        1,0,179,17,0,0,14,0,8,0,3,0,0,0,4,0
	db        1,0,242,17,0,0,8,0,1,2,1,0,179,17,0,0
	db        14,0,8,0,3,0,0,0,4,0,5,0,244,17,0,0
	db        24,0,1,2,5,0,179,17,0,0,116,0,0,0,116,0
	db        0,0,116,0,0,0,116,0,0,0,14,0,8,0,3,0
	db        0,0,4,0,1,0,246,17,0,0,8,0,1,2,1,0
	db        179,17,0,0,14,0,8,0,3,0,0,0,4,0,2,0
	db        249,17,0,0,8,0,2,0,10,4,202,255,255,255,12,0
	db        1,2,2,0,248,17,0,0,201,255,255,255,14,0,8,0
	db        3,0,0,0,4,0,3,0,251,17,0,0,16,0,1,2
	db        3,0,157,17,0,0,200,255,255,255,201,255,255,255,14,0
	db        8,0,3,0,0,0,4,0,1,0,253,17,0,0,8,0
	db        1,2,1,0,179,17,0,0,14,0,8,0,3,0,0,0
	db        4,0,2,0,255,17,0,0,12,0,1,2,2,0,157,17
	db        0,0,199,255,255,255,14,0,8,0,3,0,0,0,4,0
	db        2,0,1,18,0,0,12,0,1,2,2,0,157,17,0,0
	db        199,255,255,255,14,0,8,0,3,0,0,0,4,0,1,0
	db        3,18,0,0,8,0,1,2,1,0,157,17,0,0,14,0
	db        8,0,3,0,0,0,4,0,1,0,5,18,0,0,8,0
	db        1,2,1,0,157,17,0,0,14,0,8,0,3,0,0,0
	db        4,0,1,0,7,18,0,0,8,0,1,2,1,0,179,17
	db        0,0,14,0,8,0,208,255,255,255,4,0,1,0,9,18
	db        0,0,8,0,1,2,1,0,179,17,0,0,14,0,8,0
	db        3,0,0,0,4,0,2,0,11,18,0,0,12,0,1,2
	db        2,0,157,17,0,0,3,4,0,0,14,0,8,0,3,0
	db        0,0,4,0,2,0,13,18,0,0,12,0,1,2,2,0
	db        179,17,0,0,200,255,255,255,14,0,8,0,3,0,0,0
	db        4,0,1,0,15,18,0,0,8,0,1,2,1,0,157,17
	db        0,0,14,0,8,0,48,0,0,0,4,0,1,0,17,18
	db        0,0,8,0,1,2,1,0,248,17,0,0,14,0,8,0
	db        3,0,0,0,4,0,1,0,19,18,0,0,8,0,1,2
	db        1,0,157,17,0,0,14,0,8,0,48,0,0,0,4,0
	db        1,0,21,18,0,0,8,0,1,2,1,0,157,17,0,0
	db        14,0,8,0,48,0,0,0,4,0,2,0,23,18,0,0
	db        12,0,1,2,2,0,157,17,0,0,205,255,255,255,14,0
	db        8,0,116,0,0,0,4,0,1,0,25,18,0,0,8,0
	db        1,2,1,0,157,17,0,0,14,0,8,0,48,0,0,0
	db        4,0,3,0,27,18,0,0,16,0,1,2,3,0,157,17
	db        0,0,200,255,255,255,203,255,255,255,14,0,8,0,245,255
	db        255,255,4,0,2,0,29,18,0,0,12,0,1,2,2,0
	db        100,16,0,0,224,255,255,255,14,0,8,0,3,0,0,0
	db        4,0,4,0,31,18,0,0,20,0,1,2,4,0,219,255
	db        255,255,48,0,0,0,106,16,0,0,106,16,0,0,14,0
	db        8,0,222,255,255,255,4,0,4,0,33,18,0,0,20,0
	db        1,2,4,0,157,17,0,0,16,0,0,0,248,255,255,255
	db        116,0,0,0,14,0,8,0,3,0,0,0,4,0,2,0
	db        35,18,0,0,12,0,1,2,2,0,157,17,0,0,16,0
	db        0,0,14,0,8,0,3,0,0,0,0,0,1,0,37,18
	db        0,0,8,0,1,2,1,0,3,4,0,0,14,0,8,0
	db        3,0,0,0,4,0,2,0,39,18,0,0,12,0,1,2
	db        2,0,248,17,0,0,16,0,0,0,14,0,8,0,3,0
	db        0,0,4,0,2,0,41,18,0,0,12,0,1,2,2,0
	db        179,17,0,0,16,0,0,0,14,0,8,0,3,0,0,0
	db        4,0,2,0,43,18,0,0,12,0,1,2,2,0,193,17
	db        0,0,16,0,0,0,14,0,8,0,3,0,0,0,4,0
	db        2,0,45,18,0,0,12,0,1,2,2,0,105,16,0,0
	db        16,0,0,0,14,0,8,0,3,0,0,0,4,0,2,0
	db        47,18,0,0,12,0,1,2,2,0,184,17,0,0,16,0
	db        0,0,14,0,8,0,3,0,0,0,4,0,2,0,49,18
	db        0,0,12,0,1,2,2,0,170,17,0,0,16,0,0,0
$$BTYPES	ends
$$BNAMES	segment byte public use32 'DEBNAM'
	db	11,'DoMidiMerge'
	db	14,'str_midiconfig'
	db	11,'status_chan'
	db	6,'data_1'
	db	6,'data_2'
	db	11,'config_flag'
	db	14,'ReadMidiConfig'
	db	10,'ret_config'
	db	5,'index'
	db	18,'start_memory_index'
	db	7,'ret_ptr'
	db	1,'i'
	db	15,'WriteMidiConfig'
	db	6,'config'
	db	5,'index'
	db	18,'start_memory_index'
	db	3,'ptr'
	db	1,'i'
	db	20,'ReadAnalogueInConfig'
	db	10,'ret_config'
	db	5,'index'
	db	19,'ReadDigitalInConfig'
	db	10,'ret_config'
	db	5,'index'
	db	21,'ReadAnalogueOutConfig'
	db	10,'ret_config'
	db	5,'index'
	db	20,'ReadDigitalOutConfig'
	db	10,'ret_config'
	db	5,'index'
	db	20,'GetDefaultAnalogueIn'
	db	10,'ret_config'
	db	5,'index'
	db	19,'GetDefaultDigitalIn'
	db	10,'ret_config'
	db	5,'index'
	db	20,'GetDefaultDigitalOut'
	db	10,'ret_config'
	db	5,'index'
	db	21,'GetDefaultAnalogueOut'
	db	10,'ret_config'
	db	5,'index'
	db	18,'ResetConfiguration'
	db	1,'i'
	db	6,'config'
	db	11,'ValidConfig'
	db	12,'ReadDeviceId'
	db	3,'ret'
	db	20,'ValidateStoredConfig'
	db	10,'NumTxBytes'
	db	6,'config'
	db	13,'status_nibble'
	db	15,'TMidiController'
	db	10,'ConfigPort'
	db	12,'ConfigStatus'
	db	13,'ConfigChannel'
	db	11,'ConfigData1'
	db	11,'ConfigData2'
	db	8,'MidiOut2'
	db	9,'Data1Vary'
	db	9,'Data2Vary'
	db	11,'InvertCheck'
	db	9,'MuteCheck'
	db	20,'GenerateInitialCheck'
	db	6,'Label7'
	db	6,'Label8'
	db	7,'Label10'
	db	6,'Label9'
	db	7,'Label11'
	db	17,'WriteConfigButton'
	db	22,'WriteConfigButtonClick'
	db	16,'ConfigPortChange'
	db	18,'ConfigStatusChange'
	db	19,'ConfigChannelChange'
	db	8,'FormShow'
	db	47,'@TMidiController@$bctr$qqrp18Classes@TComponent'
	db	12,'UpdateConfig'
	db	13,'EnableButtons'
	db	42,'@TMidiController@$basg$qr15TMidiController'
	db	27,'@TMidiController@$bdtr$qqrv'
	db	47,'@TMidiController@$bctr$qqrp18Classes@TComponent'
	db	4,'this'
	db	5,'Owner'
	db	1,'i'
	db	1,'i'
	db	1,'i'
	db	8,'PortName'
	db	1,'i'
	db	8,'PortName'
	db	1,'i'
	db	8,'PortName'
	db	1,'i'
	db	8,'PortName'
	db	39,'@TMidiController@WriteConfigButtonClick'
	db	4,'this'
	db	6,'Sender'
	db	10,'STR_CONFIG'
	db	5,'index'
	db	6,'status'
	db	5,'data1'
	db	5,'data2'
	db	5,'data3'
	db	7,'Channel'
	db	6,'Status'
	db	10,'config_msg'
	db	29,'@TMidiController@UpdateConfig'
	db	4,'this'
	db	5,'index'
	db	6,'config'
	db	33,'@TMidiController@ConfigPortChange'
	db	4,'this'
	db	6,'Sender'
	db	35,'@TMidiController@ConfigStatusChange'
	db	4,'this'
	db	6,'Sender'
	db	36,'@TMidiController@ConfigChannelChange'
	db	4,'this'
	db	6,'Sender'
	db	7,'Channel'
	db	6,'Status'
	db	10,'config_msg'
	db	25,'@TMidiController@FormShow'
	db	4,'this'
	db	6,'Sender'
	db	30,'@TMidiController@EnableButtons'
	db	4,'this'
	db	6,'enable'
	db	43,'@Forms@TForm@$bctr$qqrp18Classes@TComponent'
	db	4,'this'
	db	6,'AOwner'
	db	8,'IntToStr'
	db	6,'return'
	db	5,'value'
	db	29,'@System@AnsiString@$bctr$qqrv'
	db	4,'this'
	db	27,'@TMidiController@$bdtr$qqrv'
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
	db	16,'TTestWrapperForm'
	db	9,'MainMenu1'
	db	4,'File'
	db	8,'OpenFile'
	db	8,'SaveFile'
	db	4,'Exit'
	db	13,'Configuration'
	db	13,'WriteComplete'
	db	12,'ReadComplete'
	db	11,'OpenDialog1'
	db	11,'SaveDialog1'
	db	7,'Windows'
	db	8,'TileMenu'
	db	9,'AddDevice'
	db	11,'CascadeMenu'
	db	10,'StatusBar1'
	db	6,'Panel1'
	db	10,'SendStatus'
	db	17,'WriteConfigButton'
	db	16,'ReadConfigButton'
	db	20,'FactoryDefaultButton'
	db	6,'Label1'
	db	15,'InputDevicesBox'
	db	6,'Label3'
	db	9,'StatusBox'
	db	10,'ChannelBox'
	db	6,'Label4'
	db	6,'Label5'
	db	8,'Data1Box'
	db	8,'Data2Box'
	db	16,'OutputDevicesBox'
	db	6,'Label2'
	db	14,'SendMidiButton'
	db	6,'Label6'
	db	8,'MergeBox'
	db	12,'CancelButton'
	db	5,'About'
	db	10,'FormCreate'
	db	14,'FormCloseQuery'
	db	25,'FactoryDefaultButtonClick'
	db	15,'StatusBoxChange'
	db	19,'SendMidiButtonClick'
	db	22,'OutputDevicesBoxChange'
	db	21,'InputDevicesBoxChange'
	db	21,'ReadConfigButtonClick'
	db	18,'WriteCompleteClick'
	db	13,'MergeBoxClick'
	db	13,'OpenFileClick'
	db	13,'SaveFileClick'
	db	13,'TileMenuClick'
	db	12,'ArrangeClick'
	db	14,'AddDeviceClick'
	db	16,'CascadeMenuClick'
	db	17,'CancelButtonClick'
	db	9,'ExitClick'
	db	10,'AboutClick'
	db	12,'ReadSettings'
	db	13,'WriteSettings'
	db	16,'WriteConfigBytes'
	db	48,'@TTestWrapperForm@$bctr$qqrp18Classes@TComponent'
	db	13,'UpdateDisplay'
	db	18,'WriteConfigChannel'
	db	12,'UpdateConfig'
	db	13,'EnableButtons'
	db	44,'@TTestWrapperForm@$basg$qr16TTestWrapperForm'
	db	28,'@TTestWrapperForm@$bdtr$qqrv'
	db	14,'MidiController'
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
	db	5,'__CCC'
	db	10,'STR_CONFIG'
	db	11,'@std@fpos_t'
	db	7,'__rwstd'
	db	12,'@std@rel_ops'
	db	14,'@std@streamoff'
	db	15,'@std@wstreamoff'
	db	16,'TTestWrapperForm'
	db	18,'ANA_OUT_CONTROLLER'
	db	5,'__CTV'
	db	14,'str_midiconfig'
	db	15,'TMidiController'
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
	?debug	D "D:\develop\MidicontrollerPatchEditor\WindowsMidiControllerPatchEditor\PatchEditor.h" 11343 19205
	?debug	D "..\MIDICONTROLLER\CODE\midicfg.h" 12386 11504
	?debug	D "..\MIDIDRIVER\midiflags.h" 11966 30418
	?debug	D "..\MIDICONTROLLER\CODE\sysexcommands.h" 11341 24040
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\vector.cc" 9921 8224
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\iosfwd.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\rw/iotraits.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\rw/traits.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\rw/string_r.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\wctype.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\cwctype.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\wchar.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\cwchar.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\cctype.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\cstring.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\string.stl" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\stdexcep.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\algorith.cc" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\rw/stdmutex.h" 9921 8224
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\rw/rwstderr.mac" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\rw/rwstderr.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\utility.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\except.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\exceptio.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\new.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\limits.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\climits.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\_nfile.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\stdio.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\cstdio.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\memory.h" 9921 8224
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\iterator.cc" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\iterator.h" 9921 8224
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\cstdlib.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\algorith.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\rw/rwdispat.h" 9921 8224
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\rw/stdwind.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\cstddef.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\rw/stddefs.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\compnent.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\stdcomp.h" 9787 8192
	?debug	D "C:\PROGRA~1\BORLAND\CBUILD~1\INCLUDE\vector.h" 9921 8224
	?debug	D "D:\develop\MidicontrollerPatchEditor\WindowsMidiControllerPatchEditor\wrapperunit.h" 12379 23033
	?debug	D "D:\develop\MidicontrollerPatchEditor\WindowsMidiControllerPatchEditor\configmsg.h" 12379 35599
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
	?debug	D "D:\develop\MidicontrollerPatchEditor\WindowsMidiControllerPatchEditor\PatchEditor.cpp" 11368 13665
	?debug	C FB062A633A5C50524F4752417E315C626F726C616E645C434255494C447E315C6C69625C76636C34302E2330308BA32500C5635B30
	?debug	C FB05062354466F726D
	?debug	C FB050B232A54436F6D626F426F78
	?debug	C FB050B232A54436865636B426F78
	?debug	C FB050E232A54526164696F427574746F6E
	?debug	C FB0508232A544C6162656C
	?debug	C FB0509232A54427574746F6E
	?debug	C FB0509232A544F626A656374
	?debug	C FB050C232A54436F6D706F6E656E74
	?debug	C FB050B23416E7369537472696E67
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
	?debug	C FB050B232A544D61696E4D656E75
	?debug	C FB050B232A544D656E754974656D
	?debug	C FB050D232A544F70656E4469616C6F67
	?debug	C FB050D232A54536176654469616C6F67
	?debug	C FB050C232A54537461747573426172
	?debug	C FB0508232A5450616E656C
	?debug	C FB050E232A5450726F6772657373426172
	?debug	C FB050C2326416E7369537472696E67
	?debug	C FB05102354437573746F6D436F6D626F426F78
	?debug	C FB050D232A54437573746F6D466F726D
	?debug	C FB050C2354437573746F6D466F726D
	?debug	C FB050823544F626A656374
	?debug	C FB050C232A544D657461436C617373
	?debug	C FB050C235457696E436F6E74726F6C
	?debug	C FB050D232A5450657273697374656E74
	?debug	C FB0508232A5446696C6572
	?debug	C FB050C235450657273697374656E74
	?debug	C FB050B23544F7065726174696F6E
	?debug	C FB0509232A54526561646572
	?debug	C FB05092354436F6E74726F6C
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
