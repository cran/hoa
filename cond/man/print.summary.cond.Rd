\name{print.summary.cond}
\alias{print.summary.cond}
\title{
  Use print() on a ``summary.cond'' object
}
\description{
  This is a method for the function \code{print()} for objects 
  inheriting from class \code{summary.cond}.  See 
  \code{\link[base]{print}} and \code{\link[base]{print.defaults}} for
  the general  behaviour of this function and for the interpretation 
  of \code{digits}.  
}
\usage{
\method{print}{summary.cond}(x, all, Coef, int, test, digits, \dots)
}
\synopsis{
print.summary.cond(x, all = x$all, Coef = x$cf,
                   int = x$int, test = x$hyp,
                   digits = if(!is.null(x$digits)) x$digits
                              else max(3, getOption("digits")-3),
                   ...)
}
\arguments{
  \item{x}{
    a \code{summary.cond} object.  This is assumed to be the result 
    returned by the \code{summary.cond} function.
  }
  \item{all}{
    if \code{TRUE} all the information stored in the 
    \code{summary.cond} object is printed, else only a subset of it.  
    The default is \code{FALSE}.
  }
  \item{Coef}{
    if \code{TRUE}, the unconditional and conditional parameter 
    estimates are printed.  The default is \code{TRUE}.
  }
  \item{int}{
    if \code{TRUE}, confidence intervals are printed.  The default is 
    \code{TRUE}.
  }
  \item{test}{
    if \code{TRUE}, tests statistics and tail probabilities are 
    printed.  The default is \code{FALSE}.
  }
  \item{digits}{
    number of significant digits to be printed.  The default 
    depends on the value of \code{digits} set by \code{options}.
  }
  \item{\dots}{
    additional arguments.
  }
}
\details{
  Changing the default values of \code{all}, \code{Coef}, \code{int} 
  and \code{test} allows only a subset of the information in the 
  \code{summary.cond} object to be printed.  With \code{all = FALSE},
  one-sided confidence intervals and the Lugannani-Rice tail
  approximations are omitted.  See \code{\link{summary.cond}} for more
  details.
}
\note{
  The amount of information printed may vary depending on whether 
  there are any nuisance parameters.
}
\seealso{
  \code{\link{summary.cond}}, \code{\link{cond.object}}
}
\examples{
## Urine Data 
data(urine)
urine.glm <- glm(r ~ gravity + ph + osmo + conduct + urea + calc, family = binomial,
                 data = urine)
urine.cond <- cond(urine.glm, urea)
print(summary(urine.cond, all = TRUE), digits = 4)
print(summary(urine.cond), Coef = FALSE)
}
\keyword{methods}
\keyword{print}
