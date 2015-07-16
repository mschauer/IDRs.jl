using IDRs
n = 20
b = 20
A = rand(n,n)
B = rand(b,n)
Xsol = rand(n,b)
C = Xsol + A*Xsol*B
X0 = rand(n,b)
maxit = n*n*n
tol = eps()
s = 32                     

@time X = stein(A,B, C,s,tol, maxit)
println(vecnorm(Xsol - X))
