# COVID-19 Data Analysis and Visualization 

This project uses the `covid19.analytics` package to analyze COVID-19 data.

## Getting Started

First, load the `covid19.analytics` library:

```r
library(covid19.analytics)
```

## Data Collection

* Aggregated COVID-19 data:

```r
ag <- covid19.data(case='aggregated')
```

* Time series data for all cases:

```r
tsa <- covid19.data(case = 'ts-ALL')
```

* Time series data for confirmed cases:

```r
tsc <- covid19.data(case = 'ts-C')
```

* Time series data for deaths:

```r
tsd <- covid19.data(case = 'ts-D')
```

* Time series data for recovered cases:

```r
tsr <- covid19.data(case = 'ts-R')
```

* Time series data for active cases:

```r
tsa <- covid19.data(case = 'ts-A')
```

# Data Analysis

We performed several amazing analyses on the data.

1. Generate a summary report of the latest  10 entries in the data:
   
```r
report.summary(Nentries = 10, graphical.output=T)
```

2. Calculate the total number of cases per location (US and India in this case):

```r
tots.per.location(c('US', 'India'))
```

3. Calculate the total number of cases per location (US and India in this case) and plot the results:

```r
tots.per.location(c('US', 'India'), graphical.output=T)
```

4. Calculate the growth rate of COVID-19 cases in India:

```r
growth.rate(tsc, geo.loc = 'india')
```


# Data Visualization

We also created some amazing visualizations of the data.

1. Plot the total number of cases in India over time:
    
```r
totals.plt(tsa,'India')
```

2. Plot the total number of cases in India over time and save the plot as a PDF file:

```r
totals.plt(tsa,'India', graphical.output=T, file.name='India.pdf')
```

3. Generate a live map of the spread of COVID-19:
   
```r
live.map(tsa)
```

4. We generate a SIR (Susceptible, Infected, Recovered) model for India:

```r
generate.SIR.model(tsa, 'India')
```
