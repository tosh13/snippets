datedif <- function(starting, ending) {
  y <- as.integer((as.integer(format(ymd(ending),"%Y%m%d")) - as.integer(format(ymd(starting),"%Y%m%d")))/10000)
  months <- as.numeric((as.integer(format(ymd(ending),"%m%d")) - as.integer(format(ymd(starting),"%m%d")))/100)
  ym <- ifelse(months<0, as.integer(months + 12), as.integer(months))
  m <- ym + y*12
  d <- as.integer(ymd(ending) - ymd(starting))
  days <- as.integer(format(ymd(ending),"%d")) - as.integer(format(ymd(starting),"%d"))
  yd <- as.integer(ymd(ending) - (ymd(starting) %m+% months(12*y)))
  md <- ifelse(days<0, ymd(ending) - (ymd(starting) %m+% months(m)), days)
  period <- data.frame(y,m,d,ym,yd,md)
  return(period)
}
