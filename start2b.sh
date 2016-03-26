#gingen nicht:
# tr "0.3." "\n\n" < 2016_03_23__18_30.txt
# sed 's/0.3./\n0.3./g' 2016_03_23__18_30.txt
sed 's/<tr><td>/\n/g' Stats

