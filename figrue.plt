reset
set terminal svg
set encoding utf8
set style line 1 lt 1 lc rgbcolor "#ff000" lw 2 pt 3 ps 0.5

set style data lines
set style function linespoints

set xlabel "x-axis"
set ylabel "y-axis"
set output "figure.svg"
set title "randomwalk"
plot "fort.100" u 1:2
set output

