library(tidyverse)
library(lme4)

data=read_csv("IsWin.csv")

data$NameShort=as.factor(data$NameShort)
model=glmer(data=data,win?home+(1|NameShort),family=binomial)
summary(model)

model2=lmer(data=data,PTS?home+(1|NameShort))
summary(model2)
