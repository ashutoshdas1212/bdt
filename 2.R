n <- as.integer(readline(prompt = "enter no of employees"))

empid <- vector(mode = "character", length = n)
empname <- vector(mode = "character", length = n)
doj <- vector(mode = "character", length = n)
dept <- vector(mode = "character", length = n)
desig <- vector(mode = "character", length = n)

print("enter empid")

for(i in 1:n)
  empid[i] = as.character(readline())

print("enter empname")

for(i in 1:n)
  empname[i] = as.character(readline())

print("enter doj")

for(i in 1:n)
  doj[i] = as.character(readline())

print("enter dept")

for(i in 1:n)
  dept[i] = as.character(readline())

print("enter desig")

for(i in 1:n)
  desig[i] = as.character(readline())

employee <- data.frame(empid,empname,doj,dept,desig)

print(employee)

write.csv(employee,"emp.csv")

read.csv("emp.csv")

row <- data.frame("031","Zara","21-03-2020","HR","HR")

write.table(row, "emp.csv", append = TRUE, sep = ",", row.names = TRUE, col.names = FALSE, quote = FALSE)

read.csv("emp.csv")





