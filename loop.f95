PROGRAM loop
implicit none
INTEGER :: x

DO X = 1, 5
    WRITE (*,*) "x is:", x
END DO

DO WHILE (x > 1) 
    WRITE (*, *) "x is:", x
    x = x - 1
END DO

STOP
END PROGRAM loop
