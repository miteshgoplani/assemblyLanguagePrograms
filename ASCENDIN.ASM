data segment
arr db 12h,23h,10h,45h,20h
data ends

code segment
assume cs:code,ds:data
start:

mov ax,data
mov ds,ax


mov ch,05h

back:
mov cl,04h
lea si,arr
inner:
mov al,[si]
mov bl,[si+1]
cmp bl,al
jnc sorted

mov dl,[si+1]
xchg [si],dl
mov [si+1],dl

sorted:
inc si

dec cl
jnz inner

dec ch
jnz back

int 21h
code ends
end start
