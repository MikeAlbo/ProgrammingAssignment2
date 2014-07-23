## Put comments here that give an overall description of what your
## functions do

## the "makeCacheMatrix" function should accept a square matrix and cahce it as a global variable.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                 x <<- y
                 m <<- NULL
                                                   
                }
        get <- function(x) x
        setmatrix <- function(x = matrix()) m <<- setmatrix
        getmatrix <- function() m
                                           
        list( set = set,  get = get, getmatrix = getmatrix,setmatrix  = setmatrix)

}


## The "cacheSolve" function will take the matrix stored as a variable from the previous function and will
## find the inverse of the matrix using the "solve" function. 

cacheSolve <- function(x, ...) {
        
        data <- x$get
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        m <- solve(data, ...)
        x$setmatrix(m)
        m
}
