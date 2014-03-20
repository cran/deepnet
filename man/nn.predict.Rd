\name{nn.predict}
\alias{nn.predict}
\title{Predict new samples by Trainded NN}
\usage{
nn.predict(nn, x)
}
\arguments{
  \item{nn}{nerual network trained by function nn.train}

  \item{x}{new samples to predict}
}
\value{
return raw output value of neural network.For
classification task,return the probability of a class
}
\description{
Predict new samples by Trainded NN
}
\examples{
Var1 <- c(rnorm(50, 1, 0.5), rnorm(50, -0.6, 0.2))
Var2 <- c(rnorm(50, -0.8, 0.2), rnorm(50, 2, 1))
x <- matrix(c(Var1, Var2), nrow = 100, ncol = 2)
y <- c(rep(1, 50), rep(0, 50))
nn <- nn.train(x, y, hidden = c(5))
## predict by nn
test_Var1 <- c(rnorm(50, 1, 0.5), rnorm(50, -0.6, 0.2))
test_Var2 <- c(rnorm(50, -0.8, 0.2), rnorm(50, 2, 1))
test_x <- matrix(c(test_Var1, test_Var2), nrow = 100, ncol = 2)
yy <- nn.predict(nn, test_x)
}
\author{
Xiao Rong
}
