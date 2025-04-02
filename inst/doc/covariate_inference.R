## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(AllelicSeries)

## -----------------------------------------------------------------------------
set.seed(101)
data <- AllelicSeries::DGP(n = 1e3)
head(data$covar)

## -----------------------------------------------------------------------------
# Format score test data.frame.
df <- data.frame(data$covar)
df$y <- data$pheno

# Case of a continuous phenotype.
# An intercept is omitted from the call to `lm` because one is already 
# contained in the covariate matrix.
fit <- lm(y ~ 0 + ., data = df)
summary(fit)

## ----eval = FALSE-------------------------------------------------------------
#  results <- AllelicSeries::COAST(
#    anno = data$anno,
#    geno = data$geno,
#    pheno = data$pheno,
#    covar = data$covar,
#    score_test = TRUE
#  )

## -----------------------------------------------------------------------------
# Example of fitting the baseline allelic series model.
g <- Aggregator(anno = data$anno, geno = data$geno, method = "none")
colnames(g) <- c("g1", "g2", "g3")
df_base <- cbind(data.frame(g), df)
fit <- lm(y ~ 0 + ., data = df_base)
summary(fit)

# Example of fitting the allelic series sum model.
g <- Aggregator(anno = data$anno, geno = data$geno, method = "sum")
colnames(g) <- c("g_sum")
df_sum <- cbind(data.frame(g), df)
fit <- lm(y ~ 0 + ., data = df_sum)
summary(fit)

# Example of fitting the allelic series max model.
g <- Aggregator(anno = data$anno, geno = data$geno, method = "max")
colnames(g) <- c("g_max")
df_max <- cbind(data.frame(g), df)
fit <- lm(y ~ 0 + ., data = df_max)
summary(fit)

