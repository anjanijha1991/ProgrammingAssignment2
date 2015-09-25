## Put comments here that give an overall description of what your
## functions do

## this will cache the matrix and store it

makeCacheMatrix <- function(x) {
  m <- NULL

  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  get <- function() x
  
  setinver <- function(inver) m <<- inver
  
  getinver <- function() m
  
  list(set = set, get = get,
       setinver = setinver,
       getinver = getinver)
}


##This function will return the inverse of matrix cached

cacheSolve <- function(x, ...) {
  m <- x$getinver()
  if(!is.null(m)) {
    
    message("getting cached data")
    return(m)
    
  }

  data <- x$get()
  m <- solve(data, ...)
  x$setinver(m)
  m
}
