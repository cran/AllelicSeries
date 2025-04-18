% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generate_data.R
\name{GenAnno}
\alias{GenAnno}
\title{Generate Genotype Annotations}
\usage{
GenAnno(snps, prop_anno = c(0.5, 0.4, 0.1))
}
\arguments{
\item{snps}{Number of SNPs in the gene.}

\item{prop_anno}{Proportions of annotations in each category. Length should
equal the number of annotation categories. Default of c(0.5, 0.4, 0.1) is
based on the approximate empirical frequencies of BMVs, DMVs, and PTVs.}
}
\value{
(snps x 1) integer vector.
}
\description{
Returns a vector of length = the number of columns (SNPs) in the genotype
matrix. Each SNP is categorized into one of L categories, where L is
determined by the length of \code{prop_anno}.
}
