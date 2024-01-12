#############################################################
#
# Get to know R and the ncha dataset 
#
#############################################################


##### Read in the data
##### This requires an additional R package
##### You can install this package by running the code below, but
#####   only do so once. 

## highlight code to run once
# install.packages("readxl")

## Load the library to read the excel file
library(readxl)


#### Create a variable with the folder directory for the data file. You will
####    need to change this value for your own computer
dataDir = "/Users/braedenuvu/Documents/STAT-2050"
### Read in the Dataset
ncha = read_excel(paste(dataDir, 
                "NCHA-III WEB SPRING 2021 UTAH VALLEY UNIVERSITY  - TIMESTAMP.xlsx", 
                sep = "/"), sheet = "NCHA-III WEB SPRING 2021 UTAH V")

ncha = as.data.frame(ncha)
### Find the number of rows and columns
nrow(ncha)
ncol(ncha)

### Access the value in a specific location. 
### Remember that the format is [row number, column number]

ncha[100, 52]
ncha[150, 30]

### Table function and accessing a specific variable
table(ncha$RSEX)
table(ncha$N3Q1)

### A couple other items to just run
x = ncha$N3Q6
y = ncha$N3Q7

z = x + y
z[10]

x[100] == y[200]
x[150] == y[250]
### 1. 698 rows

### 2. 796 columns

### 3.a. 4

### b. "No accidents,"

### 4.  A. Female       Male         Missing      Transgender/GNC

###     400             268          8            22

### B.Excellent   Fair      Good      Poor    Very Good 

###   70          96        242        13     254 

### 5. a. z[10] = 240

### b. x[100] != y[200]

### c. x{150] != y[250]






