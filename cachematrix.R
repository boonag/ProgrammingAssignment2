## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## creates a list of 4 functions to 
## 1. set the value of teh matrix
## 2. get the value of the matrix
## 3. solve the value of the inversed matrix
## 4. get value of the inversed matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmtx <- function(invm) m <<- invm
  getmtx <- function() m
  list(set = set, get = get,
       setmtx = setmtx,
       getmtx = getmtx)
}


## Write a short comment describing this function
## gets the matrix that the inverse has been solved
## and checks whether it is null, 
## if not null returns the matrix.
## if the above condition failed (matrix has not been invesed)
## gets the origional matrix, solves the inverse
## then sets the inversed matrix variable

cacheSolve <- function(x, ...) {
  m <- x$getmtx()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setmtx(m)
  m
}
