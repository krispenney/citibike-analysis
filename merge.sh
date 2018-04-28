head -1 citibike_data/201701.csv > citibike_stations_2017.csv

for filename in $(ls citibike_data/2017*.csv); do sed 1d $filename >> citibike_stations_2017.csv; done
