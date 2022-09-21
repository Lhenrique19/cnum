using LinearAlgebra

#include("../Aula 4/main.jl")

F(x) = [ ((x[0]^2)/3 + x[1]^2 - 1);
         ((x[0]^2) + (x[1]^2)/4 -1) ]

J(x) = [ (2*x[0]/3) (2*x[1]) ;
         (2*x[0]) (x[1]/2)]

g(x) = x - (inv(J(x))*F(x))

x = g([0 ; 0])



println(inv(J(x)))