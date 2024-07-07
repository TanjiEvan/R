## Conditional ##

## If-Else ##

# Determine a num if it is +ve or -ve or Zero

input <- 0
if(input >0){
  print("The number is positive")
} else if (input <0){
  print("The number is negative")
} else {
  print("The number is zero")
} 
  
## BMI < 18.5 ===== underweight
## 18.5 <= BMI < 25 ===== Normal Weight
## 25 <= BMI < 30 ===== Overweight
## BMI >= 30 ==== Obese

weight <- 76.5
height <- 1.8

bmi <- weight/(height^2)

if (bmi < 18.5){
  print("UNDERWEIGHT!")
}else if (bmi <25){
  print("Normal")
}else if (bmi <30){
  print ("Overweight")
}else{
  print("Obese")
}


## Find second Largest num 

num1 <- 67
num2 <- 8
num3 <- 23

if((num2 > num1 && num1 > num3) || (num3 > num1 && num1 > num2)){
  print(num1)
}else if((num1 > num2 && num2 > num3) || (num3 > num2 && num2 > num1)){
  print(num2)
}else if((num1 > num3 && num3 > num2) || (num2 > num3 && num3 > num1)){
  print(num3)
}else{
  print("Try again")
}

##Calculate sum of numbers from 1 to 50

sum <- 0
v<- c(1:50)

for (i in v){
  sum=sum+i
}
sum

## Sum of all Even num
sum_even=0
for(i in v){
  if(i %% 2 == 0){
    sum_even=sum_even+i
  }
  print(sum_even)
}







  
  
  
  
  
  
  