

makeCacheMatrix <- function(x = matrix()) {

  m<-NULL


  ## set the matrix

  set<-function(y){

    x<<-y

    m<<-NULL

  }

  ## get the matrix

  get <- function() {

    ## Return the matrix

    x

  }

 ##set inverse function

  setInverse <- function(inverse) {

    in <<- inverse

  }

  ## Method to get the inverse of the matrix

  getInverse <- function() {

    ## Return the inverse property

    m

  }

  ## Return a list
  list(set = set, get = get,setInverse = setInverse, getInverse = getInverse)


}



cacheSolve <- function(x, ...) {

        ## Return an inverse of x matrix that is the inverse of 'x'

        m <- x$getInverse()

        ## Return the inverse if its already set

        if( !is.null(m) ) {

          message("getting cached data")

          return(m)

        }

        ## get the matrix 

        data <- x$get()

        ##  use matrix multiplication

        m <- solve(data) %*% data

        ## Set the inverse to the object

        x$setInverse(m)

        ## Return the matrix

        m      

}