\name{print.cond}
\alias{print.cond}
\title{
  Use print() on a ``cond'' object
}
\description{
  This is a method for the function \code{print()} for objects 
  inheriting from class \code{cond}.  See \code{\link[base]{print}} 
  and \code{\link[base]{print.defaults}} for the general behaviour of 
  this function and for the interpretation of \code{digits}.
}
\usage{
\method{print}{cond}(x, digits = value, \dots)
}
\synopsis{
\method{print}{cond}(x, digits=max(3, getOption("digits")-3), ...)
}
\seealso{
  \code{\link{cond.object}}, \code{\link[base]{print}},
  \code{\link[base]{print.default}}
}
\keyword{internal}
\keyword{methods}
\keyword{print}
