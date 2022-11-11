reset
set ylabel 'time (ms)'
set style fill solid
set title 'Program cost time form C to elf'
set term png enhanced font 'Verdana,10'
set output 'C_to_elf_cost_time.png'

plot [:][:100]'c_to_elf_cost_time.txt' using 2:xtic(1) with histogram title 'using time'