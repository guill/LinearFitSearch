load 'settings.gp'

@TerminalDefault size 1920,480

set multiplot layout 1, 3 title "Searches on Quadratic Data"

plot @Dists using 1:7 with lines title "Quadratic" @Quadratic

plot \
data using 1:2 with lines title "Line Fit Avg" @FnLineFit, \
data using 1:3 with lines title "Binary Search Avg" @FnBinary

plot \
data using 1:4 with lines title "Line Fit Min", \
data using 1:5 with lines title "Line Fit Max", \
data using 1:6 with lines title "Binary Search Min", \
data using 1:7 with lines title "Binary Search Max"

unset multiplot
