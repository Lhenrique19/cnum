using .MathConstants:e

f(x) = e^x-x-2

error = 10^-3

#Método do ponto fixo
function fixedpoint(a,g)
  x=g(a)
  while abs(x-a) > error
  a = x
  x= g(a)
end
return x
end

g(x) = log(x+2)
r= fixedpoint(1,g)
println(r)

#Método do ponto fixo
g(x) = e^x-2
r = fixedpoint(-1,g)
println(r)

#Método de Newton
g(x) = x-((e^x-x-2)/(e^x-1))
r = fixedpoint(1,g)
println(r)
r = fixedpoint(-1,g)
println(r)

#Método das secantes
function secant(a,b)
  g(a,b) = (a*f(b)-b*f(a))/(f(b)-f(a))
  x = g(a,b)
  while abs(x-b) > error
    a = b
    b = x
    x = g(a,b)
  end
  return x
end

r = secant(1,2)
println(r)
r = secant(-2,-1)
println(r)


println("========================================================================
  ")
println("FIM DOS EXEMPLOS")
println("========================================================================
  ")
println("EXERCICIO 3.3.1")

f(x) = ln(x-2)
error = 10^-8
g(x) = MathConstants.e^(x)-2

r= fixedpoint(1,g)
println(r)

println("========================================================================
  ")
println("EXERCICIO 3.4.1")


g(x) = x + (cos(x)-x^2)/(sin(x)+2x)
error = 10^-5
r = fixedpoint(1,g)
println(r)
println("========================================================================
  ")
println("EXERCICIO 3.6.3")

f(x) = MathConstants.e^(-x^2)/2
r = secant(1,2)
println(r)

println("========================================================================
  ")
println("EXERCICIO 3.6.4")

f(x) = 