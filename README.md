# snippets
## Datedif (Excel) in Ruby


## Datedif (Excel) in R
    > options(repos="http://cran.ism.ac.jp/")
    > install.packages("lubridate", dep=TRUE)
    > require(lubridate)
    > source("https://raw.githubusercontent.com/tosh13/snippets/master/datedif.r")
    > bd <- c("2009/08/29","2008/10/25","2007/10/11")
    > day1 <- c("2014/08/19","2014/10/30","2014/10/7")
    > f1 <- data.frame(bd,day1)
    > age <- datedif(f1$bd,f1$day1)
    > age
      y  m    d ym  yd md
    1 4 59 1816 11 355 21
    2 6 72 2196  0   5  5
    3 6 83 2553 11 361 26
    > age$y #満年齢
    [1] 4 6 6
    > age$ym #満月齢
    [1] 11  0 11
    > age$md #満日齢
    [1] 21  5 26
    > paste("満",age$y,"歳",age$ym,"ヶ月",age$md,"日")
    [1] "満 4 歳 11 ヶ月 21 日" "満 6 歳 0 ヶ月 5 日"   "満 6 歳 11 ヶ月 26 日"
