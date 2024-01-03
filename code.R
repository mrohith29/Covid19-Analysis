# Load the covid19.analytics library which provides functions to analyze COVID-19 data
library(covid19.analytics)

# Fetch aggregated COVID-19 data
ag <- covid19.data(case='aggregated')

# Fetch time series data for all cases
tsa <- covid19.data(case = 'ts-ALL')

# Fetch time series data for confirmed cases
tsc <- covid19.data(case='ts-confirmed')

# Generate a summary report of the latest 10 entries in the data
# The graphical.output parameter is set to TRUE to generate graphical output
report.summary(Nentries = 10, graphical.output=T)

# Calculate the total number of cases per location
# Here we are interested in the total number of cases in the US and India
tots.per.location(tsc, geo.loc = c('us','india'))

# Calculate the growth rate of COVID-19 in India
growth.rate(tsc, geo.loc = 'india')

# Plot the total number of cases in India over time
totals.plt(tsa,'India')

# Generate a live map of the spread of COVID-19
live.map(tsa)

# Generate a SIR (Susceptible, Infected, Recovered) model for India
# The total population of India is provided as a parameter to the function
generate.SIR.model(tsc,'India', tot.population =1407600000)