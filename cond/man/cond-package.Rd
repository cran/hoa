\name{cond-package}
\alias{cond-package}
\docType{package}
\title{
Approximate conditional inference for logistic and loglinear
models
}
\description{
Higher order likelihood-based inference for logistic and
loglinear models
}
\details{
\tabular{ll}{
Package: \tab cond\cr
Version: \tab 1.0-0\cr
Date: \tab 2005-05-31\cr
LazyLoad: \tab yes\cr
LazyData: \tab yes\cr
Bundle: \tab hoa\cr
BundleDescription: \tab Various functions for higher order likelihood-based
inference\cr
Contains: \tab cond marg nlreg csampling\cr
Depends: \tab R (>= 2.0.1), statmod, survival\cr
License: \tab GPL (version 2 or later)\cr
URL: \tab http://www.r-project.org, http://www.isib.cnr.it/~brazzale/CS/\cr
Packaged: \tab Thu Nov 24 11:57:28 2005; brazzale\cr
Built: \tab R 2.2.0; ; 2005-11-24 12:34:22; unix\cr
}

Index:
\preformatted{
Functions:
=========
cond                    Approximate Conditional Inference - Generic
                        Function
cond.glm                Approximate Conditional Inference for Logistic
                        and Loglinear Models
cond.object             Approximate Conditional Inference Object
family.cond             Use family() on a "cond" object
family.summary.cond     Use family() on a "summary.cond" object
plot.cond               Generate Plots for an Approximate Conditional
                        Inference Object
print.summary.cond      Use print() on a "summary.cond" object
summary.cond            Summary Method for Objects of Class "cond"


Datasets:
========
aids                    AIDS Symptoms and AZT Use Data
airway                  Airway Data
babies                  Crying Babies Data
dormicum                Dormicum Data
fraudulent              Fraudulent Automobile Insurance Claims Data
fungal                  Fungal Infections Treatment Data
rabbits                 Rabbits Data
urine                   Urine Data
}

Further information is available in the following vignettes:
\tabular{ll}{
\code{Rnews-paper} \tab hoa: An R Package Bundle for Higher Order Likelihood Inference (source, pdf)\cr
}
}
\author{
S original by Alessandra R. Brazzale <alessandra.brazzale@unimore.it>.  
R port by Alessandra R. Brazzale <alessandra.brazzale@unimore.it>, following 
earlier work by Douglas Bates.

Maintainer: Alessandra R. Brazzale <alessandra.brazzale@unimore.it>
}
\references{
}
\keyword{ package }
\seealso{
}
\examples{
}
