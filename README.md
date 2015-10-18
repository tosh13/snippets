# snippets
## Datedif (Excel) in Ruby


## Datedif (Excel) in R
    options(CRAN="http://cran.ism.ac.jp//")
    options(repos="http://cran.ism.ac.jp//")
    install.packages("lubridate", dep=TRUE)
    require(lubridate)
    bd <- c("2009/08/29","2008/10/25","2007/10/11")
    day1 <- c("2014/08/19","2014/10/30","2014/10/7")
    f1 <- data.frame(bd,day1)
    datedif(f1$bd,f1$day1)
