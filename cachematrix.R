##The first function is the makeCacheMatrix
##Just change the "mean" to "inverse" in the example function makeVector
## Use it to set and to get the value of the matrix and to set and to get the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
  value <- NULL
  set <- function(y) {
    x <<- y
    value <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) value <<- inverse
  getinverse <- function() value
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}
## Similarly, first of all, the following function cacheSolve check the existence
##of the inverse. If the inverse has already been calculated, it will skip re-calculate.
##if not, it will do it.
# This function assumes that the matrix is always invertible.
cacheSolve <- function(x, ...) {
  value <- x$getinverse()
  if(!is.null(value)) {
    message("getting cached data.")
    return(value)s
  }
  data <- x$get()
  value <- solve(data,...)
  x$setinverse(value)
  value
}



