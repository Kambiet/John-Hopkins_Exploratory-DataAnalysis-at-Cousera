  ###Loading data
  NEI <- readRDS("summarySCC_PM25.rds")
  SCC <- readRDS("Source_Classification_Code.rds")

###Creating the baltimore subset  
  baltimorEmissions <- subset(NEI, fips == "24510")
  
  ###Summing emission by year
  totalbaltimorEmission <- tapply(baltimorEmissions$Emissions, INDEX=baltimorEmissions$year, sum)
  
  ###Barplot
  png("plot2.png",width=480,height=480,units="px")
  barplot(totalbaltimorEmission, main = "Total Emissions in Baltimore by Year", xlab = "Year", ylab = "Emissions")
  
  dev.off()  
  