set key autotitle columnhead
set key outside bmargin left bottom height 2 width - 0 Left reverse horizontal
set autoscale y
set autoscale x
set term pngcairo enhanced font "Times New Roman-Bold, 12" size (16*38),(9*38)
set termoption dashed
set style line 1 lc rgb '#000000' lt 1 lw 1 pt 1 pi -1 ps 1.5
set title "L=50  q=5  seed=556358439"

set ylabel "Num. de Aglomerados"
set xlabel "Estado Médio"
f(x) = a*x+b
fit f(x) "ICA-L50-q5_000-seed556358439.dat" using 2:4 via a, b
set output "ICA-L50-q5_0-seed556358439-ClusterVsAvgState.png"
plot "ICA-L50-q5_000-seed556358439.dat" using 2:4 lc rgb '#000000', f(x) t sprintf("f(x) = %.0f x + %.0f", a, b) lt 1 lc rgb '#888888' lw 3

