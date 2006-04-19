\name{summary.cond}
\alias{summary.cond}
\title{
  Summary Method for Objects of Class ``cond''
}
\description{
  Returns a summary list for objects of class \code{cond}.
}
\usage{
\method{summary}{cond}(object, alpha = 0.05, test = NULL, all = FALSE, coef = TRUE, 
        int = ifelse( (is.null(test) || all), TRUE, FALSE), 
        digits = NULL, \dots)
}
\arguments{
  \item{object}{
    a \code{cond} object.  This is assumed to be the result returned 
    by the \code{\link{cond.glm}} function.
  }
  \item{alpha}{
    vector of levels for confidence intervals.  The default is 5\%.
  }
  \item{test}{
    vector of values of the parameter of interest one wants to test
    for.  If \code{NULL}, no test is performed.  The default is 
    \code{NULL}.
  }
  \item{all}{
    logical value; if \code{TRUE}, all the information stored in the 
    \code{summary.cond} object is printed, else only a subset of it.  
    The default is \code{FALSE}.
  }
  \item{coef}{
    logical value; if \code{TRUE}, the unconditional and conditional 
    parameter estimates are printed.  The default is \code{TRUE}.
  }
  \item{int}{
    logical value; if \code{TRUE} confidence intervals are printed.  
    The default is \code{TRUE}.
  }
  \item{digits}{
    number of significant digits to be printed.  The default depends 
    on the value of \code{digits} set by \code{options}.
  }
  \item{\dots}{
    absorbs any additional argument.
  }
}
\details{
  This function is a method for the generic function \code{summary()} 
  for objects of class \code{cond}.  It can be invoked by calling 
  \code{summary} or directly \code{summary.cond} for an object of the 
  appropriate class.
}
\value{
  A list is returned with the following components.
  \item{coefficients}{
    a \eqn{2\times 2}{2x2} matrix containing the unconditional and 
    approximate conditional \acronym{MLE}s and their standard errors.
  }
  \item{conf.int}{
    a matrix containing, for each level given in \code{alpha}, the 
    upper and lower confidence bounds derived from several first- and 
    higher order test statistics.  One-sided and two-sided confidence 
    intervals are considered.  See \code{\link{cond.object}} for 
    details on the test statistics.
  }
  \item{signif.tests}{
    a list with two elements.  The first (\code{stats}) contains, for 
    each value given in \code{test}, the values and tail probabilities
    of several first- and higher order test statistics.  See 
    \code{\link{cond.object}} for details on the test statistics.The
    second element of the list (\code{qTerm}) contains for each tested
    hypothesis the correction term used in the higher order solutions.
  }
  \item{call}{
    the function call that created the \code{cond} object.
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
  \item{alpha}{
    vector of levels used to compute the confidence intervals.
  }
  \item{hypotheses}{
    values for the parameter of interest that have been tested for.
  }
  \item{diagnostics}{
    information and nuisance parameters aspects; see 
    \code{\link{cond.object}} for details.
  }
  \item{n.approx}{
    number of output points that have been calculated exactly. 
  }
  \item{all}{
    logical value; if \code{TRUE}, all the information stored in the 
    \code{summary.cond} object is printed.
  }
  \item{cf}{
    logical value; if \code{TRUE}, the unconditional and conditional 
    parameter estimates are printed.
  }
  \item{int}{
    logical value; if \code{TRUE}, confidence intervals are printed.
  }
  \item{is.scalar}{
    a logical value indicating whether there are any nuisance 
    parameters.  If \code{FALSE} there are none.
  }
  \item{digits}{
    number of significant digits to be printed.
  }
}
\note{
  The amount of information calculated may vary depending on whether 
  there are any nuisance parameters.
}
\seealso{
  \code{\link[base]{summary}}, \code{\link{cond.object}}
}
\examples{
## Crying Babies Data
data(babies)
babies.glm <- glm(formula = cbind(r1, r2) ~ day + lull - 1, 
                  family = binomial, data = babies)
babies.cond <- cond(object = babies.glm, offset = lullyes)
summary(babies.cond, test = 0, coef = FALSE)
}
\keyword{regression}
\keyword{methods}
