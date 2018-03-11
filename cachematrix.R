
# The first function creates a matrix that gets a matrix as a function
#set the value of the matrix
#get the value of the matrix,
#set and get the inverse matrix
#It can cache its inverse
#First we are taking the matrix as an input
> makeCacheMatrix <- function(x = matrix()) {
#assigning null to the inv matrix
+     invMatrix <- NULL
#setting the value of the matrix
+     setMatrix <- function (y){
# using <<- to assign a value to an object in an environment different than the current one
+         x<<- y
+         invMatrix <<-NULL
#Getting the value of the matrix
+     }
+     getMatrix <- function() x
#Setting the value of the inverse matrix     
+     setInverse <- function(inverse) invMatrix <<- inverse
#Getting the value of the inverse matrix
+     getInverse <- function() invMatrix
+     list(setMatrix = setMatrix, getMatrix = getMatrix, setInverse = setInverse, getInverse = getInverse)
+ }


#The second funtion returns the inverse of the matrix returned by the first function: MakeCacheMatrix.
#If the inverse has already been calculated it will get the inverse from the cache

> casheSolve <- function(x,...){
#Returns a matrix that is the inverse of x
  +     invMatrix <- x$getinverse()
#If inverse function is not NULL Type getting cached data and return it
  +     if(!is.null(invMatrix)) {
    +         message("Getting cached data")
    +         return (invMatrix)
    +     }
#If the value of the inverse function is NULL go to the original Matrix and get the inverse Matrix and return it  
  + Matrixdata <- x$getMatrix()
  + invMatrix <- solve(Matrixdata,...)
  + x$setInverse(invMatrix)
  + return(invMatrix)
  + }
