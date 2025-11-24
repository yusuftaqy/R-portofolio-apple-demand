# 📊 Apple Demand Econometrics Project (R Portfolio)

This project analyzes the demand for organic apples using R through a series of econometric methods.  
It was originally created as a university empirical project and has been reorganized into a clean, reproducible portfolio piece.

---

## 🎯 Project Overview

The goal of this project is to identify the factors that influence household demand for **organic apples**.  
Using cross-section data, I estimated several regression models and conducted diagnostics to evaluate the reliability of the estimates.

This project demonstrates skills in:

- Data exploration  
- Visualization  
- Econometric modeling  
- Functional form adjustments  
- Model diagnostics  
- Robust standard errors  
- Reproducible scripting in R  

---

## 🧑‍💻 What I Did in This Project

### **1. Data Loading & Preparation**
- Loaded dataset using `readxl`
- Converted the data frame, viewed structure, dimensions, and variable types
- Cleaned and prepared variables for analysis

---

### **2. Descriptive Statistics & Visualization**
- Computed summary statistics and detailed descriptive analysis using `psych::describe()`
- Created visualizations:
  - Histograms for all main variables
  - Scatter plot between price and organic apple quantity  
- Generated a correlation matrix using `Hmisc::rcorr()`

---

### **3. Econometric Modeling**

I estimated **three regression models**:

#### **Model 1 — Baseline Linear Regression**
Evaluates the effect of prices and household characteristics on organic apple demand.

#### **Model 2 — Log-Income Model**
Includes a log transformation of income to account for diminishing marginal effects.

#### **Model 3 — Interaction Model**
Tests whether price sensitivity changes when apples are in season using an interaction term.

---

### **4. Gauss–Markov Assumption Tests**

To validate the regression results, I checked:

- **Multicollinearity** using VIF  
- **Heteroskedasticity** using Breusch–Pagan test  
- **Robust Standard Errors** using White HC0 correction  
- **Joint Hypothesis Testing** on price & interaction term  

---

### **5. Key Findings**

- Organic apple price (`ecoprc`) has a **negative and statistically significant** effect on quantity purchased.
- Regular apple price (`regprc`) has a **positive and significant** effect, indicating substitution.
- Income, education, and household size were **positive but not significant**.
- R² is low (~0.04), suggesting other unobserved factors also influence demand.
- The interaction between price and seasonality ha
