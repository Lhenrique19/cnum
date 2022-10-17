using Pkg

dependencies = Pkg.project().dependencies

if !haskey(dependencies,"Calculus")
  Pkg.add("Calculus")
end

using Calculus

r = derivative(sin, 0.0)

println(r)

f(x) = sin(x) - (x^2)

dp(f,x,h) = (f(x+h)-f(x))/h
dr(f,x,h) = (f(x)-f(x-h))/h
dc(f,x,h) = (f(x+h)-f(x-h))/(2*h)

r = derivative(f, 2.0)

println(r)

r = dp(f, 2.0, 0.1)
println(r)

println("\nExercício 8.1.1")

f(x) = sin(x)


r = dr(f, 2.0, 10^-2)
println(r)
r = dr(f, 2.0, 10^-3)
println(r)

f(x) = MathConstants.e^(-x)

r = dr(f, 1.0, 10^-2)
println(r)
r = dr(f, 1.0, 10^-3)
println(r)

