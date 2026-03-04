// Simular un sistema de control de inventario para un producto específico (por ejemplo,
// "Paquetes de Arroz") que permita al usuario gestionar las existencias mediante operaciones
// básicas. El objetivo es reforzar el uso de funciones, estructuras cíclicas y validaciones de datos.

Funcion retorno<-verStock(stockI Por Referencia)
	
	
	Definir  retorno Como Entero;                    // Funcion para ver el stock, està definido por referencia para que se actualice siempre con las otras funciones

	
	retorno<-stockI;
	
	
FinFuncion

Funcion retorno<- registrarEntrada(entrada,stockI Por Referencia)
	
	Definir retorno Como Entero;
	
	Si entrada>0 Entonces
		
		stockI<-stockI+entrada;                  // Ingresa la entrada al stock siendo stock por referencia que se actualiza dependiendo las otras
		Escribir "";
		Escribir "EL inventario ha sido actualizado con exito";
		
		
	Sino                                        // està dentro de un SI para que el numero sea mayor que cero y el sino es por si llega a ser negativo que lo rechace
		
		Escribir "";
		Escribir "No se puede registrar la entrada debido a que es una cantidad negativo";
		
	FinSi
	
	
	
	
FinFuncion


Funcion retorno<- registrarSalida(salida,stockI Por Referencia)
	
	Definir retorno Como Entero;
	
	Si salida>0 y salida<=stockI Entonces                 // Esta dentro de un si para que el valor ingresado para salida sea mayor a cero positivo y que el valor que va a salir de la mercancia no sea mayor al stock para que tenga sentido
		
		stockI<-stockI-salida;
		Escribir "";
		Escribir "EL inventario ha sido actualizado con exito";

		
	Sino                                                  // Sino cumple los parametros lo rechaza y muestra un mensaje que està mal y muestra el stock actual
		
		
		Escribir "ERROR : CANTIDAD INSUFICIENTE";
		EScribir "  Stock actual es: ", stockI;
		
	
	
	FinSi
	
	Si stockI<=5 Entonces                                   // Este SI, es para que si el stock despues de registrar la salida llega a ser menor o igual a 5 muestre un mensaje de alerta
		
		Escribir "";
		Escribir "ALERTA: STOCK CRITICO . " ;
		
		
	FinSi
	
	
	
FinFuncion







Proceso Taller
	
	Definir stockI,option, entrada, salida, result,stockf,resultsuma,resultresta Como Entero;
	
	stockI<- 50;

	Repetir
		
		Escribir "  ============= TIENDA  DON  PEPE  =========== ";
		Escribir "  =============      M E N U       =========== ";
		Escribir "  ============= PAQUETES DE ARROZ  =========== ";
		Escribir " 1. Ver stock actual: ";
		Escribir " 2. Registrar entrada de inventario ";                             // MENU
		Escribir " 3. Registrar salida de inventario ";
		Escribir " 4 o 0:  Salir "; 
		Leer option;
		
		
		
		Segun option hacer	
			
			
			
			
			
			1: 
				
				result<-verStock(stockI);
			
				Escribir "";
				Escribir "El stock total es: ",stockI;
				Escribir "";
				
				
			2:
				
				Escribir "Digite la cantidad que desea entrar al inventario";
				Leer entrada;
				
				resultsuma<- registrarEntrada(entrada,stockI);
				Escribir "";
				Escribir "El stock total actualizado es: ",stockI;
				Escribir "";
				
				
			3:
				
				Escribir "Digite la cantidad que desea sacar al inventario";
				Leer salida;
				
				resultresta<- registrarSalida(salida,stockI);
				
				Escribir "";
				Escribir "El stock total actualizado es: ",stockI;
				Escribir "";
				
				
				
				
			4:
				
				Escribir "S A L I E N D O ";
				
				
			0:
				
				Escribir "S A L I E N D O ";
				
				
				
				
			De Otro Modo: 
				
				Escribir "Opcion no valida";
				

		FinSegun
		
		
		

		
	Hasta Que option == 0 o option==4;
	
	
	
FinProceso
