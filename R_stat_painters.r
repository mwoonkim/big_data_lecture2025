library(MASS)
painters                                               
painters$school                                

school = painters$school
school.freq = table(school)
school.freq

cbind(school.freq)         

school.relfreq = school.freq / nrow(painters)
school.relfreq

options(digits=1)          
school.relfreq 
options(old)               

pie(school.freq)                                 
colors=c("red", "yellow","green", "violet","orange", "blue","pink","cyan")
pie(school.freq, col=colors)      
