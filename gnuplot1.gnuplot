set datafile separator ','

set xdata time # tells gnuplot the x axis is time data
set timefmt "%Y-%m-%d %H:%M:%S" # specify our time string format
#set format x "%H:%M:%S" # otherwise it will show only MM:SS
set key autotitle columnhead
set xlabel 'Time'
set ylabel 'Temperature (C)

# second axis
set y2tics 
set ytics nomirror #dont show the tics
set y2label "Pressure (hPa)

plot 'data_log.csv' using 1:2 with lines, '' using 1:3 with lines axis x1y2
pause 2
reread
