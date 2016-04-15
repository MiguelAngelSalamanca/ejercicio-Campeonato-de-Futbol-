Proceso sin_titulo
	contPart<-0
	puntos<-0
	partGanado<-0
	partPerdido<-0
	partEmpatado<-0
	sumaGol<-0
	sumaGolCont<-0
	repetir
		contPart<-contPart+1;
		Escribir "partido ",contPart;
		Escribir "Ingrese goles anotados del equipo";
		Leer goles_favor;
		Escribir "ingrese goles en contra del equipo";
		leer goles_contra;
		Borrar Pantalla
		SI goles_favor>goles_contra ENTONCES//partidos ganados
			puntos<-puntos+3;
			partGanado<-partGanado+1;//cotador de partidos ganados
		FINsi
		si goles_contra>goles_favor entonces//partidos perdidos
			puntos<-puntos
			partPerdido<-partPerdido+1;//contados de partidos perdidos
		FinSi
		si goles_contra=goles_favor Entonces
			puntos<-puntos+1;
			partEmpatado<-partEmpatado+1;//contador de patidos empatados
		FinSi
		sumaGol<-sumaGol+goles_favor;
		sumaGolCont<-sumaGolCont+goles_contra;
		//cuenta de DIFERENCIA DE GOLES........
		si sumaGol>sumaGolCont entonces
			diferencia<-sumaGolCont-sumaGol;
		Sino
			diferencia<-sumaGol-sumaGolCont;
		FinSi
	Hasta Que contPart=10
	Escribir partGanado," Total de partidos ganados.";
	Escribir partEmpatado," Total de partidos Empatados.";
	Escribir partPerdido," Total de partidos perdidos.";
	escribir "Goles a Favor: ",sumaGol;
	Escribir "Goles en Contra: ",sumaGolCont;
	Escribir "Total de Puntos obtenidos en el torneo",puntos;
	Escribir "La diferencia de goles: ",diferencia;
	
FinProceso
