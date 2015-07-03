\name{summary.fr}
\alias{summary.fr}
\alias{lik.ci}
\title{
  Likelihood-Based Confidence Intervals Based on fr Object
}
\description{
  Prints confidence limits based on the Wald statistic, the likelihood root, and the modified likelihood root, for a default two-sided 0.95 confidence interval. It also prints the point estimate based on these 3 statitics. Summary.fr is a compatibility wrapper for \code{lik.ci}, to which it is identical.
}
\usage{
\method{summary}{fr}(object, conf = c(0.975, 0.025), \dots)
lik.ci(object, conf = c(0.975, 0.025), \dots)
}
\arguments{
  \item{object}{
    A fr object
  }
  \item{conf}{
    Confidence levels for which limits are required
  }
  \item{\dots}{
    Absorbs any additional parameter.
  }
}
\value{
  List containing the following quantities:
  \item{mle}{
    MLE and its asymptotic standard error
  }
  \item{mle.hoa}{
    Modified MLE and its asymptotic standard error
  }
  \item{pointEst.z}{
    Point estimate for psi based on Wald pivot \code{z}
  }
  \item{pointEst.r}{
    Point estimate for psi based on likelihood root \code{r}
  }
  \item{pointEst.rstar}{
    Point estimate for psi based on modified likelihood root \code{rstar}
  }
  \item{z.lims}{
    Confidence limits based on Wald pivot \code{z}
  }
  \item{r.lims}{
    Confidence limits based on likelihood root \code{r}
  }
  \item{rstar.lims}{
    Confidence limits based on modified likelihood root \code{rstar}
  }
}
\references{
  Brazzale, A. R., Davison, A. C. and Reid, N. (2007).  \emph{Applied Asymptotics: Case Studies in Small-Sample Statistics}.  Cambridge University Press, Cambridge. 

See also \url{http://statwww.epfl.ch/AA}.
}
\author{
  Anthony Davison <Anthony.Davison@epfl.ch>
}
\seealso{ 
  \code{\link{tem}} 
}
\examples{
## See the examples to \link{tem}.
}
\keyword{models}
\keyword{htest}
