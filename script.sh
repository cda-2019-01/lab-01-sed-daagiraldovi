# Escriba su código aquí
sed 's/\([0-9][0-9]\)\/\([0-9][0-9]\)\/\([0-9][0-9]\)/20\3-\2-\1/' data.csv > out.1
sed 's/;;/;\\N;/g' out.1 > out.2
sed 's/;N/;\\N/g' out.2 > out.3
sed 's/,/./g' out.3 > out.4
sed 's/;/,/g' out.4 > out.5
sed -e'/N/d' out.5 > out.6
