% Duta Viorel-Ionut
% 321CB

getRoot([[A,B]|N], R) :- getRootAux(N, A ,B, R).

getRootAux([], R, P, R).
getRootAux([[A,B]|T], R, P, Ans) :- B < P, getRootAux(T, A, B, Ans).
getRootAux([[A,B]|T], R, P, Ans) :- getRootAux(T, R, P , Ans).

stp([Noduri|Retea], Root, E) :- getRoot(Noduri, Root), E = [],!.
