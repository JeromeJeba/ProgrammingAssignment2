## The following functions creates a matrix object that can cache its inverse and
## calculates its inverse.

## The following function makeCacheMatrix creates a matrix object that can cache
## its inverse

makeCacheMatrix <- function(x = matrix()) {
           inv <- NULL
        set <- function(y) {
            x <<- y
            inv <<- NULL
        }
        get <- function() x
        setinv <- function(inverse) inv <<- inverse
        getinv <- function() m
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
        
}


## The following function cacheSolve computes the inverse of the matrix returned
## by the function makeCacheMatrix.

cacheSolve <- function(x, ...) {
    inv <- x$getinv()
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    data <- x$get()
    inv <- mean(data, ...)
    x$setinv(inv)
    inv      
}
