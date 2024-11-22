## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(AllelicSeries)

## ----eval=FALSE---------------------------------------------------------------
#  data <- AllelicSeries::DGP(
#    method = "none",
#    n = 100,
#    snps = 300,
#    prop_anno = c(0.5, 0.4, 0.1),
#    beta = c(1, 2, 3),
#    weights = c(1, 1, 1)
#  )

## ----eval=FALSE---------------------------------------------------------------
#  data <- AllelicSeries::DGP(
#    method = "sum",
#    n = 100,
#    snps = 300,
#    prop_anno = c(0.5, 0.4, 0.1),
#    beta = 1,
#    weights = c(1, 2, 3)
#  )

## ----eval=FALSE---------------------------------------------------------------
#  data <- AllelicSeries::DGP(
#    method = "max",
#    n = 100,
#    snps = 300,
#    prop_anno = c(0.5, 0.4, 0.1),
#    beta = 1,
#    weights = c(1, 2, 3)
#  )

## ----eval=FALSE---------------------------------------------------------------
#  data <- AllelicSeries::DGP(
#    method = "none",
#    random_signs = TRUE,
#    random_var = 1,
#    n = 100,
#    snps = 300,
#    prop_anno = c(0.5, 0.4, 0.1),
#    beta = c(1, 2, 3),
#    weights = c(1, 1, 1)
#  )

## ----eval=FALSE---------------------------------------------------------------
#  # Baseline model, 2 categories.
#  data <- AllelicSeries::DGP(
#    method = "none",
#    n = 100,
#    snps = 300,
#    prop_anno = c(0.6, 0.4),
#    beta = c(1, 2),
#    weights = c(1, 1)
#  )
#  
#  # Baseline model, 4 categories.
#  data <- AllelicSeries::DGP(
#    method = "none",
#    n = 100,
#    snps = 300,
#    prop_anno = c(0.4, 0.3, 0.2, 0.1),
#    beta = c(1, 2, 3, 4),
#    weights = c(1, 1, 1, 1)
#  )
#  

