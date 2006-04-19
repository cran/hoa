\name{urine}
\docType{data}
\alias{urine}
\title{Urine Data}
\description{
  The \code{urine} data frame has 77 rows and 7 columns.
  
  79 urine specimens were analyzed in an effort to determine if 
  certain physical characteristics of the urine might be related to 
  the formation of calcium oxalate crystals.
}
\usage{data(urine)}
\format{
  This data frame contains the following columns:
  \describe{
    \item{\code{r}}{
      indicator of the presence of calcium oxalate crystals;
    }
    \item{\code{gravity}}{
      the specific gravity of the urine, i.e. the density of urine
      relative to water;
    }
    \item{\code{ph}}{
      the pH reading of the urine;
    }
    \item{\code{osmo}}{
      the osmolarity of the urine.  Osmolarity is proportional
      to the concentration of molecules in solution (mOsm).
    }
    \item{\code{conduct}}{
      The  conductivity of the urine.  Conductivity is proportional  
      to the concentration of charged ions in solution (mMho milliMho).
    }
    \item{\code{urea}}{
      the urea concentration in millimoles per litre;
    }
    \item{\code{calc}}{
      the calcium concentration in millimoles per litre.
    }
  }
}
\source{
  The data were obtained from

  Andrews, D. F. and Herzberg, A. M. (1985)  \emph{Data: A Collection  
    of Problems from Many Fields for the Student and Research Worker},
    Cambridge: Cambridge University Press.
}
\references{
  Davison, A. C. and Hinkley, D. V. (1997).  \emph{Bootstrap Methods 
    and Their Application } (Example 7.8).  Cambridge: Cambridge 
    University Press.  
}
\examples{
data(urine)
summary(urine)
pairs(urine)
##
data(urine)
urine.glm <- glm(r ~ gravity + ph + osmo + conduct + urea + log(calc), 
                 family = binomial, data = urine)
labels(coef(urine.glm))
urine.cond <- cond(urine.glm, log(calc))
##
## (large estimate of regression coefficient)
urine.glm <- glm(r ~ gravity + ph + osmo + conduct + urea + calc, 
                 family = binomial, data = urine)
coef(urine.glm)
urine.glm <- glm(r ~ I(gravity * 100) + ph + osmo + conduct + urea + calc, 
                 family = binomial, data = urine)
coef(urine.glm)
urine.cond <- cond(urine.glm, I(gravity * 100))
}
\keyword{datasets}





