	program euler
	Double precision f,xo,f1,yo,h
	h = 5.0D0-2
c	htwo = 0.10D0
c	hthree = 0.20D0
	write(*,*)'enter the no of test n'
	read(*,*)n
	fo = 1.0D0
	yo = 0.0D0
 	xo = 0.0D0
	do i = 1,n
	   xo = xo + hone
c	   write(*,*)'xn = ',xo
	
 	write(*,*)'xn= ',xo
 
c	fo = 1.0D0
c	yo = 0.0D0
c	do i = 1,n
	   yo = yo + h*f(fo)
c          write(*,*)'fo = ',fo
	
	write(*,*)'fo= ',fo

	
	   f1 = yo*yo+1.D0
c	   write(*,*)'fn = ',f1
	end do
	write(*,*)'fn = ',f1

	end        

        double precision function f(y) ! f(x,y)
        real  y
        f = (y*y)+1
        end
