#Monte Carlo Simulations

#A # is followed by a comment, which is not executed.
#Monte Carlo Examples using the "sample" commands.

###############################
#Example 1
#Fair die, biased die
die = c(1:6)

sample(die,1) #Roll a fair die once. 
#sample is the command to choose a sample with or without replacement

sample(die, size = 100, replace = TRUE) #Roll the fair die 100 times
#What happens if we put replace = FALSE?

#Checking if the die is really fair:
temp1 = sample(die, size = 100, replace = TRUE)
temp_table1 = table(temp1) #Frequency distribution
prop.table(temp_table1) #Relative frequency distribution
#Now increase the number of rolls to 100000.

######
#Biased die
temp2 = sample(die, size = 100, replace = TRUE, prob = c(1/4, 1/8, 1/8, 1/8, 1/8, 1/4))
#100 rolls of a biased die with P(1) = P(6) = 1/4, P(2) = P(3) = P(4) = P(5) = 1/8.
temp_table2 = table(temp2)

prop.table(temp_table2)
#Again, try 100000 times.

################################
#Example 2
#Sum on two dice
die1 = c(1:6)
die2 = c(1:6)
sample1 = sample(die1, size = 10000, replace = TRUE)
sample2 = sample(die2, size = 10000, replace = TRUE)
prop.table(table(sample1+sample2))
#Exercise: Replicate for the biased die.

############
#Example 2 using a defined function:
two.dice = function(p,n){
  die1 = c(1:6)
  die2 = c(1:6)
  sample1 = sample(die1, size = n, replace = TRUE, prob = p)
  sample2 = sample(die2, size = n, replace = TRUE, prob = p)
  return(prop.table(table(sample1+sample2)))
}

two.dice(p = rep(1/6,6), n = 10000)
#Exercise: Replicate for the biased die.

######################################
#Monte Carlo simulation using the replicate command: 
#it replicates the same exercise a desired number of times.

#Declare a function. 
bolt_defect = function(prob_machine, prob_defect){
  machine = sample(c(1:3), size = 1, prob = prob_machine)
  prob_D = prob_defect[machine]                   
  sample_bolt = sample(c("D","ND"), size = 1, prob = c(prob_D, 1-prob_D))                 
  return(sample_bolt)
}
p1 = c(0.25, 0.35, 0.40)
p2 = c(0.05, 0.04, 0.02)
events = replicate(100000, bolt_defect(prob_machine = p1, prob_defect = p2)) #Replicate a large number of times
mean(events == "D") #Estimate probability of defect
#Again, try 100000 times.
