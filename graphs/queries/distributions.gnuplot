set title "Data Distributions"

plot \
data using 1:2 with lines title 'Linear', \
data using 1:4 with lines title 'Log', \
data using 1:5 with lines title 'Cubic', \
data using 1:6 with lines title 'Quadratic', \
data using 1:7 with lines title 'Random'
