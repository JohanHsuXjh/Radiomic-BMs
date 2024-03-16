
library(rms)
bc<-read.csv(".csv",sep=',',header=TRUE)
fit<-lrm(label ~.,data= bc,x=TRUE,y=TRUE)
cal<-calibrate(fit,method = "boot",B=1000)

plot(cal,xlim = c(0,1),ylim = c(0,1),
     xlab = "Predicted Probability",
     ylab = "Observed Probability",
     legend = T,cex.axis=1.2,cex.lab=1.2,
     main="Calibration Curve ")
