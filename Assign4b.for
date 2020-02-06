      Program Fourse
      Implicit Double Precision (A-H,O-Z)
      External FAB
 305  Format(2(E15.8,1x))
      Pi=4.0d0*DATan(1.0d0)
      A=-pi
      B=pi
      Np=300
      Nmax=20 !Values of Nmax are 1,5,10,20
      dt=Abs(A-B)/DFloat(Np)
      Do I=0, Np-1
         t=A+DFloat(I)*dt
         Fs=Coef(0,FAB,.true.)/2.0d0*Pi
         Do J=1, Nmax
            RJ = Dfloat(J)
            Fs = Fs + Coef(J,FAB,.true.)*DCos(RJ*t)+
     $            Coef(J,FAB,.false.)*DSin(RJ*t)
         Enddo
      Write(420,305)t,Fs
      Enddo
	Do K=0, Nmax
      write(320,305)Coef(k,FAB,.true.),Coef(k,FAB,.false.)
	Enddo
      End
**************************************************************
      Function Coef(N,FI,AorB)
      Implicit Double Precision(A-H,O-Z)
      Logical AorB
      External FI
      Pi=4.0d0*DATan(1.0d0)
      A=-pi
      B=pi
      Ni=900
      h=Abs(A-B)/DFloat(Ni)
      coef=0.0d0
      Do I=0, Ni-1
        x1=A+DFloat(I)*h
        x2=x1+h/2.0d0
        x3=x2+h/2.0d0
        F1=FI(x1,N,AorB)
        F2=FI(x2,N,AorB)
        F3=FI(x3,N,AorB)
        Coef=Coef+h/6.0d0*(F1+4.0d0*F2+F3)
        Enddo
      Coef=Coef/pi
      End
************************************************************
      Function FAB(x,N,AorB)
      Implicit Double Precision(A-H,O-Z)
         Logical AorB
	 pi=4.0d0*DATan(1.0d0)  
      Rn=DFloat(N)
      If(AorB) TrigX=DCos(Rn*x)
      If(.not.AorB) TrigX=DSin(Rn*x)
	If(x.ge.0.0d0) Then
	  FAB= -Dsqrt(dabs((pi/2.0d0)**2.0d0-
     $ (x-(pi/2.0d0))**2.0d0))*TrigX
	Else
	  FAB= Dsqrt(dabs((pi/2.0d0)**2.0d0-
     $ (x+(pi/2.0d0))**2))*TrigX
	Endif
      Return
      end

