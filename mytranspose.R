#Transpose

mytranspose <- function(x) {
  if (is.matrix(x)){
    x <- as.matrix(x)
    y <- matrix(1, nrow=ncol(x), ncol = nrow(x))
    for(i in 0:nrow(x)) {
      for(j in 0:ncol(x)) {
        y[j,i] <- x[i,j]
      }
    }
    y <- as.matrix(y)
    return(y)
  }
  else if (is.vector(x)){
    x <- as.matrix(x)
    y <- matrix(1, nrow=ncol(x), ncol = nrow(x))
    for(i in 0:nrow(x)) {
      for(j in 0:ncol(x)) {
        y[j,i] <- x[i,j]
      }
    }
    y <- as.matrix(y)
    return(y)
  }
  else if (is.data.frame(x)){
    x <- as.matrix(x)
    y <- matrix(1, nrow=ncol(x), ncol = nrow(x))
    for(i in 0:nrow(x)) {
      for(j in 0:ncol(x)) {
        y[j,i] <- x[i,j]
      }
    }
    y <- as.matrix(y)
    return(y)
  }

  else if (is.null(x)){
    return("null")
    }
}

##Matrix
myvar1 <- matrix(1:10, nrow=5, ncol=2)
myvar1
mytranspose(myvar1)

myvar2 <- matrix(NA, nrow=0, ncol=0)
myvar2
mytranspose(myvar2)

myvar3 <- matrix(c(1,2), nrow=1, ncol=2)
myvar3
mytranspose(myvar3)

myvar4 <- matrix(c(1,2), nrow=2, ncol=1)
myvar4
mytranspose(myvar4)

##Vectors
myvar5 <- c(1,2,NA,3)
myvar5
mytranspose(myvar5)

myvar6 <- c(NA)
myvar6
mytranspose(myvar6)

myvar7 <- c()
myvar7
mytranspose(myvar7)

##Dataframe
d <- c(1, 2, 3, 4)
e <- c("red", "white", "red", NA)
f <- c(TRUE, TRUE, TRUE, FALSE)
mydata <- data.frame(d, e, f)
mydata
mytranspose(mydata)
