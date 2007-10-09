\name{cond.glm}
\alias{cond.glm}
\title{
  Approximate Conditional Inference for Logistic and Loglinear Models
}
\description{
  Performs approximate conditional inference on a scalar parameter of 
  interest in logistic and loglinear models.  The output is stored in
  an object of class \code{cond}. 
}
\usage{
\method{cond}{glm}(object, offset, formula = NULL, family = NULL, 
         data = sys.frame(sys.parent()), pts = 20, 
         n = max(100, 2*pts), tms = 0.6, from = NULL, to = NULL, 
         control = glm.control(...), trace = FALSE, \dots)
}
\arguments{
  \item{object}{
    a \code{glm} object.  Families supported are binomial and Poisson
    with canonical link function.  
  }
  \item{offset}{
    the covariate occurring in the model formula whose coefficient
    represents the parameter of interest.  May be numerical or a 
    two-level factor.  In case of a two-level factor, it must be 
    coded by contrasts and not appear as two dummy variables in the 
    model.  Can also be a call to a mathematical function (such as 
    \code{exp}, \code{sin}, \dots) or to  a mathematical operator 
    (\code{^}, \code{/}, \ldots) applied to a numerical variable.
    The call must always agree with the label used to identify the
    corresponding parameter in the \code{glm} object passed through 
    the \code{object} argument or defined by \code{formula} and 
    \code{family}.  Beware that the label includes the identity 
    function \code{I()} if an  arithmetic operator was used.  Other 
    function types (e.g. \code{factor}) and interactions are not 
    admitted.
  }
  \item{formula}{
    a formula expression (only if no \code{glm} object is defined).  
  }
  \item{family}{
    a \code{family} object defining the variance function (only if no
    \code{glm} object is defined).  Families supported are binomial 
    and Poisson with canonical link function. 
  }
  \item{data}{
    an optional data frame in which to interpret the variables 
    occurring in the formula (only if no \code{glm} object is 
    defined).  
  }
  \item{pts}{
    number of output points (minimum 10) that are calculated exactly.
    The default is 20. 
  }
  \item{n}{
    approximate number of output points (minimum 50) produced by the
    spline interpolation.  The default is the maximum between 100 and 
    twice \code{pts}.
  }
  \item{tms}{
    defines the range \acronym{MLE} +/- \code{tms} * \acronym{s.e.} 
    where cubic spline interpolation is replaced by polynomial 
    interpolation.  The default is 0.6.
  }
  \item{from}{
    starting value of the sequence that contains the values of the 
    parameter of interest for which output points are calculated 
    exactly.  The default is \acronym{MLE} - 3.5 * \acronym{s.e.}
  }
  \item{to}{
    ending value of the sequence that contains the values of the 
    parameter of interest for which output points are calculated 
    exactly.  The default is \acronym{MLE} +  3.5 * \acronym{s.e.}
  }
  \item{control}{
    a list of iteration and algorithmic constants that controls the 
    \acronym{GLM} fit.  See \linebreak \code{\link[stats]{glm.control}} for their 
    names and default values.  
  }
  \item{trace}{
    if \code{TRUE}, iteration numbers will be printed.
  }
  \item{\dots}{
    additional arguments, such as \code{subset} etc., used by the 
    \code{glm} fitting routine if the \code{glm} object 
    is defined through \code{formula} and \code{family}.  See 
    \code{\link[stats]{glm}} for their definition and use.  The
    arguments \code{weights}, \code{offset} and \code{contrasts} are 
    not admitted.  The returned value is an object of class \
    code{cond}; see \code{\link{cond.object}} for details.
  }
}
\details{
  This function is a method for the generic function \code{cond} for 
  class \code{glm}.  It can be invoked by calling \code{\link{cond}} 
  for an object of the appropriate class, or directly by calling 
  \code{cond.glm} regardless of the class of the object.  
  \code{cond.glm} has also to be used if the \code{glm} object is not
  provided throught the \code{object} argument but specified by 
  \code{formula} and \code{family}.
    
  The function \code{cond.glm} implements several small sample 
  asymptotic methods for approximate conditional inference in 
  logistic and loglinear models.  Approximations for both the 
  conditional log likelihood function and conditional tail area 
  probabilities are available (see \code{\link{cond.object}} for 
  details).  Attention is restricted to a scalar parameter of 
  interest.  The associated covariate can be either numerical or 
  a two-level factor. 
    
  Approximate conditional inference is performed by either updating a
  fitted generalized linear model or defining the model formula and 
  family.  All approximations are calculated exactly for \code{pts} 
  equally spaced points ranging from \code{from} to \code{to}.  A 
  cubic spline interpolation is used to extend them over the whole 
  interval of interest, except for the range of values defined by 
  \acronym{MLE} +/- \code{tms} * \acronym{s.e.} where the spline 
  interpolation is replaced by a higher order polynomial 
  interpolation.  This is done in order to avoid numerical 
  instabilities which are likely to occur for values of the parameter 
  of interest close to the \acronym{MLE}.  Results are stored in an 
  object of class \code{cond}.  Method functions like \code{print}, 
  \code{summary} and \code{plot} can be used to examine the output or 
  represent it graphically.  Components can be extracted using 
  \code{coef}, \code{formula} and \code{family}.
    
  Main references for the methods considered are the papers by 
  \cite{Pierce and Peters (1992)} and \cite{Davison (1988)}.  More 
  details on the implementation are given in \cite{Brazzale (1999, 
  2000)}.
}
\value{
  The returned value is an object of class \code{cond}; see 
  \code{\link{cond.object}} for details.
}
\note{
  In rare occasions, \code{cond.glm} dumps because of non-convergence
  of the function \code{glm} which is used to refit the model for a 
  fixed value of the parameter of interest.  This happens for instance
  if this value is too extreme.  The arguments \code{from} and 
  \code{to} may then be used to limit the default range of 
  \acronym{MLE} +/- 3.5 * \acronym{s.e.}  A further possibility is to
  fine-tuning the constants (number of iterations, convergence 
  threshold) that control the \acronym{GLM} fit through the 
  \code{control} argument. 
    
  \code{cond.glm} may also dump if the estimate of the parameter of 
  interest is large (tipically > 400) in absolute value.  This may be
  avoided by reparametrizing the model.
    
  The output of \code{cond.glm} may be unreliable if part of the data
  have a degenerate distribution.  For example take the fungal 
  infections treatment data contained in the \code{\link{fungal}} data
  frame.  Of the five \eqn{2\times 2}{2x2} contingency tables, two 
  (the first and the third) are degenerate.  As they make no 
  contribution to the exact conditional likelihood, they should be 
  omitted from the approximate conditional fit.  
}
\references{
  Brazzale, A. R. (1999) Approximate conditional inference for 
  logistic and loglinear models.  \emph{J. Comput. Graph. Statist.}, 
  \bold{8}, 1999, 653--661.

  Brazzale, A. R. (2000) \emph{Practical Small-Sample Parametric 
  Inference}.  Ph.D. Thesis N. 2230, Department of Mathematics, Swiss
  Federal Institute of Technology Lausanne.

  Davison, A. C. (1988) Approximate conditional inference in 
  generalized linear models.  \emph{J. R. Statist. Soc.} B, \bold{50},
  445--461.

  Pierce, D. A. and Peters, D. (1992) Practical use of higher order 
  asymptotics for multiparameter exponential families (with 
  Discussion).  \emph{J. R. Statist. Soc.} B, \bold{54}, 701--737.
}
\seealso{
  \code{\link{cond.object}}, \code{\link{summary.cond}}, 
  \code{\link{plot.cond}}, \code{\link[stats]{glm}}
}
\examples{
## Crying Babies Data
data(babies)
babies.glm <- glm(formula = cbind(r1, r2) ~ day + lull - 1, 
                  family = binomial, data = babies)
babies.cond <- cond(object = babies.glm, offset = lullyes)
babies.cond
##
## If one wishes to avoid the generalized linear model fit:
babies.cond <- cond.glm(formula = cbind(r1, r2) ~ day + lull - 1, 
                        family = binomial, data = babies, offset = lullyes)
babies.cond

## Urine Data 
## (function call as offset variable) 
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

## Fungal Infections Treatment Data (numerical instabilities around the
##                                   MLE)
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
\keyword{regression}
\keyword{models}
\keyword{methods}
