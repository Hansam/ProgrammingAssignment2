## These two functions cache and invert an invertible matrix

## This function creates a cache for a matrix

makeCacheMatrix <- function(x = matrix()) {
        myCache <- NULL
        set <- function(y) {
                x <<- y
                myCache <<- NULL
        }
        get <- function() x
        setinvert <- function(invert) myCache <<- invert
        getinvert <- function() myCache
        list(set = set, get = get,
             setinvert = setinvert,
             getinvert = getinvert)      
}


## This function inverts the matrix. If the matrix has been inverted 
## previously, it will retrieve the already inverted matrix from the 
## cache

cacheSolve <- function(x, ...) {
        myCache <- x$getinvert()
        if(!is.null(myCache)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        myCache <- solve(data, ...)
        x$setinvert(myCache)
        myCache ## Return a matrix that is the inverse of 'x'
}
