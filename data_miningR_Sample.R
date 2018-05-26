library(DMwR)
library(lattice)
library(Hmisc)

bwplot(size ~ a1, data=algae, ylab='River Size',xlab='Algal A1')

bwplot(size ~ a1, data=algae,panel=panel.bpplot,
       + probs=seq(.01,.49,by=.01)
       , datadensity=TRUE
       , + ylab='River Size'
       ,xlab='Algal A1'
       )



stripplot(season ~ a3|minO2,
          + data=algae[!is.na(algae$mnO2),]
          )