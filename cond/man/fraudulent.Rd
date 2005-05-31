\name{fraudulent}
\docType{data}
\alias{fraudulent}
\title{Fraudulent Automobile Insurance Claims Data}
\description{
  The \code{fraudulent} data frame has 42 rows and 12 columns.
  
  127 claims arising from automobile accidents in 1989 in
  Massachusetts (USA).  Each claim was classified as either
  fraudulent 
  or legitimate by consensus among four independent claims adjusters 
  who examined each case file thoroughly.  An exploratory analysis by 
  Derrig and Weisberg (1993) identified 10 binary indicators, each of 
  which denotes the presence or absence of a potential fraud 
  characteristic in the claim situation.  They fall into three broad 
  groups relating to \dQuote{Accident} (AC1, AC9 and AC16), 
  \dQuote{Claimant} (CL7 and CL11), and \dQuote{Injury} (IJ2, IJ3, 
  IJ4, IJ6 and IJ12).
}
\usage{data(fraudulent)}
\format{
  This data frame contains the following columns:
  \describe{
    \item{\code{r1}}{
      the number of frauds detected;
    }
    \item{\code{r2}}{
      the total number of automobile insurance claims;
    }
    \item{\code{AC1,AC9,AC16}}{
      potential fraud characteristics pertaining to \dQuote{Accident}.  
      The presence of the fraud characteristic is indicated by a 1, the 
      absence is indicated by a 0.
    }
    \item{\code{CL7,CL11}}{
      potential fraud characteristics pertaining to \dQuote{Claimer}.  
      The presence of the fraud characteristic is indicated by a 1, the 
      absence is indicated by a 0.
    }
    \item{\code{IJ2,IJ3,IJ4,IJ6,IJ12}}{
      potential fraud characteristics pertaining to \dQuote{Injury}.  
      The presence of the fraud characteristic is indicated by a 1, the 
      absence is indicated by a 0.
    }
  }
}
\source{
  The data were supplied by Dr. Richard Derrig of the Automobile 
  Insurers Bureau of Massachusetts.
}
\references{
  Mehta, C. R., Patel, N. T. and Senchaudhuri, P. (2000) Efficient 
  Monte Carlo methods for conditional logistic regression. 
  \emph{J. Amer. Statist. Ass.}, \bold{95}, 99--108.

  Derrig, R. A. and Weisberg, H. I. (1993).  Quantitative methods for
  detecting fraudulent automobile bodily injury claims.  
  \emph{Manuscript.}  
}
\examples{
data(fraudulent)
summary(fraudulent)
}
\keyword{datasets}










