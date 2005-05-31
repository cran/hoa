\name{rsm.sample}
\alias{rsm.sample}
\title{
  Conditional Sampler for Regression-Scale Models
}
\description{
  Generates replicates of the \acronym{MLE}s of the parameters 
  occuring in a regression-scale model using as reference distribution
  the conditional distribution of the \acronym{MLE}s given the value 
  of the ancillary. 
}
\usage{
rsm.sample(data = stop("no data given"), R = 10000, 
           ran.gen = stop("candidate distribution is missing, with no default"), 
           trace = TRUE, step = 100, \dots)
}
\arguments{
  \item{data}{
    A special \emph{conditional sampling} data object.  This object 
    must be a list with the following elements:
    \describe{
      \item{\code{anc}}{
        the vector containing the values of the ancillary; usually the 
        Pearson residuals.  It has to be of the same length than the 
        number of observations in the linear regression model.  
      }
      \item{\code{X}}{
        the model matrix.  It may be obtained applying 
        \code{\link[statws]{model.matrix}} to the fitted \code{rsm} 
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
  \item{R}{
    the number of replicates.  
  }
  \item{ran.gen}{
    a function which describes how the candidate values used in the 
    Metropolis-Hastings algorithm should be generated.  It must be 
    a function of at least two arguments.  The first one is the data 
    object \code{data}, and the second argument is \code{R}, the 
    number of replicates required.  Any other information needed may 
    be passed through the \code{\dots} argument.  The returned value 
    should be a \code{R} times \emph{k} matrix of simulated values.  
    For the value of \emph{k} see the details section below.
  }
  \item{trace}{
    a logical value; if \code{TRUE}, the iteration number is printed.
    Defaults to \code{TRUE}.
  }
  \item{step}{
    a numercial value defining after how many iterations to print the
    iteration number.  Default is 100.
  }
  \item{\dots}{
    absorbs additional arguments to \code{ran.gen}.  These are passed
    unchanged each time this function is called.  
  }
}
\details{
  The \code{rsm.sample} function uses the Metropolis-Hastings 
  algorithm to generate an ergodic chain with equilibrium distribution
  equal to the conditional distribution of the \acronym{MLE}s given 
  the ancillary.  Because of the broad applicability of this 
  algorithm 
  the candidate generation density was not built in, but has to be 
  supplied by the user through the \code{ran.gen} argument.  The 
  output of this function must be a \code{R} times \emph{k} matrix, 
  where \emph{k = p} + \emph{1} or \emph{k = p} + \emph{2} depending 
  on whether the 
  scale parameter is fixed or not.  The first \emph{p} columns contain
  the \acronym{MLE}s of the regression coefficients, the following the
  \acronym{MLE}s of the scale parameter if unknown, and the last 
  column contains the probabilities of the candidate values drawn 
  from the candidate generation distribution.  Note that these 
  probabilities need only be calculated up to a normalizing constant.

  All information is supplied through the \code{data} argument.  The 
  user has to keep to the structure described above.  If a conditional
  simulation is to be performed for a fitted \code{rsm} object, the
  \code{\link[csampling]{make.sample.data}} function can be used to 
  generate this special object.  It is advisable to specify the 
  logical switch \code{fixed} in the conditional sampling object, 
  although it needs not (in which case the scale parameter is supposed
  to be unknown).

  The conditional simulation (\code{cs}) object generated by 
  \code{rsm.sample} contains all information necessary for further 
  investigation, such as the derivation of the conditional 
  distribution of test statistics, the calculation of conditional 
  coverage levels of confidence intervals and many more.  As the 
  computation is somewhat tricky, an example is given in the 
  demonstration file \file{csamplingdemo.R}.
}
\value{
  The returned value is an object of class \code{cs} containing the 
  following components:
  \item{sim}{
    a matrix with \code{R} rows each of which contains a sample from
    the conditional distribution of the \acronym{MLEs}.
  }
  \item{rho}{
    the acceptance probabilities at each Metropolis-Hastings step, 
    that is, the probabilities with which the candidate values drawn from 
    the candidate generation distribution are accepted. 
  }
  \item{seed}{
    the value of \code{.Random.seed} when \code{rsm.sample} was 
    called.  
  }
  \item{data}{
    the \code{data} as passed to \code{rsm.sample}.
  }
  \item{R}{
    the value of \code{R} as passed to \code{rsm.sample}.
  }
  \item{call}{
    the original call to \code{rsm.sample}.
  }
}
\section{Side Effects}{
  The function \code{rsm.sample} causes creation of the dataset
  \code{\link[base]{.Random.seed}} if it does not already exist, 
  otherwise its value is updated.
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
  \code{\link[marg]{rsm.object}},  
  \code{\link[marg]{family.rsm.object}}, 
  \code{\link[marg]{rsm}}
}
\keyword{distribution}
\keyword{regression}
