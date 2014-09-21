## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## this creates list which contains the funtion to set and then get the value of the matrix
## this sets the value of the inverse matrix and gets the value of inverse matrix
makeCacheMatrix <- function(x = matrix()) {
  MInv<- NULL
  set<- function(y){
    
    x<<- y
    MInv<<- NULL
      
  }
  get<- function()x
  setMInv<- function(inverse) MInv<<- inverse
  getMInv<- function() MInv
  list(set=set, get=get, setMInv=setMInv, getMInv=getMInv)
}


## Write a short comment describing this function

## This function returns the inverse of the Matrix. First it checks if the Inverse has been calculated
## if so, it gets the inverse from the cache and skips computation of the inverse
## Else it computes the inverse of the matrix and sets the inverse of matrix in cache using setMInv function


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  MInv<-x$getMInv()
  if(!is.null(MInv)) {
    message("getting cached inverse of matrix")
    return(MInv)
  }
  data<-x$get()
  MInv<- solve(data)
  x$setMInv(MInv)
  MInv
}
