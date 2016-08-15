reset
set term gif animate delay 40
set output 'fault.gif'
set grid
set tics axis
set zeroaxis lt 1 lw 2 lc rgb "black"
set title "fault"
set xlabel 'X-axis'
set ylabel 'Y-axis'
set zlabel 'Z-axis'
splot '1_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '2_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '3_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '4_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '5_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '6_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '7_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '8_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '9_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '10_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '11_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '12_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '13_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '14_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '15_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '16_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '17_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '18_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '19_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '20_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '21_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '22_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '23_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '24_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '25_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '26_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '27_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '28_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '29_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '30_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '31_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '32_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '33_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '34_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '35_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '36_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '37_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '38_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '39_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '40_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '41_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '42_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '43_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '44_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '45_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '46_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '47_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '48_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '49_simData_q.dat' using 1:2:3 ps 2 pt 3
splot '50_simData_q.dat' using 1:2:3 ps 2 pt 3
set output
