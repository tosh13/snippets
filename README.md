snippets
======
Excel Datedif function in Ruby and R.

[![MIT licensed][shield-license]](#)


Datedif (Excel) in Ruby
-----------------------
[History](http://saitotoshiki.com/blog/2011/09/excel_datedif_by_ruby_rails)

Datedif (Excel) in R
------------------------
### Usage
```
    > options(repos="http://cran.ism.ac.jp/")
    > install.packages("lubridate", dep=TRUE)
    > source("https://raw.githubusercontent.com/tosh13/snippets/master/DateDif.R")
    > bd <- c("2009/08/29", "2008/10/25", "2007/10/11")
    > day1 <- c("2014/08/19", "2014/10/30", "2014/10/7")
    > f1 <- data.frame(bd, day1)
    > f1
              bd       day1
    1 2009/08/29 2014/08/19
    2 2008/10/25 2014/10/30
    3 2007/10/11  2014/10/7
    > age <- DateDif(f1$bd, f1$day1)
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
```

License
-------
Snipets are licensed under the [MIT](#) license.  
Copyright &copy; 2016, Toshiki Saito

[shield-license]: https://img.shields.io/badge/license-MIT-blue.svg
[AECalc]: https://github.com/nnh/AECalc/blob/master/AECalc.xlsm?raw=true
