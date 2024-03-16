
##########################################KM

training_data <- read.table(".csv", sep = ",", head = T)
library(survminer)
library(survival)
Signature_OS_training <- survfit(Surv(time,status)~risk,data=training_data)
ggsurvplot(Signature_OS_training,training_data,size=1,
           palette = "nejm",pval = TRUE,risk.table = TRUE,conf.int=F,risk.table.col = "strata",
           break.x.by=10,break.y.by=0.2,xlim=c(0,100),axes.offset=T)


