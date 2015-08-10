head -n 1 ./household_power_consumption.txt > ./smallData.txt

cat ./household_power_consumption.txt  | grep '^0\{0,1\}[12]/0\{0,1\}2/2007' >> ./smallData.txt


