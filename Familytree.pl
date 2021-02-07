male(Yaghoub).
male(Hamidreza).
male(Shahram).
female(Sakine).
female(Pouran).
female(Parnian).
female(Paniz).
female(Forouzan).
 
parent(Sakine,Pouran).
parent(Sakine,Shahram).
parent(Sakine,Forouzan).
parent(Hamidreza,Pouran).
parent(Hamidreza,Shahram).
parent(Hamidreza,Forouzan).
parent(Pouran, Parnian).
parent(Pouran, Paniz).
parent(Yaghoub, Parnian).
parent(Yaghoub, Paniz).


married(Hamidreza,Sakine) 
married(Sakine,Hamidreza) 
married(Pouran, Yaghoub)
married(Yaghoub, Pouran)

spouse(X, Y)             :-  married(X, Y).
husband(X, Y)            :-  male(X),       married(X, Y).
wife(X, Y)               :-  female(X),     married(X, Y).
father(X, Y)             :-  male(X),       parent(X, Y).
mother(X, Y)             :-  female(X),     parent(X, Y).
sibling(X, Y)            :-  father(Z, X),  father(Z, Y),
                             mother(W, X),  mother(W, Y),  not(X = Y).
brother(X, Y)            :-  male(X),       sibling(X, Y).
sister(X, Y)             :-  female(X),     sibling(X, Y).
son(Y, X)                :-  male(Y),       child(Y, X).
daughter(Y, X)           :-  female(Y),     child(Y, X).
descendant(Y, X)         :-  ancestor(X, Y).
auntoruncle(X, W)        :-  sibling(X, Y), parent(Y, W).
auntoruncle(X, Z)        :-  married(X,Y),  sibling(Y,W), parent(W,Z).
uncle(X, W)              :-  male(X),       auntoruncle(X, W).
aunt(X, W)               :-  female(X),     auntoruncle(X, W).
grandfather(X, Z)        :-  male(X),       grandparent(X, Z).
grandmother(X, Z)        :-  female(X),     grandparent(X, Z).
grandchild(X, Z)         :-  grandparent(Z, X).
grandson(X, Z)           :-  male(X),       grandchild(X, Z).
granddaughter(X, Z)      :-  female(X),     grandchild(X, Z).
ancestor(X,Y)            :-  parent(X,Y).
ancestor(X, Y)           :-  parent(X, Z),  ancestor(Z, Y).
child(Y, X)              :-  parent(X, Y).
