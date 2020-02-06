	program bisec
	double precision x_left, x_right, root, fofx
	external fofx

c Initialize variables
	x_left  = 0.d0
	x_right = 10.d0
	
	call bisect(x_left, x_right, root, fofx)
	end
	function fofx(x)
	double precision fofx
	double precision x
	fofx = x**2-2.d0
	end	

	subroutine bisect(left, right, middle, F)
	double precision left, right, middle
	double precision f, fleft, fright, fmiddle

	fleft  = f(left)
	fright = f(right)

1000	middle = (left+right)/2.0d0
	fmiddle= f(middle)
	
	if(fleft*fmiddle.le.o) then
	 right  = middle
	 fright = fmiddle
	else
	 left  = middle
	 fleft = fmiddle
	endif

	write(*,*)'Root found at ',middle
	end
