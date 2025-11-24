###############################################################
# 02_models.R
# PURPOSE: Run regression models
###############################################################

# Model 1: Basic Multiple Regression
apple6 <- lm(ecolbs ~ ecoprc + regprc + faminc + educ + hhsize + inseason,
             data=apple_data)
summary(apple6)

# Model 2: Log income model 
apple7 <- lm(ecolbs ~ ecoprc + regprc + log(faminc) + educ + hhsize + inseason,
             data=apple_data)
summary(apple7)

# Model 3: Interaction model (ecoprc * inseason)
apple8 <- lm(ecolbs ~ ecoprc + regprc + ecoprc*inseason +
               faminc + educ + hhsize + inseason,
             data=apple_data)
summary(apple8)

# Optional: export to text/HTML if needed
# stargazer(apple6, apple7, apple8, type="text")
