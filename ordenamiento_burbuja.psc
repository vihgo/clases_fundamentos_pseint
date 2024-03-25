Proceso ordenamiento_burbuja
	
	Definir  n1,n2,n3,n4,n5,n6,n7,n8 Como REAL;
	Escribir "Bienvenido al ordenamiento de burbuja";
	Escribir "Favor ingresar 8 números pósitivos";
	LEER n1,n2,n3,n4,n5,n6,n7,n8;
	
	
		DEFINIR ordenListo Como Logico;;
		ordenListo=FALSO;
		Definir  mayor,menor Como REAL;
		
		MIENTRAS  ordenListo=FALSO Hacer
			
			//
			Si n1 > n2 Entonces
				mayor=n1;
				menor=n2;
				n1=menor;
				n2=mayor;
				
			SiNo
				
				Si n2 > n3 Entonces
					mayor=n2;
					menor=n3;
					n2=menor;
					n3=mayor;
					
				SiNo
					
					Si n3 > n4 Entonces
						mayor=n3;
						menor=n4;
						n3=menor;
						n4=mayor;
						
					SiNo
						
						Si n4 > n5  Entonces
							mayor=n4;
							menor=n5;
							n4=menor;
							n5=mayor;
							
						SiNo
							
							Si n5 > n6 Entonces
								mayor=n5;
								menor=n6;
								n5=menor;
								n6=mayor;
								
							SiNo
								
								Si n6 > n7 Entonces
									mayor=n6;
									menor=n7;
									n6=menor;
									n7=mayor;
									
								SiNo
									
									Si n7 > n8 Entonces
										mayor=n7;
										menor=n8;
										n7=menor;
										n8=mayor;
										
									sino
										
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
			
			Escribir " | ",n1," | ",n2," | ",n3," | ",n4," | ",n5," | ",n6," | ",n7," | ",n8," | ";
			Esperar 1 Segundos;
			
			SI n1<=n2 Y n2<=n3 Y n3<=n4 Y n4<=n5 Y n5<=n6 Y n6<=n7 Y n7<=n8 Entonces
				Escribir "=========================";
				Escribir " Ordenamiento completado";
				Escribir "=========================";
				ordenListo=Verdadero;
			FinSi
			
			
		FinMientras
		Escribir " | ",n1," | ",n2," | ",n3," | ",n4," | ",n5," | ",n6," | ",n7," | ",n8," | ";
		
		
		
		

	
	
	
FinProceso
