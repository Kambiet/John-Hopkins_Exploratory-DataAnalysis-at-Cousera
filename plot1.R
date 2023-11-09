###Extracting data
  NEI <- readRDS("summarySCC_PM25.rds")
  SCC <- readRDS("Source_Classification_Code.rds")

##Summing Emission per Year
  totalEmission <- tapply(NEI$Emissions, INDEX=NEI$year, sum)

###BarPlot with labels
  png("plot1.png",width=480,height=480,units="px")
  barplot(totalEmission, main = "Total Emission by Year", xlab = "Year", ylab = "Emission")

dev.off()
