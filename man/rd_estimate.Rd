% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/estimator.r
\name{rd_estimate}
\alias{rd_estimate}
\title{RD Estimation with Robust Confidence Intervals}
\usage{
rd_estimate(
  Y,
  X,
  cutpoint = NULL,
  bandwidth = NULL,
  kernel_method = "tri",
  bw_method = "mserd",
  cl = 95
)
}
\arguments{
\item{Y}{Nx1 vector containing dependent variable}

\item{X}{Nx1 vector containing running variable (forcing variable)}

\item{cutpoint}{Location of discontinuity.}

\item{bandwidth}{Specified the main bandwidth used to construct the RD point estimator. If not specified, bandwidth is computed by the companion command rdbwselect from rdrobust package.}

\item{kernel_method}{The kernel function used to construct the local-polynomial estimators. Options are \code{triangular} (default), \code{epanechnikov}, and \code{uniform}.}

\item{bw_method}{specifies the bandwidth selection to be used. By defauslt it computes both main (h) and bias (b). Options are:

\code{mserd} one common MSE-optimal bandwidth selector for the RD treatment effect estimator.

\code{msetwo} two different MSE-optimal bandwidth selectors (below and above the cut point) for the RD treatment effect estimator.

\code{msesum} one common MSE-optimal bandwidth selector for the sum of regression estimates.

\code{msecomb1} for \code{min(mserd, msesum)}.

\code{mescomb2} for \code{median(nsetwo, mserd, msesum)}, for each side of the cutoff separately.

\code{cerrd} one common CER-optimal bandwidth selector for the RD treatment effect estimator.

\code{certwo} two different CER-optimal bandwidth selectors (below and above the cutoff) for the RD treatment effect estimator

\code{cersum} one common CER-optimal bandwidth selector for the sum of regression estimates (as opposed to difference therof).

\code{cercomb1} for \code{min(cerrd, cersum)}

\code{cercomb2} for \code{median(certwo, cerrd, cerdsum)} for each side of the cutoff seperately.}

\item{cl}{The confidence lever for confidence intervals. The default is cl = 95.}
}
\value{
Named list of outputs.
}
\description{
\code{rd_estimate} calls the powerful function rdrobust from the rdrobust package but makes only the most important options available to the user to make the function easier to use. This function only performs local linear regression to construct the point-estimator.
}
\examples{

X <- runif(1000, -1, 1)
Y <- 10 + 5*X + 3*(X>=0)+rnorm(1000)
rd_estimate(Y,X)
summary(rd_estimate(Y,X))
}
\references{
Calonico, S., M. D. Cattaneo, and M. H. Farrell. 2018. On the Effect of Bias Estimation on Coverage Accuracy in Nonparametric Inference. Journal of the American Statistical Association, 113(522): 767-779.

Calonico, S., M. D. Cattaneo, and M. H. Farrell. 2020. Optimal Bandwidth Choice for Robust Bias Corrected Inference in Regression Discontinuity Designs. Econometrics Journal, 23(2): 192-210.

Calonico, S., M. D. Cattaneo, M. H. Farrell, and R. Titiunik. 2017. rdrobust: Software for Regression Discontinuity Designs. Stata Journal, 17(2): 372-404.

Calonico, S., M. D. Cattaneo, M. H. Farrell, and R. Titiunik. 2019. Regression Discontinuity Designs using Covariates. Review of Economics and Statistics, 101(3): 442-451.

Calonico, S., M. D. Cattaneo, and R. Titiunik. 2014a. Robust Nonparametric Confidence Intervals for Regression-Discontinuity Designs. Econometrica 82(6): 2295-2326.

Calonico, S., M. D. Cattaneo, and R. Titiunik. 2014b. Robust Data-Driven Inference in the Regression-Discontinuity Design. Stata Journal 14(4): 909-946.

Calonico, S., M. D. Cattaneo, and R. Titiunik. 2015a. Optimal Data-Driven Regression Discontinuity Plots. Journal of the American Statistical Association 110(512): 1753-1769.

Calonico, S., M. D. Cattaneo, and R. Titiunik. 2015b. rdrobust: An R Package for Robust Nonparametric Inference in Regression-Discontinuity Designs. R Journal 7(1): 38-51.

Cattaneo, M. D., B. Frandsen, and R. Titiunik. 2015. Randomization Inference in the Regression Discontinuity Design: An Application to the Study of Party Advantages in the U.S. Senate. Journal of Causal Inference 3(1): 1-24.
}
\author{
Samuel Gailliot, Texas A (and) M University, College Station, TX. samuel.gailliot@stat.tamu.edu
}
