Google data analytics R course
================
Rahul Pandey
2022-09-22

# R Programming by Google

## Basic Syntax and operations

``` r
a <- "Hello"
b <-"World"
print(typeof(c(a,1.05,b)))
```

    ## [1] "character"

``` r
# creating vectors
numeric<-c(1L,2L,3L,4L,5L)
char<-c("one","two","three","four","five")
bool<-c(TRUE,FALSE,TRUE,FALSE,TRUE)
numeric_double<-c(1.04,2.04,3.04,4.04,5.04)
print(numeric)
```

    ## [1] 1 2 3 4 5

``` r
print(char)
```

    ## [1] "one"   "two"   "three" "four"  "five"

``` r
print(bool)
```

    ## [1]  TRUE FALSE  TRUE FALSE  TRUE

``` r
print(numeric_double)
```

    ## [1] 1.04 2.04 3.04 4.04 5.04

``` r
# typeof() function 
print(typeof(numeric))
```

    ## [1] "integer"

``` r
print(typeof(bool))
```

    ## [1] "logical"

``` r
print(typeof(char))
```

    ## [1] "character"

``` r
print(typeof(numeric_double))
```

    ## [1] "double"

``` r
# is.logical() function 
print(is.logical(bool))
```

    ## [1] TRUE

``` r
# is.integer() function
print(is.integer((numeric)))
```

    ## [1] TRUE

``` r
# is.double() function
print(is.double((numeric_double)))
```

    ## [1] TRUE

``` r
# is.character() function
print(is.character((char)))
```

    ## [1] TRUE

``` r
# finding the length of vector
print(length(numeric))
```

    ## [1] 5

``` r
print(length(numeric_double))
```

    ## [1] 5

``` r
print(length(char))
```

    ## [1] 5

``` r
print(length(bool))
```

    ## [1] 5

``` r
# naming each elements of vector
names(numeric)<- c("a","b","c","d","e")
print(numeric)
```

    ## a b c d e 
    ## 1 2 3 4 5

``` r
# creating lists in R
list1=list("abc",22L,TRUE,22.20)
print(list1)
```

    ## [[1]]
    ## [1] "abc"
    ## 
    ## [[2]]
    ## [1] 22
    ## 
    ## [[3]]
    ## [1] TRUE
    ## 
    ## [[4]]
    ## [1] 22.2

``` r
list2=list(list(list(1,2,3)))
str(list2)
```

    ## List of 1
    ##  $ :List of 1
    ##   ..$ :List of 3
    ##   .. ..$ : num 1
    ##   .. ..$ : num 2
    ##   .. ..$ : num 3

``` r
print(str(list1))
```

    ## List of 4
    ##  $ : chr "abc"
    ##  $ : int 22
    ##  $ : logi TRUE
    ##  $ : num 22.2
    ## NULL

``` r
list3<-list("a" =1,"b" =2,"c" =3,"d" =4,"e" =5)
print(list3)
```

    ## $a
    ## [1] 1
    ## 
    ## $b
    ## [1] 2
    ## 
    ## $c
    ## [1] 3
    ## 
    ## $d
    ## [1] 4
    ## 
    ## $e
    ## [1] 5

## Now lets import tidyverse package

install.packages(“tidyverse”)

``` r
library(tidyverse)
```

    ## -- Attaching packages --------------------------------------- tidyverse 1.3.2 --
    ## v ggplot2 3.3.6      v purrr   0.3.4 
    ## v tibble  3.1.8      v dplyr   1.0.10
    ## v tidyr   1.2.0      v stringr 1.4.1 
    ## v readr   2.1.2      v forcats 0.5.2 
    ## -- Conflicts ------------------------------------------ tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

## Lets work on DataTime in R

``` r
library(lubridate)
```

    ## 
    ## Attaching package: 'lubridate'

    ## The following objects are masked from 'package:base':
    ## 
    ##     date, intersect, setdiff, union

``` r
today()
```

    ## [1] "2022-09-23"

``` r
now()
```

    ## [1] "2022-09-23 21:00:27 IST"

``` r
date1<-dmy("12-09-2022")
date2=mdy("January 20th, 2021")
date3=ymd(20220912)
vec=c(date1,date2,date3)
print(typeof(vec))
```

    ## [1] "double"

``` r
vec
```

    ## [1] "2022-09-12" "2021-01-20" "2022-09-12"

``` r
typeof(date1)
```

    ## [1] "double"

``` r
# creating date-time
datetime1=ymd_hms("2021-01-20 20:11:59")
datetime2=mdy_hm("01/20/2021 08:01")
typeof(datetime1)
```

    ## [1] "double"

``` r
print(c(datetime1,datetime2))
```

    ## [1] "2021-01-20 20:11:59 UTC" "2021-01-20 08:01:00 UTC"

``` r
as_date(now())
```

    ## [1] "2022-09-23"

## Lets introduce the concept of DataFrame in R

``` r
# DataFrames
data.frame(numeric,char,numeric_double,bool)
```

    ##   numeric  char numeric_double  bool
    ## a       1   one           1.04  TRUE
    ## b       2   two           2.04 FALSE
    ## c       3 three           3.04  TRUE
    ## d       4  four           4.04 FALSE
    ## e       5  five           5.04  TRUE

``` r
# Matrix
matrix(c(1:6),nrow =2 )
```

    ##      [,1] [,2] [,3]
    ## [1,]    1    3    5
    ## [2,]    2    4    6

``` r
#Practice on sample dataset diamonds
head(diamonds)
```

    ## # A tibble: 6 x 10
    ##   carat cut       color clarity depth table price     x     y     z
    ##   <dbl> <ord>     <ord> <ord>   <dbl> <dbl> <int> <dbl> <dbl> <dbl>
    ## 1  0.23 Ideal     E     SI2      61.5    55   326  3.95  3.98  2.43
    ## 2  0.21 Premium   E     SI1      59.8    61   326  3.89  3.84  2.31
    ## 3  0.23 Good      E     VS1      56.9    65   327  4.05  4.07  2.31
    ## 4  0.29 Premium   I     VS2      62.4    58   334  4.2   4.23  2.63
    ## 5  0.31 Good      J     SI2      63.3    58   335  4.34  4.35  2.75
    ## 6  0.24 Very Good J     VVS2     62.8    57   336  3.94  3.96  2.48

``` r
str(diamonds)
```

    ## tibble [53,940 x 10] (S3: tbl_df/tbl/data.frame)
    ##  $ carat  : num [1:53940] 0.23 0.21 0.23 0.29 0.31 0.24 0.24 0.26 0.22 0.23 ...
    ##  $ cut    : Ord.factor w/ 5 levels "Fair"<"Good"<..: 5 4 2 4 2 3 3 3 1 3 ...
    ##  $ color  : Ord.factor w/ 7 levels "D"<"E"<"F"<"G"<..: 2 2 2 6 7 7 6 5 2 5 ...
    ##  $ clarity: Ord.factor w/ 8 levels "I1"<"SI2"<"SI1"<..: 2 3 5 4 2 6 7 3 4 5 ...
    ##  $ depth  : num [1:53940] 61.5 59.8 56.9 62.4 63.3 62.8 62.3 61.9 65.1 59.4 ...
    ##  $ table  : num [1:53940] 55 61 65 58 58 57 57 55 61 61 ...
    ##  $ price  : int [1:53940] 326 326 327 334 335 336 336 337 337 338 ...
    ##  $ x      : num [1:53940] 3.95 3.89 4.05 4.2 4.34 3.94 3.95 4.07 3.87 4 ...
    ##  $ y      : num [1:53940] 3.98 3.84 4.07 4.23 4.35 3.96 3.98 4.11 3.78 4.05 ...
    ##  $ z      : num [1:53940] 2.43 2.31 2.31 2.63 2.75 2.48 2.47 2.53 2.49 2.39 ...

``` r
glimpse(diamonds)
```

    ## Rows: 53,940
    ## Columns: 10
    ## $ carat   <dbl> 0.23, 0.21, 0.23, 0.29, 0.31, 0.24, 0.24, 0.26, 0.22, 0.23, 0.~
    ## $ cut     <ord> Ideal, Premium, Good, Premium, Good, Very Good, Very Good, Ver~
    ## $ color   <ord> E, E, E, I, J, J, I, H, E, H, J, J, F, J, E, E, I, J, J, J, I,~
    ## $ clarity <ord> SI2, SI1, VS1, VS2, SI2, VVS2, VVS1, SI1, VS2, VS1, SI1, VS1, ~
    ## $ depth   <dbl> 61.5, 59.8, 56.9, 62.4, 63.3, 62.8, 62.3, 61.9, 65.1, 59.4, 64~
    ## $ table   <dbl> 55, 61, 65, 58, 58, 57, 57, 55, 61, 61, 55, 56, 61, 54, 62, 58~
    ## $ price   <int> 326, 326, 327, 334, 335, 336, 336, 337, 337, 338, 339, 340, 34~
    ## $ x       <dbl> 3.95, 3.89, 4.05, 4.20, 4.34, 3.94, 3.95, 4.07, 3.87, 4.00, 4.~
    ## $ y       <dbl> 3.98, 3.84, 4.07, 4.23, 4.35, 3.96, 3.98, 4.11, 3.78, 4.05, 4.~
    ## $ z       <dbl> 2.43, 2.31, 2.31, 2.63, 2.75, 2.48, 2.47, 2.53, 2.49, 2.39, 2.~

``` r
colnames(diamonds)
```

    ##  [1] "carat"   "cut"     "color"   "clarity" "depth"   "table"   "price"  
    ##  [8] "x"       "y"       "z"

``` r
rename(diamonds,carat_new=carat)
```

    ## # A tibble: 53,940 x 10
    ##    carat_new cut       color clarity depth table price     x     y     z
    ##        <dbl> <ord>     <ord> <ord>   <dbl> <dbl> <int> <dbl> <dbl> <dbl>
    ##  1      0.23 Ideal     E     SI2      61.5    55   326  3.95  3.98  2.43
    ##  2      0.21 Premium   E     SI1      59.8    61   326  3.89  3.84  2.31
    ##  3      0.23 Good      E     VS1      56.9    65   327  4.05  4.07  2.31
    ##  4      0.29 Premium   I     VS2      62.4    58   334  4.2   4.23  2.63
    ##  5      0.31 Good      J     SI2      63.3    58   335  4.34  4.35  2.75
    ##  6      0.24 Very Good J     VVS2     62.8    57   336  3.94  3.96  2.48
    ##  7      0.24 Very Good I     VVS1     62.3    57   336  3.95  3.98  2.47
    ##  8      0.26 Very Good H     SI1      61.9    55   337  4.07  4.11  2.53
    ##  9      0.22 Fair      E     VS2      65.1    61   337  3.87  3.78  2.49
    ## 10      0.23 Very Good H     VS1      59.4    61   338  4     4.05  2.39
    ## # ... with 53,930 more rows

``` r
summarise(diamonds,carat_mean=mean(carat))
```

    ## # A tibble: 1 x 1
    ##   carat_mean
    ##        <dbl>
    ## 1      0.798

``` r
ggplot(data=diamonds, aes(x=carat, y= price))+geom_point()
```

![](First_R_Markdown_files/figure-gfm/unnamed-chunk-4-1.png)<!-- -->

``` r
ggplot(data=diamonds, aes(x=carat, y= price, color=cut))+geom_point()+facet_wrap(~cut)
```

![](First_R_Markdown_files/figure-gfm/unnamed-chunk-4-2.png)<!-- --> \##
Learn about various packages through: browseVignettes() \## Pipes in R

``` r
# pipes on Toothbar
data("ToothGrowth")
head(ToothGrowth)
```

    ##    len supp dose
    ## 1  4.2   VC  0.5
    ## 2 11.5   VC  0.5
    ## 3  7.3   VC  0.5
    ## 4  5.8   VC  0.5
    ## 5  6.4   VC  0.5
    ## 6 10.0   VC  0.5

``` r
# Firstly lets demostrate same functionality through nested functions
new_data<-arrange(filter(ToothGrowth,dose==0.5),len)
head(new_data)
```

    ##   len supp dose
    ## 1 4.2   VC  0.5
    ## 2 5.2   VC  0.5
    ## 3 5.8   VC  0.5
    ## 4 6.4   VC  0.5
    ## 5 7.0   VC  0.5
    ## 6 7.3   VC  0.5

``` r
# Now lets do the task with pipes
new_data_pipe<-ToothGrowth %>% 
  filter(dose==0.5) %>% 
  group_by(supp) %>% 
  summarise(mean_d=mean(len, rm.na=T),.group="drop")
head(new_data_pipe)
```

    ## # A tibble: 2 x 3
    ##   supp  mean_d .group
    ##   <fct>  <dbl> <chr> 
    ## 1 OJ     13.2  drop  
    ## 2 VC      7.98 drop

## DataFrame and Tibble

``` r
# Data.Frame creation
name<- c("Rahul","Hritik","Pushker")
age<- c(24,24,23)
people<- data.frame(name,age)
people
```

    ##      name age
    ## 1   Rahul  24
    ## 2  Hritik  24
    ## 3 Pushker  23

``` r
str(people)
```

    ## 'data.frame':    3 obs. of  2 variables:
    ##  $ name: chr  "Rahul" "Hritik" "Pushker"
    ##  $ age : num  24 24 23

``` r
glimpse(people)
```

    ## Rows: 3
    ## Columns: 2
    ## $ name <chr> "Rahul", "Hritik", "Pushker"
    ## $ age  <dbl> 24, 24, 23

``` r
# tibble in action
as_tibble(diamonds)
```

    ## # A tibble: 53,940 x 10
    ##    carat cut       color clarity depth table price     x     y     z
    ##    <dbl> <ord>     <ord> <ord>   <dbl> <dbl> <int> <dbl> <dbl> <dbl>
    ##  1  0.23 Ideal     E     SI2      61.5    55   326  3.95  3.98  2.43
    ##  2  0.21 Premium   E     SI1      59.8    61   326  3.89  3.84  2.31
    ##  3  0.23 Good      E     VS1      56.9    65   327  4.05  4.07  2.31
    ##  4  0.29 Premium   I     VS2      62.4    58   334  4.2   4.23  2.63
    ##  5  0.31 Good      J     SI2      63.3    58   335  4.34  4.35  2.75
    ##  6  0.24 Very Good J     VVS2     62.8    57   336  3.94  3.96  2.48
    ##  7  0.24 Very Good I     VVS1     62.3    57   336  3.95  3.98  2.47
    ##  8  0.26 Very Good H     SI1      61.9    55   337  4.07  4.11  2.53
    ##  9  0.22 Fair      E     VS2      65.1    61   337  3.87  3.78  2.49
    ## 10  0.23 Very Good H     VS1      59.4    61   338  4     4.05  2.39
    ## # ... with 53,930 more rows

``` r
# data() function 
data("mtcars")
mtcars
```

    ##                      mpg cyl  disp  hp drat    wt  qsec vs am gear carb
    ## Mazda RX4           21.0   6 160.0 110 3.90 2.620 16.46  0  1    4    4
    ## Mazda RX4 Wag       21.0   6 160.0 110 3.90 2.875 17.02  0  1    4    4
    ## Datsun 710          22.8   4 108.0  93 3.85 2.320 18.61  1  1    4    1
    ## Hornet 4 Drive      21.4   6 258.0 110 3.08 3.215 19.44  1  0    3    1
    ## Hornet Sportabout   18.7   8 360.0 175 3.15 3.440 17.02  0  0    3    2
    ## Valiant             18.1   6 225.0 105 2.76 3.460 20.22  1  0    3    1
    ## Duster 360          14.3   8 360.0 245 3.21 3.570 15.84  0  0    3    4
    ## Merc 240D           24.4   4 146.7  62 3.69 3.190 20.00  1  0    4    2
    ## Merc 230            22.8   4 140.8  95 3.92 3.150 22.90  1  0    4    2
    ## Merc 280            19.2   6 167.6 123 3.92 3.440 18.30  1  0    4    4
    ## Merc 280C           17.8   6 167.6 123 3.92 3.440 18.90  1  0    4    4
    ## Merc 450SE          16.4   8 275.8 180 3.07 4.070 17.40  0  0    3    3
    ## Merc 450SL          17.3   8 275.8 180 3.07 3.730 17.60  0  0    3    3
    ## Merc 450SLC         15.2   8 275.8 180 3.07 3.780 18.00  0  0    3    3
    ## Cadillac Fleetwood  10.4   8 472.0 205 2.93 5.250 17.98  0  0    3    4
    ## Lincoln Continental 10.4   8 460.0 215 3.00 5.424 17.82  0  0    3    4
    ## Chrysler Imperial   14.7   8 440.0 230 3.23 5.345 17.42  0  0    3    4
    ## Fiat 128            32.4   4  78.7  66 4.08 2.200 19.47  1  1    4    1
    ## Honda Civic         30.4   4  75.7  52 4.93 1.615 18.52  1  1    4    2
    ## Toyota Corolla      33.9   4  71.1  65 4.22 1.835 19.90  1  1    4    1
    ## Toyota Corona       21.5   4 120.1  97 3.70 2.465 20.01  1  0    3    1
    ## Dodge Challenger    15.5   8 318.0 150 2.76 3.520 16.87  0  0    3    2
    ## AMC Javelin         15.2   8 304.0 150 3.15 3.435 17.30  0  0    3    2
    ## Camaro Z28          13.3   8 350.0 245 3.73 3.840 15.41  0  0    3    4
    ## Pontiac Firebird    19.2   8 400.0 175 3.08 3.845 17.05  0  0    3    2
    ## Fiat X1-9           27.3   4  79.0  66 4.08 1.935 18.90  1  1    4    1
    ## Porsche 914-2       26.0   4 120.3  91 4.43 2.140 16.70  0  1    5    2
    ## Lotus Europa        30.4   4  95.1 113 3.77 1.513 16.90  1  1    5    2
    ## Ford Pantera L      15.8   8 351.0 264 4.22 3.170 14.50  0  1    5    4
    ## Ferrari Dino        19.7   6 145.0 175 3.62 2.770 15.50  0  1    5    6
    ## Maserati Bora       15.0   8 301.0 335 3.54 3.570 14.60  0  1    5    8
    ## Volvo 142E          21.4   4 121.0 109 4.11 2.780 18.60  1  1    4    2

## Lets read a file through readr package

``` r
# readr in action
booking_df<-read_csv("C:\\Users\\500053108\\Downloads\\GL0bk8O2Sja9G5PDtko2uQ_31e445d7ca64417eb45aeaa08ec90bf1_hotel_bookings.csv")
```

    ## Rows: 119390 Columns: 32
    ## -- Column specification --------------------------------------------------------
    ## Delimiter: ","
    ## chr  (13): hotel, arrival_date_month, meal, country, market_segment, distrib...
    ## dbl  (18): is_canceled, lead_time, arrival_date_year, arrival_date_week_numb...
    ## date  (1): reservation_status_date
    ## 
    ## i Use `spec()` to retrieve the full column specification for this data.
    ## i Specify the column types or set `show_col_types = FALSE` to quiet this message.

``` r
head(booking_df)
```

    ## # A tibble: 6 x 32
    ##   hotel   is_ca~1 lead_~2 arriv~3 arriv~4 arriv~5 arriv~6 stays~7 stays~8 adults
    ##   <chr>     <dbl>   <dbl>   <dbl> <chr>     <dbl>   <dbl>   <dbl>   <dbl>  <dbl>
    ## 1 Resort~       0     342    2015 July         27       1       0       0      2
    ## 2 Resort~       0     737    2015 July         27       1       0       0      2
    ## 3 Resort~       0       7    2015 July         27       1       0       1      1
    ## 4 Resort~       0      13    2015 July         27       1       0       1      1
    ## 5 Resort~       0      14    2015 July         27       1       0       2      2
    ## 6 Resort~       0      14    2015 July         27       1       0       2      2
    ## # ... with 22 more variables: children <dbl>, babies <dbl>, meal <chr>,
    ## #   country <chr>, market_segment <chr>, distribution_channel <chr>,
    ## #   is_repeated_guest <dbl>, previous_cancellations <dbl>,
    ## #   previous_bookings_not_canceled <dbl>, reserved_room_type <chr>,
    ## #   assigned_room_type <chr>, booking_changes <dbl>, deposit_type <chr>,
    ## #   agent <chr>, company <chr>, days_in_waiting_list <dbl>,
    ## #   customer_type <chr>, adr <dbl>, required_car_parking_spaces <dbl>, ...

``` r
str(booking_df)
```

    ## spec_tbl_df [119,390 x 32] (S3: spec_tbl_df/tbl_df/tbl/data.frame)
    ##  $ hotel                         : chr [1:119390] "Resort Hotel" "Resort Hotel" "Resort Hotel" "Resort Hotel" ...
    ##  $ is_canceled                   : num [1:119390] 0 0 0 0 0 0 0 0 1 1 ...
    ##  $ lead_time                     : num [1:119390] 342 737 7 13 14 14 0 9 85 75 ...
    ##  $ arrival_date_year             : num [1:119390] 2015 2015 2015 2015 2015 ...
    ##  $ arrival_date_month            : chr [1:119390] "July" "July" "July" "July" ...
    ##  $ arrival_date_week_number      : num [1:119390] 27 27 27 27 27 27 27 27 27 27 ...
    ##  $ arrival_date_day_of_month     : num [1:119390] 1 1 1 1 1 1 1 1 1 1 ...
    ##  $ stays_in_weekend_nights       : num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
    ##  $ stays_in_week_nights          : num [1:119390] 0 0 1 1 2 2 2 2 3 3 ...
    ##  $ adults                        : num [1:119390] 2 2 1 1 2 2 2 2 2 2 ...
    ##  $ children                      : num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
    ##  $ babies                        : num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
    ##  $ meal                          : chr [1:119390] "BB" "BB" "BB" "BB" ...
    ##  $ country                       : chr [1:119390] "PRT" "PRT" "GBR" "GBR" ...
    ##  $ market_segment                : chr [1:119390] "Direct" "Direct" "Direct" "Corporate" ...
    ##  $ distribution_channel          : chr [1:119390] "Direct" "Direct" "Direct" "Corporate" ...
    ##  $ is_repeated_guest             : num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
    ##  $ previous_cancellations        : num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
    ##  $ previous_bookings_not_canceled: num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
    ##  $ reserved_room_type            : chr [1:119390] "C" "C" "A" "A" ...
    ##  $ assigned_room_type            : chr [1:119390] "C" "C" "C" "A" ...
    ##  $ booking_changes               : num [1:119390] 3 4 0 0 0 0 0 0 0 0 ...
    ##  $ deposit_type                  : chr [1:119390] "No Deposit" "No Deposit" "No Deposit" "No Deposit" ...
    ##  $ agent                         : chr [1:119390] "NULL" "NULL" "NULL" "304" ...
    ##  $ company                       : chr [1:119390] "NULL" "NULL" "NULL" "NULL" ...
    ##  $ days_in_waiting_list          : num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
    ##  $ customer_type                 : chr [1:119390] "Transient" "Transient" "Transient" "Transient" ...
    ##  $ adr                           : num [1:119390] 0 0 75 75 98 ...
    ##  $ required_car_parking_spaces   : num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
    ##  $ total_of_special_requests     : num [1:119390] 0 0 0 0 1 1 0 1 1 0 ...
    ##  $ reservation_status            : chr [1:119390] "Check-Out" "Check-Out" "Check-Out" "Check-Out" ...
    ##  $ reservation_status_date       : Date[1:119390], format: "2015-07-01" "2015-07-01" ...
    ##  - attr(*, "spec")=
    ##   .. cols(
    ##   ..   hotel = col_character(),
    ##   ..   is_canceled = col_double(),
    ##   ..   lead_time = col_double(),
    ##   ..   arrival_date_year = col_double(),
    ##   ..   arrival_date_month = col_character(),
    ##   ..   arrival_date_week_number = col_double(),
    ##   ..   arrival_date_day_of_month = col_double(),
    ##   ..   stays_in_weekend_nights = col_double(),
    ##   ..   stays_in_week_nights = col_double(),
    ##   ..   adults = col_double(),
    ##   ..   children = col_double(),
    ##   ..   babies = col_double(),
    ##   ..   meal = col_character(),
    ##   ..   country = col_character(),
    ##   ..   market_segment = col_character(),
    ##   ..   distribution_channel = col_character(),
    ##   ..   is_repeated_guest = col_double(),
    ##   ..   previous_cancellations = col_double(),
    ##   ..   previous_bookings_not_canceled = col_double(),
    ##   ..   reserved_room_type = col_character(),
    ##   ..   assigned_room_type = col_character(),
    ##   ..   booking_changes = col_double(),
    ##   ..   deposit_type = col_character(),
    ##   ..   agent = col_character(),
    ##   ..   company = col_character(),
    ##   ..   days_in_waiting_list = col_double(),
    ##   ..   customer_type = col_character(),
    ##   ..   adr = col_double(),
    ##   ..   required_car_parking_spaces = col_double(),
    ##   ..   total_of_special_requests = col_double(),
    ##   ..   reservation_status = col_character(),
    ##   ..   reservation_status_date = col_date(format = "")
    ##   .. )
    ##  - attr(*, "problems")=<externalptr>

``` r
glimpse(booking_df)
```

    ## Rows: 119,390
    ## Columns: 32
    ## $ hotel                          <chr> "Resort Hotel", "Resort Hotel", "Resort~
    ## $ is_canceled                    <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, ~
    ## $ lead_time                      <dbl> 342, 737, 7, 13, 14, 14, 0, 9, 85, 75, ~
    ## $ arrival_date_year              <dbl> 2015, 2015, 2015, 2015, 2015, 2015, 201~
    ## $ arrival_date_month             <chr> "July", "July", "July", "July", "July",~
    ## $ arrival_date_week_number       <dbl> 27, 27, 27, 27, 27, 27, 27, 27, 27, 27,~
    ## $ arrival_date_day_of_month      <dbl> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, ~
    ## $ stays_in_weekend_nights        <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ~
    ## $ stays_in_week_nights           <dbl> 0, 0, 1, 1, 2, 2, 2, 2, 3, 3, 4, 4, 4, ~
    ## $ adults                         <dbl> 2, 2, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, ~
    ## $ children                       <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ~
    ## $ babies                         <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ~
    ## $ meal                           <chr> "BB", "BB", "BB", "BB", "BB", "BB", "BB~
    ## $ country                        <chr> "PRT", "PRT", "GBR", "GBR", "GBR", "GBR~
    ## $ market_segment                 <chr> "Direct", "Direct", "Direct", "Corporat~
    ## $ distribution_channel           <chr> "Direct", "Direct", "Direct", "Corporat~
    ## $ is_repeated_guest              <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ~
    ## $ previous_cancellations         <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ~
    ## $ previous_bookings_not_canceled <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ~
    ## $ reserved_room_type             <chr> "C", "C", "A", "A", "A", "A", "C", "C",~
    ## $ assigned_room_type             <chr> "C", "C", "C", "A", "A", "A", "C", "C",~
    ## $ booking_changes                <dbl> 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ~
    ## $ deposit_type                   <chr> "No Deposit", "No Deposit", "No Deposit~
    ## $ agent                          <chr> "NULL", "NULL", "NULL", "304", "240", "~
    ## $ company                        <chr> "NULL", "NULL", "NULL", "NULL", "NULL",~
    ## $ days_in_waiting_list           <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ~
    ## $ customer_type                  <chr> "Transient", "Transient", "Transient", ~
    ## $ adr                            <dbl> 0.00, 0.00, 75.00, 75.00, 98.00, 98.00,~
    ## $ required_car_parking_spaces    <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ~
    ## $ total_of_special_requests      <dbl> 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 3, ~
    ## $ reservation_status             <chr> "Check-Out", "Check-Out", "Check-Out", ~
    ## $ reservation_status_date        <date> 2015-07-01, 2015-07-01, 2015-07-02, 20~

``` r
colnames(booking_df)
```

    ##  [1] "hotel"                          "is_canceled"                   
    ##  [3] "lead_time"                      "arrival_date_year"             
    ##  [5] "arrival_date_month"             "arrival_date_week_number"      
    ##  [7] "arrival_date_day_of_month"      "stays_in_weekend_nights"       
    ##  [9] "stays_in_week_nights"           "adults"                        
    ## [11] "children"                       "babies"                        
    ## [13] "meal"                           "country"                       
    ## [15] "market_segment"                 "distribution_channel"          
    ## [17] "is_repeated_guest"              "previous_cancellations"        
    ## [19] "previous_bookings_not_canceled" "reserved_room_type"            
    ## [21] "assigned_room_type"             "booking_changes"               
    ## [23] "deposit_type"                   "agent"                         
    ## [25] "company"                        "days_in_waiting_list"          
    ## [27] "customer_type"                  "adr"                           
    ## [29] "required_car_parking_spaces"    "total_of_special_requests"     
    ## [31] "reservation_status"             "reservation_status_date"

``` r
new_df <- select(booking_df, 'adr',adults)
head(new_df)  
```

    ## # A tibble: 6 x 2
    ##     adr adults
    ##   <dbl>  <dbl>
    ## 1     0      2
    ## 2     0      2
    ## 3    75      1
    ## 4    75      1
    ## 5    98      2
    ## 6    98      2

``` r
head(mutate(new_df, total=adr/adults))
```

    ## # A tibble: 6 x 3
    ##     adr adults total
    ##   <dbl>  <dbl> <dbl>
    ## 1     0      2     0
    ## 2     0      2     0
    ## 3    75      1    75
    ## 4    75      1    75
    ## 5    98      2    49
    ## 6    98      2    49

## lets start the data cleaning process

install.packages(“here”)  
install.packages(“skimr”)  
install.packages(“janitor”)

``` r
library(here)
```

    ## here() starts at C:/Users/500053108/Documents/First_R_Projrct

``` r
library(skimr)
library("janitor")
```

    ## 
    ## Attaching package: 'janitor'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     chisq.test, fisher.test

install.packages(“palmerpenguins”)

``` r
library(palmerpenguins)
skim_without_charts(penguins)
```

|                                                  |          |
|:-------------------------------------------------|:---------|
| Name                                             | penguins |
| Number of rows                                   | 344      |
| Number of columns                                | 8        |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_   |          |
| Column type frequency:                           |          |
| factor                                           | 3        |
| numeric                                          | 5        |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_ |          |
| Group variables                                  | None     |

Data summary

**Variable type: factor**

| skim_variable | n_missing | complete_rate | ordered | n_unique | top_counts                  |
|:--------------|----------:|--------------:|:--------|---------:|:----------------------------|
| species       |         0 |          1.00 | FALSE   |        3 | Ade: 152, Gen: 124, Chi: 68 |
| island        |         0 |          1.00 | FALSE   |        3 | Bis: 168, Dre: 124, Tor: 52 |
| sex           |        11 |          0.97 | FALSE   |        2 | mal: 168, fem: 165          |

**Variable type: numeric**

| skim_variable     | n_missing | complete_rate |    mean |     sd |     p0 |     p25 |     p50 |    p75 |   p100 |
|:------------------|----------:|--------------:|--------:|-------:|-------:|--------:|--------:|-------:|-------:|
| bill_length_mm    |         2 |          0.99 |   43.92 |   5.46 |   32.1 |   39.23 |   44.45 |   48.5 |   59.6 |
| bill_depth_mm     |         2 |          0.99 |   17.15 |   1.97 |   13.1 |   15.60 |   17.30 |   18.7 |   21.5 |
| flipper_length_mm |         2 |          0.99 |  200.92 |  14.06 |  172.0 |  190.00 |  197.00 |  213.0 |  231.0 |
| body_mass_g       |         2 |          0.99 | 4201.75 | 801.95 | 2700.0 | 3550.00 | 4050.00 | 4750.0 | 6300.0 |
| year              |         0 |          1.00 | 2008.03 |   0.82 | 2007.0 | 2007.00 | 2008.00 | 2009.0 | 2009.0 |

``` r
head(penguins)
```

    ## # A tibble: 6 x 8
    ##   species island    bill_length_mm bill_depth_mm flipper_l~1 body_~2 sex    year
    ##   <fct>   <fct>              <dbl>         <dbl>       <int>   <int> <fct> <int>
    ## 1 Adelie  Torgersen           39.1          18.7         181    3750 male   2007
    ## 2 Adelie  Torgersen           39.5          17.4         186    3800 fema~  2007
    ## 3 Adelie  Torgersen           40.3          18           195    3250 fema~  2007
    ## 4 Adelie  Torgersen           NA            NA            NA      NA <NA>   2007
    ## 5 Adelie  Torgersen           36.7          19.3         193    3450 fema~  2007
    ## 6 Adelie  Torgersen           39.3          20.6         190    3650 male   2007
    ## # ... with abbreviated variable names 1: flipper_length_mm, 2: body_mass_g

``` r
head(select(penguins,species))
```

    ## # A tibble: 6 x 1
    ##   species
    ##   <fct>  
    ## 1 Adelie 
    ## 2 Adelie 
    ## 3 Adelie 
    ## 4 Adelie 
    ## 5 Adelie 
    ## 6 Adelie

``` r
head(select(penguins,-species))
```

    ## # A tibble: 6 x 7
    ##   island    bill_length_mm bill_depth_mm flipper_length_mm body_ma~1 sex    year
    ##   <fct>              <dbl>         <dbl>             <int>     <int> <fct> <int>
    ## 1 Torgersen           39.1          18.7               181      3750 male   2007
    ## 2 Torgersen           39.5          17.4               186      3800 fema~  2007
    ## 3 Torgersen           40.3          18                 195      3250 fema~  2007
    ## 4 Torgersen           NA            NA                  NA        NA <NA>   2007
    ## 5 Torgersen           36.7          19.3               193      3450 fema~  2007
    ## 6 Torgersen           39.3          20.6               190      3650 male   2007
    ## # ... with abbreviated variable name 1: body_mass_g

``` r
penguins %>% 
  rename(island_name=island) %>% 
  rename_with(toupper)
```

    ## # A tibble: 344 x 8
    ##    SPECIES ISLAND_NAME BILL_LENGTH_MM BILL_DEPTH_MM FLIPPE~1 BODY_~2 SEX    YEAR
    ##    <fct>   <fct>                <dbl>         <dbl>    <int>   <int> <fct> <int>
    ##  1 Adelie  Torgersen             39.1          18.7      181    3750 male   2007
    ##  2 Adelie  Torgersen             39.5          17.4      186    3800 fema~  2007
    ##  3 Adelie  Torgersen             40.3          18        195    3250 fema~  2007
    ##  4 Adelie  Torgersen             NA            NA         NA      NA <NA>   2007
    ##  5 Adelie  Torgersen             36.7          19.3      193    3450 fema~  2007
    ##  6 Adelie  Torgersen             39.3          20.6      190    3650 male   2007
    ##  7 Adelie  Torgersen             38.9          17.8      181    3625 fema~  2007
    ##  8 Adelie  Torgersen             39.2          19.6      195    4675 male   2007
    ##  9 Adelie  Torgersen             34.1          18.1      193    3475 <NA>   2007
    ## 10 Adelie  Torgersen             42            20.2      190    4250 <NA>   2007
    ## # ... with 334 more rows, and abbreviated variable names 1: FLIPPER_LENGTH_MM,
    ## #   2: BODY_MASS_G

``` r
rename_with(penguins,tolower)
```

    ## # A tibble: 344 x 8
    ##    species island    bill_length_mm bill_depth_mm flipper_~1 body_~2 sex    year
    ##    <fct>   <fct>              <dbl>         <dbl>      <int>   <int> <fct> <int>
    ##  1 Adelie  Torgersen           39.1          18.7        181    3750 male   2007
    ##  2 Adelie  Torgersen           39.5          17.4        186    3800 fema~  2007
    ##  3 Adelie  Torgersen           40.3          18          195    3250 fema~  2007
    ##  4 Adelie  Torgersen           NA            NA           NA      NA <NA>   2007
    ##  5 Adelie  Torgersen           36.7          19.3        193    3450 fema~  2007
    ##  6 Adelie  Torgersen           39.3          20.6        190    3650 male   2007
    ##  7 Adelie  Torgersen           38.9          17.8        181    3625 fema~  2007
    ##  8 Adelie  Torgersen           39.2          19.6        195    4675 male   2007
    ##  9 Adelie  Torgersen           34.1          18.1        193    3475 <NA>   2007
    ## 10 Adelie  Torgersen           42            20.2        190    4250 <NA>   2007
    ## # ... with 334 more rows, and abbreviated variable names 1: flipper_length_mm,
    ## #   2: body_mass_g

``` r
# some arthimatic operatos
x<-10
y<-3
print(x%%y) # modulus operators
```

    ## [1] 1

``` r
print(x%/%y) # integer division
```

    ## [1] 3

## some relational operators

``` r
a=c(1,2,3,4)
b=c(10,20,30,40)
print(a<2&&b>2) # returns only the result of 1st elements
```

    ## Warning in a < 2 && b > 2: 'length(x) = 4 > 1' in coercion to 'logical(1)'

    ## Warning in a < 2 && b > 2: 'length(x) = 4 > 1' in coercion to 'logical(1)'

    ## [1] TRUE

``` r
print(a<2&b>2) # returns all element result
```

    ## [1]  TRUE FALSE FALSE FALSE

## data organiozation functions

``` r
penguins %>% 
  arrange(-bill_length_mm)
```

    ## # A tibble: 344 x 8
    ##    species   island bill_length_mm bill_depth_mm flipper_l~1 body_~2 sex    year
    ##    <fct>     <fct>           <dbl>         <dbl>       <int>   <int> <fct> <int>
    ##  1 Gentoo    Biscoe           59.6          17           230    6050 male   2007
    ##  2 Chinstrap Dream            58            17.8         181    3700 fema~  2007
    ##  3 Gentoo    Biscoe           55.9          17           228    5600 male   2009
    ##  4 Chinstrap Dream            55.8          19.8         207    4000 male   2009
    ##  5 Gentoo    Biscoe           55.1          16           230    5850 male   2009
    ##  6 Gentoo    Biscoe           54.3          15.7         231    5650 male   2008
    ##  7 Chinstrap Dream            54.2          20.8         201    4300 male   2008
    ##  8 Chinstrap Dream            53.5          19.9         205    4500 male   2008
    ##  9 Gentoo    Biscoe           53.4          15.8         219    5500 male   2009
    ## 10 Chinstrap Dream            52.8          20           205    4550 male   2008
    ## # ... with 334 more rows, and abbreviated variable names 1: flipper_length_mm,
    ## #   2: body_mass_g

``` r
penguins %>% 
  drop_na() %>% 
  group_by(island) %>% 
  summarise(mean_bill_len=mean(bill_length_mm))
```

    ## # A tibble: 3 x 2
    ##   island    mean_bill_len
    ##   <fct>             <dbl>
    ## 1 Biscoe             45.2
    ## 2 Dream              44.2
    ## 3 Torgersen          39.0

``` r
penguins %>% 
  drop_na() %>% 
  group_by(species,island) %>% 
  summarise(max_bill=max(bill_length_mm), min_bill=min(bill_length_mm))
```

    ## `summarise()` has grouped output by 'species'. You can override using the
    ## `.groups` argument.

    ## # A tibble: 5 x 4
    ## # Groups:   species [3]
    ##   species   island    max_bill min_bill
    ##   <fct>     <fct>        <dbl>    <dbl>
    ## 1 Adelie    Biscoe        45.6     34.5
    ## 2 Adelie    Dream         44.1     32.1
    ## 3 Adelie    Torgersen     46       33.5
    ## 4 Chinstrap Dream         58       40.9
    ## 5 Gentoo    Biscoe        59.6     40.9

``` r
penguins %>% 
       drop_na() %>% 
       filter(species=="Adelie")
```

    ## # A tibble: 146 x 8
    ##    species island    bill_length_mm bill_depth_mm flipper_~1 body_~2 sex    year
    ##    <fct>   <fct>              <dbl>         <dbl>      <int>   <int> <fct> <int>
    ##  1 Adelie  Torgersen           39.1          18.7        181    3750 male   2007
    ##  2 Adelie  Torgersen           39.5          17.4        186    3800 fema~  2007
    ##  3 Adelie  Torgersen           40.3          18          195    3250 fema~  2007
    ##  4 Adelie  Torgersen           36.7          19.3        193    3450 fema~  2007
    ##  5 Adelie  Torgersen           39.3          20.6        190    3650 male   2007
    ##  6 Adelie  Torgersen           38.9          17.8        181    3625 fema~  2007
    ##  7 Adelie  Torgersen           39.2          19.6        195    4675 male   2007
    ##  8 Adelie  Torgersen           41.1          17.6        182    3200 fema~  2007
    ##  9 Adelie  Torgersen           38.6          21.2        191    3800 male   2007
    ## 10 Adelie  Torgersen           34.6          21.1        198    4400 male   2007
    ## # ... with 136 more rows, and abbreviated variable names 1: flipper_length_mm,
    ## #   2: body_mass_g

## Activity

``` r
df=read.csv("C:\\Users\\500053108\\Downloads\\GL0bk8O2Sja9G5PDtko2uQ_31e445d7ca64417eb45aeaa08ec90bf1_hotel_bookings (1).csv")
head(df)
```

    ##          hotel is_canceled lead_time arrival_date_year arrival_date_month
    ## 1 Resort Hotel           0       342              2015               July
    ## 2 Resort Hotel           0       737              2015               July
    ## 3 Resort Hotel           0         7              2015               July
    ## 4 Resort Hotel           0        13              2015               July
    ## 5 Resort Hotel           0        14              2015               July
    ## 6 Resort Hotel           0        14              2015               July
    ##   arrival_date_week_number arrival_date_day_of_month stays_in_weekend_nights
    ## 1                       27                         1                       0
    ## 2                       27                         1                       0
    ## 3                       27                         1                       0
    ## 4                       27                         1                       0
    ## 5                       27                         1                       0
    ## 6                       27                         1                       0
    ##   stays_in_week_nights adults children babies meal country market_segment
    ## 1                    0      2        0      0   BB     PRT         Direct
    ## 2                    0      2        0      0   BB     PRT         Direct
    ## 3                    1      1        0      0   BB     GBR         Direct
    ## 4                    1      1        0      0   BB     GBR      Corporate
    ## 5                    2      2        0      0   BB     GBR      Online TA
    ## 6                    2      2        0      0   BB     GBR      Online TA
    ##   distribution_channel is_repeated_guest previous_cancellations
    ## 1               Direct                 0                      0
    ## 2               Direct                 0                      0
    ## 3               Direct                 0                      0
    ## 4            Corporate                 0                      0
    ## 5                TA/TO                 0                      0
    ## 6                TA/TO                 0                      0
    ##   previous_bookings_not_canceled reserved_room_type assigned_room_type
    ## 1                              0                  C                  C
    ## 2                              0                  C                  C
    ## 3                              0                  A                  C
    ## 4                              0                  A                  A
    ## 5                              0                  A                  A
    ## 6                              0                  A                  A
    ##   booking_changes deposit_type agent company days_in_waiting_list customer_type
    ## 1               3   No Deposit  NULL    NULL                    0     Transient
    ## 2               4   No Deposit  NULL    NULL                    0     Transient
    ## 3               0   No Deposit  NULL    NULL                    0     Transient
    ## 4               0   No Deposit   304    NULL                    0     Transient
    ## 5               0   No Deposit   240    NULL                    0     Transient
    ## 6               0   No Deposit   240    NULL                    0     Transient
    ##   adr required_car_parking_spaces total_of_special_requests reservation_status
    ## 1   0                           0                         0          Check-Out
    ## 2   0                           0                         0          Check-Out
    ## 3  75                           0                         0          Check-Out
    ## 4  75                           0                         0          Check-Out
    ## 5  98                           0                         1          Check-Out
    ## 6  98                           0                         1          Check-Out
    ##   reservation_status_date
    ## 1              2015-07-01
    ## 2              2015-07-01
    ## 3              2015-07-02
    ## 4              2015-07-02
    ## 5              2015-07-03
    ## 6              2015-07-03

``` r
library(skimr)
library(janitor)
```

### lets review our dataset

``` r
skim_without_charts(df)
```

|                                                  |        |
|:-------------------------------------------------|:-------|
| Name                                             | df     |
| Number of rows                                   | 119390 |
| Number of columns                                | 32     |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_   |        |
| Column type frequency:                           |        |
| character                                        | 14     |
| numeric                                          | 18     |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_ |        |
| Group variables                                  | None   |

Data summary

**Variable type: character**

| skim_variable           | n_missing | complete_rate | min | max | empty | n_unique | whitespace |
|:------------------------|----------:|--------------:|----:|----:|------:|---------:|-----------:|
| hotel                   |         0 |             1 |  10 |  12 |     0 |        2 |          0 |
| arrival_date_month      |         0 |             1 |   3 |   9 |     0 |       12 |          0 |
| meal                    |         0 |             1 |   2 |   9 |     0 |        5 |          0 |
| country                 |         0 |             1 |   2 |   4 |     0 |      178 |          0 |
| market_segment          |         0 |             1 |   6 |  13 |     0 |        8 |          0 |
| distribution_channel    |         0 |             1 |   3 |   9 |     0 |        5 |          0 |
| reserved_room_type      |         0 |             1 |   1 |   1 |     0 |       10 |          0 |
| assigned_room_type      |         0 |             1 |   1 |   1 |     0 |       12 |          0 |
| deposit_type            |         0 |             1 |  10 |  10 |     0 |        3 |          0 |
| agent                   |         0 |             1 |   1 |   4 |     0 |      334 |          0 |
| company                 |         0 |             1 |   1 |   4 |     0 |      353 |          0 |
| customer_type           |         0 |             1 |   5 |  15 |     0 |        4 |          0 |
| reservation_status      |         0 |             1 |   7 |   9 |     0 |        3 |          0 |
| reservation_status_date |         0 |             1 |  10 |  10 |     0 |      926 |          0 |

**Variable type: numeric**

| skim_variable                  | n_missing | complete_rate |    mean |     sd |      p0 |     p25 |     p50 |  p75 | p100 |
|:-------------------------------|----------:|--------------:|--------:|-------:|--------:|--------:|--------:|-----:|-----:|
| is_canceled                    |         0 |             1 |    0.37 |   0.48 |    0.00 |    0.00 |    0.00 |    1 |    1 |
| lead_time                      |         0 |             1 |  104.01 | 106.86 |    0.00 |   18.00 |   69.00 |  160 |  737 |
| arrival_date_year              |         0 |             1 | 2016.16 |   0.71 | 2015.00 | 2016.00 | 2016.00 | 2017 | 2017 |
| arrival_date_week_number       |         0 |             1 |   27.17 |  13.61 |    1.00 |   16.00 |   28.00 |   38 |   53 |
| arrival_date_day_of_month      |         0 |             1 |   15.80 |   8.78 |    1.00 |    8.00 |   16.00 |   23 |   31 |
| stays_in_weekend_nights        |         0 |             1 |    0.93 |   1.00 |    0.00 |    0.00 |    1.00 |    2 |   19 |
| stays_in_week_nights           |         0 |             1 |    2.50 |   1.91 |    0.00 |    1.00 |    2.00 |    3 |   50 |
| adults                         |         0 |             1 |    1.86 |   0.58 |    0.00 |    2.00 |    2.00 |    2 |   55 |
| children                       |         4 |             1 |    0.10 |   0.40 |    0.00 |    0.00 |    0.00 |    0 |   10 |
| babies                         |         0 |             1 |    0.01 |   0.10 |    0.00 |    0.00 |    0.00 |    0 |   10 |
| is_repeated_guest              |         0 |             1 |    0.03 |   0.18 |    0.00 |    0.00 |    0.00 |    0 |    1 |
| previous_cancellations         |         0 |             1 |    0.09 |   0.84 |    0.00 |    0.00 |    0.00 |    0 |   26 |
| previous_bookings_not_canceled |         0 |             1 |    0.14 |   1.50 |    0.00 |    0.00 |    0.00 |    0 |   72 |
| booking_changes                |         0 |             1 |    0.22 |   0.65 |    0.00 |    0.00 |    0.00 |    0 |   21 |
| days_in_waiting_list           |         0 |             1 |    2.32 |  17.59 |    0.00 |    0.00 |    0.00 |    0 |  391 |
| adr                            |         0 |             1 |  101.83 |  50.54 |   -6.38 |   69.29 |   94.58 |  126 | 5400 |
| required_car_parking_spaces    |         0 |             1 |    0.06 |   0.25 |    0.00 |    0.00 |    0.00 |    0 |    8 |
| total_of_special_requests      |         0 |             1 |    0.57 |   0.79 |    0.00 |    0.00 |    0.00 |    1 |    5 |

### lets start the cleaning process

``` r
focused_df<- df %>%  select(hotel,is_canceled,lead_time)
head(focused_df)
```

    ##          hotel is_canceled lead_time
    ## 1 Resort Hotel           0       342
    ## 2 Resort Hotel           0       737
    ## 3 Resort Hotel           0         7
    ## 4 Resort Hotel           0        13
    ## 5 Resort Hotel           0        14
    ## 6 Resort Hotel           0        14

### renaming hotel to hote_type

``` r
focused_df<-focused_df %>% 
  select(hotel,is_canceled,lead_time) %>% 
  rename(hotel_type=hotel)
  head(focused_df)
```

    ##     hotel_type is_canceled lead_time
    ## 1 Resort Hotel           0       342
    ## 2 Resort Hotel           0       737
    ## 3 Resort Hotel           0         7
    ## 4 Resort Hotel           0        13
    ## 5 Resort Hotel           0        14
    ## 6 Resort Hotel           0        14

### combining columns

``` r
example_df <- df %>%
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")
head(example_df)
```

    ##   arrival_month_year
    ## 1          July 2015
    ## 2          July 2015
    ## 3          July 2015
    ## 4          July 2015
    ## 5          July 2015
    ## 6          July 2015

``` r
colnames(df)
```

    ##  [1] "hotel"                          "is_canceled"                   
    ##  [3] "lead_time"                      "arrival_date_year"             
    ##  [5] "arrival_date_month"             "arrival_date_week_number"      
    ##  [7] "arrival_date_day_of_month"      "stays_in_weekend_nights"       
    ##  [9] "stays_in_week_nights"           "adults"                        
    ## [11] "children"                       "babies"                        
    ## [13] "meal"                           "country"                       
    ## [15] "market_segment"                 "distribution_channel"          
    ## [17] "is_repeated_guest"              "previous_cancellations"        
    ## [19] "previous_bookings_not_canceled" "reserved_room_type"            
    ## [21] "assigned_room_type"             "booking_changes"               
    ## [23] "deposit_type"                   "agent"                         
    ## [25] "company"                        "days_in_waiting_list"          
    ## [27] "customer_type"                  "adr"                           
    ## [29] "required_car_parking_spaces"    "total_of_special_requests"     
    ## [31] "reservation_status"             "reservation_status_date"

``` r
example_df<-df %>% 
  mutate(guest=adults+children+babies)
head(select(example_df,guest))
```

    ##   guest
    ## 1     2
    ## 2     2
    ## 3     1
    ## 4     1
    ## 5     2
    ## 6     2

### summerizing dataset

``` r
example_df <- df %>% 
  summarise(number_cancelled=sum(is_canceled), avg_lead_time=mean(lead_time))
head(example_df)
```

    ##   number_cancelled avg_lead_time
    ## 1            44224      104.0114

## Activity 2

``` r
id <- c(1:10)

name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, name, job_title)
```

## data transformation exercise

### seperate function

``` r
new<-separate(employee,name,into=c('First_name','Last_name'),sep=' ')
```

## unite

``` r
head(unite(new,'name',First_name,Last_name,sep=' '))
```

    ##   id              name    job_title
    ## 1  1       John Mendes Professional
    ## 2  2       Rob Stewart   Programmer
    ## 3  3 Rachel Abrahamson   Management
    ## 4  4   Christy Hickman     Clerical
    ## 5  5    Johnson Harper    Developer
    ## 6  6    Candace Miller   Programmer

``` r
head(mutate(penguins,body_mass_kg=body_mass_g/1000))
```

    ## # A tibble: 6 x 9
    ##   species island    bill_length_mm bill_de~1 flipp~2 body_~3 sex    year body_~4
    ##   <fct>   <fct>              <dbl>     <dbl>   <int>   <int> <fct> <int>   <dbl>
    ## 1 Adelie  Torgersen           39.1      18.7     181    3750 male   2007    3.75
    ## 2 Adelie  Torgersen           39.5      17.4     186    3800 fema~  2007    3.8 
    ## 3 Adelie  Torgersen           40.3      18       195    3250 fema~  2007    3.25
    ## 4 Adelie  Torgersen           NA        NA        NA      NA <NA>   2007   NA   
    ## 5 Adelie  Torgersen           36.7      19.3     193    3450 fema~  2007    3.45
    ## 6 Adelie  Torgersen           39.3      20.6     190    3650 male   2007    3.65
    ## # ... with abbreviated variable names 1: bill_depth_mm, 2: flipper_length_mm,
    ## #   3: body_mass_g, 4: body_mass_kg

``` r
print(employee)
```

    ##    id              name    job_title
    ## 1   1       John Mendes Professional
    ## 2   2       Rob Stewart   Programmer
    ## 3   3 Rachel Abrahamson   Management
    ## 4   4   Christy Hickman     Clerical
    ## 5   5    Johnson Harper    Developer
    ## 6   6    Candace Miller   Programmer
    ## 7   7     Carlson Landy   Management
    ## 8   8      Pansy Jordan     Clerical
    ## 9   9      Darius Berry    Developer
    ## 10 10    Claudia Garcia   Programmer

``` r
pivot_longer(employee,name)
```

    ## # A tibble: 10 x 4
    ##       id job_title    name  value            
    ##    <int> <chr>        <chr> <chr>            
    ##  1     1 Professional name  John Mendes      
    ##  2     2 Programmer   name  Rob Stewart      
    ##  3     3 Management   name  Rachel Abrahamson
    ##  4     4 Clerical     name  Christy Hickman  
    ##  5     5 Developer    name  Johnson Harper   
    ##  6     6 Programmer   name  Candace Miller   
    ##  7     7 Management   name  Carlson Landy    
    ##  8     8 Clerical     name  Pansy Jordan     
    ##  9     9 Developer    name  Darius Berry     
    ## 10    10 Programmer   name  Claudia Garcia

``` r
employee %>% 
  pivot_wider(names_from=name, values_from = job_title)
```

    ## # A tibble: 10 x 11
    ##       id John ~1 Rob S~2 Rache~3 Chris~4 Johns~5 Canda~6 Carls~7 Pansy~8 Dariu~9
    ##    <int> <chr>   <chr>   <chr>   <chr>   <chr>   <chr>   <chr>   <chr>   <chr>  
    ##  1     1 Profes~ <NA>    <NA>    <NA>    <NA>    <NA>    <NA>    <NA>    <NA>   
    ##  2     2 <NA>    Progra~ <NA>    <NA>    <NA>    <NA>    <NA>    <NA>    <NA>   
    ##  3     3 <NA>    <NA>    Manage~ <NA>    <NA>    <NA>    <NA>    <NA>    <NA>   
    ##  4     4 <NA>    <NA>    <NA>    Cleric~ <NA>    <NA>    <NA>    <NA>    <NA>   
    ##  5     5 <NA>    <NA>    <NA>    <NA>    Develo~ <NA>    <NA>    <NA>    <NA>   
    ##  6     6 <NA>    <NA>    <NA>    <NA>    <NA>    Progra~ <NA>    <NA>    <NA>   
    ##  7     7 <NA>    <NA>    <NA>    <NA>    <NA>    <NA>    Manage~ <NA>    <NA>   
    ##  8     8 <NA>    <NA>    <NA>    <NA>    <NA>    <NA>    <NA>    Cleric~ <NA>   
    ##  9     9 <NA>    <NA>    <NA>    <NA>    <NA>    <NA>    <NA>    <NA>    Develo~
    ## 10    10 <NA>    <NA>    <NA>    <NA>    <NA>    <NA>    <NA>    <NA>    <NA>   
    ## # ... with 1 more variable: `Claudia Garcia` <chr>, and abbreviated variable
    ## #   names 1: `John Mendes`, 2: `Rob Stewart`, 3: `Rachel Abrahamson`,
    ## #   4: `Christy Hickman`, 5: `Johnson Harper`, 6: `Candace Miller`,
    ## #   7: `Carlson Landy`, 8: `Pansy Jordan`, 9: `Darius Berry`

\##Lets see bias function in action install.packages(“SimDesign”)

``` r
library(SimDesign)
actual<-c(1,2,3,4,5)
pred<-c(1.1,2.1,3.1,4.1,5.1)
bias(actual,pred)
```

    ## [1] -0.1

``` r
actual<-c(1.2,2.2,3.2,4.2,5.2)
pred<-c(1.1,2.1,3.1,4.1,5.1)
bias(actual,pred)
```

    ## [1] 0.1

## Activity

``` r
head(df)
```

    ##          hotel is_canceled lead_time arrival_date_year arrival_date_month
    ## 1 Resort Hotel           0       342              2015               July
    ## 2 Resort Hotel           0       737              2015               July
    ## 3 Resort Hotel           0         7              2015               July
    ## 4 Resort Hotel           0        13              2015               July
    ## 5 Resort Hotel           0        14              2015               July
    ## 6 Resort Hotel           0        14              2015               July
    ##   arrival_date_week_number arrival_date_day_of_month stays_in_weekend_nights
    ## 1                       27                         1                       0
    ## 2                       27                         1                       0
    ## 3                       27                         1                       0
    ## 4                       27                         1                       0
    ## 5                       27                         1                       0
    ## 6                       27                         1                       0
    ##   stays_in_week_nights adults children babies meal country market_segment
    ## 1                    0      2        0      0   BB     PRT         Direct
    ## 2                    0      2        0      0   BB     PRT         Direct
    ## 3                    1      1        0      0   BB     GBR         Direct
    ## 4                    1      1        0      0   BB     GBR      Corporate
    ## 5                    2      2        0      0   BB     GBR      Online TA
    ## 6                    2      2        0      0   BB     GBR      Online TA
    ##   distribution_channel is_repeated_guest previous_cancellations
    ## 1               Direct                 0                      0
    ## 2               Direct                 0                      0
    ## 3               Direct                 0                      0
    ## 4            Corporate                 0                      0
    ## 5                TA/TO                 0                      0
    ## 6                TA/TO                 0                      0
    ##   previous_bookings_not_canceled reserved_room_type assigned_room_type
    ## 1                              0                  C                  C
    ## 2                              0                  C                  C
    ## 3                              0                  A                  C
    ## 4                              0                  A                  A
    ## 5                              0                  A                  A
    ## 6                              0                  A                  A
    ##   booking_changes deposit_type agent company days_in_waiting_list customer_type
    ## 1               3   No Deposit  NULL    NULL                    0     Transient
    ## 2               4   No Deposit  NULL    NULL                    0     Transient
    ## 3               0   No Deposit  NULL    NULL                    0     Transient
    ## 4               0   No Deposit   304    NULL                    0     Transient
    ## 5               0   No Deposit   240    NULL                    0     Transient
    ## 6               0   No Deposit   240    NULL                    0     Transient
    ##   adr required_car_parking_spaces total_of_special_requests reservation_status
    ## 1   0                           0                         0          Check-Out
    ## 2   0                           0                         0          Check-Out
    ## 3  75                           0                         0          Check-Out
    ## 4  75                           0                         0          Check-Out
    ## 5  98                           0                         1          Check-Out
    ## 6  98                           0                         1          Check-Out
    ##   reservation_status_date
    ## 1              2015-07-01
    ## 2              2015-07-01
    ## 3              2015-07-02
    ## 4              2015-07-02
    ## 5              2015-07-03
    ## 6              2015-07-03

``` r
skim_without_charts(df)
```

|                                                  |        |
|:-------------------------------------------------|:-------|
| Name                                             | df     |
| Number of rows                                   | 119390 |
| Number of columns                                | 32     |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_   |        |
| Column type frequency:                           |        |
| character                                        | 14     |
| numeric                                          | 18     |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_ |        |
| Group variables                                  | None   |

Data summary

**Variable type: character**

| skim_variable           | n_missing | complete_rate | min | max | empty | n_unique | whitespace |
|:------------------------|----------:|--------------:|----:|----:|------:|---------:|-----------:|
| hotel                   |         0 |             1 |  10 |  12 |     0 |        2 |          0 |
| arrival_date_month      |         0 |             1 |   3 |   9 |     0 |       12 |          0 |
| meal                    |         0 |             1 |   2 |   9 |     0 |        5 |          0 |
| country                 |         0 |             1 |   2 |   4 |     0 |      178 |          0 |
| market_segment          |         0 |             1 |   6 |  13 |     0 |        8 |          0 |
| distribution_channel    |         0 |             1 |   3 |   9 |     0 |        5 |          0 |
| reserved_room_type      |         0 |             1 |   1 |   1 |     0 |       10 |          0 |
| assigned_room_type      |         0 |             1 |   1 |   1 |     0 |       12 |          0 |
| deposit_type            |         0 |             1 |  10 |  10 |     0 |        3 |          0 |
| agent                   |         0 |             1 |   1 |   4 |     0 |      334 |          0 |
| company                 |         0 |             1 |   1 |   4 |     0 |      353 |          0 |
| customer_type           |         0 |             1 |   5 |  15 |     0 |        4 |          0 |
| reservation_status      |         0 |             1 |   7 |   9 |     0 |        3 |          0 |
| reservation_status_date |         0 |             1 |  10 |  10 |     0 |      926 |          0 |

**Variable type: numeric**

| skim_variable                  | n_missing | complete_rate |    mean |     sd |      p0 |     p25 |     p50 |  p75 | p100 |
|:-------------------------------|----------:|--------------:|--------:|-------:|--------:|--------:|--------:|-----:|-----:|
| is_canceled                    |         0 |             1 |    0.37 |   0.48 |    0.00 |    0.00 |    0.00 |    1 |    1 |
| lead_time                      |         0 |             1 |  104.01 | 106.86 |    0.00 |   18.00 |   69.00 |  160 |  737 |
| arrival_date_year              |         0 |             1 | 2016.16 |   0.71 | 2015.00 | 2016.00 | 2016.00 | 2017 | 2017 |
| arrival_date_week_number       |         0 |             1 |   27.17 |  13.61 |    1.00 |   16.00 |   28.00 |   38 |   53 |
| arrival_date_day_of_month      |         0 |             1 |   15.80 |   8.78 |    1.00 |    8.00 |   16.00 |   23 |   31 |
| stays_in_weekend_nights        |         0 |             1 |    0.93 |   1.00 |    0.00 |    0.00 |    1.00 |    2 |   19 |
| stays_in_week_nights           |         0 |             1 |    2.50 |   1.91 |    0.00 |    1.00 |    2.00 |    3 |   50 |
| adults                         |         0 |             1 |    1.86 |   0.58 |    0.00 |    2.00 |    2.00 |    2 |   55 |
| children                       |         4 |             1 |    0.10 |   0.40 |    0.00 |    0.00 |    0.00 |    0 |   10 |
| babies                         |         0 |             1 |    0.01 |   0.10 |    0.00 |    0.00 |    0.00 |    0 |   10 |
| is_repeated_guest              |         0 |             1 |    0.03 |   0.18 |    0.00 |    0.00 |    0.00 |    0 |    1 |
| previous_cancellations         |         0 |             1 |    0.09 |   0.84 |    0.00 |    0.00 |    0.00 |    0 |   26 |
| previous_bookings_not_canceled |         0 |             1 |    0.14 |   1.50 |    0.00 |    0.00 |    0.00 |    0 |   72 |
| booking_changes                |         0 |             1 |    0.22 |   0.65 |    0.00 |    0.00 |    0.00 |    0 |   21 |
| days_in_waiting_list           |         0 |             1 |    2.32 |  17.59 |    0.00 |    0.00 |    0.00 |    0 |  391 |
| adr                            |         0 |             1 |  101.83 |  50.54 |   -6.38 |   69.29 |   94.58 |  126 | 5400 |
| required_car_parking_spaces    |         0 |             1 |    0.06 |   0.25 |    0.00 |    0.00 |    0.00 |    0 |    8 |
| total_of_special_requests      |         0 |             1 |    0.57 |   0.79 |    0.00 |    0.00 |    0.00 |    1 |    5 |

``` r
head(arrange(df,-lead_time))
```

    ##          hotel is_canceled lead_time arrival_date_year arrival_date_month
    ## 1 Resort Hotel           0       737              2015               July
    ## 2 Resort Hotel           0       709              2016           February
    ## 3   City Hotel           1       629              2017              March
    ## 4   City Hotel           1       629              2017              March
    ## 5   City Hotel           1       629              2017              March
    ## 6   City Hotel           1       629              2017              March
    ##   arrival_date_week_number arrival_date_day_of_month stays_in_weekend_nights
    ## 1                       27                         1                       0
    ## 2                        9                        25                       8
    ## 3                       13                        30                       0
    ## 4                       13                        30                       0
    ## 5                       13                        30                       0
    ## 6                       13                        30                       0
    ##   stays_in_week_nights adults children babies meal country market_segment
    ## 1                    0      2        0      0   BB     PRT         Direct
    ## 2                   20      2        0      0   HB     GBR         Direct
    ## 3                    1      1        0      0   BB     PRT         Groups
    ## 4                    1      1        0      0   BB     PRT         Groups
    ## 5                    2      2        0      0   BB     PRT         Groups
    ## 6                    2      2        0      0   BB     PRT         Groups
    ##   distribution_channel is_repeated_guest previous_cancellations
    ## 1               Direct                 0                      0
    ## 2               Direct                 0                      0
    ## 3                TA/TO                 0                      0
    ## 4                TA/TO                 0                      0
    ## 5                TA/TO                 0                      0
    ## 6                TA/TO                 0                      0
    ##   previous_bookings_not_canceled reserved_room_type assigned_room_type
    ## 1                              0                  C                  C
    ## 2                              0                  E                  E
    ## 3                              0                  A                  A
    ## 4                              0                  A                  A
    ## 5                              0                  A                  A
    ## 6                              0                  A                  A
    ##   booking_changes deposit_type agent company days_in_waiting_list customer_type
    ## 1               4   No Deposit  NULL    NULL                    0     Transient
    ## 2               2   No Deposit  NULL    NULL                    0     Transient
    ## 3               0   Non Refund     1    NULL                    0     Transient
    ## 4               0   Non Refund     1    NULL                    0     Transient
    ## 5               0   Non Refund     1    NULL                    0     Transient
    ## 6               0   Non Refund     1    NULL                    0     Transient
    ##   adr required_car_parking_spaces total_of_special_requests reservation_status
    ## 1   0                           0                         0          Check-Out
    ## 2  68                           0                         0          Check-Out
    ## 3  59                           0                         0           Canceled
    ## 4  59                           0                         0           Canceled
    ## 5  62                           0                         0           Canceled
    ## 6  62                           0                         0           Canceled
    ##   reservation_status_date
    ## 1              2015-07-01
    ## 2              2016-03-24
    ## 3              2015-10-21
    ## 4              2015-10-21
    ## 5              2015-10-21
    ## 6              2015-10-21

``` r
max(df$lead_time)
```

    ## [1] 737

``` r
min(df$lead_time)
```

    ## [1] 0

``` r
mean(df$lead_time)
```

    ## [1] 104.0114

``` r
hotel_booking_city<- df %>% 
  filter(df$hotel=='City Hotel')
head(hotel_booking_city)
```

    ##        hotel is_canceled lead_time arrival_date_year arrival_date_month
    ## 1 City Hotel           0         6              2015               July
    ## 2 City Hotel           1        88              2015               July
    ## 3 City Hotel           1        65              2015               July
    ## 4 City Hotel           1        92              2015               July
    ## 5 City Hotel           1       100              2015               July
    ## 6 City Hotel           1        79              2015               July
    ##   arrival_date_week_number arrival_date_day_of_month stays_in_weekend_nights
    ## 1                       27                         1                       0
    ## 2                       27                         1                       0
    ## 3                       27                         1                       0
    ## 4                       27                         1                       2
    ## 5                       27                         2                       0
    ## 6                       27                         2                       0
    ##   stays_in_week_nights adults children babies meal country market_segment
    ## 1                    2      1        0      0   HB     PRT  Offline TA/TO
    ## 2                    4      2        0      0   BB     PRT      Online TA
    ## 3                    4      1        0      0   BB     PRT      Online TA
    ## 4                    4      2        0      0   BB     PRT      Online TA
    ## 5                    2      2        0      0   BB     PRT      Online TA
    ## 6                    3      2        0      0   BB     PRT      Online TA
    ##   distribution_channel is_repeated_guest previous_cancellations
    ## 1                TA/TO                 0                      0
    ## 2                TA/TO                 0                      0
    ## 3                TA/TO                 0                      0
    ## 4                TA/TO                 0                      0
    ## 5                TA/TO                 0                      0
    ## 6                TA/TO                 0                      0
    ##   previous_bookings_not_canceled reserved_room_type assigned_room_type
    ## 1                              0                  A                  A
    ## 2                              0                  A                  A
    ## 3                              0                  A                  A
    ## 4                              0                  A                  A
    ## 5                              0                  A                  A
    ## 6                              0                  A                  A
    ##   booking_changes deposit_type agent company days_in_waiting_list customer_type
    ## 1               0   No Deposit     6    NULL                    0     Transient
    ## 2               0   No Deposit     9    NULL                    0     Transient
    ## 3               0   No Deposit     9    NULL                    0     Transient
    ## 4               0   No Deposit     9    NULL                    0     Transient
    ## 5               0   No Deposit     9    NULL                    0     Transient
    ## 6               0   No Deposit     9    NULL                    0     Transient
    ##    adr required_car_parking_spaces total_of_special_requests reservation_status
    ## 1  0.0                           0                         0          Check-Out
    ## 2 76.5                           0                         1           Canceled
    ## 3 68.0                           0                         1           Canceled
    ## 4 76.5                           0                         2           Canceled
    ## 5 76.5                           0                         1           Canceled
    ## 6 76.5                           0                         1           Canceled
    ##   reservation_status_date
    ## 1              2015-07-03
    ## 2              2015-07-01
    ## 3              2015-04-30
    ## 4              2015-06-23
    ## 5              2015-04-02
    ## 6              2015-06-25

``` r
mean(hotel_booking_city$lead_time)
```

    ## [1] 109.7357

``` r
summary_hotel<- df %>% 
  group_by(hotel) %>% 
  summarise(avg_lead_time=mean(lead_time), max_lead_time=max(lead_time), min_lead_time=min(lead_time))
head(summary_hotel)
```

    ## # A tibble: 2 x 4
    ##   hotel        avg_lead_time max_lead_time min_lead_time
    ##   <chr>                <dbl>         <int>         <int>
    ## 1 City Hotel           110.            629             0
    ## 2 Resort Hotel          92.7           737             0

## Activity vizualizations

``` r
head(penguins)
```

    ## # A tibble: 6 x 8
    ##   species island    bill_length_mm bill_depth_mm flipper_l~1 body_~2 sex    year
    ##   <fct>   <fct>              <dbl>         <dbl>       <int>   <int> <fct> <int>
    ## 1 Adelie  Torgersen           39.1          18.7         181    3750 male   2007
    ## 2 Adelie  Torgersen           39.5          17.4         186    3800 fema~  2007
    ## 3 Adelie  Torgersen           40.3          18           195    3250 fema~  2007
    ## 4 Adelie  Torgersen           NA            NA            NA      NA <NA>   2007
    ## 5 Adelie  Torgersen           36.7          19.3         193    3450 fema~  2007
    ## 6 Adelie  Torgersen           39.3          20.6         190    3650 male   2007
    ## # ... with abbreviated variable names 1: flipper_length_mm, 2: body_mass_g

### viz

``` r
ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,colour=species))+
    labs(title="Palmer Penguins flipper length VS body mass", subtitle="Contains three species of penguins",captions="2007-2015")+
    annotate("text",x=220,y=3500,label="Gentoo are largest species",colour="blue",size=2,fontface="bold")
```

    ## Warning: Removed 2 rows containing missing values (geom_point).

![](First_R_Markdown_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

``` r
#ggsave("Palmer Penguins.png")
```

## Activity

``` r
colnames(df)
```

    ##  [1] "hotel"                          "is_canceled"                   
    ##  [3] "lead_time"                      "arrival_date_year"             
    ##  [5] "arrival_date_month"             "arrival_date_week_number"      
    ##  [7] "arrival_date_day_of_month"      "stays_in_weekend_nights"       
    ##  [9] "stays_in_week_nights"           "adults"                        
    ## [11] "children"                       "babies"                        
    ## [13] "meal"                           "country"                       
    ## [15] "market_segment"                 "distribution_channel"          
    ## [17] "is_repeated_guest"              "previous_cancellations"        
    ## [19] "previous_bookings_not_canceled" "reserved_room_type"            
    ## [21] "assigned_room_type"             "booking_changes"               
    ## [23] "deposit_type"                   "agent"                         
    ## [25] "company"                        "days_in_waiting_list"          
    ## [27] "customer_type"                  "adr"                           
    ## [29] "required_car_parking_spaces"    "total_of_special_requests"     
    ## [31] "reservation_status"             "reservation_status_date"

``` r
ggplot(data=df)+geom_point(mapping = aes(x=lead_time,y=children))+
  labs(caption="2001",title="Hotel Booking: Lead time VS Children",subtitle="Sample data has different lead times")+
    annotate("text",x=400,y=7.5,label="Zero children has more lead time")
```

    ## Warning: Removed 4 rows containing missing values (geom_point).

![](First_R_Markdown_files/figure-gfm/unnamed-chunk-25-1.png)<!-- -->

``` r
ggplot(data=df)+geom_point(mapping=aes(x=stays_in_week_nights,y=children))
```

    ## Warning: Removed 4 rows containing missing values (geom_point).

![](First_R_Markdown_files/figure-gfm/unnamed-chunk-25-2.png)<!-- -->

``` r
ggplot(data=df)+geom_bar(aes(x=stays_in_week_nights,fill=children))
```

![](First_R_Markdown_files/figure-gfm/unnamed-chunk-25-3.png)<!-- -->

``` r
library(palmerpenguins)
ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,shape=sex,colour=species))
```

    ## Warning: Removed 11 rows containing missing values (geom_point).

![](First_R_Markdown_files/figure-gfm/unnamed-chunk-25-4.png)<!-- -->

### geom_smooth

``` r
ggplot(data=penguins)+geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g))
```

    ## `geom_smooth()` using method = 'loess' and formula 'y ~ x'

    ## Warning: Removed 2 rows containing non-finite values (stat_smooth).

![](First_R_Markdown_files/figure-gfm/unnamed-chunk-26-1.png)<!-- -->

### geom_jitter

``` r
ggplot(data=penguins)+geom_jitter(mapping=aes(x=flipper_length_mm,y=body_mass_g),colour="purple")+
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g))
```

    ## `geom_smooth()` using method = 'loess' and formula 'y ~ x'

    ## Warning: Removed 2 rows containing non-finite values (stat_smooth).

    ## Warning: Removed 2 rows containing missing values (geom_point).

![](First_R_Markdown_files/figure-gfm/unnamed-chunk-27-1.png)<!-- -->

### geom_bar

``` r
ggplot(data=penguins)+geom_bar(mapping=aes(x=species,fill=species))
```

![](First_R_Markdown_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

``` r
ggplot(data=diamonds)+geom_bar(mapping = aes(x=cut,fill=clarity))
```

![](First_R_Markdown_files/figure-gfm/unnamed-chunk-28-2.png)<!-- -->

### facet_wrap in action

``` r
ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,shape=sex,colour=species))+
    facet_wrap(sex~species)
```

    ## Warning: Removed 11 rows containing missing values (geom_point).

![](First_R_Markdown_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

### facet_grid in action

``` r
ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,shape=sex,colour=species))+
  facet_grid(~species)
```

    ## Warning: Removed 11 rows containing missing values (geom_point).

![](First_R_Markdown_files/figure-gfm/unnamed-chunk-30-1.png)<!-- -->

## Activity

``` r
ggplot(data=df)+geom_bar(mapping=aes(x=distribution_channel))
```

![](First_R_Markdown_files/figure-gfm/unnamed-chunk-31-1.png)<!-- -->

``` r
ggplot(data=df)+geom_bar(mapping=aes(x=distribution_channel,fill=deposit_type))
```

![](First_R_Markdown_files/figure-gfm/unnamed-chunk-31-2.png)<!-- -->

``` r
ggplot(data=df)+geom_bar(mapping=aes(x=distribution_channel,fill=distribution_channel))+facet_wrap(~deposit_type)+
    theme(axis.text.x=element_text(angle=90))
```

![](First_R_Markdown_files/figure-gfm/unnamed-chunk-31-3.png)<!-- -->

``` r
ggplot(data=df)+geom_bar(mapping=aes(x=distribution_channel))+
         facet_wrap(~market_segment)+
         theme(axis.text.x=element_text(angle=90))
```

![](First_R_Markdown_files/figure-gfm/unnamed-chunk-31-4.png)<!-- -->

``` r
ggplot(data = df) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_grid(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))       
```

![](First_R_Markdown_files/figure-gfm/unnamed-chunk-31-5.png)<!-- -->

``` r
ggplot(data = df) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type~market_segment) +
  theme(axis.text.x = element_text(angle = 45))
```

![](First_R_Markdown_files/figure-gfm/unnamed-chunk-31-6.png)<!-- -->

## Activity

``` r
ggplot(data=df)+geom_bar(aes(x=hotel,fill=market_segment))
```

![](First_R_Markdown_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

``` r
ggplot(data=df)+geom_bar(aes(x=hotel))+facet_wrap(~market_segment)
```

![](First_R_Markdown_files/figure-gfm/unnamed-chunk-32-2.png)<!-- -->

``` r
df %>% 
  filter(hotel=="City Hotel") %>% 
  filter(market_segment=="Online TA") %>% 
  ggplot(aes(x=lead_time,y=children))+
  geom_point()
```

    ## Warning: Removed 1 rows containing missing values (geom_point).

![](First_R_Markdown_files/figure-gfm/unnamed-chunk-32-3.png)<!-- -->

``` r
head(df %>% 
       filter(hotel=="City Hotel") %>% 
       filter(market_segment=="Online TA"))
```

    ##        hotel is_canceled lead_time arrival_date_year arrival_date_month
    ## 1 City Hotel           1        88              2015               July
    ## 2 City Hotel           1        65              2015               July
    ## 3 City Hotel           1        92              2015               July
    ## 4 City Hotel           1       100              2015               July
    ## 5 City Hotel           1        79              2015               July
    ## 6 City Hotel           1        63              2015               July
    ##   arrival_date_week_number arrival_date_day_of_month stays_in_weekend_nights
    ## 1                       27                         1                       0
    ## 2                       27                         1                       0
    ## 3                       27                         1                       2
    ## 4                       27                         2                       0
    ## 5                       27                         2                       0
    ## 6                       27                         2                       1
    ##   stays_in_week_nights adults children babies meal country market_segment
    ## 1                    4      2        0      0   BB     PRT      Online TA
    ## 2                    4      1        0      0   BB     PRT      Online TA
    ## 3                    4      2        0      0   BB     PRT      Online TA
    ## 4                    2      2        0      0   BB     PRT      Online TA
    ## 5                    3      2        0      0   BB     PRT      Online TA
    ## 6                    3      1        0      0   BB     PRT      Online TA
    ##   distribution_channel is_repeated_guest previous_cancellations
    ## 1                TA/TO                 0                      0
    ## 2                TA/TO                 0                      0
    ## 3                TA/TO                 0                      0
    ## 4                TA/TO                 0                      0
    ## 5                TA/TO                 0                      0
    ## 6                TA/TO                 0                      0
    ##   previous_bookings_not_canceled reserved_room_type assigned_room_type
    ## 1                              0                  A                  A
    ## 2                              0                  A                  A
    ## 3                              0                  A                  A
    ## 4                              0                  A                  A
    ## 5                              0                  A                  A
    ## 6                              0                  A                  A
    ##   booking_changes deposit_type agent company days_in_waiting_list customer_type
    ## 1               0   No Deposit     9    NULL                    0     Transient
    ## 2               0   No Deposit     9    NULL                    0     Transient
    ## 3               0   No Deposit     9    NULL                    0     Transient
    ## 4               0   No Deposit     9    NULL                    0     Transient
    ## 5               0   No Deposit     9    NULL                    0     Transient
    ## 6               0   No Deposit     9    NULL                    0     Transient
    ##    adr required_car_parking_spaces total_of_special_requests reservation_status
    ## 1 76.5                           0                         1           Canceled
    ## 2 68.0                           0                         1           Canceled
    ## 3 76.5                           0                         2           Canceled
    ## 4 76.5                           0                         1           Canceled
    ## 5 76.5                           0                         1           Canceled
    ## 6 68.0                           0                         0           Canceled
    ##   reservation_status_date
    ## 1              2015-07-01
    ## 2              2015-04-30
    ## 3              2015-06-23
    ## 4              2015-04-02
    ## 5              2015-06-25
    ## 6              2015-06-25

## Activity

``` r
mindate=min(df$arrival_date_year)
maxdate=max(df$arrival_date_year)
ggplot(data = df) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       subtitle=paste0("Data from: ", mindate, " to ", maxdate))
```

![](First_R_Markdown_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

``` r
#ggsave("Activity.png")
#library(ggplot2)
#install.packages("rmarkdown")
```
