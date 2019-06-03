set key autotitle columnhead
set key outside bmargin left bottom height 2 width - 0 Left reverse horizontal
set autoscale y
set autoscale x
set term pngcairo enhanced font "Times New Roman-Bold, 12" size (16*38),(9*38)
set termoption dashed
set style line 1 lc rgb '#000000' lt 1 lw 1 pt 1 pi -1 ps 1.5
set title "L=500  q=0.6  seed=214482678  vizinhança=Moore"

set ylabel "Valor Médio"
set xlabel"Ciclo"
set output "ICA-L500-q0_600-seed214482678-AvgStateAvgThresVsCycle.png"
plot [0:500] "ICA-L500-q0_600-seed214482678.dat" using 1:2 with lines ls 1, "ICA-L500-q0_600-seed214482678.dat" using 1:3 with lines ls 1 dt 2
