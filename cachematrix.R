## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        ## Initialize the inverse property
        i <- NULL
  
        ## Method to set the matrix
        set <- function(matrix){
        m <<- matrix
        i <<- NULL

        }
  
        ## Method to get the matrix
        get <- function(){
        
        ## Return the matrix
        m
        }
  
        ## Method to set the inverse of the matrix
        setInverse <- function(inverse){
        i <<- inverse
        }
  
        ## Method to get the inverse of the matrix
        getInverse <- function(inverse){
        i <<- inverse
        }
  
        ## Return a list of the methods
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
        
        ## Just return the inverse if its already set
        if(!is.null(m)){
            message("getting cached data")
            return(m)
        }
        ## Get the matrix from object
        data <- x$get()
        
        ## Calculate the matrix
        m <- solve(data) %*% data
        
        ## Set the inverse to the object
        x$setInverse(m)
        
        ## Return the matrix
        m
}
