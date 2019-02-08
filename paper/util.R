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
  data["ProportionWorkingSemesters"] <- data$Q002 / data$Q015
  paste("Students with working semesters > 0 but semesters = 0: ", sum(is.infinite(data$ProportionWorkingSemesters)))
  data <- data[!is.infinite(data$ProportionWorkingSemesters),]
  data[is.nan(data$ProportionWorkingSemesters),]$ProportionWorkingSemesters <- 0
  data[data$ProportionWorkingSemesters > 1,]$ProportionWorkingSemesters <- 1
  data["InternshipsPerSemester"] <- data$Q003 / data$Q015
  paste("Students with internships > 0 but semesters = 0: ", sum(is.infinite(data$ProportionWorkingSemesters)))
  data[is.infinite(data$InternshipsPerSemester),]$InternshipsPerSemester <- 1
  data[is.nan(data$InternshipsPerSemester),]$InternshipsPerSemester <- 0
  data[data$InternshipsPerSemester > 1,]$InternshipsPerSemester <- 1
  levels(data$Q016)[2] <- "Master"
  levels(data$Q016)[3] <- "PhD"
  return(data)
}