awk 'function sum_of_squares(x, y, z) { return x*x + y*y + z*z }
     NR == 2 || NR == 10 || NR == 11 {
         split($0, fields)
         sum = sum_of_squares(fields[2], fields[3], fields[4])
         printf("Line %d: %.6f\n", NR, sum)
     }' atoms.xyz
