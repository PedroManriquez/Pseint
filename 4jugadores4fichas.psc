Proceso sin_titulo
	avance <- 0
	contJugadas <- 0
	contFichas1 <- 0
	contFichas2 <- 0
	contFichas3 <- 0
	contFichas4 <- 0
	Repetir
		avance <- 0
		Escribir "Jugador 1 - Ficha ", contFichas1+1
		dado <- azar(6) + 1
		contJugadas1 <- contJugadas1 + 1
		avance1 <- avance1 + dado
		Escribir "Dado: ", dado
		Si (avance1>15) Entonces
			dif <- avance1 - 15
			avance1 <- 15 - dif
		FinSi
		Escribir "Casilla Final: ", avance1
		Esperar Tecla
		
		Escribir "Jugador 2 - Ficha ", contFichas2+1
		dado <- azar(6) + 1
		contJugadas2 <- contJugadas2 + 1
		avance2 <- avance2 + dado
		Escribir "Dado: ", dado
		Si (avance2>15) Entonces
			dif <- avance2 - 15
			avance2 <- 15 - dif
		FinSi
		Escribir "Casilla Final: ", avance2
		Esperar Tecla
		
		Escribir "Jugador 3 - Ficha ", contFichas3+1
		dado <- azar(6) + 1
		contJugadas3 <- contJugadas3 + 1
		avance3 <- avance3 + dado
		Escribir "Dado: ", dado
		Si (avance3>15) Entonces
			dif <- avance3 - 15
			avance3 <- 15 - dif
		FinSi
		Escribir "Casilla Final: ", avance3
		Esperar Tecla
		
		Escribir "Jugador 4 - Ficha ", contFichas4+1
		dado <- azar(6) + 1
		contJugadas4 <- contJugadas4 + 1
		avance4 <- avance4 + dado
		Escribir "Dado: ", dado
		Si (avance4>15) Entonces
			dif <- avance4 - 15
			avance4 <- 15 - dif
		FinSi
		Escribir "Casilla Final: ", avance4
		Esperar Tecla
		// No usar las acciones por falso ayuda a solucionar el empate en las fichas
		Si (avance1=15) Entonces
			avance1 <- 0
			contFichas1 <- contFichas1 + 1
		FinSi
		
		Si (avance2=15) Entonces
			avance2 <- 0
			contFichas2 <- contFichas2 + 1
		Finsi
		Si (avance3=15) Entonces
			avance3 <- 0
			contFichas3 <- contFichas3 + 1
		FinSi
		Si (avance4=15) Entonces
			avance4 <- 0
			contFichas4 <- contFichas4 + 1
		FinSi
				
	Hasta Que (contFichas1=4 O contFichas2=4 O contFichas3=4 O contFichas4=4)
	Si (contFichas1=4) Entonces
		Escribir "Gano el jugador 1 - en ",contJugadas1, " jugadas"
	Sino
		Si (contFichas2=4) Entonces
			Escribir "Gano el jugador 2 - en ",contJugadas2, " jugadas"
		Sino
			Si (contFichas3=4) Entonces
				Escribir "Gano el jugador 3 - en ",contJugadas3, " jugadas"
			Sino
				Si (contFichas4=4) Entonces
					Escribir "Gano el jugador 4 - en ",contJugadas4, " jugadas"
				FinSi
			FinSi
		FinSi
	FinSi
FinProceso