## Put comments here that give an overall description of what your
## functions do

## Analogously to the makeVector function from the tutorial, the makeCacheMatrix function builds a "vector" of 
## functions and returns them as a list to the parent environment.

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set = set,
         get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}

## Analogously to the cachemean function from the tutorial, the cacheSolve function calculates the inverse of a matrix given.
## If it has already been calculated for the given matrix, then the function retrieves the inverse from cache expressed by the message "cached inverse").

cacheSolve <- function(x, ...) {
    inv <- x$getinverse()
    if (!is.null(inv)) {
        message("cached inverse")
        return(i)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setinverse(inv)
    i
}
