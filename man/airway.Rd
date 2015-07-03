\name{airway}
\docType{data}
\alias{airway}
\title{Airway Data}
\description{
  The \code{airway} data frame has 35 rows and 6 columns.
  
  Study to compare two devices (tracheal tube and laryngeal mask) used
  to secure airway in patients undergoing surgery.  The response
  variable is the presence of a sore throat.  Further information on
  age, sex, use of a lubricant, and duration of the surgery is
  available.
}
\usage{data(airway)}
\format{
  This data frame contains the following columns:
  \describe{
    \item{\code{response}}{
      an indicator variable for sore throat (1=yes, 0=no);
    }
    \item{\code{type}}{
      the type of airway used (1=tracheal tube, 0=laryngeal mask);
    }
    \item{\code{age}}{
      the age of the patient (in years);
    }
    \item{\code{sex}}{
      an indicator variable for sex (1=male, 0=female);
    }
    \item{\code{lubricant}}{
      an indicator variable for lubricant use (1=yes, 0=no);
    }
    \item{\code{duration}}{
      the duration of the surgery (in minutes).
    }
  }
}
\source{
The data were obtained from

\dQuote{Binary Data} by D. Collet in \emph{Encyclopedia of 
Biostatistics} (1998).
}
\examples{
data(airway)
summary(airway)
par(mfrow=c(1,2))
plot(age ~ response, data = airway)
plot(duration ~ response, data = airway)
}
\keyword{datasets}


