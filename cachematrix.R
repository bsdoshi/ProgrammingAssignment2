## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = numeric()){
  
  invMat <- NULL
  
  set <- function(y){
    x <<- y
    invMat <<- NULL
  }
  get <- function() x
  setInverse <- function(inv) invMat <<- inv
  getInverse <- function() invMat
  
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## Write a short comment describing this function

cacheSolve <- function(x,...) {
  m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached value")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setInverse(m)
  m
}
