% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_expected_data.r
\name{extract_expected_data}
\alias{extract_expected_data}
\title{Extract the expected data values}
\usage{
extract_expected_data(data_ss_new = "data.ss_new", data_out = "ss3.dat")
}
\arguments{
\item{data_ss_new}{The location of the \code{.ss_new} file that was
generated from a run of SS.}

\item{data_out}{The location of the \code{.ss_new} file that was
generated from a run of SS.}
}
\description{
Read in a \code{data.ss_new} file, move the expected values up in
the file, and write it back out to a new data file.
}
\author{
Kotaro Ono
}
