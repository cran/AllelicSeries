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

## -----------------------------------------------------------------------------
results@Betas

## -----------------------------------------------------------------------------
results@Counts

## -----------------------------------------------------------------------------
results@Pvals

## -----------------------------------------------------------------------------
set.seed(102)

# Generate data.
n <- 1e3
data <- AllelicSeries::DGP(
  n = n,
  snps = 10,
  prop_anno = c(1, 1, 1) / 3
)

# Collapse ultra-rare variants.
collapsed <- AllelicSeries::CollapseGeno(
  anno = data$anno, 
  geno = data$geno,
  min_mac = 11
)

# Variants collapsed to form each aggregate variant.
head(collapsed$vars)

## ----eval=FALSE---------------------------------------------------------------
#  # Run COAST on the collapsed data.
#  results <- AllelicSeries::COAST(
#    anno = collapsed$anno,
#    covar = data$covar,
#    geno = collapsed$geno,
#    pheno = data$pheno,
#    min_mac = 10
#  )

## ----cache=TRUE---------------------------------------------------------------
set.seed(102)

# Generate data.
n <- 1e2
data <- AllelicSeries::DGP(
  n = n,
  snps = 400,
  beta = c(1, 2, 3, 4) / sqrt(n),
  prop_anno = c(0.4, 0.3, 0.2, 0.1),
  weights = c(1, 1, 1, 1)
)

# Run COAST-SS.
results <- AllelicSeries::COAST(
  anno = data$anno,
  covar = data$covar,
  geno = data$geno,
  pheno = data$pheno,
  weights = c(1, 2, 3, 4)
)
show(results)

## ----eval = FALSE-------------------------------------------------------------
#  AllelicSeries::COAST(
#    anno = anno,
#    geno = geno,
#    pheno = pheno,
#    covar = covar,
#    apply_int = TRUE
#  )

## ----eval = FALSE-------------------------------------------------------------
#  AllelicSeries::COAST(
#    anno = anno,
#    geno = geno,
#    pheno = pheno,
#    covar = covar,
#    include_orig_skato_all = TRUE,
#    include_orig_skato_ptv = TRUE,
#    ptv_anno = 3
#  )

## ----eval = FALSE-------------------------------------------------------------
#  AllelicSeries::COAST(
#    anno = anno,
#    geno = geno,
#    pheno = 1 * (pheno > 0),
#    covar = covar,
#    is_pheno_binary = TRUE
#  )

## ----eval = FALSE-------------------------------------------------------------
#  AllelicSeries::COAST(
#    anno = anno,
#    geno = geno,
#    pheno = pheno,
#    covar = covar,
#    min_mac = 2
#  )

## ----eval = FALSE-------------------------------------------------------------
#  AllelicSeries::COAST(
#    anno = anno,
#    geno = geno,
#    pheno = pheno,
#    covar = covar,
#    return_omni_only = TRUE
#  )

## ----eval = FALSE-------------------------------------------------------------
#  AllelicSeries::COAST(
#    anno = anno,
#    geno = geno,
#    pheno = pheno,
#    covar = covar,
#    score_test = TRUE
#  )

## ----eval = FALSE-------------------------------------------------------------
#  AllelicSeries::COAST(
#    anno = anno,
#    geno = geno,
#    pheno = pheno,
#    covar = covar,
#    weights = c(1, 2, 3)
#  )

