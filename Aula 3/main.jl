println("========================================================================
  ")
println("AULA DE BISSEÇÃO
  
  EXEMPLO 1")
f(x) = x^3 - 9*x + 3

error = 10^-3

function bisection(a,b)
  x = (a+b)/2
  
  while abs(f(x)) > error
    if f(a)*f(x) > 0
      a = x
    else
      b = x
    end
    x = (a+b)/2
  end
  
  return x
  
end

r = bisection(-4, -3)
println(r)

r = bisection(0, 1)
println(r)

r = bisection(2, 3)
println(r)

println("========================================================================
  ")
println("EXERCICIO 1")

  

f(x) = sqrt(x)-cos(x)

error = 10^-3

function bisection(a,b)
  x = (a+b)/2
  
  while abs(f(x)) > error
    if f(a)*f(x) > 0
      a = x
    else
      b = x
    end
    x = (a+b)/2
  end
  
  return x
  
end

r = bisection(0, 1)
println(r)

r = bisection(0.5, 1)
println(r)

println("========================================================================
  ")
println("EXERCICIO 2")

f(x) = 5sin(x^2) - MathConstants.e^(x/10)

error = 10^-5

function bisection(a,b)
  x = (a+b)/2
  
  while abs(f(x)) > error
    if f(a)*f(x) > 0
      a = x
    else
      b = x
    end
    x = (a+b)/2
  end
  
  return x
  
end

r = bisection(0, 1)
println(r)

println("========================================================================
  ")
println("EXERCICIO 3")

f(x) = 

error = 10^-5

function bisection(a,b)
  x = (a+b)/2
  
  while abs(f(x)) > error
    if f(a)*f(x) > 0
      a = x
    else
      b = x
    end
    x = (a+b)/2
  end
  
  return x
  
end

r = bisection(0, 1)
println(r)
