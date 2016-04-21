Proceso sin_titulo
	avance <- 0;
	contJugadas <- 0;
	contFichas1 <- 0;
	contFichas2 <- 0;
	contFichas3 <- 0;
	primo<-0;
	init<-1;
	Repetir
		avance <- 0;
		
		Escribir "Jugador 1 - Ficha ", contFichas1+1;
		dado <- azar(12) + 1;
		contJugadas1 <- contJugadas1 + 1;
		avance1 <- avance1 + dado;
		//caso 1
		si(avance1 % 2 = 0)Entonces
			avance1<-avance1+2;
		Sino
			//caso2
			avance1<-avance1-1;
		FinSi
		// caso 3
		si (avance1 % 10 = 0)Entonces
			avance1<-avance1+5;
		FinSi
		// caso 4
		Repetir
			si(avance1%init = 0)Entonces
				primo<-primo+1;
			FinSi
			init<-init-1;
		Hasta Que (init = avance1);
		si(primo = 2) Entonces
			primoAnteriorEncontrado<-falso;
			primoAnterior<-avance1;
			Repetir
				primoAnterior<-primoAnterior-1;
				init<-primoAnterior;
				primo<-0;
				Repetir
					si(primoAnterior % init = 0)entonces
						primo<-primo+1;
					FinSi
					init<-init-1;
				Hasta Que (init=1);
				si(primo=2)Entonces
					primoAnteriorEncontrado<-Verdadero;
					avance1<-primoAnterior;
				FinSi
			Hasta Que (primoAnteriorEncontrado=Verdadero);
		FinSi
		//caso 5 
		si (avance1=13) Entonces
			avance1<-0;			
		FinSi
		Escribir "Dado: ", dado;
		
		Escribir "Casilla Final: ", avance1;		
		// No usar las acciones por falso ayuda a solucionar el empate en las fichas
		Si (avance1>=27) Entonces
			avance1 <- 0;
			contFichas1 <- contFichas1 + 1;
		FinSi
		
		
	Hasta Que (contFichas1=1);
	Si (contFichas1=1) Entonces
		Escribir "Gano el jugador 1 - en ",contJugadas1, " jugadas";
	Sino
		Si (contFichas2=4) Entonces
			Escribir "Gano el jugador 2 - en ",contJugadas2, " jugadas";
		Sino
			Si (contFichas3=4) Entonces
				Escribir "Gano el jugador 3 - en ",contJugadas3, " jugadas";
			FinSi
		FinSi
	FinSi
FinProceso
