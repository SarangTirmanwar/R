library(micromapST)
cancer <- read.csv(file="F:/george mason/Stat 515/homework/assignment 2/uteruscancer.csv",
header=T, as.is=TRUE)
cancer
str(cancer)
type=c("maptail","id","dotconf","dotconf")
lab1=c("","","Age Adjusted Death Rate","Recent 5-Year Trend")
lab2=c("","","at 95% CI","at 95%")
lab3=c(NA,NA,"confidence intervals","confidence intervals")
col1 = c(NA,NA,"Age.Adjusted.Death.Rate","Recent.5.Year.Trend")
col2 = c(NA,NA,"Lower.95..CI","Lower.95..CI.Trend")
col3 = c(NA,NA,"Upper.95..CI","Upper.95..CI.Trend")
panelDesc <- data.frame(type,lab1,lab2,lab3,col1,col2,col3)
t(panelDesc) 
fName = "uteruscancer.pdf"
pdf(file=fName,width=7.5,height=10)

micromapST(cancer,panelDesc,
               rowNamesCol="State",
               rowNames="full",sortVar="Recent.5.Year.Trend",ascend=FALSE,
           title=c("Age-adjusted death rates and average annual percent change",
                   "for uterus cancer in females ages 50 and over"),
           ignoreNoMatches=TRUE)

dev.off()



