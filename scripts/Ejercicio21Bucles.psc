algoritmo Ejercicio21Bucles
	Definir n,numIngresado,cantidad_numeros, suma_impar, cantidad_impares, mayor_par Como Entero
	n = 0
	cantidad_numeros = 0
	mayor_par = 0
	suma_impar = 0
	Mientras n>=0 Hacer
		Escribir "Ingresa un numero:"
		Leer numIngresado
		n=numIngresado
		Si numIngresado >0  Entonces
			cantidad_numeros = cantidad_numeros+1
			Si numIngresado MOD 2 == 0 Entonces
				//EL NUMERO ES PAR
				Si numIngresado >= mayor_par Entonces
					mayor_par = numIngresado 
				SiNo
					mayor_par = mayor_par
				Fin Si
				//Escribir "mayor_par = ",mayor_par
			SiNo
				//EL NUMERO ES IMPAR
				suma_impar = suma_impar + numIngresado
				cantidad_impares = cantidad_impares + 1
				//Escribir "media_impar = ",media_impar/cantidad_impares
			Fin Si
		Fin Si
	Fin Mientras
	Escribir "La cantidad de numeros ingresados es:",cantidad_numeros
	Escribir "El mayor par es:",mayor_par
	Escribir "La media de impares es:",suma_impar/cantidad_impares
	
FinAlgoritmo
