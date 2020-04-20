#Test


##Matrix Test
myvar1 <- matrix(1:10, nrow=5, ncol=2)
all.equal.raw(mytranspose(mytranspose(myvar1)), (myvar1), check.attributes=FALSE)

myvar2 <- matrix(NA, nrow=0, ncol=0)
all.equal.raw(mytranspose(mytranspose(myvar2)), (myvar2), check.attributes=FALSE)

myvar3 <- matrix(c(1,2), nrow=1, ncol=2)
all.equal.raw(mytranspose(mytranspose(myvar3)), (myvar3), check.attributes=FALSE)

myvar4 <- matrix(c(1,2), nrow=2, ncol=1)
all.equal.raw(mytranspose(mytranspose(myvar4)), (myvar4), check.attributes=FALSE)


##Vectors Test
myvar5 <- c(1,2,NA,3)
all.equal.raw(mytranspose(mytranspose(myvar5)), as.matrix(myvar5), check.attributes=FALSE)

myvar6 <- c(NA)
all.equal.character(mytranspose(mytranspose(myvar6)), as.matrix(myvar6), check.attributes=FALSE)

myvar7 <- c()
all.equal.raw(mytranspose(mytranspose(myvar7)), as.matrix("null"), check.attributes=FALSE)


##Dataframe Test
d <- c(1, 2, 3, 4)
e <- c("red", "white", "red", NA)
f <- c(TRUE, TRUE, TRUE, FALSE)
mydata <- data.frame(d, e, f)
all.equal.raw(mytranspose(mytranspose(mydata)), as.matrix(mydata), check.attributes=FALSE)