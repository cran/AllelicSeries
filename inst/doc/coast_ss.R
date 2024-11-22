## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(AllelicSeries)

## ----cache=TRUE---------------------------------------------------------------
withr::local_seed(101)

# Generate data.
n <- 1e4
data <- AllelicSeries::DGP(
  n = n,
  snps = 300,
  beta = c(1, 4, 9) / sqrt(n),
)

# Generate summary statistics.
sumstats <- AllelicSeries::CalcSumstats(
  anno = data$anno,
  covar = data$covar,
  geno = data$geno,
  pheno = data$pheno
)

## ----cache=TRUE---------------------------------------------------------------
# COAST-SS, with LD and MAF provided.
full <- AllelicSeries::COASTSS(
  anno = sumstats$sumstats$anno,
  beta = sumstats$sumstats$beta,
  se = sumstats$sumstats$se,
  maf = sumstats$sumstats$maf,
  ld = sumstats$ld
)
show(full)

# COAST-SS, with LD and MAF omitted.
minimal <- AllelicSeries::COASTSS(
  anno = sumstats$sumstats$anno,
  beta = sumstats$sumstats$beta,
  se = sumstats$sumstats$se
)
show(minimal)

## ----cache=TRUE---------------------------------------------------------------
# COAST-SS, alternate weights.
results <- AllelicSeries::COASTSS(
  anno = sumstats$sumstats$anno,
  beta = sumstats$sumstats$beta,
  se = sumstats$sumstats$se,
  maf = sumstats$sumstats$maf,
  ld = sumstats$ld,
  weights = c(1, 4, 9)
)
show(results)

## ----cache=TRUE---------------------------------------------------------------
withr::local_seed(102)

# Generate data.
n <- 1e4
data <- AllelicSeries::DGP(
  n = n,
  snps = 400,
  beta = c(1, 2, 3, 4) / sqrt(n),
  prop_anno = c(0.4, 0.3, 0.2, 0.1),
  weights = c(1, 1, 1, 1)
)

# Generate summary statistics.
sumstats <- AllelicSeries::CalcSumstats(
  anno = data$anno,
  covar = data$covar,
  geno = data$geno,
  pheno = data$pheno
)

# Run COAST-SS.
results <- AllelicSeries::COASTSS(
  anno = sumstats$sumstats$anno,
  beta = sumstats$sumstats$beta,
  se = sumstats$sumstats$se,
  maf = sumstats$sumstats$maf,
  ld = sumstats$ld,
  weights = c(1, 2, 3, 4)
)
show(results)

