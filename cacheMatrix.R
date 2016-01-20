#this function is used to cache the inverse of a matrix.

# makeCacheMatrix 
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix


cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data.")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
}



# This function returns the inverse of the matrix. It  checks if
# the inverse has  been computed first. If so, it gets the result and skips the
# computation. If not, it computes the inverse, sets the value in the cache 

