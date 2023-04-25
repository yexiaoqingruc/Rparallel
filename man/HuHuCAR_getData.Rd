\name{HuHuCAR_getData}
\alias{HuHuCAR_getData}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Data Generation under Hu and Hu's covariate-adaptive randomization
}
\description{
Generates continuous or binary outcomes given patients' covariates, the underlying model and the Hu and Hu's covariate-adaptive randomization procedure.
}
\usage{
HuHuCAR_getData(n, cov_num, level_num, pr, type, beta, mu1, mu2, sigma, omega, p)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
    \item{n}{the number of patients.}
  \item{cov_num}{the number of covariates.}
  \item{level_num}{a vector of level numbers for each covariate. Hence the length of \code{level_num} should be equal to the number of covariates.}
  \item{pr}{a vector of probabilities. Under the assumption of independence between covariates, \code{pr} is a vector containing probabilities for each level of each covariate. The length of \code{pr} should correspond to the number of all levels, and the sum of the probabilities for each margin should be \code{1}.}
  \item{type}{a data-generating method. Optional input: \code{"linear"} or \code{"logit"}.}
  \item{beta}{a vector of coefficients of covariates. The length of \code{beta} must correspond to the sum of all covariates' levels.}
  \item{mu1,mu2}{main effects of treatment \code{1} and treatment \code{2}.}
  \item{sigma}{the error variance for the linear model. The default is 1. This should be a positive value and is only used when \code{type = linear}.}
  \item{omega}{a vector of weights at the overall, within-stratum, and within-covariate-margin levels. It is required that at least one element is larger than 0. Note that \code{omega} is only needed when \code{HuHuCAR} is to be used.}
  \item{p}{the biased coin probability. \code{p} should be larger than \code{1/2} and less than \code{1}. Note that \code{p} is only needed when \code{"HuHuCAR", "PocSimMIN"} and \code{"StrBCD"} are to be used.}
}
\details{
  To generate continuous outcomes, we use the linear model:\deqn{y_i = \mu_j+x_i^T\beta+\epsilon_i,}
  
  to generate binary outcomes, we use the logit link function:\deqn{P(y_i=1) = \frac{exp\{\mu_j+x_i^T\beta \}}{1+exp \{\mu_j+x_i^T\beta }},
  
  where \eqn{j} indicates patient \eqn{i} belongs to treatment \eqn{j}.
}
\value{
\code{HuHuCAR_getData} returns a size \eqn{cov_num+2 \times n} dataframe. The first \code{cov_num} rows represent patients' profile. The next row consists of patients' assignments and the final row consists of generated outcomes.
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
