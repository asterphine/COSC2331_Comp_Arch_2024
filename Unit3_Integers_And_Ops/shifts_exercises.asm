; Base Author: Megan Avery Spring 2024
; Exercise Author: Linh Huynh

; Purpose - to learn the following:
; 	- logical shifts
;	- arithmetic shifts
;	- rotate shifts

%include "asm_io.inc"

; initialized data
segment .data

; uninitialized data
segment .bss


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

        ; INCORRECT
	; mov ebx, 3
        ; mov eax, 20
        ; shl eax, ebx
        ; call print_int

        ; mov eax, 23
        ; shr eax, 2 ; divide by 4
        ; call print_int

        mov eax, 4
        mov ebx, 2
        test eax, ebx
        dump_regs 1

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


