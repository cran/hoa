\name{hoa}
\Rdversion{2.1.2}
\alias{hoa}
\docType{package}
\title{
Higher Order Likelihood Inference
}
\description{
Performs likelihood-based inference for a wide range of regression models. Provides higher-order approximations for inference based on extensions  of saddlepoint type arguments as discussed in the book Applied Asymptotics: Case Studies in Small-Sample Statistics by Brazzale, Davison, and Reid (2007).
}
\details{
\tabular{ll}{
Package: \tab hoa\cr
Version: \tab 2.1.2\cr
Date: \tab 2015-07-13\cr
Depends: \tab R (>= 3.0.0)\cr
Imports: \tab graphics, statmod, stats, survival, utils\cr
Suggests: \tab boot, csampling\cr
License: \tab GPL (>= 2)\cr
URL: \tab http://www.r-project.org, http://statwww.epfl.ch/AA/\cr
LazyLoad: \tab yes\cr
LazyData: \tab yes\cr
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
                        Function
cond.rsm                Approximate Conditional Inference in
                        Regression-Scale Models
dHuber                  Huber's Least Favourable Distribution
family.rsm              Use family() on a "rsm" object
family.rsm.object       Family Object for Regression-Scale Models
logLik.rsm              Compute the Log Likelihood for
                        Regression-Scale Models
marg.object             Approximate Marginal Inference Object
plot.fr                 Plot a Fraser-Reid Object
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
tem                     Tangent exponential model Higher Order Likelihood
                        Approximation
update.rsm              Update and Re-fit a RSM Model Call
vcov.rsm                Calculate Variance-Covariance Matrix for a
                        Fitted RSM Model

Dmean                   Differentiate the Mean Function of a Nonlinear
                        Model
Dvar                    Differentiate the Variance Function of a
                        Nonlinear Model
contour.all.nlreg.profiles
                        Contour Method for 'nlreg' Objects
expInfo                 Returns the Expected Information Matrix --
                        Generic Function
expInfo.nlreg           Expected Information Matrix for 'nlreg'
                        Objects
logLik.nlreg            Compute the Log Likelihood for Nonlinear
                        Heteroscedastic Models
mpl                     Maximum Adjusted Profile Likelihood Estimation
                        -- Generic Function
mpl.nlreg               Maximum Adjusted Profile Likelihood Estimates
                        for a 'nlreg' Object
mpl.object              Maximum Adjusted Profile Likelihood Object
nlreg                   Fit a Nonlinear Heteroscedastic Model via
                        Maximum Likelihood
nlreg.diag              Nonlinear Heteroscedastic Model Diagnostics
nlreg.object            Nonlinear Heteroscedastic Model Object
obsInfo                 Returns the Observed Information Matrix --
                        Generic Function
obsInfo.nlreg           Observed Information Matrix for 'nlreg'
                        Objects
param                   Extract All Parameters from a Model -- Generic
                        Function
plot.nlreg.contours     Use plot() on a 'nlreg.contours' object
plot.nlreg.diag         Diagnostic Plots for Nonlinear Heteroscedastic
                        Models
plot.nlreg.profile      Use plot() on a 'profile.nlreg' and
                        'all.profiles.nlreg' object
profile.nlreg           Profile Method for 'nlreg' Objects
summary.all.nlreg.profiles
                        Summary Method for Objects of Class
                        'all.nlreg.profiles'
summary.fr              Likelihood-Based Confidence Intervals Based on
                        Fraser-Reid Object
summary.mpl             Summary Method for 'mpl' Objects
summary.nlreg           Summary Method for Nonlinear Heteroscedastic
                        Models
summary.nlreg.profile   Summary Method for Objects of Class
                        'nlreg.profile'
var2cor                 Convert Covariance Matrix to Correlation
                        Matrix -- Generic Function


Datasets:
========
aids                    AIDS Symptoms and AZT Use Data
airway                  Airway Data
babies                  Crying Babies Data
darwin                  Darwin's Data on Growth Rates of Plants
dormicum                Dormicum Data
fraudulent              Fraudulent Automobile Insurance Claims Data
fungal                  Fungal Infections Treatment Data
houses                  House Price Data
nuclear                 Nuclear Power Station Data
rabbits                 Rabbits Data
urine                   Urine Data
venice                  Sea Level Data
C1                      Herbicide Data (Chlorsulfuron)
C2                      Herbicide Data (Chlorsulfuron)
C3                      Herbicide Data (Chlorsulfuron)
C4                      Herbicide Data (Chlorsulfuron)
M2                      Herbicide Data (Metsulfuron Methyl)
M4                      Herbicide Data (Metsulfuron Methyl)
chlorsulfuron           Chlorsulfuron Data
daphnia                 'Daphnia Magna' Data
helicopter              Paper Helicopter Data
metsulfuron             Metsulfuron Methyl Data
ria                     Radioimmunoassay Data
}

Further information is available in the following vignettes:
\tabular{ll}{
\code{Rnews-paper} \tab hoa: An R Package for Higher Order Likelihood Inference (source, pdf)\cr
}
}
\author{
R port by Alessandra R. Brazzale <alessandra.brazzale@unimore.it>, following earlier work by Douglas Bates. The function tem is based on work by Anthony Davison <Anthony.Davison@epfl.ch>

Maintainer: Alex-Antoine Fortin <alex@fortin.bio>
}
\keyword{ package }
