####################################################################################
# Introduction to collaborative social science data analysis                       #
# By Christopher Gandrud                                                           #
# Date - 26th September 2015                                                       #
# Assigment 1                                                                      #
# Question- Does occuption of the male member has an effect on Infant Mortality    #
# Hypothesis- The provinces which has a higher male members involved in Agriculture#
# would have lower infant mortality rate as compared to provinces which more male  #
# members in the army.                                                             #
# By- Alessia D' Alessandro and Nitij Singh                                        #
# Date of Submission - 2nd OCtober 2015                                            #
####################################################################################
# Print R session Info
sessionInfo()
# Listing of the all the data sets available with R Studio
data()
# Load demographic data for Switzerland in year 1888
data("swiss")
# Viewing the information of the loaded data set
?swiss
# Summary of the Swiss data set looking for centrality
summary(swiss)
# List the variables in the data set 
names(swiss)
# Creating an histogram between Provinces and Infant Mortality
hist(swiss$Infant.Mortality, col = "gray75", main = 'Infant Mortality in 47 Provinces in Switzerland', xlab = 'Mortality',xlim = c(10,28))
# Creating an histogram between Provinces and Percentage of males involved in agricuture 
hist(swiss$Agriculture, col = "red", main = 'Percentage of males involved in agriculture as Occupation', xlab ='Percentage of Males' , xlim = c(0,100))
# Creating an histogram between Provinces and Percenatage of draftees receiving highest maek on army examination
hist(swiss$Examination, col = "green", main = 'Percentage of draftees receving highest marks', xlab = 'Percentage of highest mark on army examination'  )
# Creating boxplot for relation between Fertility and Percentage of males involved in Agriculture
plot(swiss$Fertility, swiss$Agriculture, main = 'Relation b/w Fertility and Percentage of Males in Agriculture', xlab = 'Fertility', ylab = 'Percentage of male involved in Agriculture')
cor.test(swiss$Fertility, swiss$Agriculture)
# Creating boxplot for relation between Fertility and Percentage of draftees receiving hightest mark on army examination
plot(swiss$Fertility, swiss$Examination, main = 'Relation b/w Fertility and Percentage in army exam', xlab = 'Fertility', ylab = 'Percentage in army exam')
