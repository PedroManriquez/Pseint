Proceso sin_titulo
	rangoInferior<-0;
	rangoSuperior<-0;
	cantDesnut<-0;
	cantNor<-0;
	cantSobr<-0;
	centroActual<-0;
	ninoActual<-0;
	cantMaxSobr<-0;
	maxSobr<-0;
	maxAtencion<-0;
	lugarMaxAtencion<-0;
	lugarMaxSobr<-0;
	cant13<-0;
	cant46<-0;
	cant79<-0;
	Escribir "ingrese la cantidad de centro de salud";
	leer cantCentroSalud;
	Repetir
		Escribir "ingrese cantidad de ni�os para el centro ",(centroActual+1);
		leer cantidadNinos;
		Repetir
			Escribir "ingrese edad del ni�o ",(ninoActual+1);
			leer edad;
			Escribir "ingrese peso del ni�o ",(ninoActual+1);
			leer peso;
			rangoInferior<-(3*edad+7)-4;
			rangoSuperior<-(3*edad+7)+4;
			Si (peso<rangoInferior)Entonces
				cantDesnut<-cantDesnut+1;
				Si(edad>=1 && edad<=3)Entonces
					cant13<-cant13+1;
				Sino
					Si (edad>=4 && edad<=6)Entonces
						cant46<-cant46+1;
					Sino
						cant79<-cant79+1;
					FinSi
				FinSi
			Sino
				si (peso>=rangoInferior && peso<=rangoSuperior)Entonces
					cantNor<-cantNor+1;
				Sino
					cantSobr<-cantSobr+1;
					cantMaxSobr<-cantMaxSobr+1;
				FinSi
			FinSi
			ninoActual<-ninoActual+1;
			
		Hasta Que(ninoActual=cantidadNinos);
		atendidos<-cantDesnut+cantSobr+cantNor;
		si (atendidos > maxAtencion)Entonces
			maxAtencion<-atendidos;
			lugarMaxAtencion <- centroActual+1;
		FinSi
		si (cantMaxSobr>maxSobr)Entonces
			maxSobr<-cantMaxSobr;
			lugarMaxSobr<-centroActual+1;
		FinSi
		Escribir "Cantidad de ni�os desnutridos : ",cantDesnut;
		Escribir "Cantidad de ni�os normales : ",cantNor;
		Escribir "Cantidad de ni�os sobrepeso : ",cantSobr;
		centroActual<-centroActual+1;
		cantMaxSobr<-0;
		atendidos<-0;
		cantDesnut<-0;
		cantNor<-0;
		cantSobr<-0;
		ninoActual<-0;
	Hasta Que (centroActual=cantCentroSalud);
	
	Escribir "El centro con mas atenciones es el centro ",lugarMaxAtencion," con un total de ",maxAtencion," atendidos";
	Escribir "El centro que registra mayor cantidad de ni�os con sobre peso es el numero ",lugarMaxSobr," con un total de ",maxSobr," ni�os con sobrepeso";
	si (cant13>cant46 && cant13>cant79)Entonces
		Escribir "En el intervalo de edad que mas ni�os desnutridos es 1 - 3 a�os con ",cant13," ni�os";
	Sino
		si (cant46>cant13 && cant46>cant79)Entonces
			Escribir "En el intervalo de edad que mas ni�os desnutridos es 4 - 6 a�os con ",cant46," ni�os";
		Sino
			Escribir "En el intervalo de edad que mas ni�os desnutridos es 7 - 9 a�os con ",cant79," ni�os";
		FinSi
		
	FinSi
FinProceso
