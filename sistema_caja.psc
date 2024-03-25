Proceso sistema_caja
	DEFINIR nombre_producto1,nombre_producto2,nombre_producto3,nombre_producto4,operadorSis COMO CARACTER;
	DEFINIR valor_producto1, valor_producto2, valor_producto3,valor_producto4 COMO NUMERICO;
	DEFINIR porcentaje_iva COMO REAL;
	DEFINIR opc_menu1 COMO ENTERO;
	nombre_producto1="";
	nombre_producto2="";
	nombre_producto3="";
	nombre_producto4="";
	valor_producto1=0;
	valor_producto2=0;
	valor_producto3=0;
	valor_producto4=0;
	opc_menu1= -1;
	ESCRIBIR "Ingresa tú nombre: ";
	LEER operadorSis;
	ESCRIBIR "Bien venido ",Mayusculas(operadorSis)," El sistema cargara en unos momentos";
	DEFINIR texto_espera COMO CARACTER;
	texto_espera="Cargando";
	ESPERAR 2 SEGUNDOS;
	DEFINIR i COMO ENTERO;
	Para i<-0 Hasta 5 Hacer
		texto_espera= texto_espera + ".";
		ESCRIBIR "";
		ESCRIBIR "";
		ESCRIBIR "";
		ESCRIBIR "";
		ESCRIBIR "";
		ESCRIBIR "";
		ESCRIBIR "";
		ESCRIBIR "";
		ESCRIBIR "";
		ESCRIBIR "";
		ESCRIBIR "";
		ESCRIBIR "";
		ESCRIBIR "";
		ESCRIBIR "";
		
		ESCRIBIR texto_espera;
		ESPERAR 1 SEGUNDOS;
	FinPara
	
	
	MIENTRAS opc_menu1<>0 Hacer
		
		ESCRIBIR "Ingrese la opción que desea realizar";
		ESCRIBIR "Agregar Productos (1)";
		ESCRIBIR "Listar Productos (2)";
		ESCRIBIR "Vender Productos (3)";
		ESCRIBIR "Salir (0)";
		
		LEER opc_menu1;
		
		
		
		Segun opc_menu1 Hacer
			1:
				
				SI nombre_producto1 = "" Entonces
					ESCRIBIR "Ingrese el nombre del producto 1";
					LEER nombre_producto1;
					ESCRIBIR "Ingrese el Precio del producto 1";
					LEER valor_producto1;
					
				FinSi
				SI nombre_producto2 = "" Entonces
					ESCRIBIR "Ingrese el nombre del producto 2";
					LEER nombre_producto2;
					ESCRIBIR "Ingrese el Precio del producto 2";
					LEER valor_producto2;
				FinSi
				SI nombre_producto3 = "" Entonces
					ESCRIBIR "Ingrese el nombre del producto 3";
					LEER nombre_producto3;
					ESCRIBIR "Ingrese el Precio del producto 3";
					LEER valor_producto3;
				FinSi
				SI nombre_producto4 = "" Entonces
					ESCRIBIR "Ingrese el nombre del producto 4";
					LEER nombre_producto4;
					ESCRIBIR "Ingrese el Precio del producto 4";
					LEER valor_producto4;
				FinSi
				
				
			2:
				SI nombre_producto1 <> "" Entonces
					ESCRIBIR "Producto: ", nombre_producto1,"|| Precio: ",valor_producto1;
				FinSi
				SI nombre_producto2 <> "" Entonces
					ESCRIBIR "Producto: ", nombre_producto2,"|| Precio: ",valor_producto2;
				FinSi
				SI nombre_producto3 <> "" Entonces
					ESCRIBIR "Producto: ", nombre_producto3,"|| Precio: ",valor_producto3;
				FinSi
				SI nombre_producto4 <> "" Entonces
					ESCRIBIR "Producto: ", nombre_producto4,"|| Precio: ",valor_producto4;
				FinSi
				
			3:
				DEFINIR opc_menu2 COMO ENTERO;
				opc_menu2=-1;
				DEFINIR valor_venta1,valor_venta2,valor_venta3,valor_venta4 COMO REAL;
				valor_venta1=0;
				valor_venta2=0;
				valor_venta3=0;
				valor_venta4=0;
				DEFINIR cod_prod COMO ENTERO;
				DEFINIR cantidad_venta COMO ENTERO;
				Definir sub_total,total, pago COMO NUMERICO;
				DEFINIR confirmar COMO CARACTER;
				MIENTRAS opc_menu2<>0 HACER
					ESCRIBIR "Ingrese la opción que desea realizar";
					ESCRIBIR "Agregar producto a la venta (1)";
					ESCRIBIR "Realizar la venta(2)";
					ESCRIBIR "Salir (0)";
					LEER opc_menu2;
					Segun opc_menu2 Hacer
						1:
							SI nombre_producto1 <> "" Entonces
								ESCRIBIR "CODIGO 10";
								ESCRIBIR "Producto: ", nombre_producto1,"|| Precio: ",valor_producto1;
							FinSi
							SI nombre_producto2 <> "" Entonces
								ESCRIBIR "CODIGO 20";
								ESCRIBIR "Producto: ", nombre_producto2,"|| Precio: ",valor_producto2;
							FinSi
							SI nombre_producto3 <> "" Entonces
								ESCRIBIR "CODIGO 30";
								ESCRIBIR "Producto: ", nombre_producto3,"|| Precio: ",valor_producto3;
							FinSi
							SI nombre_producto4 <> "" Entonces
								ESCRIBIR "CODIGO 40";
								ESCRIBIR "Producto: ", nombre_producto4,"|| Precio: ",valor_producto4;
							FinSi
							
							Escribir "Ingrese el código del producto que desea vender";
							LEER cod_prod;
							
							Escribir "Ingrese la cantidad que desea vender";
							LEER cantidad_venta;
							
							
							Segun cod_prod Hacer
								10:
									valor_venta1=valor_producto1*cantidad_venta;
									ESCRIBIR "Cantidad: ",cantidad_venta,"||Producto: ", nombre_producto1,"|| Precio unidad: ",valor_producto1,"|| Valor venta: ",valor_venta1;
								20:
									valor_venta2=valor_producto2*cantidad_venta;
									ESCRIBIR "Cantidad: ",cantidad_venta,"||Producto: ", nombre_producto2,"|| Precio unidad: ",valor_producto2,"|| Valor venta: ",valor_venta2;
								30:
									valor_venta3=valor_producto3*cantidad_venta;
									ESCRIBIR "Cantidad: ",cantidad_venta,"||Producto: ", nombre_producto3,"|| Precio unidad: ",valor_producto3,"|| Valor venta: ",valor_venta3;
								40:
									valor_venta4=valor_producto4*cantidad_venta;
									ESCRIBIR "Cantidad: ",cantidad_venta,"||Producto: ", nombre_producto4,"|| Precio unidad: ",valor_producto4,"|| Valor venta: ",valor_venta4;
								De Otro Modo:
									Escribir "El codigo es incorrecto";
							FinSegun
						2:
							Escribir "Resumen venta";
							
							sub_total=0;
							ESCRIBIR "||    CANTIDAD     ||    Nombre Producto    ||    Precio Unidad    ||    Valor Venta    ||";
							SI valor_venta1<>0 Entonces
								ESCRIBIR "||    ",valor_venta1/valor_producto1,"     ||", nombre_producto1,"||    Precio unidad     ||",valor_producto1,"||        Valor venta     ||",valor_venta1;
								sub_total= sub_total+valor_venta1;
							FinSi
							SI valor_venta2<>0 Entonces
								ESCRIBIR "    ",valor_venta2/valor_producto2,"    ", nombre_producto2,"    Precio unidad    ",valor_producto2,"    Valor venta    ",valor_venta2;
								sub_total= sub_total+valor_venta2;
							FinSi
							SI valor_venta3<>0 Entonces
								ESCRIBIR "    ",valor_venta1/valor_producto3,"    ", nombre_producto3,"    Precio unidad    ",valor_producto3,"    Valor venta    ",valor_venta3;
								sub_total= sub_total+valor_venta3;
							FinSi
							SI valor_venta4<>0 Entonces
								ESCRIBIR "    ",valor_venta1/valor_producto4,"    ", nombre_producto4,"    Precio unidad    ",valor_producto4,"    Valor venta    ",valor_venta4;
								sub_total= sub_total+valor_venta4;
							FinSi
							Escribir  "SUB TOTAL: ",sub_total;
							Escribir  "SUB IVA: ",sub_total*0.19;
							total=sub_total+(sub_total*0.19);
							Escribir  "TOTAL: ",total;
							
							
							ESCRIBIR "¿Confirma la venta? (S/N)";
							LEER confirmar;
							Si Minusculas(confirmar)="s" O Minusculas(confirmar)="si" ENTONCES
								ESCRIBIR "Ingrese el monto total a pagar: ";
								LEER pago;
								Esperar 3 Segundos;
								SI pago=total ENTONCES
									ESCRIBIR "Pago realizado con éxito: ";
									Escribir "Hasta pronto";
									Esperar 2 Segundos;
								FinSi
							SiNo
								
								Escribir "Comando no valido";
							FinSi
							
							Si Minusculas(confirmar)="n" O Minusculas(confirmar)="no" ENTONCES
								Escribir "Hasta pronto";
							SiNo
								
								Escribir "Comando no valido";
							FINSI;
							
						//De Otro Modo:
						
					FinSegun
					
					
					
					
				FINMIENTRAS
				
			De Otro Modo:
				
		FinSegun
		
	FinMientras
	
	
FinProceso
