\name{qqplotter}
\alias{qqplotter}
\title{Quantile-quantile plot for observed vs. expected p-values}
\usage{
  qqplotter(p_values = NULL, res.file = NULL,
    p.num.col = NULL, sep = " ", out.file = "QQplot.pdf",
    title = "")
}
\arguments{
  \item{p_values}{A vector or a column in a data-set
  containing p-values to plot. This is an alternative to
  \code{file}.}

  \item{res.file}{File name of the \code{file} containing
  p-values to retrieve. This alternative does not require
  loading the results and is an alternative to the
  \code{p_values} parameter.}

  \item{p.num.col}{Number indicating which column of the
  \code{file} contains p-values. Specify only if you are
  using the \code{file} option.}

  \item{sep}{File separator to be used when reading
  \code{file}. Default is white space.}

  \item{title}{Title to appear on the plot.}

  \item{out.file}{File name for the output plot.}
}
\value{
  The output will be a pdf file containing the QQplot.
}
\description{
  \code{qqplotter} returns a pdf file containing the
  QQ-plot for a given set of p-values
}
\details{
  The function is useful for comparing expected and
  observed distributions of statistics arising from
  genome-wide testing. Two different types of input are
  allowed: \itemize{ \item an object such as vector or
  data-frame column, containing p-values; \item a file name
  and the column number for retrieving p-values from file.
  Note that separator is set to white space, can be changed
  accordingly if needed. The special character "*" is
  allowed for selecting more than on file (e.g. in case
  there is one file for each chromosome) but the p-values
  column position must be the same for all files. }
}

