\name{aids}
\docType{data}
\alias{aids}
\title{AIDS Symptoms and AZT Use Data}
\description{
  The \code{aids} data frame has 4 rows and 4 columns.
  
  On February 15, 1991, the \emph{ New York Times} published the
  results of a study on the presence of AIDS symptoms and AZT use.
  The data were cross-classified according to the race of the
  patients.
}
\usage{data(aids)}
\format{
  This data frame contains the following columns:
  \describe{
    \item{\code{yes}}{
      the number of patients with AIDS symptoms;
    }
    \item{\code{no}}{
      the number of patients without AIDS symptoms;
    }
    \item{\code{azt}}{
      an indicator variable for AZT use;
    }
    \item{\code{race}}{
      an indicator variable for the race (\code{w}=white, \code{b}=black).
    }
  }
}
\source{
  The data were obtained from the \emph{New York Times} (2/15/91).
}
\examples{
data(aids)
summary(aids)
}
\keyword{datasets}
