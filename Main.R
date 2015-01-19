data <- read.table( header=TRUE, text= "
  Volume_of_water_mL Mass_of_beaker_with_water_g Mass_of_water_g Density_of_water_g_per_mL
  1.00               30.946                      0.996           0.996
  2.00               31.928                      1.978           0.989
  3.00               32.948                      2.998           0.999
  4.00               33.951                      4.001           1.00
  5.00               34.995                      5.045           1.01
  "
  )
attach(data)

massOfBeaker <- 29.950
trueDensity <- 0.9982
meanDensity <- mean(Density_of_water_g_per_mL)
percentError <- ((meanDensity-trueDensity)/trueDensity)*100
standardDeviation <- sd(Density_of_water_g_per_mL)
relativeStandardDeviation <- (standardDeviation/meanDensity)*100

data
trueDensity
meanDensity
percentError
standardDeviation
relativeStandardDeviation

plot( x=Volume_of_water_mL, y=Mass_of_water_g, type="o",
      main="Mass vs Volume H2O", sub="Chem 161 Winter 2015 Lab 1",
      xlab="Volume of H2O (mL)", ylab="Mass of H2O (g)"
)