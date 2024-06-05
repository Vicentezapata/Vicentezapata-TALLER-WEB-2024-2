Algoritmo Ejercicio7Mientras
	Definir combinacion,claveIngresada,intentos Como Entero
	combinacion = 7844
	intentos = 4
	Mientras intentos > 0 Hacer
		Escribir "Bienvenido a la caja fuerte. por favor introduce la combinacion quedan ", intentos, " intentos"
		Leer claveIngresada
		Si claveIngresada==combinacion Entonces
			Escribir "Clave ingresada correctamente"
			intentos = intentos-4
			Escribir "Que accion deseas realizar"
			Escribir "Retirar"
			Escribir "Almacenar"
			Leer claveIngresada
		SiNo
			Escribir "Clave incorrecta"
			intentos = intentos-1 
			Si intentos == 0 Entonces
				Limpiar Pantalla
				Escribir "USUARIO BLOQUEADO"
			Fin Si
		Fin Si
	Fin Mientras
	
	
	
	
FinAlgoritmo
