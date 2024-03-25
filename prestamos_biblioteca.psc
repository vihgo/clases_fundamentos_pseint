Proceso prestamos_biblioteca
	//Sistema de préstamos de biblioteca: 
	//Estás diseñando un sistema para una biblioteca. Un libro puede ser prestado si no está actualmente prestado y si el usuario no tiene multas pendientes. 
	//Sin embargo, si el usuario es un miembro premium, puede pedir prestado el libro incluso si tiene multas, siempre y cuando las multas no superen un cierto límite.
	
	DEFINIR libro1,libro2,libro3 COMO CARACTER;
	DEFINIR libro1_disponible,libro2_disponible,libro3_disponible, cliente_multas, cliente_premium COMO LOGICO;
	libro1="Metodología de la programación - Osvaldo Cairó";
	libro2="Drákula - Bram Stocker";
	libro3="Fuego y Sangre - George R.R Martin";
	libro1_disponible=VERDADERO;
	libro2_disponible=VERDADERO;
	libro3_disponible=FALSO;
	cliente_multas=VERDADERO;
	cliente_premium=VERDADERO;
	ESCRIBIR "Bienvenido al sistema de gestión de biblioteca.";
	ESCRIBIR " ";
	DEFINIR numero_libro COMO ENTERO;
	//DEFINIR cliente_rut COMO CARACTER;
	//cliente_rut="";
	numero_libro=0;
	
	//ESCRIBIR "Por favor ingrese el rut del cliente: ";
	//LEER cliente_rut;
	ESCRIBIR "A continuación, seleccione el libro para prestamo.";
	ESCRIBIR "=================================================";
	ESCRIBIR libro1," (1)";
	ESCRIBIR libro2," (2)";
	ESCRIBIR libro3," (3)";
	LEER numero_libro;
	
	Segun numero_libro Hacer
		1:
			Si libro1_disponible ENTONCES
				SI cliente_multas Y  cliente_premium ENTONCES
					ESCRIBIR "Prestamo del libro ", libro1, " realizado con exito. Recuerde que usted tiene una deuda asociada a multas por no devolución";
				SINO
					SI cliente_multas Y cliente_premium=FALSO ENTONCES
						ESCRIBIR "Lo sentimos, tiene multas impagas, el prestamo no se puede realizar.";
						
					SiNo
						ESCRIBIR "Prestamo del libro ",libro1," realizado con exito. Gracias por ser un buen cliente :)";
					FinSi
				FinSi
				
				
			SiNo
				Escribir "Libro ",libro1," no se encuentra disponible";
			FinSi
		2:
			Si libro2_disponible ENTONCES
				SI cliente_multas Y  cliente_premium ENTONCES
					ESCRIBIR "Prestamo del libro ", libro2, " realizado con exito. Recuerde que usted tiene una deuda asociada a multas por no devolución";
				SINO
					SI cliente_multas Y cliente_premium=FALSO ENTONCES
						ESCRIBIR "Lo sentimos, tiene multas impagas, el prestamo no se puede realizar.";
						
					SiNo
						ESCRIBIR "Prestamo del libro ",libro2," realizado con exito. Gracias por ser un buen cliente :)";
					FinSi
				FinSi
				
				
			SiNo
				Escribir "Libro ",libro2," no se encuentra disponible";
			FinSi
		3:
			Si libro3_disponible ENTONCES
				SI cliente_multas Y  cliente_premium ENTONCES
					Escribir "Prestamo del libro ", libro3, " realizado con exito. Recuerde que usted tiene una deuda asociada a multas por no devolución";
				SINO
					SI cliente_multas Y cliente_premium=FALSO ENTONCES
						ESCRIBIR "Lo sentimos, tiene multas impagas, el prestamo no se puede realizar.";
						
					SiNo
						ESCRIBIR "Prestamo del libro ",libro3," realizado con exito. Gracias por ser un buen cliente :)";
					FinSi
				FinSi
				
				
			SiNo
				ESCRIBIR "Libro ",libro3," no se encuentra disponible";
			FinSi
		De Otro Modo:
			ESCRIBIR "Lo sentimos, comando incorrecto. El sistema se reiniciará";
	FinSegun
	
	

	
FinProceso
