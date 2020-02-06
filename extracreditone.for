c*************Neerajan Nepal
c       last digit in global id is 8
c f'(q)=(q-8)(q-1)+1/2 which gives f(8)=0.5
c f(q)=(q^3/3)-(9*q^2)/2+(17*q)/2+154/3

        program ctsdifffunction
        implicit double precision (A-H,O-Z)

        write(*,*)'In cmu ID, student has last digit 8 i.e. q=8'
        q=8
1100    write(*,*)'Enter the increment(h)'
        read(*,*)h

        smallnumber=1.0D-05
        if(h.lt.smallnumber) then
        fq=((q**3)/3.0)-(9*(q**2)/2.0)+(17*q/2.0)+(154/3.0)
        fqq=(q**2)-(9*q)+(17/2.0)
        p= q+h
        fp=((p**3)/3.0)-(9*(p**2)/2.0)+(17*p/2.0)+(154/3.0)
        difference = fp-fq
        derivative = difference/h
        write(*,*)'The value of q is',q
        write(*,*)'the value of f(q) is',fq
        write(*,*)'The value of derivative is',derivative
        write(*,*)'Analytical Derivative is',fqq

        else
        write(*,*)'Error'
        Write(*,*)'The increment should be small number'
        write(*,*)'small number (<0.00001)'
        goto 1100
        end if
        end

