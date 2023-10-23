Created subset with only the 2 dates required using the command line, with this grep command:

`grep '^Date\|^[12]\/2\/2007' household_power_consumption.txt > power_consumption_subset.txt`

Loaded file using readr::read.delim, with several parameters to make file more usable:

- identified NA values (`na = "?"`), though there are none on the days in question
- identify column types with `col_types = c()`
- 

``

