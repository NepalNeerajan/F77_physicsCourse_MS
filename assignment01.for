c********************************************************************
c***            Assignment01 by Neerajan Nepal (Student06)        ***
c********************************************************************

        program assig
        double precision x(4),s !Array

        Write(*,*) "You are going to find the position at a given time"
        Write(*,*) "You should enter all the values in SI unit"
        Write(*,*) "************************************************"

1000    Format(A40,4x,E19.6)    !Format

        Do i=1,4                !Do loop
          if (i.EQ.1) print*,"Enter the value of initial position (So)"
          if (i.EQ.2) print*, "Enter the value of initial velocity (u)"
          if (i.EQ.3) print*,"Enter the value of acceleration (a)"
          if (i.EQ.4) print*, "Enter the value of time (t)"
          Read(*,*)s
          x(i)=s
          End do

1100    if (x(4).LT.0.0D0) then
          Write(*,*)"Please enter the positve value for time"
          read(*,*)s
          x(4)=s
          go to 1100
          end if

        write(*,1000)"Initial Position (So) = ",x(1)
        write(*,1000)"Initial Velocity (u) = ",x(2)
        write(*,1000)"Acceleration (a) = ",x(3)
        write(*,1000)"Time (t) = ",x(4)


        s=x(1)+x(2)*x(4)+0.5D0*x(3)*x(4)*x(4)

        write(*,1000)"The position at a given time (S) = ",s
        end

