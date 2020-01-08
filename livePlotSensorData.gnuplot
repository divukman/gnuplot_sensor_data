set datafile separator ','

set xdata time # tells gnuplot the x axis is time data
set timefmt "%Y-%m-%d %H:%M:%S" # specify our time string format
set format x "%H:%M:%S" # otherwise it will show only MM:SS
plot 'data_log.csv' using 1:2 with lines
pause 1
reread
