
library(rms)
library(rmda)
data<-read.csv("")
names(data)
model1<-decision_curve(label~,
                       data=data,
                       family=binomial(link='logit'),
                       thresholds=seq(0,1,by=0.01),
                       confidence.intervals=0.95,
                       study.design='case-control',
                       population.prevalence=0.4)
model2<-decision_curve(label~,
                       data=data,
                       family=binomial(link='logit'),
                       thresholds=seq(0,1,by=0.01),
                       confidence.intervals=0.95,
                       study.design='case-control',
                       population.prevalence=0.4)
model3<-decision_curve(label~,
                       data=data,
                       family=binomial(link='logit'),
                       thresholds=seq(0,1,by=0.01),
                       confidence.intervals=0.95,
                       study.design='case-control',
                       population.prevalence=0.4)
model4<-decision_curve(label~,
                       data=data,
                       family=binomial(link='logit'),
                       thresholds=seq(0,1,by=0.01),
                       confidence.intervals=0.95,
                       study.design='case-control',
                       population.prevalence=0.4)

List<-list(model1,model2,model3,model4)

plot_decision_curve(List,
                    curve.names=c(),
                    xlim=c(0,1),
                    cost.benefit.axis=FALSE,
                    col=c("#fdbf6f","#a6cee3"),
                    confidence.intervals=FALSE,
                    standardize=F,
                    legend.position ="bottomleft",
                    lwd = 3,
                    bty="U")

