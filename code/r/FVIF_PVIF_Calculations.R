## Clear Console (Use at the beginning) ##
rm(list=ls()); pacman::p_unload(); while (!is.null(dev.list())) dev.off(); cat("\014"); pacman::p_load(tidyverse)
# Set up inflation rates and time periods
rates <- seq(0.01, 0.1, 0.01); years <- c(1:10, 20)
# Create empty matrices to hold FVIF and PVIF values
fvif_table <- matrix(nrow = length(years), ncol = length(rates))
pvif_table <- matrix(nrow = length(years), ncol = length(rates))
# Fill in FVIF and PVIF values
for (i in 1:length(rates)) {
  for (j in 1:length(years)) {
    fvif_table[j, i] <- round((1 + rates[i])^years[j], 3)
    pvif_table[j, i] <- round(1 / ((1 + rates[i])^years[j]), 3)
  }}
# Add row and column names
rownames(fvif_table) <- years; colnames(fvif_table) <- paste0(format(rates*100, nsmall=0), "%")
rownames(pvif_table) <- years; colnames(pvif_table) <- paste0(format(rates*100, nsmall=0), "%")
# Print FVIF and PVIF tables (centered)
cat("Future Value Interest Factor (FVIF) Table:\n"); print(fvif_table, justify = "center")
cat("\nPresent Value Interest Factor (PVIF) Table:\n"); print(pvif_table, justify = "center")
