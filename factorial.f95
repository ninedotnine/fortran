RECURSIVE FUNCTION factorialize(n) RESULT(res)
    INTEGER :: res
    INTEGER, INTENT(IN) :: n
    IF (n == 0) THEN
        res = 1
    ELSE
        res = n * factorialize(n - 1)
    END IF
END FUNCTION factorialize

PROGRAM factorial
implicit none
INTEGER, EXTERNAL :: factorialize
INTEGER :: x

WRITE (*,*) "enter your number: "
READ (*,*) x
WRITE (*,*) "the factorial is", factorialize(x)

END PROGRAM factorial
