library(ggplot2)
###Loading the data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

###subsetting the data
greps1<-unique(grep("coal", SCC$EI.Sector, ignore.case=TRUE, value=TRUE))  
data1<-subset(SCC, EI.Sector %in% greps1)
coal<-subset(NEI, SCC %in% data1$SCC)
greps1

###Making a ggplot of US coal related Emssions
png("plot4.png",width=480,height=480,units="px",bg="transparent")
ggplot(data=coal, aes(x=year, y=Emissions, fill = type)) + 
  geom_bar(stat="identity", position=position_dodge()) + 
  ggtitle("U.S. Coal Combustion-Related Emissions: 1999-2008")
dev.off()
