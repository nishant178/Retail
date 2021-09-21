store_train=read.csv("store_train.csv",stringsAsFactors= FALSE)
store_train
colnames(store_train)
store_test=read.csv("store_test.csv",stringsAsFactors= FALSE)
store_test

library(dplyr)
glimpse(store_train)

Area_name=store_train$Areaname
library(dplyr)

filter(Area_name=="Kennebec County, ME")
glimpse(store_train)

rg = store_train %>%
  filter(Area_name=="Kennebec County, ME") %>%
  filter(store_Type=="Supermarket Type1") %>%
  summarise(Sales = sum(sales0,sales1,sales2,sales3,sales4))
  
U_AreaName=unique(store_train$Areaname)
length(U_AreaName)


#Per_Response=store_train$store_Type=="Grocery Store" and store==1#

bg = store_train %>%
  filter(store_Type=="Grocery Store") %>%
  filter(store==1) %>%
  summarise(Sales = sum(sales0,sales1,sales2,sales3,sales4))



length(store_train$store)


library(ggplot2)
ggplot(store_train,aes(x=sales4,y=))+geom_histogram()


Summary(var(store_train$store_Type))


store_train[which.max(store_train$var),]

var.store_Type <-apply(store_Type, MARGIN=2, FUN=var)


summary(store_train)
s=unique(store_train$state_alpha)
length(s)
