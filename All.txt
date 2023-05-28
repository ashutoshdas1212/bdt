1. a. Create three different variables, one that is numeric type and other two are vector of characters. Use these to create data frame of student.(USN, Name, Marks)
b.	Add a new numeric data column to the existing data frame (Age). Provide summary of the data
c.	Display the list of students whose Age is less than 20 and Marks greater than 25.

# Create variables
usn <- c("S001", "S002", "S003")
name <- c("John", "Emma", "Michael")
marks <- c(80, 75, 90)

# Create data frame
student_df <- data.frame(USN = usn, Name = name, Marks = marks, stringsAsFactors = FALSE)

# Add Age column
age <- c(18, 19, 20)
student_df$Age <- age

# Summary of data
summary(student_df)

# Filter students based on age and marks criteria
filtered_students <- subset(student_df, Age < 20 & Marks > 25)
filtered_students

2. Write a program to create the csv file for storing Employee data, containing the fields
(EmpiD, EmpName, DOJ,Dept, Desig.)
a.	Read the suitable number of employee details from the user.
b.	Create a dataframe of Employee
c.	Store the dataframe in the csv file
d.	Read the data from csv and Display the contents
e.	Append a new row into the csv file

# Load the required library
library(readr)

# Read the number of employee details from the user
num_employees <- as.integer(readline("Enter the number of employees: "))

# Create empty vectors for each field
emp_id <- character(num_employees)
emp_name <- character(num_employees)
doj <- character(num_employees)
dept <- character(num_employees)
desig <- character(num_employees)

# Read employee details from the user
for (i in 1:num_employees) {
  emp_id[i] <- readline(paste("Enter EmpID for Employee", i, ": "))
  emp_name[i] <- readline(paste("Enter EmpName for Employee", i, ": "))
  doj[i] <- readline(paste("Enter DOJ for Employee", i, ": "))
  dept[i] <- readline(paste("Enter Dept for Employee", i, ": "))
  desig[i] <- readline(paste("Enter Desig for Employee", i, ": "))
}

# Create a data frame of Employee
employee_df <- data.frame(EmpID = emp_id,
                          EmpName = emp_name,
                          DOJ = doj,
                          Dept = dept,
                          Desig = desig,
                          stringsAsFactors = FALSE)

# Store the data frame in a CSV file
write.csv(employee_df, "employee_data.csv", row.names = FALSE)

# Read data from CSV and display the contents
read_data <- read.csv("employee_data.csv")
print(read_data)

# Append a new row to the CSV file
new_row <- data.frame(EmpID = "E004",
                      EmpName = "Anna",
                      DOJ = "2023-01-15",
                      Dept = "Sales",
                      Desig = "Manager")

write.table(new_row, "employee_data.csv", append = TRUE, sep = ",", col.names = FALSE, row.names = FALSE)


3. Exploring Dataset
a.	List the data set available in your system using suitable command
b.	Select "mtcars" data set, find and display the number of rows and columns in that data set
c.	Find are there more automatic (0) or manual (1) transmission-type cars in the dataset? Hint: 9th column indicates the transmission type
d.	Get a scatter plot of 'hp' vs 'weight'.
e.	Change 'am', `cyl' and 'vs' to integer and store the new dataset as `newmtc'.
f.	Extract the cases where cylinder is less than 5
Implement following in rstudio.


# List the available datasets in your system
data()
# The above command will list all the available datasets in your system

# Select the "mtcars" dataset and display the number of rows and columns
data(mtcars)
num_rows <- nrow(mtcars)
num_cols <- ncol(mtcars)
print(paste("Number of rows:", num_rows))
print(paste("Number of columns:", num_cols))

# Count the number of automatic and manual transmission-type cars
transmission_counts <- table(mtcars$am)
print(transmission_counts)

# Scatter plot of 'hp' vs 'weight'
plot(mtcars$hp, mtcars$wt, xlab = "Horsepower", ylab = "Weight", main = "HP vs Weight")

# Change 'am', 'cyl', and 'vs' to integer and store the new dataset as 'newmtc'
newmtc <- mtcars
newmtc$am <- as.integer(newmtc$am)
newmtc$cyl <- as.integer(newmtc$cyl)
newmtc$vs <- as.integer(newmtc$vs)

# Extract cases where the number of cylinders is less than 5
extracted_cases <- subset(newmtc, cyl < 5)
print(extracted_cases)


4. Consider “Airquality” dataset

         a.  Display the dimension ofthe dataset

         b. Display the class of each fields in the data set

         c. Test the missing values

         d. Recode the missing values, as mean of the column values

         e. Exclude the missing values

FIRST EXAMPLE:
# Load the "airquality" dataset
data(airquality)

# Display the dimensions of the dataset
dim(airquality)

# Display the class of each field in the dataset
sapply(airquality, class)

# Test for missing values
is.na(airquality)

# Recode missing values as the mean of the column values
for (col in names(airquality)) {
  airquality[is.na(airquality[, col]), col] <- mean(airquality[, col], na.rm = TRUE)
}

# Exclude missing values
airquality_clean <- na.omit(airquality)



5.write scala program for :-` 
Write a program that reads words from a file. Use a mutable map to count how often each word appears.`




import scala.collection.mutable.Map
import scala.io.Source

object WordCount {
  def main(args: Array[String]): Unit = {
    // Create a mutable map to store word counts
    val wordCountMap: Map[String, Int] = Map()

    // Read the file
    val filename = "path/to/your/file.txt" // Replace with the actual file path
    val file = Source.fromFile(filename)

    // Process each line in the file
    for (line <- file.getLines()) {
      // Split the line into words
      val words = line.split("\\s+")

      // Update word counts in the map
      for (word <- words) {
        val formattedWord = word.toLowerCase() // Convert word to lowercase for case-insensitive counting
        val count = wordCountMap.getOrElse(formattedWord, 0)
        wordCountMap.put(formattedWord, count + 1)
      }
    }

    // Close the file
    file.close()

    // Print the word counts
    for ((word, count) <- wordCountMap) {
      println(s"$word: $count")
    }
  }
}


################################################################
To run this program:

Replace "path/to/your/file.txt" with the actual path of the file you want to read.
Save the code in a Scala file, for example, WordCount.scala.
Compile and run the Scala program using the Scala compiler or an integrated development environment (IDE) like IntelliJ IDEA or Scala IDE.
The program reads each line of the file, splits it into words, and updates the word counts in the mutable map wordCountMap. Finally, it prints the word counts to the console.

Please make sure to replace the filename variable with the actual path of the file you want to read.

6.Write a function minmax (values: Array[Int]) that returns a pair containing the smallest and largest values in the array.Scala code.Need full code in one go.


object HelloWorld {
  def minmax(values: Array[Int]): (Int, Int) = {
    // Initialize variables to store the smallest and largest values
    var min = Int.MaxValue
    var max = Int.MinValue

    // Iterate over the array to find the smallest and largest values
    for (value <- values) {
      if (value < min) {
        min = value
      }
      if (value > max) {
        max = value
      }
    }

    // Return the pair of smallest and largest values
    (min, max)
  }

  def main(args: Array[String]): Unit = {
    // Test the minmax function
    val array = Array(4, 2, 9, 1, 7)
    val result = minmax(array)
    println(s"Smallest value: ${result._1}") // Access the smallest value using ._1
    println(s"Largest value: ${result._2}") // Access the largest value using ._2
  }
}


7.Write the menu driven program to implement quick sort algorithm using imperative style and functional style.

import scala.util.Random

object QuickSort {
  def main(args: Array[String]): Unit = {
    val arraySize = 10
    val array = generateRandomArray(arraySize)

    var choice = 0
    do {
      println("----- Quick Sort Menu -----")
      println("1. Sort using imperative style")
      println("2. Sort using functional style")
      println("3. Exit")
      println("---------------------------")
      print("Enter your choice: ")
      choice = scala.io.StdIn.readInt()

      choice match {
        case 1 =>
          println("\nOriginal Array:")
          printArray(array)
          quickSortImperative(array)
          println("\nSorted Array (Imperative Style):")
          printArray(array)
        case 2 =>
          println("\nOriginal Array:")
          printArray(array)
          val sortedArray = quickSortFunctional(array)
          println("\nSorted Array (Functional Style):")
          printArray(sortedArray)
        case 3 =>
          println("\nExiting...")
        case _ =>
          println("\nInvalid choice. Please try again.\n")
      }
    } while (choice != 3)
  }

  // Generate a random array of integers
  def generateRandomArray(size: Int): Array[Int] = {
    val random = new Random()
    Array.fill(size)(random.nextInt(100))
  }

  // Print the array
  def printArray(array: Array[Int]): Unit = {
    println(array.mkString(" "))
  }

  // Quick Sort using imperative style
  def quickSortImperative(array: Array[Int]): Unit = {
    def swap(i: Int, j: Int): Unit = {
      val temp = array(i)
      array(i) = array(j)
      array(j) = temp
    }

    def partition(low: Int, high: Int): Int = {
      val pivot = array(high)
      var i = low - 1
      for (j <- low until high) {
        if (array(j) <= pivot) {
          i += 1
          swap(i, j)
        }
      }
      swap(i + 1, high)
      i + 1
    }

    def sort(low: Int, high: Int): Unit = {
      if (low < high) {
        val pi = partition(low, high)
        sort(low, pi - 1)
        sort(pi + 1, high)
      }
    }

    val length = array.length
    sort(0, length - 1)
  }

  // Quick Sort using functional style
  def quickSortFunctional(array: Array[Int]): Array[Int] = {
    if (array.length <= 1) array
    else {
      val pivot = array(array.length / 2)
      Array.concat(
        quickSortFunctional(array.filter(_ < pivot)),
        array.filter(_ == pivot),
        quickSortFunctional(array.filter(_ > pivot))
      )
    }
  }
}


