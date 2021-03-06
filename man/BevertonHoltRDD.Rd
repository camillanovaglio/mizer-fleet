% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/project_methods.R
\name{BevertonHoltRDD}
\alias{BevertonHoltRDD}
\title{Beverton Holt function to calculate density-dependent reproduction rate}
\usage{
BevertonHoltRDD(rdi, species_params, ...)
}
\arguments{
\item{rdi}{Vector of density-independent reproduction rates \eqn{R_p} for all
species.}

\item{species_params}{A species parameter dataframe. Must contain a column
R_max holding the maximum reproduction rate \eqn{R_{max}} for each species.}

\item{...}{Unused}
}
\value{
Vector of density-dependent reproduction rates.
}
\description{
Takes the density-independent rates \eqn{R_p} of egg production and returns
reduced, density-dependent reproduction rates \eqn{R} given as \deqn{R = R_p
\frac{R_{max}}{R_p + R_{max}}}{R = R_p R_{max}/(R_p + R_{max})} where
\eqn{R_{max}} are the maximum possible reproduction rates that must be
specified in a column in the species parameter dataframe.
}
\details{
This is only one example of a density-dependence. You can write your own
function based on this example, returning different density-dependent
reproduction rates. Two other examples provided are \code{\link[=RickerRDD]{RickerRDD()}}
and \code{\link[=SheperdRDD]{SheperdRDD()}}. For more explanation see
\code{\link[=setReproduction]{setReproduction()}}.
}
\seealso{
Other functions calculating density-dependent reproduction rate: 
\code{\link{RickerRDD}()},
\code{\link{SheperdRDD}()},
\code{\link{constantRDD}()},
\code{\link{noRDD}()}
}
\concept{functions calculating density-dependent reproduction rate}
