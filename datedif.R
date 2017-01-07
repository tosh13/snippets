require(lubridate)
#
#= DATEDIF function in R
#
#Authors::   Toshiki I. Saito
#Version::   1.0 2015-10-19 tosh
#License::   The MIT License
#--
# starting: Starting date
# ending: Ending date
# y: Years; Complete calendar years between the dates.
# m: Months; Complete calendar months between the dates.
# d: Days; Number of days between the dates.
# ym: Months Excluding Years; Complete calendar months
#     between the dates as if they were of the same year.
# yd: Days Excluding Years; Complete calendar days
#     between the dates as if they were of the same year.
# md: Days Excluding Years And Months; Complete calendar days
#     between the dates as if they were of the same month and same year.
#++
DateDif <- function(starting, ending) {
  y <- as.integer((as.integer(format(ymd(ending), "%Y%m%d")) - as.integer(format(ymd(starting), "%Y%m%d"))) / 10000)
  months <- as.numeric((as.integer(format(ymd(ending), "%m%d")) - as.integer(format(ymd(starting), "%m%d"))) / 100)
  ym <- ifelse(months < 0, as.integer(months + 12), as.integer(months))
  m <- ym + y * 12
  d <- as.integer(ymd(ending) - ymd(starting))
  days <- as.integer(format(ymd(ending), "%d")) - as.integer(format(ymd(starting), "%d"))
  yd <- as.integer(ymd(ending) - (ymd(starting) %m+% months(12 * y)))
  md <- ifelse(days < 0, ymd(ending) - (ymd(starting) %m+% months(m)), days)
  return(data.frame(y, m, d, ym, yd, md))
}
