\name{cond.object}
\alias{cond.object}
\title{
  Approximate Conditional Inference Object
}
\description{
  Class of objects returned when performing approximate conditional
  inference for logistic and loglinear models.
}
\arguments{
  Objects of class \code{cond} are implemented as a list.  The 
  following components are included: 
  \item{workspace}{
    a list whose elements are the spline interpolations of several 
    first order and higher order statistics. They are used to
    implement the following likelihood quantities:

      - the profile and modified profile log likelihoods;

      - the Wald pivots from the unconditional and conditional 
        \acronym{MLE}s;
 
      - the profile and modified likelihood roots (the latter one
        with a suitable continuity correction);

      - the Lugannani-Rice tail area approximation (with suitable 
        continuity correction);

      - the correction term used in the higher order statistics;

      - the information and nuisance parameter aspects.
        
    Method functions work mainly on this part of the object.  In order
    to avoid errors in the calculation of confidence intervals and
    tail probabilities, this part of the object should not be 
    modified.
  }
  \item{coefficients}{
    a \eqn{2\times 2}{2x2} matrix containing the unconditional and 
    approximate conditional \acronym{MLE}s and their standard errors.
  }
  \item{call}{
    function call that created the \code{cond} object.
  }
  \item{formula}{
    the model formula.
  }
  \item{family}{
    the variance function.
  }
  \item{offset}{
    the covariate occurring in the model formula whose coefficient 
    represents the parameter of interest.
  }
  \item{diagnostics}{
    diagnostics related to the decomposition of the higher order
    adjustments into an information and a nuisance parameters term. 
    A value larger than 0.2 in absolute value is an index that 
    higher order methods are needed.  See \cite{Pierce and Peters 
    (1992)} for details.
  }
  \item{n.approx}{
    number of output points that have been calculated exactly. 
  }
  \item{omitted.val}{
    range of values omitted in the spline interpolation of some of the
    higher order statistics considered.  The aim is to avoid 
    numerical instabilities around the maximum likelihood estimate.
  }
  \item{is.scalar}{
    a logical value indicating whether there are any nuisance 
    parameters.  If \code{FALSE} there are none.
  }
  Main references for the methods considered are the papers by 
  \cite{Pierce and Peters (1992)} and \cite{Davison (1988)}.  More 
  details on the implementation and the methods considered are given
  in \cite{Brazzale (1999, 2000)}.
}
\section{Generation}{
  This class of objects is returned from calls to the function 
  \code{\link{cond.glm}}. 
}
\section{Methods}{
  The class \code{cond} has methods for \code{\link[base]{summary}}, 
  \code{\link[graphics]{plot}}, \code{\link[base]{print}}, 
  \code{\link[stats]{coef}} and \code{\link[stats]{family}}, amongst 
  others.
}
\references{
  Brazzale, A. R. (1999) Approximate conditional inference for 
  logistic and loglinear models.  \emph{J. Comput. Graph. Statist.}, 
  \bold{8}, 653--661.

  Brazzale, A. R. (2000) \emph{Practical Small-Sample Parametric
  Inference}, Ph.D. Thesis N. 2230, Department of Mathematics, Swiss
  Federal Institute of Technology Lausanne.

  Davison, A. C. (1988) Approximate conditional inference in 
  generalized linear models.  \emph{J. R. Statist. Soc.} B, 
  \bold{50,} 445--461.

  Pierce, D. A. and Peters, D. (1992) Practical use of higher order 
  asymptotics for multiparameter exponential families (with 
  Discussion).  \emph{J. R. Statist. Soc.} B, \bold{54}, 701--737.
}
\seealso{
  \code{\link{cond.glm}}, \code{\link{summary.cond}}, 
  \code{\link{plot.cond}}
}
\keyword{models}
\keyword{regression}
\keyword{classes}



