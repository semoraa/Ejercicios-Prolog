progenitor(felisam,felisa).
progenitor(felisam,esperanza).
progenitor(lucrecia,manuel).
progenitor(lucrecia,elvira).
progenitor(felisa,sebastian).
progenitor(felisa,ximena).
progenitor(felisa,jcamilo).
progenitor(ana,lucrecia).
progenitor(pedro,lucrecia).
progenitor(claudia,enrique).
progenitor(alfonso,enrique).
progenitor(cleo,felisam).
progenitor(armando,felisam).
progenitor(josefa,pascual).
progenitor(alirio,pascual).
progenitor(manuel,sebastian).
progenitor(manuel,ximena).
progenitor(efren,jcamilo).
progenitor(enrique,manuel).
progenitor(pascual,felisa).
progenitor(pascual,esperanza).
progenitor(esperanza,martha).
progenitor(michelo,martha).



bisabuelode(W,Z):-progenitor(W,X),progenitor(X,Y),progenitor(Y,Z).
abuelode(X,Z):-progenitor(X,Y),progenitor(Y,Z).
hijode(Y,Z):-progenitor(Z,Y).
nietode(X,Z):-abuelode(Z,X).
bisnietode(W,Z):-bisabuelode(Z,W).
hermanode(X,Y):-progenitor(Z,X),progenitor(Z,Y),X\==Y.
primode(W,X):-(hermanode(Y,X)),progenitor(W,Y),progenitor(Z,X).
tiode(X,Y):-progenitor(Z,Y),hermanode(X,Z),X\==Y.
sobrinode(X,Y):-tiode(Y,X).
