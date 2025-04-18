% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/input_checks.R
\name{CheckInputsSS}
\alias{CheckInputsSS}
\title{Input Checks for Summary Statistics}
\usage{
CheckInputsSS(anno, beta, se, lambda, ld, weights, is_skat = FALSE, maf = NULL)
}
\arguments{
\item{anno}{(snps x 1) annotation vector with values in c(0, 1, 2).}

\item{beta}{(snps x 1) vector of effect sizes for the coding genetic variants
within a gene.}

\item{se}{(snps x 1) vector of standard errors for the effect sizes.}

\item{lambda}{Genomic inflation factor.}

\item{ld}{(snps x snps) matrix of correlations among the genetic variants.
Although ideally provided, an identity matrix is assumed if not.}

\item{weights}{(L x 1) annotation category weights.}

\item{is_skat}{Logical, is the check for the SKAT test?}

\item{maf}{(snps x 1) vector of minor allele frequencies. Although ideally
provided, defaults to the zero vector.}
}
\value{
Logical indicating whether the matrix was positive definite.
}
\description{
Input Checks for Summary Statistics
}
