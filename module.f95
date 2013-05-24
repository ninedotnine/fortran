MODULE module
    implicit none
    type data
    INTEGER :: a, b
    END TYPE data
    REAL, PARAMETER :: x = 5.001
    INTERFACE iface
        PURE INTEGER FUNCTION multiplyer(x, y)
          INTEGER, INTENT(IN) :: x, y
        END FUNCTION multiplyer
    END INTERFACE iface
END MODULE module
