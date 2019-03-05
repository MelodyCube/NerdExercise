library(mosaic)
#For shuffle

## Numbers
n = 6
#Number of columns I want to practice with (I definitely have up to 40 down, and 50 im getting at!
#60 will make sure I'm actually doing mental math at this point.)

Nums <- shuffle(1:(n*10))
#Creates numbers

NumsMatrix <- matrix(Nums, nrow = n, ncol = 10)
#Puts numbers in a nice readable format

for (i in 1:(n*10)) {
  if(as.numeric(NumsMatrix[i]) < 10) {
    NumsMatrix[i] <- paste(NumsMatrix[i], " ", sep = "")
  } else {
    NumsMatrix[i] <- toString(NumsMatrix[i])
  }
}
#Converts to Strings and adds spaces for easier reading

write.table(NumsMatrix, file = "Numbers.txt", row.names = FALSE, col.names = FALSE, sep = " | ", quote = FALSE)
#Writes it to a file.

## @Squares

Squares <- Nums*Nums
#Creates squares

SquaresMatrix <- matrix(Squares, nrow = n, ncol = 10)
#Puts squares in a nice readable format

for (i in 1:(n*10)) {
  for (j in 1:4) {
    if (as.numeric(SquaresMatrix[i]) < (10^j) & as.numeric(SquaresMatrix[i]) >= (10^(j-1))) {
      SquaresMatrix[i] <- paste(SquaresMatrix[i], paste(rep(" ", 4-j), collapse = ""), sep = "")
    } else {
      SquaresMatrix[i] <- toString(SquaresMatrix[i])
    }
  }
}
#Converts to Strings and adds spaces for easier reading

write.table(SquaresMatrix, file = "Solutions.txt", row.names = FALSE, col.names = FALSE, sep = " | ", quote = FALSE)
#Writes it to a file.

## Ordered
# Could probably optimize by only running if n changes but w/e idk how to do that rn

OrderedSquaresMatrix <- matrix((1:(n*10)*(1:(n*10))), nrow = 10, ncol = n)
#Matrix of Squares in order. (nrow and ncol swapped for transpose which comes later)

for (i in 1:(n*10)) {
  for (j in 1:4) {
    if (as.numeric(OrderedSquaresMatrix[i]) < (10^j) & as.numeric(OrderedSquaresMatrix[i]) >= (10^(j-1))) {
      OrderedSquaresMatrix[i] <- paste(OrderedSquaresMatrix[i], paste(rep(" ", 4-j), collapse = ""), sep = "")
    } else {
      OrderedSquaresMatrix[i] <- toString(OrderedSquaresMatrix[i])
    }
  }
}
#Converts to Strings and adds spaces for easier reading

OrderedSquaresMatrix <- t(OrderedSquaresMatrix)
#Gets transpose for easier reading

write.table(OrderedSquaresMatrix, file = "OrderedSolutions.txt", row.names = FALSE, col.names = FALSE, sep = " | ", quote = FALSE)
#Writes it to a file.
