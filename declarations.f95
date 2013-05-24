PROGRAM integers
implicit none

INTEGER(1) :: x
INTEGER(2) :: y
INTEGER(4) :: z
INTEGER(8) :: a
INTEGER(16) :: b = huge(b)

REAL(4) :: r
REAL(8) :: q
REAL(16) :: p

x = huge(x)
y = huge(y)
z = huge(z)
a = huge(a)
!b = huge(b)

r = huge(r)
q = huge(q)
p = huge(p)

WRITE (*, *) "x is:", x
WRITE (*, *) "y is:", y
WRITE (*, *) "z is:", z
WRITE (*, *) "a is:", a
WRITE (*, *) "b is:", b

WRITE (*, *) "r is:", r
WRITE (*, *) "q is:", q
WRITE (*, *) "p is:", p

x = x + 1
WRITE (*, *) "if i increase x by 1, then x is:", x
p = p + 1
WRITE (*, *) "if i increase p by 1, then "
WRITE (*, *) "p is:", p


END PROGRAM integers
