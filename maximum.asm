data segment
arr db 2h,03h,01h,07h
data ends
code segment
ASSUME CS:code,DS:data
start:
mov AX,data
mov DS,AX
mov AL,00h
LEA SI,arr
mov Cl,04h
back:
cmp AL,[SI]
JNC skip
mov AL,[SI]
skip:
INC SI
dec CL
JNZ back
mov [SI],AL
int 21h 
code ends
end start
