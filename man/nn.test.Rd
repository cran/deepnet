\name{nn.test}
\alias{nn.test}
\title{Test new samples by Trainded NN}
\usage{
nn.test(nn, x, y, t = 0.5)
}
\arguments{
  \item{nn}{nerual network trained by function nn.train}

  \item{x}{new samples to predict}

  \item{y}{new samples' label}

  \item{t}{threshold for classification. If nn.predict
  value >= t then label 1,else label 0}
}
\value{
error rate
}
\description{
Test new samples by Trainded NN,return error rate for
classification
}
\examples{
Var1 <- c(rnorm(50, 1, 0.5), rnorm(50, -0.6, 0.2))
Var2 <- c(rnorm(50, -0.8, 0.2), rnorm(50, 2, 1))
x <- matrix(c(Var1, Var2), nrow = 100, ncol = 2)
y <- c(rep(1, 50), rep(0, 50))
nn <- nn.train(x, y, hidden = c(5))
test_Var1 <- c(rnorm(50, 1, 0.5), rnorm(50, -0.6, 0.2))
test_Var2 <- c(rnorm(50, -0.8, 0.2), rnorm(50, 2, 1))
test_x <- matrix(c(test_Var1, test_Var2), nrow = 100, ncol = 2)
err <- nn.test(nn, test_x, y)
}
\author{
Xiao Rong
}
