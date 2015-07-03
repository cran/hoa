\name{tem}
\alias{tem}
\alias{fraser.reid}
\title{
  Tangent exponential model: Higher Order Likelihood Approximation
}
\description{
  This function computes the tangent exponential model approximation for higher order likelihood inference about a scalar interest parameter of a parametric model.  The function creates an object of class \code{fr}.
}
\usage{
  tem(psi = NULL, nlogL, phi, make.V, th.init, data, 
              tol = 10^(-5), n.psi = 50)
}
\arguments{
  \item{psi}{
    A scalar value for the interest parameter.  If \code{NULL} (the default) the vector is taken as a grid of values centred on the maximum likelihood estimate (MLE).
  }
  \item{nlogL}{
    A function to compute the negative log likelihood for the model of interest.  It is a function of three quantities: \code{psi} is the scalar interest parameter, \code{lam} is the scalar or vector nuisance parameter, and \code{data} is the data.  See below for an example.
  }
  \item{phi}{
    A function to compute the canonical parameter of a local exponential family approximation to the density of interest.  It requires values of the parameter \code{theta} = (\code{psi},\code{lam}), the quantities \code{V}, and the data \code{data}.  The output is a vector of the same length as \code{theta}.
  }
  \item{make.V}{
    A function to compute \code{V}, using as input the parameter \code{theta} = (\code{psi},\code{lam}) and the data \code{data}.  The output is a matrix whose rows correspond to individual observations, and whose columns correspond to the elements of \code{theta}.
  }
  \item{th.init}{ 
    Initial value(s) of the parameter \code{theta}.
  }
  \item{data}{
    Data frame or other object containing the data.
  }
  \item{tol}{
    Tolerance used for numerical differentiation of \code{phi}.
  }
  \item{n.psi}{
    Number of values of \code{psi} at which the likelihood is computed, if \code{psi} is \code{NULL}. Avoid odd values, which may give numerical instabilities near the MLE.
  }
}
\details{
  The function computes quantities used for higher order likelihood approximations, which are intended to provide highly accurate inferences on scalar parameters in parametric statistical models.  The key aspect is maximisation of the likelihood over a grid of values of the interest parameter \code{psi}, and computation of likelihood modifications based on local exponential family approximation to the density.  If \eqn{n}{n} is the sample size, then the resulting inferences should be accurate to order \eqn{n^{-3/2}}{n^(-3/2)} in continuous models and to order \eqn{n^{-1}}{n^(-1)} in discrete models, and in many cases they are very close to exact results.  The approximations rely on numerical computation of observed information matrices and of derivatives, and may fail in certain cases.  The confidence intervals themselves and useful plots are produced using the functions \code{summary} and \code{plot}.  For technical background and further details, see Sections 2.4 and 8.4.2 of the book cited below, which has many further references.
}
\value{
  \item{normal}{
    The MLE of the interest parameter, and its standard error
  }
  \item{th.hat}{
    MLEs of parameters (\code{psi},\code{lam})
  }
  \item{th.hat.se}{
    Standard errors of MLEs, based on observed information
  }
  \item{th.rest}{
    Restricted MLEs (\code{psi},\code{lam}) on grid of values of \code{psi}
  }
  \item{r}{
    Values of likelihood root corresponding to \code{psi}
  }
  \item{psi}{
    Values of interest parameter \code{psi}
  }
  \item{q}{
    Values of likelihood modification
  }
  \item{rstar}{
    Values of modified likelihood root
  }
}
\references{
  Brazzale, A. R., Davison, A. C. and Reid, N. (2007).  \emph{Applied Asymptotics: Case Studies in Small-Sample Statistics}.  Cambridge University Press, Cambridge. 

See also \url{http://statwww.epfl.ch/AA}.
}
\author{
  Anthony Davison <Anthony.Davison@epfl.ch>
  Alex-Antoine Fortin <alex@fortin.bio>
}
\seealso{ 
\code{\link{plot.fr}}, \code{\link{summary.fr}}, \code{\link{lik.ci}} 
}
\examples{
# Cost data example from Section 3.5 of "Applied Asymptotics"	
cost <- data.frame(
          f = factor( c(rep(1,13), rep(2,18)) ),
          y = c( 30,172,210,212,335,489,651,1263,1294,1875,2213,2998, 
                 4935,121,172,201,214,228,261,278,279,351,561,622,
                 694,848,853,1086,1110,1243,2543 ) )  
nlogL <- function(psi, lam, data)  { 
  s1 <- exp(lam[2])
  m2 <- lam[1]
  s2 <- exp(lam[3])
  m1 <- psi + m2 + s2^2/2 - s1^2/2
  -sum( dnorm(log(data$y), mean=ifelse(data$f==1, m1, m2),
  	                sd=ifelse(data$f==1, s1, s2), log=TRUE) )
}
phi <- function(th, V, data)  {
  psi <- th[1]
  lam <- th[-1]
  s1 <- exp(lam[2])
  m2 <- lam[1]
  s2 <- exp(lam[3])
  m1 <- psi + m2 + s2^2/2 - s1^2/2
  c( m1/s1^2, 1/s1^2, m2/s2^2, 1/s2^2 ) 
}
make.V <- function(th, data) NULL
cost.lnorm.rat <- tem(psi = NULL, nlogL = nlogL, phi = phi, 
                    make.V = make.V, th.init = c(0, 5, 2, 5), data = cost)
plot(cost.lnorm.rat, psi = 0, all = TRUE)
summary(cost.lnorm.rat)
}
\keyword{models}
\keyword{htest}
