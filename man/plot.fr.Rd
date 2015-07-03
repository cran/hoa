\name{plot.fr}
\alias{plot.fr}
\title{
  Plot a fr Object}
\description{
  Produces plots to show how various pivots depend on the parameter of interest \code{psi} and showing its profile log likelihood and modified profile log likelihood. Two further plots are produced if \code{all=TRUE}, and tests are performed if \code{psi} is given a value.
}
\usage{
\method{plot}{fr}(x, psi = NULL, all = FALSE, xl = "Interest parameter", \dots)
}
\arguments{
  \item{x}{
    A Fraser-Reid object, the output of \code{tem}.
  }
  \item{psi}{
    Value of interest parameter \code{psi} for which tests may be required.
  }
  \item{all}{
    Logical, by default two plots are produced, but if \code{all=T} two additional plots are added.
  }
  \item{xl}{
    Character string containing label for abscissa of graphs.
  }
  \item{\dots}{
    Absorbs additional graphical parameters.
  }
}
\details{
  If \code{psi=NULL}, draws graphs showing: (top left) the likelihood root \code{r}, the modified likelihood root \code{rstar}, the Wald pivot \code{z}, and the likelihood modification \code{q} as functions of the parameter \code{psi}; (top right) the profile log likelihood and 
modified profile log likelihood as functions of \code{psi}; (lower left) the significance functions corresponding to the upper left panel; and (lower right) how the modification \code{log(q/r)/r} depends on \code{r}.  If \code{all=FALSE} (the default) only the upper two graphs are plotted. The lower left panel is a transformation of that above it, and the lower right panel is intended as a possible diagnostic of failure of the asymptotic approximations; it should be a smooth function of \code{r}.

If \code{psi} is given a (single, scalar) value, then the significance functions for the Wald statistic, the likelihood root, and the modified likelihood root, are evaluated at this value, providing p-values for testing against larger values of \code{psi}.
}
\value{
  See the details above.
}
\references{
  Brazzale, A. R., Davison, A. C. and Reid, N. (2007).  \emph{Applied Asymptotics: Case Studies in Small-Sample Statistics}.  Cambridge University Press, Cambridge. 

See also \url{http://statwww.epfl.ch/AA}. 
}
\author{
  Anthony Davison <Anthony.Davison@epfl.ch>
}
\seealso{ 
  \code{\link{tem}}, \code{\link{summary.fr}}, \code{\link{lik.ci}} 
}
\examples{
## See the examples to \link{tem}.
}
\keyword{models}
\keyword{htest}
