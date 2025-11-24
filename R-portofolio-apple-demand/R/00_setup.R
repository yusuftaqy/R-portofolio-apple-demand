###############################################################
# 00_setup.R
# PURPOSE: Load libraries & import dataset
###############################################################

# --- Load packages (NO install.packages here for portfolio) ---
library(readxl)
library(car)
library(carData)
library(psych)
library(data.table)
library(lmtest)
library(zoo)
library(Hmisc)
library(ggplot2)
library(sandwich)
library(stargazer)

# --- Load data (using relative path) ---
apple_data <- read_excel("data/dataset2_apple.xls")
apple_data <- as.data.frame(apple_data)

# --- Basic info ---
head(apple_data)
str(apple_data)
dim(apple_data)
