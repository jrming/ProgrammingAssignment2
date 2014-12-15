## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inverseValue <- NULL
    set <- function(y){
        x <<- y
        inverseValue <- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inverseValue <- inverse
    getinverse <- function() inverseValue
    list(set = set, get = get,setinverse = setinverse, 
         getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inverseValue <- x$getinverse()
    if (!is.null(inverseValue)){
        message("getting cached data")
        return(inverseValue)
    }
    data <- x$get()
    inverseValue <- solve(data)
    x$setinverse(inverseValue)
    inverseValue
}
