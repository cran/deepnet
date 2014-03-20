\name{rbm.up}
\alias{rbm.up}
\title{Infer hidden units state by visible units}
\usage{
rbm.up(rbm, v)
}
\arguments{
  \item{rbm}{an rbm object trained by function train.rbm}

  \item{v}{visible units states}
}
\value{
hidden units states
}
\description{
Infer hidden units states by visible units
}
\examples{
Var1 <- c(rep(1, 50), rep(0, 50))
Var2 <- c(rep(0, 50), rep(1, 50))
x3 <- matrix(c(Var1, Var2), nrow = 100, ncol = 2)
r1 <- rbm.train(x3, 3, numepochs = 20, cd = 10)
v <- c(0.2, 0.8)
h <- rbm.up(r1, v)
}
\author{
Xiao Rong
}
