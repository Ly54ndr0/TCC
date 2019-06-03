set key autotitle columnhead
set key outside bmargin left bottom height 2 width - 0 Left reverse horizontal
set autoscale y
set autoscale x
set term pngcairo enhanced font "Times New Roman-Bold, 12" size (16*38),(9*38)
set termoption dashed
set style line 1 lc rgb '#000000' lt 1 lw 1 pt 1 pi -1 ps 1.5

unset title
set ylabel "Afinidade"
set xlabel"q"
set output "afinidadeMoore.png"
plot for [col=2:5] 'moore.dat' using 1:col ls 1 pt col ps 0.9

unset title
set ylabel "Afinidade"
set xlabel"q"
set output "afinidadeVonNeumann.png"
plot for [col=2:5] 'vonNeumann.dat' using 1:col ls 1 pt col ps 0.9

unset title
set ylabel "d Afinidade / dq"
set xlabel"q"
set output "afinidadeDeriMoore.png"
plot for [col=2:4] 'deriMoore.dat' using 1:col with lines ls 1 dt col*2-2 lw 2, 'deriMoore.dat' using 1:5 with lines ls 1 dt "_ . _" lw 2

unset title
set ylabel "d Afinidade / dq"
set xlabel"q"
set output "afinidadeDeriVonNeumann.png"
plot for [col=2:4] 'deriVonNeumann.dat' using 1:col with lines ls 1 dt col*2-2 lw 2, 'deriVonNeumann.dat' using 1:5 with lines ls 1 dt "_ . _" lw 2

