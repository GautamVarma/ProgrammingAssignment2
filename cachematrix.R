## This program contains two function ...the purpose is to take an 
## input matrix and return its inverse matrix

## this function defines functions used to load the input matrix and inverse 
## into cache for later use & to retrieve them when needed

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  
  get <- function()    x
  
  setinverse <- function(xinv)     inv <<- xinv
  
  getinverse <- function()  inv
  
  list (set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## this function evaluate the cache --if present then returns the cached value  
## otherwise it calculates it

cacheSolve <- function(x, ...) {
        ## returns the cached inverse matrix value
  z <- x$getinverse()
  
  if (!is.null(z)) 
  {
  message("getting cached value")
  return (z)
    }
  
  xinv<-solve(x$get(),...)
  x$setinverse(xinv)
  return(xinv)
}
