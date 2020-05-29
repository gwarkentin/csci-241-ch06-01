; Program:     Color_Matrix2 (Chapter 6)
; Description: Displays a single character in all possible combinations of foreground and background colors
;				without utilizing a nested loop
; Student:     Gabriel Warkentin
; Date:        03/11/2020
; Class:       CSCI 241
; Instructor:  Mr. Ding

INCLUDE Irvine32.inc

.code
main4 proc
	
	call GetTextColor
	push eax						; save terminal colors

	mov ebx, 0						; color code
	mov ecx, 256					; counter
	mov dl, 16						; row pos counter. probably better to use ECX % 16 instead of another reg but we haven't learned it

L1:
	mov eax, ebx					; move stored color to eax
	call SetTextColor
	mov al, 'X'						; move chara constant to al to write.
	call WriteChar
	dec dl
	jnz L2							; no need to test or cmp
		call CrLf						; make newline and reset row counter
		mov dl, 16
L2:
	inc ebx							; increase foreground by 1 step
	dec ecx							; faster than Loop
	jnz L1
				

	pop eax							; revert terminal colors
	call SetTextColor
	call WaitMsg
	exit

main4 endp

end; main4