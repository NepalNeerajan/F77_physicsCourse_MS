	program zero
	double precision f,x,y,h,fx
	
	call equation(x,y)
	end

	double precision function f(y)
	double precision y
	f = y**2+1.0d0
	end

	subroutine equation(x,y)
	double precision f,x,y,h,fx
	integer n
	
	x = 0.0D0
	y = 0.0D0
	fx = 1.0D0
	n = int(1.0D0/h)

	do i = 1,n
	x = x+h
	y = y+h*fx

	write(*,*)x,y
	end do
	end

