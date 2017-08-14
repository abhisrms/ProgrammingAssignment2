## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Function creates a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  
  ## Inverse matrix initialization  
  inv<- NULL
  ## Set input matrix
  set <- function (y)
  {
    x <- y
    inv <- NULL
}
## Obtaining input matrix
get <- function () X 

## Setting inverse matrix
SetInvMatrix <- function(Inversematrix) inv <<- Inversematrix
## Obtaining inverse matrix
GetInvMatrix  <- function() inv 
## Creating result list
list(Set=set, 
     get=get,
     SetInvMatrix=SetInvMatrix, 
     GetInvMatrix=GetInvMatrix )
}


## Function computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above. 
## If the inverse has already been calculated , 
## then the cachesolve should retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ## Obtaining inverse matrix or NULL from object x
  
  inv <- x$GetInvMatrix
  
  if (!is.null(inv)) { 
  message("getting cached data")
  return(invisible(inv))
}
## Calculating inverse matrix if invM is NULL
data < x$get 

inv <- solve (data,...)

x$SetInvMatrix 
## Return a matrix that is the inverse of 'x'
invisible(inv)
}
  
}
