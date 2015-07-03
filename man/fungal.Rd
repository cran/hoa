\name{fungal}
\docType{data}
\alias{fungal}
\title{Fungal Infections Treatment Data}
\description{
  The \code{fungal} data frame has 10 rows and 4 columns.
  
  Clinical trial on the success of a particular treatment for
  fungal infections.  The study was carried out in five different
  research units.  Interest focuses on the treatment effect.  
}
\usage{data(fungal)}
\format{
  This data frame contains the following columns:
  \describe{
    \item{\code{success}}{
      the number of patients that benefited from the treatment;
    }
    \item{\code{failure}}{
      the number of patients with no benefit from the treatment;
    }
    \item{\code{group}}{
      an indicator variable for treatment (\code{T}=treatment, 
      \code{P}=placebo);
    }
    \item{\code{center}}{
      a factor variable indicating the research unit where the study 
      was carried out.
    }
  }
}
\source{
  The data were supplied by \emph{Sandoz Pharmaceuticals.}
}
\examples{
## (full data analysis)
data(fungal)
fungal.glm <- glm(cbind(success, failure) ~ center + group - 1, 
                  family = binomial, data = fungal, 
                  control = glm.control(maxit = 50, epsilon = 1e-005))
fungal.cond <- cond(fungal.glm, groupT)
plot(fungal.cond, which = 2)
## (partial data analysis) 
fungal.glm <- glm(cbind(success, failure) ~ center + group - 1, 
                  family = binomial, data = fungal, subset = -c(1,2,5,6), 
                  control = glm.control(maxit = 50, epsilon = 1e-005))
fungal.cond <- cond(fungal.glm, groupT)
plot(fungal.cond, which = 2)
## (Tables 1 and 3 are omitted).
}
\keyword{datasets}


