Algoritmo Ejercicio16Mientras
	Definir  numeroIngresado,divisor,contador Como Entero
	Definir es_primo Como Logico
	Escribir "Ingresa el numero"
	Leer numeroIngresado
	divisor = 2
	es_primo = Verdadero
	Mientras divisor<=numeroIngresado/2 Y es_primo  Hacer
		Escribir "divisor ",divisor," numeroIngresado/2 ",numeroIngresado/2
		Si numeroIngresado MOD divisor == 0 Entonces
			es_primo = Falso
		SiNo
			es_primo = Verdadero
		Fin Si
		divisor = divisor +1
	Fin Mientras
	
	Escribir "El numero es primo ? ", es_primo
	
FinAlgoritmo
