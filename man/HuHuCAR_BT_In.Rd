\name{HuHuCAR_BT_In}
\alias{HuHuCAR_BT_In}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Power calculation using bootsrapt test under Hu and Hu' covariate-adaptive randomization
}
\description{
Calculate the simulated power using bootsrapt test under Hu and Hu' covariate-adaptive randomization. 
}
\usage{
HuHuCAR_BT_In(data, B, omega, p)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{a data frame. It consists of patients' profiles, treatment assignments and outputs. See \code{\link{getData}}.}
  \item{B}{an integer. It is the number of bootstrap samples. The default is \code{200}.}
  \item{omega}{a vector of weights at the overall, within-stratum, and within-covariate-margin levels. It is required that at least one element is larger than 0. Note that \code{omega} is only needed when \code{HuHuCAR} is to be used.}
  \item{p}{the biased coin probability. \code{p} should be larger than \code{1/2} and less than \code{1}. Note that \code{p} is only needed when \code{"HuHuCAR", "PocSimMIN"} and \code{"StrBCD"} are to be used.}
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
