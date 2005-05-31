\name{babies}
\docType{data}
\alias{babies}
\title{Crying Babies Data}
\description{
  The \code{babies} data frame has 36 rows and 4 columns.
  
  Matched pairs of binary observations concerning the crying of
  babies.  The babies were observed on 18 days and on each day one
  child was lulled.  Interest focuses on the treatment effect 
  \dQuote{lulling}.
}
\usage{data(babies)}
\format{
  This data frame contains the following columns:
  \describe{
    \item{\code{r1}}{
      number of children not crying on one day;
    }
    \item{\code{r2}}{
      number of children crying on one day;
    }
    \item{\code{lull}}{
      indicator variable for the treatment;
    }
    \item{\code{day}}{
      factor variable for the days.
    }
  }
}
\source{
  The data were obtained from
 
  Cox, D. R. (1970) \emph{Analysis of Binary Data} (page 61).  London:
  Chapman \& Hall.
}
\references{
  Davison, A. C. (1988) Approximate conditional inference in 
  generalized linear models.  \emph{ J. R. Statist. Soc.} B, 
  \bold{50}, 445--461.
}
\examples{
data(babies)
coplot(r2/(r1+r2) ~ day | lull, data = babies)
##
babies.glm <- glm(formula = cbind(r1, r2) ~ day + lull - 1, family = binomial,
                  data = babies)
babies.cond <- cond(object = babies.glm, offset = lullyes)
babies.cond
##
## If one wishes to avoid the generalized linear model fit:
babies.cond <- cond.glm(formula = cbind(r1, r2) ~ day + lull - 1, family = binomial,
                        data = babies, offset = lullyes)
babies.cond
}
\keyword{datasets}


