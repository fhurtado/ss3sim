% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/case-write.R
\name{case_comp}
\alias{case_comp}
\title{Write a case file for length- or age-composition data}
\usage{
case_comp(fleets = 1, Nsamp = NULL, years = NULL, cpar = 2, type, case,
  spp)
}
\arguments{
\item{fleets}{Vector of fleet numbers, where the order of
\code{fleets} will dictate the order of all remaining arguments.}

\item{Nsamp}{A list of length \code{length(fleets)},
where each element of the list contains a vector of
sample sizes for each year for that given fleet.}

\item{years}{A list of length \code{length(fleets)},
where each element of the list contains a vector of
years for the given fleet.}

\item{cpar}{A vector of cpar for each fleet.}

\item{type}{A character value of \code{"agecomp"} or \code{"lcomp"},
to write age- or length-composition specifications, respectively.
Argument can be a vector (e.g., \code{c("agecomp", "lcomp")}) if you want
the case files to be the same for length and age compositions.}

\item{case}{The casenumber you want to write to.
If \code{case = 1} and \code{type = "agecomp"},
then the result will be \code{'agecomp1'}.}

\item{spp}{A vector of character values argument specifying the species.}
}
\description{
Use \R code to write arguments to the disk, which
will later be used in a \pkg{ss3sim} simulation.
}
\examples{
case_comp(fleets = 1:2, case = 30, spp = "cod",
  Nsamp = list(rep(10, 40), rep(10, 25)),
  years = list(61:100, 76:100), cpar = 2:1, type = "agecomp")
done <- file.remove("agecomp30-cod.txt")
}
