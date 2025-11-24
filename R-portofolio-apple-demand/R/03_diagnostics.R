###############################################################
# 03_diagnostics.R
# PURPOSE: VIF, heteroskedasticity tests, robust SE, partial effects
###############################################################

# ------------------------
# Diagnostics for apple6
# ------------------------
vif(apple6)
bptest(apple6)

robust_apple6 <- coeftest(apple6, vcov. = hccm(apple6, type="hc0"))
robust_apple6

# ------------------------
# Diagnostics for apple7
# ------------------------
vif(apple7)
bptest(apple7)

robust_apple7 <- coeftest(apple7, vcov. = hccm(apple7, type="hc0"))
robust_apple7

# ------------------------
# Diagnostics for apple8
# ------------------------
vif(apple8)
bptest(apple8)

robust_apple8 <- coeftest(apple8, vcov. = hccm(apple8, type="hc0"))
robust_apple8

# Partial effect test (H0: ecoprc = 0 AND interaction = 0)
linearHypothesis(apple8, c("ecoprc=0", "ecoprc:inseason=0"), white.adjust="hc0")
