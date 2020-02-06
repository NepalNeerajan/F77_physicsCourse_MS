c*********************************************************
c***       Assignment02 by Neerajan Nepal (student06)  ***
c*********************************************************

	program assign
	Double Precision x,xn,F,DF

	write(*,*)'This program calculates root'
	write(*,*)'Newton-Ramphson method is used'
	write(*,*)'****************************'

	write(*,*)'Enter the test value'
2000	read(*,*)x
	if(DF(x).eq.0.0d0) then
	write(*,*)'Error, derivative is zero'
	write(*,*)'Please re-enter different test value' 
	goto 2000
	endif
	call raphson(x,xn)
	end

	subroutine raphson(x,xn)
	double precision x,F,DF,xn
	do i=1,1000
	xn = x - (F(x)/DF(x))
	write(*,*)'Root = ',xn,'error = ',abs(F(x)/DF(x))
	if(abs(xn-x).lt.1.0D-10) then
	write(*,*)'root found at',xn
	stop
	endif
	x = xn
	enddo
	end subroutine
