\name{dbn.dnn.train}
\alias{dbn.dnn.train}
\title{Training a Deep neural network with weights initialized by DBN}
\usage{
dbn.dnn.train(x, y, hidden = c(1), activationfun = "sigm", learningrate = 0.8, 
    momentum = 0.5, learningrate_scale = 1, output = "sigm", numepochs = 3, 
    batchsize = 100, hidden_dropout = 0, visible_dropout = 0, cd = 1)
}
\arguments{
  \item{x}{matrix of x values for examples}

  \item{y}{vector or matrix of target values for examples}

  \item{hidden}{vector for number of units of hidden
  layers.Default is c(10).}

  \item{activationfun}{activation function of hidden
  unit.Can be "sigm","linear" or "tanh".Default is "sigm"
  for logistic function}

  \item{learningrate}{learning rate for gradient descent.
  Default is 0.8.}

  \item{momentum}{momentum for gradient descent. Default is
  0.5 .}

  \item{learningrate_scale}{learning rate will be mutiplied
  by this scale after every iteration. Default is 1 .}

  \item{numepochs}{number of iteration for samples Default
  is 3.}

  \item{batchsize}{size of mini-batch. Default is 100.}

  \item{output}{function of output unit, can be
  "sigm","linear" or "softmax". Default is "sigm".}

  \item{hidden_dropout}{drop out fraction for hidden layer.
  Default is 0.}

  \item{visible_dropout}{drop out fraction for input layer
  Default is 0.}

  \item{cd}{number of iteration for Gibbs sample of CD
  algorithm.}
}
\description{
Training a Deep neural network with weights initialized by
DBN
}
\examples{
Var1 <- c(rnorm(50, 1, 0.5), rnorm(50, -0.6, 0.2))
Var2 <- c(rnorm(50, -0.8, 0.2), rnorm(50, 2, 1))
x <- matrix(c(Var1, Var2), nrow = 100, ncol = 2)
y <- c(rep(1, 50), rep(0, 50))
dnn <- dbn.dnn.train(x, y, hidden = c(5, 5))
## predict by dnn
test_Var1 <- c(rnorm(50, 1, 0.5), rnorm(50, -0.6, 0.2))
test_Var2 <- c(rnorm(50, -0.8, 0.2), rnorm(50, 2, 1))
test_x <- matrix(c(test_Var1, test_Var2), nrow = 100, ncol = 2)
nn.test(dnn, test_x, y)
}
\author{
Xiao Rong
}
