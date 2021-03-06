% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calculate_clustering_metrics.R
\name{calculate_clustering_metrics}
\alias{calculate_clustering_metrics}
\title{Calculate clustering metrics for a confusion matrix}
\usage{
calculate_clustering_metrics(conf_mat)
}
\arguments{
\item{conf_mat}{a confusion matrix, as produced by \code{\link[c2c]{get_conf_mat}}, or otherwise a confusion matrix of the same form.}
}
\value{
A list containing the metrics that can be calculated, see details.
}
\description{
Calculate a range of clustering metrics on a confusion confusion matrix, usually from \code{\link[c2c]{get_conf_mat}}.
}
\details{
Entropy calculated via \code{\link[c2c]{overall_entropy}} and \code{\link[c2c]{class_entropy}}, purity calculated via \code{\link[c2c]{overall_purity}} and \code{\link[c2c]{class_purity}}, percentage agreement calculated via \code{\link[c2c]{percentage_agreement}} (only for confusion matrices of equal dimensions and matching class order)
}
\examples{
# meaningless data, but you get the idea

# compare two soft classifications
my_soft_mat1 <- matrix(runif(50,0,1), nrow = 10, ncol = 5)
my_soft_mat2 <- matrix(runif(30,0,1), nrow = 10, ncol = 3)
# make the confusion matrix and calculate stats
conf_mat <- get_conf_mat(my_soft_mat1, my_soft_mat2)
conf_mat; calculate_clustering_metrics(conf_mat)

# compare a soft classificaiton to a vector of hard labels
my_labels <- rep(c("a","b","c"), length.out = 10)
# utilising labels_to_matrix(my_labels)
conf_mat <- get_conf_mat(my_soft_mat1, my_labels)
conf_mat; calculate_clustering_metrics(conf_mat)

# make one of the soft matrices hard
# utilising get_hard(my_soft_mat2)
conf_mat <- get_conf_mat(my_soft_mat1, my_soft_mat2, make.B.hard = TRUE)
conf_mat; calculate_clustering_metrics(conf_mat)

# two classifications with same number of classes, enables percentage agreement
conf_mat <- get_conf_mat(my_soft_mat1, my_soft_mat1)
conf_mat; calculate_clustering_metrics(conf_mat)

}
\references{
Lyons, Foster and Keith (2017). Simultaneous vegetation classification and mapping at large spatial scales. \emph{Journal of Biogeography}.
}
\seealso{
\code{\link[c2c]{get_conf_mat}}, \code{\link[c2c]{labels_to_matrix}}, \code{\link[c2c]{get_hard}}
}
\author{
Mitchell Lyons
}
\keyword{accuracy}
\keyword{cluster}
\keyword{confusion}
\keyword{matrix,}
\keyword{metrics,}
