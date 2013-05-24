PROGRAM summation
implicit none
INTEGER :: sum, a

WRITE (*, *) "calculates the sum of numbers from input. enter 0 to stop."
OPEN(unit=10, file="SumData.DAT")

sum = 0

DO
    WRITE (*, *) "input a number:"
    READ (*, *) a
    IF (a == 0) THEN
        EXIT
    ELSE
        sum = sum + a
    END IF
    WRITE (10, *) a
END DO

WRITE (*, *) "sum =", sum
WRITE (10, *) "sum =", sum
CLOSE(10)

END PROGRAM summation
