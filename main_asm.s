; Data section, aligned on 4-byte boundery
	AREA MyData, DATA, align = 2
VarA	SPACE	40
VarB	SPACE 	40
Res		SPACE 	40
		EXPORT 	Multiply		;Funktion als extern markieren
		EXPORT 	VarA			;Globale Variablen deklarieren
		EXPORT 	VarB			
; Code section, aligned on 4-byte boundery
		AREA	|.text|, CODE, readonly, align = 2
Multiply	
		ldr r2,=VarA			;Adresse von VarA in r2 schreiben
		ldr r3,=VarB
		ldr r2,[r2]				;Inhalt von VarA in r2 schreiben
		ldr r3,[r3]				;Inhalt von VarB in r3 schreiben
		mul r0, r2, r3			;Ergebnis ausrechnen: VarA*VarB
		bx 	lr					;Rückgabe des Registers r0
	ALIGN 4
	END