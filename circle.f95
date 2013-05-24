PROGRAM circle
implicit none
REAL :: radius, area
REAL, PARAMETER :: pi = 3.14159265358
 
! This program reads a real number r and prints
! the area of a circle with radius r.
 
WRITE (*,*) 'Give radius r:'
READ  (*,*) radius
area = pi * radius ** 2
WRITE (*,*) 'Area = ', area
      
STOP
END PROGRAM circle 
