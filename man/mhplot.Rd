\name{mhplot}
\alias{mhplot}
\title{Manhattan Plot for meta-analysis results}
\usage{
  mhplot(res.file = NULL, data = NULL,
    col = c("darkgrey", "lightgrey"),
    out.file = "mhplot.pdf", main = "MHplot",
    plab = "p_value", CHRlab = "chr", POSlab = "Position",
    sig.p = 5e-08, sug.p = 5e-07, sep = " ")
}
\arguments{
  \item{res.file}{File name for the file(s) containing
  meta-analysis results. For multiple files (e.g. one file
  for each chromosome) the special character "*" is
  allowed. This is an alternative to \code{data}.}

  \item{data}{Dataset containing meta-analysis results.
  This is an alternative to \code{file}, if results are
  already loaded in the R workspace.}

  \item{col}{Choice of two colours for the plot. They will
  be alternating for different chromosomes.}

  \item{out.file}{File name for the output.}

  \item{main}{Title to appear on plot.}

  \item{plab}{p-values label i.e. column name for the
  p-values column.}

  \item{CHRlab}{Chromosome label i.e. column name for the
  chromosome numbers column.}

  \item{POSlab}{Position label i.e. column name for the
  position numbers column.}

  \item{sig.p}{Significant p-values level.}

  \item{sug.p}{Suggestive p-values level.}

  \item{sep}{Separator used in \code{file}. Default is
  white space.}
}
\value{
  The output is a pdf file containing the Manhattan Plot.
}
\description{
  \code{mhplot} returns a pdf file containing the Manhattan
  plot of meta-analysis results.
}
\details{
  The function is useful for a quick overview of
  meta-analysis results. Two different types of input are
  allowed: \itemize{ \item a data frame containing
  chromosome, position and p-values to be plotted. \item a
  file name for retrieving information from file. Note that
  separator is set to white space, can be changed
  accordingly if needed. Special character "*" is allowed
  for selecting more than one file (e.g. in case there is
  one file for each chromosome). }
}

