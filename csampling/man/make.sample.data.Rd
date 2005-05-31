\name{make.sample.data}
\alias{make.sample.data}
\title{
  Create a Conditional Sampling Data Object
}
\description{
  Uses a fitted \code{rsm} model to create the data object used by    
  the conditional sampler \code{rsm.sample}.
}
\usage{
make.sample.data(rsmObject)

}
\arguments{
  \item{rsmObject}{
    a fitted \code{rsm} object.
  }
}
\value{
  Returns a \emph{conditional sampling} data object such as needed by 
  the \code{rsm.sample} function.  This object is a list with the 
  following elements:
    \item{anc}{
      the vector containing the values of the ancillary; usually the 
      Pearson residuals.  It has to be of the same length than the 
      number of observations in the linear regression model.  
    }
    \item{X}{
      the model matrix.  It may be obtained applying 
      \code{\link[stats]{model.matrix}} to the fitted \code{rsm} 
      object of interest.  The number of observations has to be the
      same than the dimension of the ancillary, and the number of 
      covariates must correspond to the number of regression 
      coefficients defined in the \code{coef} component.
   }
   \item{coef}{
     the vector of \emph{true} values of the regression coefficients,
     that is, the values used in the simulation study.
   }
   \item{disp}{
     the \emph{true} value of the scale parameter used in the 
     simulation study.
   }
   \item{family}{
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
    \item{fixed}{
      a logical value.  If \code{TRUE} the scale parameter is known.
    }
  The \code{\link[csampling]{make.sample.data}} function can be used
  to create this data object from a fitted \code{rsm} model.
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
  scalar parameters.  \emph{ Biometrika}, \bold{77}, 77--95.	
}
\seealso{
 \code{\link[marg]{rsm.object}}, \code{\link[csampling]{rsm.sample}}
}
\keyword{datagen}
\keyword{regression}
