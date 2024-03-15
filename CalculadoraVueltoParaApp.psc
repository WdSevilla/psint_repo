Algoritmo CalculadoraVuelto
	//Se declaran las variables a utilizar en el programa 
	Definir cantidad como Entero;
	Definir totalAPagar como Entero;
	Definir cantidadEntregada como Entero; 
	Definir cambio como Entero;
    Definir valores como Entero;
    Definir i como Entero
    Definir denominaciones como Cadena;
	//Fin declaracion Variables
	//Se solicita por pantalla ingresar el monto total a pagar 
	Escribir 'Ingrese el monto total a pagar:';
	//Se recibe el dato ingresado por el usuario y se guarda en la variable totalAPagar
	Leer totalAPagar;
	//Se solicita por pantalla el ingresar el monto entregado para pagar
	Escribir 'Ingrese la cantidad entregada:';
	//Se recibe el dato ingresado por el usuario y se guarda en la variable cantidadEntregada
	Leer cantidadEntregada;
	//En la variable cambio se guardan los datos de la operacion de restar cantidadEntregada menos totalAPagar, se usa la funcion matematica de trunc para eliminar
	//numeros luego del punto decimal
	cambio <-  trunc(cantidadEntregada-totalAPagar);
	//Se indica en pantalla el cual es el cambio que se debe de entregar
	Escribir 'El cambio a devolver es: ', cambio;
	// Se declara el arreglo de valores con 11 valores numeros enteros con los valores de las monedas y billetes
	Dimension  valores[15];
	valores[1] <- 20000;
	valores[2] <- 10000;
	valores[3] <- 5000;
	valores[4] <- 2000;
	valores[5] <- 1000;
	valores[6] <- 500;
	valores[7] <- 100;
	valores[8] <- 50;
	valores[9] <- 25;
	valores[10] <- 10;
	valores[11] <- 5;
	//En el arreglo denominaciones con 11 valores de cadenas de texto con la denominacion correspondiente de cada billete y moneda
	Dimension denominaciones[15];
	denominaciones[1] <- 'Billetes de 20000';
	denominaciones[2] <- 'Billetes de 10000';
	denominaciones[3] <- 'Billetes de 5000';
	denominaciones[4] <- 'Billetes de 2000';
	denominaciones[5] <- 'Billetes de 1000';
	denominaciones[6] <- 'Monedas de 500';
	denominaciones[7] <- 'Monedas de 100';
	denominaciones[8] <- 'Monedas de 50';
	denominaciones[9] <- 'Monedas de 25';
	denominaciones[10] <- 'Monedas de 10';
	denominaciones[11] <- 'Monedas de 5';
	//Se inicia el ciclo Para con i igual a 1 y va recorrer el arreglo valores +4 mas
	Para i<-1 Hasta Longitud('valores') +4 Hacer
		//La variable cantidad en cada iteracion calcula cuantas monedas o billetes que se necesitan para el cambio a mostrar
		cantidad <- trunc(cambio/valores[i]);
		//En esta parte se muestran el mensaje de cuantas monedas o billetes se necesitan de cada denominacion
		Si cambio>0 Y cantidad>0 Entonces
			Escribir 'Se necesitan ', cantidad, ' ', denominaciones[i];
			cambio <- trunc(cambio % valores[i]);
		FinSi
	FinPara
FinAlgoritmo