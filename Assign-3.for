      Program MyCheck3
C
C     Test your work...
C     
C
      Implicit Double precision(A-H,O-Z)
      Dimension Sols(2,10000)
      External Func
 305  Format(2(E15.8,1x))
      Err1 = 1.0D20
 307  Format('Estimated Error = ',E15.6)
 308  Format('Exact     Error = ',E15.6)
C
      x0   = 4.0D0
      xmax = 10.0D0
      y0   = 2.0D0
      N    = 2000
      DErr = 0.0D0
      Call SolvDE(x0,xmax,N,y0,Func,Sols,err1)  
      Do J = 1, N + 1
c        Write(*,305)  Sols(1,J), Sols(2,J) 
        ExSol = -5.0D0 -13.0D0*DExp(4.0D0-Sols(1,J)) +5.0D0*Sols(1,J)
        ApSol = Sols(2,J) 
        DErr  = DErr +  (ExSol - ApSol)**2
        Enddo
      If (Abs(Err1).le.1.0D2)  Write(*,307) err1
      If (Abs(Err1).gt.1.0D2)  Write(*,*) 'Error not estimated...'
      Write(*,308) DSqrt(DErr) 
      End

