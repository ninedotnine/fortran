PROGRAM multiply
implicit none
INTEGER :: test, x, y
INTEGER, EXTERNAL :: multiplyer

WRITE (*,*) "enter two values to multiply"
READ (*,*) x, y
test = multiplyer(x, y)
WRITE (*,*) test

STOP
END PROGRAM multiply 

! simple multiplication function

PURE INTEGER FUNCTION multiplyer(x, y) !  RESULT(res)
    INTEGER, INTENT(IN) :: x, y
    ! INTEGER :: res
    ! res =  x * y
    multiplyer = x * y
    RETURN
END FUNCTION multiplyer

