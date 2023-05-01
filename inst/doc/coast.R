## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## -----------------------------------------------------------------------------
set.seed(101)
n <- 100
data <- AllelicSeries::DGP(
  n = n,
  snps = 300,
  beta = c(1, 2, 3) / sqrt(n),
)

# Annotations.
anno <- data$anno
head(anno)

# Covariates.
covar <- data$covar
head(covar)

# Genotypes.
geno <- data$geno
head(geno[,1:5])

# Phenotype.
pheno <- data$pheno
head(pheno)

## -----------------------------------------------------------------------------
results <- AllelicSeries::COAST(
  anno = anno,
  geno = geno,
  pheno = pheno,
  covar = covar
)
show(results)

## ---- eval = FALSE------------------------------------------------------------
#  AllelicSeries::COAST(
#    anno = anno,
#    geno = geno,
#    pheno = pheno,
#    covar = covar,
#    apply_int = TRUE
#  )

## ---- eval = FALSE------------------------------------------------------------
#  AllelicSeries::COAST(
#    anno = anno,
#    geno = geno,
#    pheno = pheno,
#    covar = covar,
#    include_orig_skato_all = TRUE,
#    include_orig_skato_ptv = TRUE,
#  )

## ---- eval = FALSE------------------------------------------------------------
#  AllelicSeries::COAST(
#    anno = anno,
#    geno = geno,
#    pheno = 1 * (pheno > 0),
#    covar = covar,
#    is_pheno_binary = TRUE
#  )

## ---- eval = FALSE------------------------------------------------------------
#  AllelicSeries::COAST(
#    anno = anno,
#    geno = geno,
#    pheno = pheno,
#    covar = covar,
#    return_omni_only = TRUE
#  )

## ---- eval = FALSE------------------------------------------------------------
#  AllelicSeries::COAST(
#    anno = anno,
#    geno = geno,
#    pheno = pheno,
#    covar = covar,
#    score_test = TRUE
#  )

## ---- eval = FALSE------------------------------------------------------------
#  AllelicSeries::COAST(
#    anno = anno,
#    geno = geno,
#    pheno = pheno,
#    covar = covar,
#    weights = c(1, 2, 3)
#  )

