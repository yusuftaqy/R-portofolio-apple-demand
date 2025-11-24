###############################################################
# 01_descriptive.R
# PURPOSE: Descriptive statistics & plots
###############################################################

# Summary statistics
summary(apple_data)
psych::describe(apple_data)

# Histograms
hist(apple_data$ecolbs, main="Histogram of Organic Apple Quantity",
     xlab="Quantity (lbs)", col="lightblue", border="black", prob=TRUE)

hist(apple_data$ecoprc, main="Histogram of Organic Apple Price",
     xlab="Price ($)", col="lightblue", border="black", prob=TRUE)

hist(apple_data$regprc, main="Histogram of Regular Apple Price",
     xlab="Price ($)", col="lightblue", border="black", prob=TRUE)

hist(apple_data$educ, main="Histogram of Years of Education",
     xlab="Years", col="lightblue", border="black", prob=TRUE)

hist(apple_data$faminc, main="Histogram of Family Income",
     xlab="Income (thousands $)", col="lightblue", border="black", prob=TRUE)

hist(apple_data$hhsize, main="Histogram Household Size",
     xlab="Persons", col="lightblue", border="black", prob=TRUE)

# Scatter plot
scatter.smooth(x=apple_data$ecoprc, y=apple_data$ecolbs,
               xlab="Harga Apel Organik", ylab="Permintaan",
               main="ecolbs ~ ecoprc")

# Correlation matrix
vars <- c("ecolbs","ecoprc","regprc","faminc","educ","hhsize","inseason")
rcorr(as.matrix(apple_data[vars]))
