      Program test
C
C     This program tests the function F and its derivative DF
C
      Implicit Double precision(A-H,O-Z)
 301  Format('Student ',I3,' Root = ',F18.12, ' Error = ',E15.9)
      A = 5.0d0
      FA = F(A)
      DFA = DF(A)
      Write(*,301) FA, FDA
      End
