%Cantidad de Horas Trabajadas Mensualmente por Tipo de Contrato
horasmensuales('TC', 160).
horasmensuales('MT',80).
horasmensuales('H', 1).

%Valor Hora Trabajada Segun Categoria
valorhoracategoria('uno',3).
valorhoracategoria('dos',2).
valorhoracategoria('tres',1 ).

valorhora(3255).

%Descuentos
salud(0.915).
pension(0.88).

empleado('Alejandro','dos','TC').
empleado('Maria','uno','MT').
empleado('Ana','uno',12).


sueldode(A,B):- empleado(A,C,D),horasmensuales(D,E),valorhoracategoria(C,F),salud(X),pension(Y),valorhora(Z), B is (E*F*X*Y*Z).

listadoSueldos(L) :- findall(B, sueldode(_,B), L).

totalNomina([], 0).
totalNomina([X|Xs], TN):- totalNomina(Xs, TN2), TN is TN2 + X.

nominaMes(NM) :- listadoSueldos(L), totalNomina(L,NM).

