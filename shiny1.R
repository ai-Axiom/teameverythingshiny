
#Read source files into data frames
results <- read.csv("midterm-results.csv")
categories <- read.csv("quiz-categories.csv")

#compute totat time spent per student
student2 <-dplyr::mutate(results, Tot_time = Q1_time  + Q2_time + Q3_time + Q4_time + Q5_time + Q6_time + Q7_time + Q8.9_time + Q10_time + Q11_time + Q12.13_time  + Q14_time + Q15_time + Q16_time + Q17_time + Q18_time + Q19_time + Q20_time  + Q21_time + Q22_time + Q23_time + Q24_time + Q25_time + Q26_time + Q27_time + Q28_time + Q29_time + Q30_time )

#Plot total time vs total score
Time_vs_Score <- ggplot( data=student2, aes(x = Tot_time, y = Tot_score, color=Tot_score)) +
  +     geom_point()  + labs (x="Total time per student", y="Total score per student")  +
  +     scale_colour_gradientn(colours=rainbow(4))

#compute average time per question
student1 <- dplyr::summarise(results,  atime1=mean(Q1_time), atime2=mean(Q2_time), atime3=mean(Q3_time) , atime4=mean(Q4_time) , atime5=mean(Q5_time) , atime6=mean(Q6_time) , atime7=mean(Q7_time), atime8.9=mean(Q8.9_time),  atime10=mean(Q10_time), atime11=mean(Q11_time), atime12.13=mean(Q12.13_time),  atime14=mean(Q14_time), atime15=mean(Q15_time), atime16=mean(Q16_time), atime17=mean(Q17_time), atime18=mean(Q18_time), atime19=mean(Q19_time), atime20=mean(Q20_time), atime21=mean(Q21_time), atime22=mean(Q22_time), atime23=mean(Q23_time), atime24=mean(Q24_time), atime25=mean(Q25_time), atime26=mean(Q26_time), atime27=mean(Q27_time), atime28=mean(Q28_time), atime29=mean(Q29_time), atime30=mean(Q30_time))

