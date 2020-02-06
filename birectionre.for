	program root 
	double precision l,ri,r,func

       
 ! l is left, ri is right, m is middle and r is root value
	write(*,*)'enter the left limit'
	read(*,*)l
	write(*,*)'enter the right limit'
	read(*,*)ri
c	l = 1.0D0
c	ri= 2.0D0
        call bisects(l,ri,r)
       

	end

	subroutine bisects(l, ri,r)
	double precision l, ri, r, m, func
        do i=1,500
        m = (l+ri)/2.0D0
        Write(*,*)m
	if(func(l)*func(m).gt.0.D0) then
	l = m
	else 
	ri = m
        endif

        if(abs(l-ri).lt.0.0000000000001D0) then
        Write(*,*) "Root found"
        stop
        end if
        end do
	end subroutine

        double precision function func(x)
        Double Precision x 
        func = x**2-2.D0
        end

