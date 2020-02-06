c*********************************************************
c***       Assignment03 by Neerajan Nepal (student06)  ***
c*********************************************************

c This program is used to solve Van der Pol oscillator
c Second order differential equation is solved by-
c -using Euler Method      
c You have to enter the given initial values as you want

      program vdpo
      implicit double precision(A-H,O-Z)
      integer n

      tmax=100.0d0 !should be 300 for second problem
      t0=0.0d0
   
      n=3000 
c for second problem it was 10000, for better diagram

      y0=1.0d0 !initial value y(0)
      y0p=0.0d0 !initail value y'(0)
      h=(tmax-t0)/dfloat(n)
c
      y1=y0
      y2=y0p
      write(101,*)t0,y1,y2
      do i=1,n
       f1=y2
       f2=func(t,y1,y2)
       y1h=y1+h*f1
       y2h=y2+h*f2
       f1h=y2h
       f2h=func(t+h,y1h,y2h)
       y1=y1+h*(f1+f1h)/2.0d0
       y2=y2+h*(f2+f2h)/2.0d0
       t=t0+h*dfloat(i)
       write(101,*)t,y1,y2        
       end do
      return
      end
**********************************
      double precision function func(t,y1,y2)
      implicit double precision (A-H,O-Z)
      func=-0.2d0*(1.0d0-y1*y1)*y2-y1
c In function, we have to write 0.5 in second problem
      end

