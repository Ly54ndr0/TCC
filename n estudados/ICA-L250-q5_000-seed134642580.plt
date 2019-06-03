set key autotitle columnhead
set key outside bmargin left bottom height 2 width - 0 Left reverse horizontal
set autoscale y
set autoscale x
set term pngcairo enhanced font "Times New Roman-Bold, 12" size (16*38),(9*38)
set termoption dashed
set style line 1 lc rgb '#000000' lt 1 lw 1 pt 1 pi -1 ps 1.5
set title "L=250  q=5  seed=134642580"

set ylabel "Num. de aglomerados"
set xlabel "Limiar Médio"
unset key
set output "ICA-L250-q5_0-seed134642580-ClusterVsAvgThres.png"
plot "ICA-L250-q5_000-seed134642580.dat" using 3:4 lc rgb '#000000'
