\name{multi_meta}
\alias{multi_meta}
\title{Meta-analysis of multivariate GWAS results}
\usage{
  multi_meta(files = c(), N = c(),
    output.file = "Meta_Results.txt", size.chunks = 5e+06,
    min.pop = 2, sep = "\t")
}
\arguments{
  \item{files}{A vector containing the names of the results
  files to meta-analyse. These can be outputs from GEMMA
  multivariate analysis or similar (see \strong{Details}).
  Furthermore they can be single-chromosome or genome-wide
  results.}

  \item{N}{A vector containing sample sizes for each of the
  above files. This parameter is optional and is only
  required for computing the overall allele frequency.}

  \item{output.file}{The name of the output file.}

  \item{size.chunks}{Size of each chunk to be read and
  processed. Default is 5,000,000 (5 Mb). This size will
  require very low memory usage. Increase this parameter if
  more memory is allocated or if the number of cohorts is
  limited. Read more about the chunks in \strong{Details}.}

  \item{min.pop}{Minimum number of populations required per
  SNP to compute meta-analysis. Default is 2, it can be any
  number up to the total number of cohorts analysed.}

  \item{sep}{Separator for reading input files.}
}
\description{
  \code{multi_meta} returns the meta-analysis results for
  multivariate GWAS across different cohorts.
}
\details{
  This function applies an inverse-variance based method to
  meta-analyse multivariate GWAS results. In particular,
  given \emph{n} different cohorts, for which \emph{p}
  phenotypes have been tested for genome-wide association,
  the results for each cohort will have \emph{p} different
  effect size coefficients i.e. beta values (one per each
  phenotype) and a variance/covariance \emph{pxp} matrix
  representing beta's variances and covariances. In
  particular, the function is built to consider the output
  from the GEMMA software multivariate association testing.
  If your output is not produced with GEMMA, the function
  works on any results file containing the following column
  names: \itemize{ \item{\strong{chr} Chromosome}
  \item{\strong{ps} Position} \item{\strong{rs} SNP name}
  \item{\strong{allele1} Effect allele}
  \item{\strong{allele0} Non-effect allele}
  \item{\strong{af} Effect-allele frequency}
  \item{\strong{beta_1}, \strong{beta_2}, ...,
  \strong{beta_p} Effect sizes for each of the \emph{p}
  traits} \item{\strong{Vbeta_1_1}, \strong{Vbeta_1_2},
  ..., \strong{Vbeta_1_p}, \strong{Vbeta_2_2}, ...,
  \strong{Vbeta_2_p}, ..., \strong{Vbeta_p_p}
  variance-covariance matrix entries (diagonal and upper
  triangle values only, since this matrix is symmetric) } }

  The function divides input files into chunks based on
  position. Only one chunk at a time is read and analysed;
  thus a limited amount of data is loaded in the workspace
  at one given time. Default chunk dimension is 5 Mb for
  which low memory is required (<250 MB for 2 cohorts). If
  you have larger RAM availability, sparse markers or a
  limited number of cohorts, change chunks' dimension from
  the command line.
}
\examples{
file1=system.file("extdata", "Example_file_1.txt", package="MultiMeta")
file2=system.file("extdata", "Example_file_2.txt", package="MultiMeta")
multi_meta(files=c(file1,file2), N=c(1200,600), sep=" ",
output.file="Output_from_running_example.txt")
}

