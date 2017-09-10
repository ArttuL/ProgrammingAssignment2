## Put comments here that give an overall description of what your
## functions do
#Arttu Lehtinen
#makeCacheMatrix generates a list that is used to cache inverted matrixes
#cacheSolve looks first if an matrix is ineverted already an returns its value if it is. If the matrix
#is not found from cache, it is inverted and saved to the cache


## Write a short comment describing this function
#generates a list for cahced matrixes
makeCacheMatrix <- function(x = matrix()) {

im <- NULL
	set <- function(y) {
    
 		x <<- y
     
           	im <<- NULL
        
	}
   
	get <- function() x
   
	setinvm <- function(invm) im <<- invm
  
	getinvm <- function() im
  
	list(set = set, get = get,
   
	setinvm = setinvm,
      
	getinvm = getinvm)



}


## Write a short comment describing this function
#Returns the inverse of X. Checks if  matrix x is already inverted, if not inverts it an caches it before return.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

im <- x$getinvm()
 
	if(!is.null(im)) {
  
	message("getting cached data")
 
		return(im)
   
     }
      
  data <- x$get()
 
       im <- solve(data, ...)
  
      x$setinvm(im)
   
     im



}
