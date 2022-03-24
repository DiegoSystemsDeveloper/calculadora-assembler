;Diego Leandro Perez Tapias
.model small
.stack 64
.data

    numero1 db 0
    numero2 db 0
    r db 0
    mensajesuma db 10,13,7, 'Suma: ', '$'
    mensajeresta db 10,13,7, 'Resta: ', '$'
    mensajemultiplicacion db 10,13,7, 'Multiplicacion: ', '$'
    mensajedivision db 10,13,7, 'Division: ', '$'
    mensaje db 10,13,7, 'Ingresa un numero: ', '$'
    
.code
start proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 09h
    lea dx, mensaje
    int 21h
    
    mov ah, 01h
    int 21h
    sub al, 30h
    mov numero1, al
    
    mov ah, 09h
    lea dx, mensaje
    int 21h
    
    mov ah, 01h
    int 21h
    sub al, 30h
    mov numero2, al
    
    ;suma
    
    mov al, numero1
    add al, numero2
    mov r, al
    
    mov ah, 09h
    lea dx, mensajesuma
    int 21h
    
    ;imprime la suma
    mov al, r
    AAM
    mov bx, ax
    mov ah, 02h
    mov dl, bh
    add dl, 30h
    int 21h
    
    mov ah, 02h
    mov dl, bl
    add dl, 30h
    int 21h
    
    ;resta
    mov al, numero1
    sub al, numero2
    mov r, al
    
    mov ah, 09h
    lea dx, mensajeresta
    int 21h
    
    ;imprime la resta
    mov al, r
    AAM
    mov bx, ax
    mov ah, 02h
    mov dl, bh
    add dl, 30h
    int 21h
    
    mov ah, 02h
    mov dl, bl
    add dl, 30h
    int 21h
    
    ;Multiplicacion
    mov al, numero1
    mov bl, numero2
    mul bl
    mov r, al
    
    mov ah, 09h
    lea dx, mensajemultiplicacion
    int 21h
    
    ;imprime la multiplicacion
    mov al, r
    AAM
    mov bx, ax
    mov ah, 02h
    mov dl, bh
    add dl, 30h
    int 21h
    
    mov ah, 02h
    mov dl, bl
    add dl, 30h
    int 21h
    
    ;Division
    xor ax, ax
    mov al, numero1
    mov bl, numero2
    div bl
    mov r, al
    
    mov ah, 09h
    lea dx, mensajedivision
    int 21h
    
    ;imprime la division
    mov al, r
    AAM
    mov bx, ax
    mov ah, 02h
    mov dl, bh
    add dl, 30h
    int 21h
    
    mov ah, 02h
    mov dl, bl
    add dl, 30h
    int 21h
    
    .exit
end start