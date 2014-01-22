\name{Rtsne}
\alias{Rtsne}
\title{Barnes-Hut implementation of t-Distributed Stochastic Neighbor Embedding}
\usage{
Rtsne(X, initial_dims = 50, perplexity = 30, theta = 0.5,
  check_duplicates = TRUE)
}
\arguments{
  \item{X}{Data matrix}

  \item{initial_dims}{the number of dimensions that should
  be retained in the initial PCA step (default: 50)}

  \item{perplexity}{Perplexity parameter}

  \item{theta}{Speed/accuracy trade-off (increase for less
  accuracy) (default: 0.5)}

  \item{check_duplicates}{Checks whether duplicates are
  present. It is best to make sure there are no duplicates
  present and set this option to FALSE, especially for
  large datasets (default: TRUE)}
}
\value{
list with the following elements: \item{Y}{Matrix
constaining the new representations for the objects}
\item{N}{Number of objects} \item{origD}{Original
Dimensionality before TSNE} \item{perplexity}{See above}
\item{theta}{See above}
}
\description{
Wrapper for the C++ implementation of Barnes-Hut
t-Distributed Stochastic Neighbor Embedding
}
\details{
After checking the correctness of the input, this function
does an initial reduction of the feature space using
\code{\link{princomp}} , before calling the C++ TSNE
implementation.
}
\examples{
iris_unique <- unique(iris) # Remove duplicates
tsne_out <- Rtsne(as.matrix(iris_unique[,1:4])) # Run TSNE
plot(tsne_out$Y,col=iris$Species) # Plot the result
}
\references{
L.J.P. van der Maaten. Barnes-Hut-SNE. In Proceedings of
the International Conference on Learning Representations,
2013.
}
