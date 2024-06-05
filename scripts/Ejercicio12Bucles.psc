Algoritmo Ejercicio12Bucles
	Definir n,indice,sumatoria,termino1,termino2 como numero
	Escribir "Ingresa el indice a recorrer"
	Leer n
	sumatoria = 0
	termino1 = 0
	termino2 = 1
	Si n>1 Entonces
		Escribir "Los primero ",n," terminos de la serie de fibonacci son"
		si n >= 1 Entonces
			Escribir "0"
		FinSi
		si n >= 2 Entonces
			Escribir "1"
		FinSi
		indice = 3
		Mientras indice <= n Hacer
			sumatoria =  termino1+termino2
			Escribir sumatoria
			termino1 = termino2
			termino2 = sumatoria
			indice = indice+1
		Fin Mientras
	SiNo
		Escribir "El numero debe ser mayor a 1"
	Fin Si

	
FinAlgoritmo
