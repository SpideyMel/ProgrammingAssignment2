makeVector <- function(average = numeric()) {
        a <- NULL
        set <- function(y) {
                average <<- y
                a <<- NULL
        }
        get <- function() a
        setmean <- function(mean) a <<- mean
        getmean <- function() a
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}


cachemean <- function(c, ...) {
         cache <- b$getmean()
         if(!is.null(cache)) {
 message("Cached data is good")
 return(cache)
         }
 data <- c$get()
 cache <- mean(data, ...)
 b$setmean(cache)
 cache
 }


makeCacheMatrix <- function(i = matrix()) {
# Matrix i is empty
	inverse <- NULL

# Inverse has a NULL value
	set <- function(r){
	i <<- r 
# Giving i something to argue about

	inverse <<- NULL
# Inverse is re-set to NULL once you ring up the set function
	}
	get <- function() i
# Matrix brings back values once get function is called

	setInverse <- function(correct) inverse <<- correct
# Previous value of inverse is wiped out of existence with new argument # value

	getInverse <- function()inverse
# Inverse value is returned

	list(set = set, get = get, 
	setInverse = setInverse, 
	getInverse = getInverse)
# Function list is created

}

}
