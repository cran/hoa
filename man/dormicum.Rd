\name{dormicum}
\docType{data}
\alias{dormicum}
\title{Dormicum Data}
\description{
  The \code{dormicum} data frame has 37 rows and 3 columns.
  
  37 children in a pediatric intensive care unit were treated with 
  varying doses and for varying duration with the drug 
  \emph{Dormicum}.  The response variable is 1 if withdrawal symptoms 
  were exhibited and 0 otherwise.
}
\usage{data(dormicum)}
\format{
  This data frame contains the following columns:
  \describe{
    \item{\code{symp}}{
      indicator of the presence of withdrawal symptoms;
    }
    \item{\code{dose}}{
      the drug dose in mg/kg;
    }
    \item{\code{days}}{
      the number of days treated.
    }
  }
}
\source{
  The data were supplied by \emph{Spadille Biostatistik}, Denmark.
}
\references{
  Mehta, C. R., Patel, N. T. and Senchaudhuri, P. (2000) Efficient 
  Monte Carlo methods for conditional logistic regression. 
  \emph{J. Amer. Statist. Ass.}, \bold{95}, 99--108.
}
\examples{
data(dormicum)
par(mfrow = c(1,2))
plot(dose ~ symp, data = dormicum, xlab = "presence of withdrawal symptoms",
     ylab = "treatment dose (mg/kg)")
plot(days ~ symp, data = dormicum, xlab = "presence of withdrawal symptoms",
     ylab = "treatment days")
}
\keyword{datasets}
