\name{Laplace}
\alias{Laplace}
\title{
  Calculate Laplace's Marginal Density Approximation
}
\description{
  Calculates the Laplace approximation to the uni- and bivariate
  marginal densities of components of the \acronym{MLE} in a
  regression-scale model.  The reference distribution is the
  conditional distribution given the ancillary.
}
\usage{
Laplace(which = stop("no choice made"), data = stop("data are missing"), 
        val1, idx1, val2, idx2, log.scale = TRUE)
}
\arguments{
  \item{which}{
    the kind of marginal density that should be approximated.  
    Possible choices are \code{c} (univariate: regression 
    coefficient),
    \code{s} (univariate: scale parameter), \code{cc} (bivariate: two 
    regression coefficients) and \code{cs} (bivariate: regression 
    coefficient and scale parameter).
  }
  \item{data}{
    a special \emph{conditional sampling} data object.  This object 
    must be a list with the following elements:
    \describe{
      \item{\code{anc}}{
        the vector containing the values of the ancillary; usually the 
        Pearson residuals.  It has to be of the same length than the 
        number of observations in the linear regression model.  
      }
      \item{\code{X}}{
        the model matrix.  It may be obtained applying 
        \code{\link[stats]{model.matrix}} to the fitted \code{rsm} 
        object of interest.  The number of observations has to be the
        same than the dimension of the ancillary, and the number of 
        covariates must correspond to the number of regression 
        coefficients defined in the \code{coef} component.
     }
     \item{\code{coef}}{
       the vector of \emph{true} values of the regression coefficients,
       that is, the values used in the simulation study.
     }
     \item{\code{disp}}{
       the \emph{true} value of the scale parameter used in the 
       simulation study.
     }
     \item{\code{family}}{
       a \code{\link[marg]{family.rsm}} object characterizing the error
       distribution of the linear regression model.  The following
       generator functions are available in the \code{marg} 
       package of the \acronym{R} package bundle \code{hoa}: 
       \code{student} (Student's t), \code{extreme} (Gumbel or extreme 
       value), \code{logistic}, \code{logWeibull}, 
       \code{logExponential}, \code{logRayleigh} and \code{Huber} 
       (Huber's least favourable).  The demonstration file 
       \file{margdemo.R} that accompanies the \code{marg} package shows
       how to create a new generator function. 
      } 
      \item{\code{fixed}}{
        a logical value.  If \code{TRUE} the scale parameter is known.
      }
    }
    The \code{\link[csampling]{make.sample.data}} function can be used
    to create this data object from a fitted \code{rsm} model.
  }
  \item{val1}{
    sequence of values for the first \acronym{MLE} at which to 
    calculate the density.
  }
  \item{idx1}{
    index of the first regression coefficient, that is, its position 
    in the vector \acronym{MLE}.
  }
  \item{val2 }{
    sequence of values for the second \acronym{MLE} at which to 
    calculate the density.
  }
  \item{idx2}{
    index of the second regression coefficient, that is, its position 
    in the vector \acronym{MLE}.
  }
  \item{log.scale}{
    logical value.  If \code{TRUE} the approximation is calculated on 
    the log scale.  Highly recommended.  The default is \code{TRUE}.
  }
}
\details{
  Laplace's integral approximation method is used in order to avoid
  multi-dimensional numerical integration.  The uni- and bivariate
  approximations to the marginal distributions give insight into how
  the multivariate conditional distribution of the \acronym{MLE}
  vector is structured.  Methods are available to plot them.  They 
  help in choosing a suitable candidate generation density to be used 
  in the \code{\link[csampling]{rsm.sample}} function.

  All information is supplied through the \code{data} argument.  Note 
  that the user has to keep to the structure described above.  If a
  conditional simulation is to be performed for a fitted \code{rsm} 
  object, the \code{\link[csampling]{make.sample.data}} function can be
  used to generate this special object.  The logical switch 
  \code{fixed} in the conditional sampling data object must be 
  specified.
}
\value{
  Returns a \code{Lapl.spl} or \code{Lapl.cont} object with the 
  approximate uni- or bivariate conditional distribution of one or two
  components of the \acronym{MLE}.  
}
\section{Demonstration}{
  The file \file{csamplingdemo.R} contains code that can be used to 
  run a conditional simulation study similar to the one described 
  in \cite{Brazzale (2000, Section 7.3)} using the data given in 
  Example 3 of \cite{DiCiccio, Field and Fraser (1990)}.
}
\references{
  Brazzale, A. R. (2000) \emph{Practical Small-Sample Parametric 
  Inference}.  Ph.D. Thesis N. 2230, Department of Mathematics, Swiss 
  Federal Institute of Technology Lausanne.

  DiCiccio, T. J., Field, C. A. and Fraser, D. A. S. (1990)  
  Approximations of marginal tail probabilities and inference for 
  scalar parameters. \emph{Biometrika}, \bold{77}, 77--95.	
}
\seealso{
  \code{\link[csampling]{make.sample.data}}, 
  \code{\link[csampling]{rsm.sample}}.
  \code{\link[marg]{family.rsm.object}}, 
}
\keyword{distribution}
