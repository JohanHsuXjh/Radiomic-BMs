#install.packages("pROC")
library(pROC)
bc<-read.csv(".csv",sep=',',header=TRUE)
View(bc)
names(bc)
roc1<- roc(bc$label,bc$T)
roc2<- roc(bc$label,bc$PT)
roc3<- roc(bc$label, bc$Clinical)
roc4<- roc(bc$label,bc$x)
plot(roc1,col=c("#fdbf6f"),lwd=2,legacy.axes=T,xlim=c(1, 0),ylim=c(0,1),
     bty = "l",
     main="ROC Curves ",
     identity = TRUE,
     #auc.polygon=TRUE,
     #auc.polygon.col="#EEEEEE",
     grid.col=c("black", "black"),  # 设置两轴间隔线条的颜色
     # print.thres=TRUE, # 图像上输出最佳截断值
     print.auc=TRUE,
     #identity.col="darkgrey",
     identity.lty=2,
     identity.lwd=3,cex.axis=1.2,cex.lab=1.2)


plot(roc2, add=TRUE, col=c("#a6cee3"),lwd=2)
plot(roc3, add=TRUE, col=c("#b2df8a"),lwd=2)
plot(roc4, add=TRUE, col=c("#fb9a99"),lwd=2)
roc.test(roc3,roc4,method="delong")
ROC.result<-coords(roc1,"best",ret="all",transpose=FALSE)
ROC.result#各种指标的计算
ci.auc(roc5)#auc的95%置信区间
legend(0.6,0.4,
       bty = "n",   
       legend=c(),
       text.col = c("black","#fdbf6f","#a6cee3","#b2df8a","#fb9a99","#1f78b4"),
       text.font = 3,
       box.lwd = 2,
       col=c('white',"#fdbf6f","#a6cee3","#b2df8a","#fb9a99","#1f78b4"),
       lwd=2.5,lty=1) 
