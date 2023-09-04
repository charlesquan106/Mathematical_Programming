# Exercise

# 1. Let x = sin(x1^2 + 2*x2), where
#    x1 = c(1,..., 10), x2 = c(1, 3,..., 19).
#    Find the maximum value in x that are < 0.5

x1 <- 1:10
x2 <- seq(1, 19, by = 2)

f <- function(x1, x2){
 y = sin(x1^2 + 2*x2)
 return(y)
}
x <- f(x1, x2)
max(x[x < 0.5])




# 2. Let A be the 2 x 3 matrix filled with 1:6 by columns.
#    Let B be the 2 x 3 matrix filled with 6:1 by rows.
#    X1 is obtained by combining A, B, B, A by rows.
#    Find the maximum value of columns sums of X1.

A <- matrix(1:6, 2, 3)
B <- matrix(6:1, 2, 3, byrow = T)
X1 <- rbind(A, B, B, A)
max(colSums(X1))




# 3. Find the maximum value of solutions for
#    3x +   2y -  z =  1
#    2x -   2y + 4z = -2
#    -x + 0.5y -  z =  0

A <- rbind(c(3, 2, -1),
           c(2, -2, 4),
           c(-1, 0.5, -1))
b <- c(1, -2, 0)
max(solve(A, b))




# 4. Create the data frame X containing columns x1, x2, where
#    x1 = 1:7, x2 = c("a",...,"g")

x1 <- 1:7
x2 <- letters[1:7]
X <- data.frame(x1, x2)




# 5. Display the graphs of the functions
#    y = x^2 * sin(x) over the the interval (-3, 3) 
#    y = exp(-0.5 * x^2) over the interval (-3, 3)
#    in one graph window.

f1 <- function(x){
 y = x^2 * sin(x)
 return(y)
}

f2 <- function(x){
 y = exp(-0.5 * x^2)
 return(y)
}

windows(h = 8, w = 16)
par(mfcol = c(1, 2))
curve(f1, -3, 3, main = "y = x^2 * sin(x)")
curve(f2, -3, 3, main = "y = exp(-0.5 * x^2)")




