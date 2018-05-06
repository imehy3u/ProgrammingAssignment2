## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#  1. set is to set the value of the matrix
#  2. get is to get the current value of the matrix
#  3. setinv is to use the inverse function to inverse the result
#  4. getinv is to get the inversed result of setinv
makeCacheMatrix <- function(x = matrix()) {
		m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinv <- function(inverse) m <<- inverse
        getinv <- function() m
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		m <- x$getinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- data
        x$setinv(m)
        m
}
