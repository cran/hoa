\name{marg-package}
\alias{marg-package}
\alias{marg}
\docType{package}
\title{
Approximate marginal inference for regression-scale models
}
\description{
Likelihood inference based on higher order approximations
for linear nonnormal regression models
}
\details{
\tabular{ll}{
Package: \tab marg\cr
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
Built: \tab R 2.2.0; ; 2005-11-24 12:34:50; unix\cr
}

Index:
\preformatted{
Functions:
=========
cond                    Approximate Conditional Inference - Generic
                        Function
cond.rsm                Approximate Conditional Inference in
                        Regression-Scale Models
dHuber                  Huber's Least Favourable Distribution
family.rsm              Use family() on a "rsm" object
family.rsm.object       Family Object for Regression-Scale Models
logLik.rsm              Compute the Log Likelihood for
                        Regression-Scale Models
marg.object             Approximate Marginal Inference Object
plot.marg               Generate Plots for an Approximate Marginal
                        Inference Object
print.summary.marg      Use print() on a "summary.marg" object
residuals.rsm           Compute Residuals for Regression-Scale Models
rsm                     Fit a Regression-Scale Model
rsm.diag                Diagnostics for Regression-Scale Models
rsm.diag.plots          Diagnostic Plots for Regression-Scale Models
rsm.families            Generate a RSM Family Object
rsm.fit                 Fit a Regression-Scale Model Without Computing
                        the Model Matrix
rsm.null                Fit an Empty Regression-Scale Model
rsm.object              Regression-Scale Model Object
rsm.surv                Fit a Regression-Scale Model Without Computing
                        the Model Matrix
summary.marg            Summary Method for Objects of Class "marg"
summary.rsm             Summary Method for Regression-Scale Models
update.rsm              Update and Re-fit a RSM Model Call
vcov.rsm                Calculate Variance-Covariance Matrix for a
                        Fitted RSM Model


Datasets:
========
darwin                  Darwin's Data on Growth Rates of Plants
houses                  House Price Data
nuclear                 Nuclear Power Station Data
venice                  Sea Level Data
}

Further information is available in the following vignettes:
\tabular{ll}{
\code{Rnews-paper} \tab hoa: An R Package Bundle for Higher Order Likelihood Inference (source, pdf)\cr
}
}
\author{
S original by Alessandra R. Brazzale
<alessandra.brazzale@isib.cnr.it>.  R port by Alessandra R.
Brazzale <alessandra.brazzale@isib.cnr.it>, following earlier
work by Douglas Bates.

Maintainer: Alessandra R. Brazzale <alessandra.brazzale@isib.cnr.it>
}
\references{
}
\keyword{ package }
\seealso{
}
\examples{
}
