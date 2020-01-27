# Compute total amount of time images were taken based on max minus
# min for each group of images.
#
library("stringr")
library("dplyr")
lf <- NULL
sdDirs <- list.files(pattern = "StarDestroyer[01][0-9]")
for(d in sdDirs) {
  lf <- c(lf, list.files(d, full=TRUE))
}
d <- file.info(lf)
fname <- basename(row.names(d))
ymdHM_mat <- str_split_fixed(fname, "-", 6)[, 1:5]
dTime <- d %>%
  mutate(ymdHM = apply(ymdHM_mat, 1, function(y) paste(y, collapse="-"))) %>%
  group_by(ymdHM) %>%
  summarise(Min=min(mtime), Max=max(mtime),
    ElapsedTime=difftime(Max, Min, units="mins"))
TotalMin <- sum(as.numeric(dTime[["ElapsedTime"]]))
c(TotalMin=TotalMin, DecimalHours=TotalMin/60)
c(Hours=trunc(TotalMin/60), Minutes=(TotalMin/60 - trunc(TotalMin/60))*60)
