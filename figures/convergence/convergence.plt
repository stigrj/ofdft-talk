set terminal postscript enhanced color portrait "Times-Roman,8"
set output "../convergence.ps"

set multiplot
set size 0.5,0.25
set key bottom right
set format y "%7.1e"

set xrange [0:40]
set yrange [1.0e-7:1.0e1]
set logscale y

set origin 0.0,0.7
set title 'Convergence Neon'
set ylabel 'Orbital error'
set xlabel 'Iteration'
plot 'neon.dat' using 1:3 w lp lt 3 lw 1 lc 3 title '  LDA ',\
'neon.dat' using 1:4 w lp lt 2 lw 1 lc 1 title '  DvW ',\
'neon.dat' using 1:2 w lp lt 1 lw 1 lc 0 title ' TFDvW '

set origin 0.5,0.7
set title 'Convergence BH'
set ylabel 'Orbital error'
set xlabel 'Iteration'
plot 'bh.dat' using 1:3 w lp lt 3 lw 1 lc 3 title '  LDA ',\
'bh.dat' using 1:4 w lp lt 2 lw 1 lc 1 title '  DvW ',\
'bh.dat' using 1:2 w lp lt 1 lw 1 lc 0 title ' TFDvW '


