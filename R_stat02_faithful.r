head(faithful)            
duration = faithful$eruptions  
range(duration)           
breaks=seq(1.5, 5.5, by=0.5)
breaks                      
duration.cut = cut(duration, breaks, right=FALSE)
duration.freq = table(duration.cut) 
duration.freq
cbind(duration.freq)                

hist(duration, right=FALSE)         
hist(duration, right=FALSE, col=colors) 
hist(duration, right=FALSE, col=colors, main=“Old Faithful의 분화구 분출간격“, xlab=“분출간격”, ylab=“빈도“)
     
duration.cumfreq=cumsum(duration.freq)
duration.cumfreq
cbind(duration.cumfreq)

cumfreq0=c(0,cumsum(duration.freq))   
plot(breaks, cumfreq, main=“Old Faithful의 분화구 분출간격“, xlab=“분출간격”, ylab=“빈도“) 
lines(breaks,cumfreq0)                                      

stem(duration)                                              

waiting=faithful$waiting                                    
plot(duration, waiting)                                     
abline(lm(waiting~duration))                            
