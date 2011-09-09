require 'date'
#
#= DATEDIF function in Excel
#
#Authors::   Toshiki I. Saito
#Version::   1.0 2011-09-08 tosh
#License::   GPL
#--
# starting: Starting date
# ending: Ending date
# Interval: Meaning; Description
# y: Years; Complete calendar years between the dates.
# m: Months; Complete calendar months between the dates.
# d: Days; Number of days between the dates.
# ym: Months Excluding Years; Complete calendar months
#     between the dates as if they were of the same year.
# yd: Days Excluding Years; Complete calendar days
#     between the dates as if they were of the same year.
# md: Days Excluding Years And Months; Complete calendar days
#     between the dates as if they were of the same month and same year.
#
# ExcelのDATEDIFと同じ（つもりです）
# datedif(開始日, 終了日, 単位）
# 単位：
# "y" 指定した期間の年数（満年数）を表示
# "m" 指定した期間の月数（満月数）を表示
# "d" 指定した期間の日数（満日数）を表示
# "ym" 指定した期間の1年に満たない月数を表示
# "yd" 指定した期間の1年に満たない日数を表示
# "md" 指定した期間の1ヶ月に満たない日数を表示
#++
def datedif(starting, ending, interval)
  if ending < starting then false
  else
    interval = interval.downcase
    years = (ending.strftime('%Y%m%d').to_i - starting.strftime('%Y%m%d').to_i)/10000.to_i
    months = (ending.strftime('%m%d').to_i - starting.strftime('%m%d').to_i)/100.to_i
    months = months<0 ? months+12 : months
    days = ending.day - starting.day
    case interval
      when 'y' then years
      when 'm' then years*12 + months
      when 'd' then (ending - starting).to_i
      when 'ym' then months
      when 'yd' then (ending - (starting >> 12*years)).to_i
      when 'md' then (days<0 ? ending - (starting >> 12*years+months) : days).to_i
      else false
    end
  end
end
