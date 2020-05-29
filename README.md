# csci-241-ch06-01
Color_Matrix2


Write a program that displays the same as Color_Matrix (Chapter 5, Pr 8) but without Delay call. However this time, you must implement it with a single loop, not nested loops. Use any conditional jump as you want.
Any jump backward could be considered as a loop. So a jump backward in a loop is considered as a nested loop.
A suggested loop structure could be like this
L1:
   ; set color and write a char
   ; check if 16 chars in a row
   ; if not,  jump to next
   ; if yes, make a new line
   next:
LOOP/Jx L1
To make above check, either TEST or CMP is fine. Try to see which one is easy?
Only 10 or less instructions necessary in the loop body
