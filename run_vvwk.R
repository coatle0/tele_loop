args=commandArgs(trailingOnly=TRUE)

jm <- args[1]
nyear <- as.numeric(args[2])

vvol_wk(jm,nyear,1.8)