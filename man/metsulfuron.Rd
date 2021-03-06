\name{metsulfuron}
\docType{data}
\alias{metsulfuron}
\title{Metsulfuron Methyl Data}
\description{
  The \code{metsulfuron} data frame has 40 rows and 3 columns.

  Bioassay on the action of metsulfuron methyl, a sulfunylurea
  herbicide, on a tissue culture of \emph{Brassica napus L}.  The
  experiment consists of 8 doses and 5 replications at each level. 
}
\usage{data(metsulfuron)}
\format{
  This data frame contains the following columns:
  \describe{  
    \item{\code{group}}{
      indicator variable for each tested dose;
    }
    \item{\code{dose}}{
      the tested dose (nmol/l);
    }
    \item{\code{area}}{
      the callus area (\eqn{mm^2}{mm^2}).
    }
  }
}
\source{
  The data were obtained from

  Seiden, P., Kappel, D. and Streibig, J. C. (1998) Response of
  \emph{Brassica napus L.} tissue culture to metsulfuron methyl and
  chlorsulfuron.  \emph{Weed Research}, \bold{38}, 221--228.  Dataset
  M2.
}
\references{
  Bellio, R., Jensen, J.E. and Seiden, P. (2000).  Applications of 
  likelihood asymptotics for nonlinear regression in herbicide bioassays.
  \emph{Biometrics}, \bold{56}, 1204--1212.

  Brazzale, A. R. (2000) \emph{Practical Small-Sample Parametric 
  Inference}.  Ph.D. Thesis N. 2230, Department of Mathematics, Swiss
  Federal Institute of Technology Lausanne.  Section 5.3, Example 7.
}
\examples{
data(metsulfuron)
attach(metsulfuron)
plot(dose, area, xlab = "tested dose (nmol/l)", 
     ylab = "log callus area (mm^2)", log = "y")
detach()
}
\keyword{datasets}
