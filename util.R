as.numeric.factor <- function(x) {
  as.numeric(levels(x))[x]
}

factors.as.numeric <- function(data) {
  indx <- sapply(data, is.factor)
  data[indx] <- lapply(data[indx], as.numeric)
  return(data)
}

clean.data <- function(data) {
  data <- data[data$Q002 < 30,]
  data["AnteilErwerbssemester"] <- data$Q002 / data$Q015
  paste("Students with working semesters > 0 but semesters = 0: ", sum(is.infinite(data$AnteilErwerbssemester)))
  data <- data[!is.infinite(data$AnteilErwerbssemester),]
  data[is.nan(data$AnteilErwerbssemester),]$AnteilErwerbssemester <- 0
  data[data$AnteilErwerbssemester > 1,]$AnteilErwerbssemester <- 1
  data["PraktikaProSemester"] <- data$Q003 / data$Q015
  paste("Students with internships > 0 but semesters = 0: ", sum(is.infinite(data$AnteilErwerbssemester)))
  data[is.infinite(data$PraktikaProSemester),]$PraktikaProSemester <- 1
  data[is.nan(data$PraktikaProSemester),]$PraktikaProSemester <- 0
  data[data$PraktikaProSemester > 1,]$PraktikaProSemester <- 1
}