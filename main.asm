; ***********************************************************
;   INTESC electronics & embedded
;
;   Curso básico de microcontroladores en ensamblador	    
;
;   Práctica 3: Uso de librería de LCD
;   Objetivo: Conocer el funcionamiento de una librería de LCD
;
;   Fecha: 05/Jun/16
;   Creado por: Daniel Hernández Rodríguez
; ************************************************************
    
LIST    P = 18F87J50	;PIC a utilizar
INCLUDE <P18F87J50.INC>

;************************************************************
;Configuración de fusibles
CONFIG  FOSC = HS
CONFIG  DEBUG = OFF
CONFIG  XINST = OFF

;***************************************************
    
ORG 0x00    ;Iniciar el programa en el registro 0x00
    
    movlw   0x00
    movwf   TRISE   ;Configurar puerto D como salida
    
    call    LCD_Init
    ;movlw   0x05
    ;call    LCD_GoTo
    movlw   'I'
    call    LCD_Char
    movlw   'N'
    call    LCD_Char
    movlw   'T'
    call    LCD_Char
    movlw   'E'
    call    LCD_Char
    movlw   'S'
    call    LCD_Char
    movlw   'C'
    call    LCD_Char
    movlw   0x42
    call    LCD_GoTo
    movlw   'M'
    call    LCD_Char
    movlw   'I'
    call    LCD_Char
    movlw   'U'
    call    LCD_Char
    movlw   'V'
    call    LCD_Char
    movlw   'A'
    call    LCD_Char
    movlw   ' '
    call    LCD_Char
    movlw   '-'
    call    LCD_Char
    movlw   ' '
    call    LCD_Char
    movlw   'L'
    call    LCD_Char
    movlw   'C'
    call    LCD_Char
    movlw   'D'
    call    LCD_Char
    
    INICIO
    goto	INICIO
	    
    INCLUDE <MPLCD.inc>

END