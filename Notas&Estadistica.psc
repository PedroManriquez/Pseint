Proceso sin_titulo
	cant_notas<-0;
	promedio_alum<-0;
	suma_curso<-0;
	promedio_curso<-0;
	aprob<-0;
	examen<-0;
	reprob<-0;
	alumno_actual<-0;
	Repetir
		Escribir "Ingrese cantidad de alumnos";
		leer cant_alum;
		si (cant_alum<=0 || cant_alum>=40) Entonces
			Escribir "***** WARNING, cantidad mal ingresada *******";
		FinSi
	Hasta Que (cant_alum>0 && cant_alum<=40);
	Repetir
		Escribir "******* ALUMNO ",alumno_actual+1 , " *********";
		Repetir
			Escribir "ingrese nota ",cant_notas+1," : ";
			leer nota;
			si (nota<10 || nota>70) Entonces
			    Escribir "****** WARNING, Nota mal ingresada ********";
			Sino
				promedio_alum<-promedio_alum+(nota*0.25);
				cant_notas<-cant_notas+1;
			FinSi
			
		Hasta Que (cant_notas=4);
		Si promedio_alum< 36 Entonces
			reprob<-reprob+1;
		Sino
			si promedio_alum>=36 && promedio_alum<=39 Entonces
				examen<-examen+1;
			Sino
				aprob<-aprob+1;
			FinSi
		FinSi
		suma_curso<-suma_curso+promedio_alum;
		promedio_alum<-0;
		cant_notas<-0;
		alumno_actual<-alumno_actual+1;
	Hasta Que (alumno_actual = cant_alum );
	
	porc_aprob<-(aprob*100)/cant_alum;
	porc_exam<-(examen*100)/cant_alum;
	porc_reprob<-(reprob*100)/cant_alum;
	promedio_curso<- suma_curso/cant_alum;
	Escribir " Los aprobados corresponden a : ", porc_aprob," %";
	Escribir " En Situacion de Examen corresponden a : ", porc_exam," %";
	Escribir " Los Reprobados corresponden a : ", porc_reprob," %";
	Escribir " El promedio del curso es : ",promedio_curso;
FinProceso
