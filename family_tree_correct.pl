% Assignment 8: Building a Family Tree in Prolog
% parent(Parent, Child).

male(john).
male(robert).
male(michael).
male(david).
male(james).
male(peter).

female(mary).
female(linda).
female(susan).
female(emily).
female(anna).
female(sophia).

parent(john, robert).
parent(mary, robert).
parent(john, linda).
parent(mary, linda).
parent(robert, michael).
parent(susan, michael).
parent(robert, emily).
parent(susan, emily).
parent(linda, david).
parent(james, david).
parent(linda, anna).
parent(james, anna).
parent(michael, peter).
parent(sophia, peter).

grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

sibling(X, Y) :-
    dif(X, Y),
    parent(P, X),
    parent(P, Y).

cousin(X, Y) :-
    dif(X, Y),
    parent(PX, X),
    parent(PY, Y),
    sibling(PX, PY).

descendant(Ancestor, Person) :-
    parent(Ancestor, Person).
descendant(Ancestor, Person) :-
    parent(Ancestor, Intermediate),
    descendant(Intermediate, Person).
