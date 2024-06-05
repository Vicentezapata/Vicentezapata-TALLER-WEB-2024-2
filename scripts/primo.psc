Algoritmo primo
	Definir n, contador,aux,resta,divisores Como Entero
	Definir no_es_primo Como Logico
	Escribir "Ingrese un numero"
	Leer n
	contador = 1
	divisores = 0
	Mientras contador <= n Hacer
		aux = 1
		resta = n
		no_es_primo = Verdadero
		Mientras aux <= n  Hacer
			resta = resta-contador
			//Escribir n-contador
			//Escribir "n",n
			//Escribir "contador",contador
			//Escribir "resta",resta
			Si resta = 0 Entonces
				//Escribir "Es divisible en", contador
				no_es_primo = Falso
				divisores = divisores +1
			SiNo
				no_es_primo = Verdadero
			Fin Si
			aux = aux+1
		Fin Mientras
		contador = contador+1
	Fin Mientras
	//Escribir "El numero es divisible en ",divisores," Numeros"
	Si divisores == 2 Entonces
		Escribir "El numero es primo"
	SiNo
		Escribir "El numero no es primo"
	Fin Si
FinAlgoritmo
