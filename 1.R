n <- as.integer(readline(prompt = "Enter no. of students"))

name <- vector(mode = "character", length = n)
usn <- vector(mode = "character", length = n)
marks <- vector(mode = "numeric", length = n)

print("Enter names")

for(i in 1:n)
  name[i] = as.character(readline())

print("Enter usn")

for(i in 1:n)
  usn[i] = as.character(readline())

print("Enter marks")

for(i in 1:n)
  marks[i] = as.numeric(readline())

student <- data.frame(usn,name,marks)

print(student)

age <- vector(mode = "integer", length = n)

print("Enter ages")

for(i in 1:n)
  age[i] = as.numeric(readline())

student <- cbind(student, age)

print(student)

for(i in 1:n)
if(student[i,3] > 25)
if(student[i,4] < 20)
print(student[i,])