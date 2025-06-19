## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inve<-NULL
  set<-function(y){
    x<<-y
    inve<<-NULL
  }
  get<-function(){
    x
  }
  setinverse<-function(inver){
    inve<<-inver
  }
  getinverse<-function(){
    inve
  }
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inve <- x$getinverse()
  
  if(!is.null(inve)){
    message("getting cached data")
    return(inve)
  }
  else{
    z<-x$get()
    inve<-solve(z, ...)
    x$setinverse(inve)
    return(inve)
  }
}
