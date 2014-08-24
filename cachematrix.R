## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function will creates an R-Object having four functions;
## 1.set vector
## 2.get vector
## 3.set mean
## 4.get mean
## Purpose of having this fucntion is to store the vector and its mean. 

makeCacheMatrix <- function(m = matrix()) {
    
    ## initiate a null inverse matrix
    im <- NULL 
    
    ## set and get matrix methods
    setmatrixvalue <- function (ymat){
      
      m <<- ymat
      im <- null
      
    }
    get <- function () m
    
    ## set and get inverse matrix method
    setinverse <- function (solve) im <<- solve
    getinverse <- function () im
    
   list (setmatrixvalue = setmatrixvalue, get = get, setinverse = setinverse, getinverse = getinverse)
        
}


## cacheSolve functions takes a matrix a returns its inverse. This is done by using solve function in R
## cachesolve first checks if inverse of matrix is already calculated, if so it returns the cached value else
## it would freshly calculate the inverse of the matrix

cacheSolve <- function(x, ...) {
    
    ## Return a matrix that is the inverse of 'x'
    im <- x$getinverse()
    
    if (!is.null(im)){
      message ("getting inverse matrix")
      return (im)
            
    }
    
    data <- x$get()
    ##return (data)
    im <- solve (data) %*% data
    x$setinverse(im)
    im
  

}






