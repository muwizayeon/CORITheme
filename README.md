
<!-- README.md is generated from README.Rmd. Please edit that file -->

# CORITheme

<!-- badges: start -->

[![R-CMD-check](https://github.com/muwizayeon/CORITheme/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/muwizayeon/CORITheme/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->


Welcome to the CORITheme package! The goal is to make the process of
creating publication-ready graphics and charts as easy as possible.
Here’s how to start.


## Installation

You can install the development version of CORITheme from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("muwizayeon/CORITheme")
```

``` r
library(CORITheme)
## basic example code
```

## Bar Charts

Like line graphs, bar charts can show trends in data quite effectively.
However, bar charts are particularly useful (and especially popular)
because of their ability to allow audiences to make comparisons quickly
and efficiently (for example, one category is twice as large as another
category).

###One Group

Here’s the simplest type of bar chart. There is just one group
visualized over multiple categories. This is what most people picture
when thinking about bar charts.

As an example, here’s the population of American Indians in xx County in
xx year.

    # Code from Harsh's horizontal one-color bar chart

Add photo of Harsh’s plot here

Notice the horizontal format of the bars. This is accomplished by
attaching the coord_flip() function to the plot code (as seen above).
Use horizontal bars when you have more than items to visualize and when
the labels are on the longer side and would appear messy or squished if
written along the bottom of the plot.

**Tip:** The theme also works for vertical bars; simply omit the
coord_flip() function.

###Two Groups

The beauty of bar charts shines through when using more than one group.
This chart format allows for simple comparisons that humans can perceive
quickly.

Here’s an example of a dodge chart (one that compares two groups
side-by-side). The user can easily compare different races (?) for
various counties across the country.

    # Code from Meongsu's dodge plot

Add photo of Meongsu’s plot here

**Tip:** The theme is quite flexible. The x-axis can support any type of
categorical variable, whether it is geographic, race or time data.

Similar to dodge charts are stacked charts in which the groups are
stacked instead of next to each other.

Here’s an example comparing the Asian and Hispanic populations in
various rural communities.

    #Start off with population data from the U.S. Census Bureau's ACS
    ggplot(population_by_race_ah, aes(x=county, y=population, fill=race)) + 
        geom_bar(stat='identity') +
        labs(title = "Asian and Hispanic populations\nin rural communities",
             subtitle = 'All estimates are across 2019.',
             x="Year", 
             y='Population') + 
        theme_cori() + 
        scale_fill_cori(palette='ctg2gn') + #Use the color palette for the two greens
        cori_legend()

Add photo of Matt’s plot here

**Tip:** For added clarity and a greater sense of the data, the package
allows you to add a horizontal trend line with an average.

Another interesting way to visualize the comparisons between two groups
is to use a population pyramid. At its core, this is simply two bar
charts that are rotated and positioned side-by-side.

The following example compares the share of individuals with high-speed
internet in Jefferson County, Alabama, over time, broken down by race.

    #Start with data on high speed internet access in Jefferson County Alabama
    ggplot(internet_access_sample_data, aes(x=as.factor(year), y=percent_high_speed_internet, fill=race)) + 
        geom_bar(data = subset(internet_access_sample_data, race=="black"), stat = "identity") +
        geom_bar(data = subset(internet_access_sample_data, race=="white"), stat = "identity",                               aes(y=-percent_high_speed_internet)) + 
        coord_flip() +
        labs(title = "Percent with high-speed internet\nin Jefferson County, AL",
             subtitle = 'High-speed internet rates among White individuals were\nalmost double what they were among             Black individuals.',
              x="Year", 
              y='\nPercent with high-speed internet') +
        theme_cori() + 
        scale_fill_cori(palette='ctg2gn') + 
        cori_legend()

Add photo of Matt’s plot here

**Tip:** Use this graph format to compare two groups over time. It is
usually used for comparing men and women, but it works as well for other
categories.

**Tip:** Note that the time variable (x variable) must be a factor.

###Multiple Groups

With three or more groups, bar charts can help put the magnitude of
different variables in perspective.

Here’s an example of visualizing multiple racial categories across two
different years.

    # Code from Harsh's dodge 

Add photo of Harsh’s plot here

**Tip:** Make use of the several colors in the CORI custom palettes. The
following palettes will be helpful when creating different bar charts:
*ctg2gn: emerald and mint *ctg2or: orange and light orange *ctg2pu:
purple and light purple *ctg2bu: blue and light blue \*ctg7: emerald,
mint, gold, orange, blue, purple and blue
