using LinearAlgebra 

println("Exemplo 7.1.1")

x = [1.0 ; 1.5 ; 2.0]
y = [1.2 ; 1.3 ; 2.3]

V = [1 x[1] ;
     1 x[2] ;
     1 x[3] ]

function a(V, y)
Vt = transpose(V)
a = inv(Vt*V)*(Vt*y)

return a
end

r = a(V, y)

println(r)

println("\n")
println("Exemplo 7.2.2")

x = [0.00 ; 0.25 ; 0.50 ; 0.75 ; 1.00 ]
y = [-153 ; 64   ; 242  ; 284  ; 175  ]

M(x) = [sin(pi*x[1]) cos(pi*x[1]) ;
        sin(pi*x[2]) cos(pi*x[2]) ;
        sin(pi*x[3]) cos(pi*x[3]) ;
        sin(pi*x[4]) cos(pi*x[4]) ;
        sin(pi*x[5]) cos(pi*x[5]) ]

V = M(x)

r = a(V, y)

println(r)

M(x) = [ 1 x[1] x[1]^2 x[1]^3 x[1]^4 ;
         1 x[2] x[2]^2 x[2]^3 x[2]^4 ;
         1 x[3] x[3]^2 x[3]^3 x[3]^4 ;
         1 x[4] x[4]^2 x[4]^3 x[4]^4 ;
         1 x[5] x[5]^2 x[5]^3 x[5]^4 ]

V = M(x)

r = a(V, y)

println(r)

println("\n")
println("Exercicio 7.1.2")

x = [-0.35 ; 0.15 ; 0.23 ; 0.35]
y = [ 0.2  ; -0.5 ; 0.54 ;  0.7]

V = [1 x[1] ;
     1 x[2] ;
     1 x[3] ;
     1 x[4] ]

function a(V, y)
Vt = transpose(V)
a = inv(Vt*V)*(Vt*y)

return a
end


r = a(V, y)

println(r)
println("\n")



println("Exercicio 7.1.2")

x = [0.0 ; 0.1 ; 0.2 ; 0.3 ; 0.4 ; 0.5 ; 0.6 ; 0.7 ; 0.8 ; 0.9 ; 1.0]

y = [31 ; 35 ; 37 ; 33 ; 28 ; 20 ; 16 ; 15 ; 18 ; 23 ; 31]

M(x) = [1 x[1] + x[2]*sin(2+pi*x[1]) + x[3]*cos(2*pi*x[1]) ;
        1 x[2] + x[2]*sin(2+pi*x[2]) + x[3]*cos(2*pi*x[2]) ;
        1 x[3] + x[2]*sin(2+pi*x[3]) + x[3]*cos(2*pi*x[3]) ;
        1 x[4] + x[2]*sin(2+pi*x[4]) + x[3]*cos(2*pi*x[4]) ;
        1 x[5] + x[2]*sin(2+pi*x[5]) + x[3]*cos(2*pi*x[5]) ;
        1 x[6] + x[2]*sin(2+pi*x[6]) + x[3]*cos(2*pi*x[6]) ;
        1 x[7] + x[2]*sin(2+pi*x[7]) + x[3]*cos(2*pi*x[7]) ;
        1 x[8] + x[2]*sin(2+pi*x[8]) + x[3]*cos(2*pi*x[8]) ;
        1 x[9] + x[2]*sin(2+pi*x[9]) + x[3]*cos(2*pi*x[9]) ;
        1 x[10] + x[2]*sin(2+pi*x[10]) + x[3]*cos(2*pi*x[10]) ;
        1 x[11] + x[2]*sin(2+pi*x[11]) + x[3]*cos(2*pi*x[11]) ]

V = M(x)

r = a(V, y)

println(r)
