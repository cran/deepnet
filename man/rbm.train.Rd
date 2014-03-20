\name{rbm.train}
\alias{rbm.train}
\title{Training a RBM(restricted Boltzmann Machine)}
\usage{
rbm.train(x, hidden, numepochs = 3, batchsize = 100, learningrate = 0.8, 
    learningrate_scale = 1, momentum = 0.5, visible_type = "bin", hidden_type = "bin", 
    cd = 1)
}
\arguments{
  \item{x}{matrix of x values for examples}

  \item{hidden}{number of hidden units}

  \item{visible_type}{activation function of input
  unit.Only support "sigm" now}

  \item{hidden_type}{activation function of hidden
  unit.Only support "sigm" now}

  \item{learningrate}{learning rate for gradient descent.
  Default is 0.8.}

  \item{momentum}{momentum for gradient descent. Default is
  0.5 .}

  \item{learningrate_scale}{learning rate will be mutiplied
  by this scale after every iteration. Default is 1 .}

  \item{numepochs}{number of iteration for samples Default
  is 3.}

  \item{batchsize}{size of mini-batch. Default is 100.}

  \item{cd}{number of iteration for Gibbs sample of CD
  algorithm.}
}
\description{
Training a RBM(restricted Boltzmann Machine)
}
\examples{
Var1 <- c(rep(1, 50), rep(0, 50))
Var2 <- c(rep(0, 50), rep(1, 50))
x3 <- matrix(c(Var1, Var2), nrow = 100, ncol = 2)
r1 <- rbm.train(x3, 10, numepochs = 20, cd = 10)
}
\author{
Xiao Rong
}
