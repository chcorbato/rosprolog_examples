% example of Prolog module defined by the user

% module definition and public (externally visible) predicates
:- module(my_module,
    [
        perishable/1,
        nonperishable/1,
        location/3,
        food/1
    ]).

% KB from RO47014 Assignment 3

% Q1.2
robot(tiago).
perishable(milk).
perishable(yogurt).
nonperishable(hagelslag).
nonperishable(honey).
tableLocation(p1).
tableLocation(p2).
location(milk, p1, s0).
location(yogurt, p1, s0).
location(hagelslag, p1, s0).
location(honey, p1, s0).

% Q1.1
agentCanCarryThings(X) :- robot(X).
food(X) :- perishable(X).
food(X) :- nonperishable(X).

nonperishable(X) :- \+ perishable(X).
grab(X,R) :- food(X), robot(R). 

objectCanBePut(X) :- tableLocation(X).

% % Q2.2
% possibility axioms grab and place
poss(grab(X), S) :- nonperishable(X), location(X, p1, S), \+ carries(Y, S).
poss(grab(X), S) :- perishable(X), location(X, p2, S), \+ carries(Y, S).
poss(place(L), S) :- L = p2, carries(X,S), nonperishable(X).
poss(place(L), S) :- L = p1, carries(X,S), perishable(X).

% successor axiom carries
carries(X, do(A, S)) :- A = grab(X).
carries(X, do(A, S)) :- \+(A = place(L)), carries(X, S).

% successor axiom location
location(X, L, do(A, S)) :- A = place(L), carries(X,S).
location(X, L, do(A, S)) :- \+(A = grab(X)), location(X, L, S).