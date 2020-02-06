	program rebis
	double precision x, func(x), x1, x2, f1, f2, f
	x1=0.0d0
	x2=2.0d0
	do i=1,100
	call bisect(x1, x2, x, f)
	
	
	function func(x)
	 x=(x1+x2)/2.0D0
	double precision f,x1,x2, x
	f = x**2-2.0d0
	end

	subroutine bisect(x1, x2, x, f, f1, f2)
	double precision x1, x2, x, f, f1, f2
	if(f1*f.lt.0D0) x2=x
	if(f2*f.lt.0D0) x1=x
	
	end

	
