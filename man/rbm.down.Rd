\name{rbm.down}
\alias{rbm.down}
\title{Generate visible vector by hidden units states}
\usage{
rbm.down(rbm, h)
}
\arguments{
  \item{rbm}{an rbm object trained by function train.rbm}

  \item{h}{hidden units states}
}
\value{
generated visible vector
}
\description{
Generate visible vector by hidden units states
}
\examples{
Var1 <- c(rep(1, 50), rep(0, 50))
Var2 <- c(rep(0, 50), rep(1, 50))
x3 <- matrix(c(Var1, Var2), nrow = 100, ncol = 2)
r1 <- rbm.train(x3, 3, numepochs = 20, cd = 10)
h <- c(0.2, 0.8, 0.1)
v <- rbm.down(r1, h)
}
\author{
Xiao Rong
}
