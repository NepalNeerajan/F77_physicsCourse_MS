c*********************************************************
c***       Assignment03 by Neerajan Nepal (student06)  ***
c*********************************************************

	subroutine SolveDE(x0,xmax,N,y0,Func,Sols,err1)
	double precision x0,xmax,y0,Func,Sols,err1,h
	Dimension Sols(2,*)
	integer N 

	h = (xmax-x0)/dfloat(N)
	Sols(1,1)=x0
        Sols(2,1)=y0

	do J = 2, N+1
	   x0 = x0 + h
	   y0 = y0 + h * Func(x0,y0)
	   Sols(1,J) = x0
	   Sols(2,J) = y0
	   
	enddo

c	for the error part
c 	discretization error of the simple Euler method used 

	err1 = (Sols(2,N+1)-Sols(2,N))/h - Func(Sols(1,N),Sols(2,N))

	end subroutine
