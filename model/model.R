# Fit Main ML Model

load('data/cleaned.rda')

# Begin by Fitting An OLS Model

ols <- lm(cleaned) # Regresses all columns on 1st column