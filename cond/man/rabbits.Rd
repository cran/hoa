\name{rabbits}
\docType{data}
\alias{rabbits}
\title{Rabbits Data}
\description{
  The \code{rabbits} data frame has 10 rows and 4 columns.
  
  Five different doses of penicillin were administered to rabbits
  suffering from a streptococci infection and the number of recovering 
  rabbits recorded.  The rabbits are cross-classified according to 
  whether the drug is administered immediately or delayed by an hour 
  and a half.  Interest focuses on whether the delay effects the 
  treatment.
}
\usage{
data(rabbits)
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{\code{cured}}{
      the number of rabbits that recovered;
    }
    \item{\code{died}}{
      the number of rabbits that died;
    }
    \item{\code{delay}}{
      an indicator variable indicating whether the administration of
      penicillin was delayed by 1 1/2 hours;
    }
    \item{\code{penicil}}{
      the penicillin dose.
    }
  }
}
\source{
  Unknown.
}
\examples{
data(rabbits)
attach(rabbits)
fc <- cured/(cured + died)
coplot(fc ~ log(penicil) | delay, data = rabbits)
}
\keyword{datasets}


