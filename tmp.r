a <- 1
print(a)
b <- 1:10
print(b)
frame <- data.frame(a,b)
print(frame)
setwd('/Users/maksdrzezdzon/Documents/Github/R/data')
df <- read.delim("Chapter 5/DownloadFestival(No Outlier).dat", header=TRUE)
print(df)

