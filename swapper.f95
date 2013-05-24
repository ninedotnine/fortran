! swaps two values. not very useful on its own...

PROGRAM swapper
    INTEGER :: a, b
    a = 20
    b = 545
    WRITE (*, *) "a is:", a
    WRITE (*, *) "b is:", b
    CALL swap(a, b)
    WRITE (*, *) "a is:", a
    WRITE (*, *) "b is:", b

STOP
END PROGRAM swapper

! simple subroutine, swaps two integers

SUBROUTINE swap(x, y)
      INTEGER :: x, y, temp
      temp = y
      y = x
      x = temp
END SUBROUTINE swap
