\name{betas_plot}
\alias{betas_plot}
\title{Summary plot of the effect sizes and their correlations for a SNP of interest}
\usage{
  betas_plot(SNP, res.file = NULL, data = NULL,
    trait.names = NULL, out.file = "Betas.pdf", col = NULL,
    orig.files = NULL, cohort.names = NULL)
}
\arguments{
  \item{SNP}{A SNP of interest, e.g. a SNP that is
  significantly associated to the analysed traits.}

  \item{res.file}{File name of the \code{multi_meta}
  results containing effect sizes for the above \code{SNP}.
  This is an alternative to \code{data}.}

  \item{data}{Object containing results from the
  \code{multi_meta} function and the above \code{SNP}. This
  is an alternative to \code{file}.}

  \item{trait.names}{Vector of analysed trait names to
  appear on the plot.}

  \item{out.file}{File name for the output plot.}

  \item{col}{Colours for the heat-map plot. Combinations of
  several colours are possible. If left blank a heat-map in
  scales of grey is produced.}

  \item{orig.files}{List of files with multivariate results
  for each cohort.}

  \item{cohort.names}{Names of the cohorts included in the
  meta-analysis.}
}
\value{
  The output is a pdf file containing the described plot.
}
\description{
  \code{betas_plot} returns a pdf file containing
  information about the meta-analysis combined effect sizes
  (beta coefficients) for a chosen SNP of interest.
}
\details{
  The plot produced can be a useful tool for visualizing
  effect sizes across all traits, and the correlation
  between them. The plot will have two panels: \enumerate{
  \item effect sizes with 95\% confidence interval for each
  trait; \item a heat-map showing correlations between
  betas. } Two different types of input are allowed:
  \itemize{ \item a data.frame, containing the output from
  the \code{multi_meta} function for at least the specified
  SNP. This is the best choice if results have already been
  loaded into the R workspace. \item a file name containing
  the output from \code{multi_meta} for at least the
  specified SNP. The separator field is set to white space.
  This file can be a subset of the complete results file
  (suggested), e.g. a file containing only significant
  SNPs. }
}

