## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  
  get <- function()    x
  
  setinverse <- function(xinv) {
    inv <<- xinv
  }
  
  getinverse <- function()  inv
  
  list (set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  z <- x$getinverse()
  
  if (!is.null(z)) 
  {
  message("getting cached value")
  return (z)
    }
  else
   
  xinv<-solve(x$get(),...)
  x$setinverse(xinv)
  
  return(xinv)
}
