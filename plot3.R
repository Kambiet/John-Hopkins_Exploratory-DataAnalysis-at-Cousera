library(ggplot2)
###Loading data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

###Creating the baltimore subset  
baltimorEmissions <- subset(NEI, fips == "24510")

###plotting Emissions by year in Baltimore using ggplot2
png("plot3.png",width=480,height=480,units="px",bg="transparent")
ggplot(baltimorEmissions, aes(year, Emissions, fill = type)) +
       geom_bar(stat = "identity", position = "dodge") +
       ggtitle("Baltimore Emission by Type across Years")

dev.off()
