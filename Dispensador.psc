Proceso sin_titulo
	c20mil<-0;
	c10mil<-0;
	c5mil<-0;
	c2mil<-0;
	c1mil<-0;
	c500<-0;
	c100<-0;
	c50<-0;
	c10<-0;
	c5<-0;
	c1<-0;
	Repetir
		Escribir "Ingrese un monto para dispensar dinero";
		leer monto;
		si monto<=0 Entonces
			Escribir "WARNING!!! ************ Ingrese un valor valido ************";
		FinSi
	Hasta Que(monto>0);
	salida<- monto;	
	Mientras (monto>=20000) Hacer
		monto<-monto-20000;
		c20mil<-c20mil+1;
	FinMientras
	Mientras (monto>=10000) Hacer
		monto<-monto-10000;
		c10mil<-c10mil+1;
	FinMientras
	Mientras (monto>=5000) Hacer
		monto<-monto-5000;
		c5mil<-c5mil+1;
	FinMientras
	Mientras (monto>=2000) Hacer
		monto<-monto-2000;
		c2mil<-c2mil+1;
	FinMientras
	Mientras (monto>=1000) Hacer
		monto<-monto-1000;
		c1mil<-c1mil+1;
	FinMientras
	Mientras (monto>=500) Hacer
		monto<-monto-500;
		c500<-c500+1;
	FinMientras
	Mientras (monto>=100) Hacer
		monto<-monto-100;
		c100<-c100+1;
	FinMientras
	Mientras (monto>=50) Hacer
		monto<-monto-50;
		c50<-c50+1;
	FinMientras
	Mientras (monto>=10) Hacer
		monto<-monto-10;
		c10<-c10+1;
	FinMientras
	Mientras (monto>=5) Hacer
		monto<-monto-5;
		c5<-c5+1;
	FinMientras
	Mientras (monto>=1) Hacer
		monto<-monto-1;
		c1<-c1+1;
	FinMientras
	
	Limpiar Pantalla;
	
	Escribir "";
	Escribir "Cantidad de billetes de $ 20.000 : ",c20mil;
	Escribir "Cantidad de billetes de $ 10.000 : ",c10mil;
	Escribir "Cantidad de billetes de $ 5.000 : ",c5mil;
	Escribir "Cantidad de billetes de $ 2.000 : ",c2mil;
	Escribir "Cantidad de billetes de $ 1.000 : ",c1mil;
	Escribir "Cantidad de monedas de $ 500 : ",c500;
	Escribir "Cantidad de monedas de $ 100 : ",c100;
	Escribir "Cantidad de monedas de $ 50 : ",c50;
	Escribir "Cantidad de monedas de $ 10 : ",c10;
	Escribir "Cantidad de monedas de $ 5 : ",c5;
	Escribir "Cantidad de monedas de $ 1 : ",c1;
	Escribir "";
	Escribir "Correspondientes a : $ ",salida;
	
FinProceso
