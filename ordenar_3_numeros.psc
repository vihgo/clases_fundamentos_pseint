Proceso ordenar_3_numeros
	
	DEFINIR num1, num2, num3, numeroMenor,numeroMayor,numeroDelMedio COMO ENTERO;
	ESCRIBIR "Ingrese 3 números a continuación:";
	Leer num1,num2,num3;
	DEFINIR listaNumeros COMO CARACTER;
	
	numeroMenor=num1;
	numeroMayor=num1;
	SI numeroMenor >=num2 Entonces
		numeroMenor=num2;
		
	FinSi
	SI numeroMenor >= num3 Entonces
		numeroMenor=num3;
		
	FinSi
	
	Si numeroMayor <= num2 Entonces
		numeroMayor=num2;
		
	FinSi
	
	SI numeroMayor <= num3 Entonces
		numeroMayor=num3;
	FinSi
	
	
	SI num1 <> numeroMenor Y num1<>numeroMayor Entonces
		numeroDelMedio=num1;
		
	FinSi
	
	SI num2 <> numeroMenor Y num2<>numeroMayor Entonces
		numeroDelMedio=num2;
		
	FinSi
	
	SI num3 <> numeroMenor Y num3<>numeroMayor Entonces
		numeroDelMedio=num3;
		
	FinSi
	
	SI num1 = num2 O num1=num3 Entonces
		numeroDelMedio=num1;
		
	FinSi
	SI num2 = num1 O num2=num3 Entonces
		numeroDelMedio=num2;
		
	FinSi
	
	
	ESCRIBIR "El numero menor es el ",numeroMenor;
	ESCRIBIR "El numero del medio es el ",numeroDelMedio;
	ESCRIBIR "El numero mayor es el ",numeroMayor;
	
	
FinProceso
