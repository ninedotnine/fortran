PROGRAM prime_factors
    implicit none

    LOGICAL, EXTERNAL :: isprime
    INTEGER, EXTERNAL :: factorize
    INTEGER :: i
    INTEGER, PARAMETER :: max = 9

    WRITE (*,*) "values up to", max, ":"
    DO i = -7, max
    WRITE (*,*) "is", i, "prime?", isprime(i)
    END DO

    STOP
END PROGRAM prime_factors 

SUBROUTINE invert(x)
    INTEGER :: x
    x = -x
END SUBROUTINE invert

FUNCTION isprime(x) RESULT(bool)
    LOGICAL :: bool
    INTEGER :: x, i
    bool = .TRUE.
    IF (x < 2) THEN
        bool = .FALSE.
        RETURN 
    END IF
    DO i = 2, floor(sqrt(real(x)))
        IF (modulo(x, i) == 0) THEN
            bool = .FALSE.
        END IF
    END DO
    RETURN
END FUNCTION isprime

RECURSIVE FUNCTION factorize(x, initial) RESULT(res)
    ! returns the number of prime factors, not what they are (too complicated)
    LOGICAL, EXTERNAL :: isprime
    INTEGER :: i, res, initial
    INTEGER, INTENT(IN) :: x
    res = initial
    IF (isprime(x)) THEN
        RETURN 
    ELSE
        DO i = 2, x
            IF (isprime(i) .AND. modulo(x, i) == 0) THEN
                res = factorize(int(x/i), initial+1) 
                RETURN
            END IF
        END DO
    END IF
END FUNCTION factorize

