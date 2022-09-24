a <- "Hello"
b <-"World"
print(typeof(c(a,1.05,b)))
# creating vectors
numeric<-c(1L,2L,3L,4L,5L)
char<-c("one","two","three","four","five")
bool<-c(TRUE,FALSE,TRUE,FALSE,TRUE)
numeric_double<-c(1.04,2.04,3.04,4.04,5.04)
print(numeric)
print(char)
print(bool)
print(numeric_double)
# typeof() function 
print(typeof(numeric))
print(typeof(bool))
print(typeof(char))
print(typeof(numeric_double))
# is.logical() function 
print(is.logical(bool))
# is.integer() function
print(is.integer((numeric)))
# is.double() function
print(is.double((numeric_double)))
# is.character() function
print(is.character((char)))
# finding the length of vector
print(length(numeric))
print(length(numeric_double))
print(length(char))
print(length(bool))

# naming each elements of vector
names(numeric)<- c("a","b","c","d","e")
print(numeric)

# creating lists in R
list1=list("abc",22L,TRUE,22.20)
print(list1)
list2=list(list(list(1,2,3)))
str(list2)
print(str(list1))
list3<-list("a" =1,"b" =2,"c" =3,"d" =4,"e" =5)
print(list3)
# Working on dates
install.packages("tidyverse")
library(tidyverse)
library(lubridate)
today()
now()
date1<-dmy("12-09-2022")
date2=mdy("January 20th, 2021")
date3=ymd(20220912)
vec=c(date1,date2,date3)
print(typeof(vec))
vec
typeof(date1)
# creating date-time
datetime1=ymd_hms("2021-01-20 20:11:59")
datetime2=mdy_hm("01/20/2021 08:01")
typeof(datetime1)
print(c(datetime1,datetime2))
as_date(now())
# DataFrames
data.frame(numeric,char,numeric_double,bool)
# Matrix
matrix(c(1:6),nrow =2 )
#Practice on sample dataset diamonds
head(diamonds)
str(diamonds)
glimpse(diamonds)
colnames(diamonds)
rename(diamonds,carat_new=carat)
summarise(diamonds,carat_mean=mean(carat))
ggplot(data=diamonds, aes(x=carat, y= price))+geom_point()
ggplot(data=diamonds, aes(x=carat, y= price, color=cut))+geom_point()+facet_wrap(~cut)
browseVignettes()

# pipes on Toothbar
data("ToothGrowth")
View(ToothGrowth)

# Firstly lets demostrate same functionality through nested functions
new_data<-arrange(filter(ToothGrowth,dose==0.5),len)
View(new_data)
# Now lets do the task with pipes
new_data_pipe<-ToothGrowth %>% 
  filter(dose==0.5) %>% 
  group_by(supp) %>% 
  summarise(mean_d=mean(len, rm.na=T),.group="drop")
View(new_data_pipe)

# Data.Frame creation
name<- c("Rahul","Hritik","Pushker")
age<- c(24,24,23)
people<- data.frame(name,age)
View(people)
str(people)
glimpse(people)

# tibble in action
as_tibble(diamonds)
# data() function 
data("mtcars")
mtcars
# readr in action
booking_df<-read_csv("C:\\Users\\500053108\\Downloads\\GL0bk8O2Sja9G5PDtko2uQ_31e445d7ca64417eb45aeaa08ec90bf1_hotel_bookings.csv")
head(booking_df)
str(booking_df)
glimpse(booking_df)
colnames(booking_df)
new_df <- select(booking_df, 'adr',adults)
View(new_df)
View(mutate(new_df, total=adr/adults))

# lets start the data cleaning process
install.packages("here")
install.packages("skimr")
install.packages("janitor")
library(here)
library(skimr)
library("janitor")
install.packages("palmerpenguins")
library(palmerpenguins)
skim_without_charts(penguins)

head(penguins)
select(penguins,species)
select(penguins,-species)
penguins %>% 
  rename(island_name=island) %>% 
  rename_with(toupper)
rename_with(penguins,tolower)
# some arthimatic operatos
x<-10
y<-3
print(x%%y) # modulus operators
print(x%/%y) # integer division

# some relational operators
a=c(1,2,3,4)
b=c(10,20,30,40)
print(a<2&&b>2) # returns only the result of 1st elements
print(a<2&b>2) # returns all element result
print()
# data organiozation functions

penguins %>% 
  arrange(-bill_length_mm)

penguins %>% 
  drop_na() %>% 
  group_by(island) %>% 
  summarise(mean_bill_len=mean(bill_length_mm))
View(penguins %>% 
  drop_na() %>% 
  group_by(species,island) %>% 
  summarise(max_bill=max(bill_length_mm), min_bill=min(bill_length_mm)))
View(penguins %>% 
       drop_na() %>% 
       filter(species=="Adelie"))

# Activity
df=read.csv("C:\\Users\\500053108\\Downloads\\GL0bk8O2Sja9G5PDtko2uQ_31e445d7ca64417eb45aeaa08ec90bf1_hotel_bookings (1).csv")
View(df)
library(skimr)
library(janitor)
# lets review our dataset
skim_without_charts(df)
# lets start the cleaning process
focused_df<- df %>%  select(hotel,is_canceled,lead_time)
View(focused_df)
# renaming hotel to hote_type
focused_df<-focused_df %>% 
  select(hotel,is_canceled,lead_time) %>% 
  rename(hotel_type=hotel)
View(focused_df)
# combining columns
example_df <- df %>%
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")
View(example_df)
colnames(df)
example_df<-df %>% 
  mutate(guest=adults+children+babies)
View(select(example_df,guest))
# summerizing dataset
example_df <- df %>% 
  summarise(number_cancelled=sum(is_canceled), avg_lead_time=mean(lead_time))
View(example_df)

# Activity 2
id <- c(1:10)

name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, name, job_title)

# data transformation exercise
# seperate
new<-separate(employee,name,into=c('First_name','Last_name'),sep=' ')
# unite
unite(new,'name',First_name,Last_name,sep=' ')
mutate(penguins,body_mass_kg=body_mass_g/1000)
print(employee)
library(tidyr)
pivot_longer(employee,name)
employee %>% 
  pivot_wider(names_from=name, values_from = job_title)

install.packages("SimDesign")
library(SimDesign)
actual<-c(1,2,3,4,5)
pred<-c(1.1,2.1,3.1,4.1,5.1)
bias(actual,pred)

actual<-c(1.2,2.2,3.2,4.2,5.2)
pred<-c(1.1,2.1,3.1,4.1,5.1)
bias(actual,pred)
# Activity
head(df)
skim_without_charts(df)
View(arrange(df,-lead_time))
library(tidyverse)
max(df$lead_time)
min(df$lead_time)
mean(df$lead_time)
hotel_booking_city<- df %>% 
  filter(df$hotel=='City Hotel')
View(hotel_booking_city)
mean(hotel_booking_city$lead_time)

summary_hotel<- df %>% 
  group_by(hotel) %>% 
  summarise(avg_lead_time=mean(lead_time), max_lead_time=max(lead_time), min_lead_time=min(lead_time))
head(summary_hotel)

# Activity vizualizations
head(penguins)
View(penguins)
#viz
ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,colour=species))+
    labs(title="Palmer Penguins flipper length VS body mass", subtitle="Contains three species of penguins",captions="2007-2015")+
    annotate("text",x=220,y=3500,label="Gentoo are largest species",colour="blue",size=2,fontface="bold")
ggsave("Palmer Penguins.png")
# Activity

colnames(df)
ggplot(data=df)+geom_point(mapping = aes(x=lead_time,y=children))+
  labs(caption="2001",title="Hotel Booking: Lead time VS Children",subtitle="Sample data has different lead times")+
    annotate("text",x=400,y=7.5,label="Zero children has more lead time")

ggplot(data=df)+geom_point(mapping=aes(x=stays_in_week_nights,y=children))

ggplot(data=df)+geom_bar(aes(x=stays_in_week_nights,fill=children))
                         
library(palmerpenguins)
ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,shape=sex,colour=species))

# geom_smooth
ggplot(data=penguins)+geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g))

# geom_jitter
ggplot(data=penguins)+geom_jitter(mapping=aes(x=flipper_length_mm,y=body_mass_g),colour="purple")+
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g))


#geom_bar
ggplot(data=penguins)+geom_bar(mapping=aes(x=species,fill=species))

ggplot(data=diamonds)+geom_bar(mapping = aes(x=cut,fill=clarity))

# facet_wrap in action
ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,shape=sex,colour=species))+
    facet_wrap(sex~species)

# facet_grid in action
ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,shape=sex,colour=species))+
  facet_grid(~species)

# Activity
ggplot(data=df)+geom_bar(mapping=aes(x=distribution_channel))

ggplot(data=df)+geom_bar(mapping=aes(x=distribution_channel,fill=deposit_type))

ggplot(data=df)+geom_bar(mapping=aes(x=distribution_channel,fill=distribution_channel))+facet_wrap(~deposit_type)+
    theme(axis.text.x=element_text(angle=90))

ggplot(data=df)+geom_bar(mapping=aes(x=distribution_channel))+
         facet_wrap(~market_segment)+
         theme(axis.text.x=element_text(angle=90))
       
ggplot(data = df) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_grid(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))       

ggplot(data = df) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type~market_segment) +
  theme(axis.text.x = element_text(angle = 45))
# Activity
ggplot(data=df)+geom_bar(aes(x=hotel,fill=market_segment))

ggplot(data=df)+geom_bar(aes(x=hotel))+facet_wrap(~market_segment)

df %>% 
  filter(hotel=="City Hotel") %>% 
  filter(market_segment=="Online TA") %>% 
  ggplot(aes(x=lead_time,y=children))+
  geom_point()

View(df %>% 
       filter(hotel=="City Hotel") %>% 
       filter(market_segment=="Online TA"))

#Activity
mindate=min(df$arrival_date_year)
maxdate=max(df$arrival_date_year)
ggplot(data = df) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       subtitle=paste0("Data from: ", mindate, " to ", maxdate))
ggsave("Activity.png")
library(ggplot2)
install.packages("rmarkdown")

install.packages('vitae')
