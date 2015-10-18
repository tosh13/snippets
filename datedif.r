datedif <- function(starting, ending) {
  y <- as.integer((as.integer(format(as.Date(ending),"%Y%m%d")) - as.integer(format(as.Date(starting),"%Y%m%d")))/10000)
  months <- as.numeric((as.integer(format(as.Date(ending),"%m%d")) - as.integer(format(as.Date(starting),"%m%d")))/100)
  ym <- ifelse(months<0, as.integer(months + 12), as.integer(months))
  m <- ym + y*12
  d <- as.Date(ending) - as.Date(starting)
  age <- paste(as.character(y),"year(s)",as.character(ym),"month(s)")
  item <- c("y", "ym","age","m","d")
  a <- sapply(item, get)
  return(a)
}
