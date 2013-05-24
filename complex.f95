PROGRAM complex
implicit none

COMPLEX :: x = (2, 1)
CHARACTER :: s(4)

WRITE (*, *) "x is:", x
WRITE (*, *) "x**2 is:", x*x

STOP
END PROGRAM complex
