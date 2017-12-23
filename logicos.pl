%fibo(N,R)
fibo(N,N):- N=<1,!.
fibo(N,R):- N1 is N-1, N2 is N-2, fibo(N1,R1), fibo(N2,R2), R is R1 + R2.

%expo(B,E,R)
expo(_,E,1):-E==0, !.
expo(B,E,R):-E1 is E-1, expo(B,E1,R2), R is R2 * B.

%minimo(L,M)
minimo([E],E).
minimo([E|L],R1):- minimo(L,R1), R1<E.
minimo([E|L],E):- minimo(L,R1), R1>E.

%inserta(L1,M,L2)
inserta([],M,[M]).
inserta([E|L1],M,[M,E|L1]):- M<E.
inserta([E|L1],M,[E|L2]):- M>E, inserta(L1,M,L2),!.
inserta(L1,_,L1).

%eliminar(L1,M,L2)
elimina([],_,[]).
elimina([E|L1],M,Z):- M==E, elimina(L1,M,Z),!.
elimina([E|L1],M,[E|L2]):- elimina(L1,M,L2).

%repetidos(L1,L2)
repetidos([],[]).
repetidos([E|R],[E|Z]):-esta(R,E,V), V==0, repetidos(R,Z),!.
repetidos([_|R],L2):-repetidos(R,L2).

%esta(L,V,R)
esta([],_,0).
esta([P|_],E,1):-P==E,!.
esta([_|R],E,V):-esta(R,E,V).

%invierte(L1,L2)
invierte([],[]). 
invierte([E|R],L2):- invierte(R,Z), concat(Z,[E],L2). 

concat([],L,L). 
concat([X|L1],L2,[X|L3]):- concat(L1,L2,L3). 


