PROGRAM sqrt
implicit none

INTEGER :: y
INTEGER :: x

WRITE (*,*) "number???"
READ (*,*) x
WRITE (*,*) x
DO y = 1, 999
    IF (y*y == x) THEN
        WRITE (*,*) "the answer is", y
        EXIT
    ELSE IF (y*y > x) THEN
        WRITE (*,*) "the number is higher than", y-1, "but lower than", y
        EXIT
    END IF
END DO

STOP 
END PROGRAM sqrt
