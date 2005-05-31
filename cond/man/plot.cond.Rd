\name{plot.cond}
\alias{plot.cond}
\title{
  Generate Plots for an Approximate Conditional Inference Object
}
\description{
  Creates a set of plots for an object of class \code{cond}.
}
\usage{
\method{plot}{cond}(x = stop("nothing to plot"), from = x.axis[1],  to = x.axis[n], 
          which = NULL, alpha = 0.05, add.leg = TRUE, loc.leg = FALSE,
          add.labs = TRUE, cex = 0.7, cex.lab = 1, cex.axis = 1, 
          cex.main = 1, lwd1 = 1, lwd2 = 2, lty1 = "solid", lty2 = "dashed", 
          col1 = "black", col2 = "blue", tck = 0.02, las = 1, adj = 0.5, 
          lab = c(15, 15, 5), \dots)
}
\arguments{
  \item{x}{
    a \code{cond} object.  This is assumed to be the result returned 
    by the \code{\link{cond.glm}} function.
  }
  \item{from}{
    starting value for the x-axis range. The default value has been 
    set by \code{\link{cond.glm}}.
  }
  \item{to}{
    ending value for the x-axis range. The default value has been set
    by \code{\link{cond.glm}}.
  }
  \item{which}{
    which plot should be printed.  Admissible values are \code{2} to 
    \code{8} corresponding to the choices in the menu below.
  }
  \item{alpha}{
    the level used to read off confidence intervals; default is 5\%.
  }
  \item{add.leg}{
    if \code{TRUE}, a legend is added to each plot; default is 
    \code{TRUE}.
  }
  \item{loc.leg}{
    if \code{TRUE}, position of the legend can be located by hand; 
    default is \code{FALSE}.
  }
  \item{add.labs}{
    if \code{TRUE}, labels are added; default is \code{TRUE}.
  }
  \item{cex, cex.lab, cex.axis, cex.main}{
    character expansions relative to the standard size of the device 
    to be used for printing text, labels, axes and main title.  See 
    \code{\link[graphics]{par}} for details. 
  }
  \item{lwd1, lwd2}{
    line width used to compare different curves in the same plot; 
    default is \code{lwd2 = 2} for higher order solutions and 
    \code{lwd1 = 1} for first order solutions.
  }
  \item{lty1, lty2}{
    line type used to compare different curves in the same plot; 
    default is \code{lty2 = "dashed"} for the Wald statistic and 
    \code{lty1 = "solid"} for the remaining first- and higher order 
    statistics.
  }
  \item{col1, col2}{
    colors used to compare different curves in the same plot; default 
    is \code{col2 = "blue"} for higher order solutions, and 
    \code{col1 = "black"} for the remaining first order statistics.
  }
  \item{tck, las, adj, lab}{
    further graphical parameters.  See \code{\link[graphics]{par}} for 
    details. 
  }
  \item{\dots}{
    optional graphical parameters; see \code{\link[graphics]{par}} for 
   details.
  }
}
\details{
  Several plots are produced for an object of class \code{cond}. A 
  menu lists all the plots that can be produced.  They may be one or 
  all of the following ones:
  \preformatted{
 Make a plot selection (or 0 to exit)

1:plot: All
2:plot: Profile and modified profile log likelihoods
3:plot: Profile and modified profile likelihood ratios
4:plot: Profile and modified likelihood roots
5:plot: Modified and continuity corrected likelihood roots
6:plot: Lugannani-Rice approximations
7:plot: Confidence intervals
8:plot: Diagnostics based on INF/NP decomposition

Selection:
  }
  If no nuisance parameters are presented, a subset of the above 
  pictures is produced.  More details on the implementation are given
  in \cite{Brazzale (1999, 2000)}.
  
  This function is a method for the generic function \code{plot()} 
  for class \code{cond}.  It can be invoked by calling \code{plot} 
  or directly \code{plot.cond} for an object of the appropriate class.
}
\value{
  A plot is created on the current graphics device.
}
\section{Side Effects}{
  The current device is cleared.  When \code{add.leg = TRUE}, a legend
  is added to each plot, and if \code{loc.leg = TRUE}, it can be set 
  by the user.  All screens are closed, but not cleared, on 
  termination of the function.
}
\note{
  The diagnostic plots only represent a preliminary version and need
  further development.  

  The two panels on the right trace the information and nuisance
  correction terms, \acronym{INF} and \acronym{NP}, against the 
  likelihood root statistic.  These are generally smooth functions
  and used to approximate the information and nuisance parameter
  aspects as a function of the parameter of interest, as shown in the
  two panels on the left.  This procedure has the advantage of largely
  eliminating the numerical instabilities that affect the statistics
  around the \acronym{MLE}.  The circles in the two leftmost panels
  represent the limit of \acronym{INF} and \acronym{NP} at the
  \acronym{MLE} calculated exactly using numerical derivatives.  All
  four pictures are intended to give an idea of the order of
  magnitude of the two correction terms while trying to deal with the
  numerical problems that likely occur for these kinds of data.

  More details can be found in \cite{Brazzale (2000, Appendix B.2)}.  
}
\references{
  Brazzale, A. R. (1999) Approximate conditional inference for 
  logistic and loglinear models.  \emph{J. Comput. Graph. Statist.}, 
  \bold{8}, 1999, 653--661.
  
  Brazzale, A. R. (2000) \emph{Practical Small-Sample Parametric
  Inference}, Ph.D. Thesis N. 2230, Department of Mathematics, Swiss
  Federal Institute of Technology Lausanne.
}
\seealso{
  \code{\link{cond.glm}}, \code{\link{cond.object}}, 
  \code{\link{summary.cond}}
}
\examples{
## Crying Babies Data
data(babies)
babies.glm <- glm(formula = cbind(r1, r2) ~ day + lull - 1, family = binomial,
                  data = babies)
babies.cond <- cond(object = babies.glm, offset = lullyes)
\dontrun{
plot(babies.cond)
}

## Urine Data 
data(urine)
urine.glm <- glm(r ~ I(gravity * 100) + ph + osmo + conduct + urea + calc, family = binomial, 
                 data = urine)
urine.cond <- cond(urine.glm, I(gravity * 100))
plot(urine.cond, which=4)
}
\keyword{regression}
\keyword{methods}



