\name{Laplace.support}
\alias{Laplace.c}
\alias{Laplace.s}
\alias{Laplace.cc}
\alias{Laplace.cs}
\alias{h.c}
\alias{h.s}
\alias{h.cc}
\alias{h.cs}
\title{
  Support for function `Laplace()'
}
\description{
  This is support for the function \code{\link[csampling]{Laplace}}.  
  It is not intended to be called directly by users.
}
\usage{
Laplace.c(val, idx, data, fixed = FALSE)
Laplace.s(val, data, log.scale = TRUE)
Laplace.cc(val1, val2, idx1, idx2, data, fixed)
Laplace.cs(val1, val2, idx1, data, log.scale = TRUE)
h.c(x, bb, idx, cf, disp, anc, X, family, fixed)
h.s(x, log.s, cf, disp, anc, X, family)
h.cc(x, bb, idx1, idx2, cf, disp, anc, X, family, fixed)
h.cs(x, bb, log.s, idx, cf, disp, anc, X, family)
}
\keyword{internal}



