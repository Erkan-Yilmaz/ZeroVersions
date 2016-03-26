#del old files
rm Stats
rm new*.txt


wget http://127.0.0.1:43110/Stats

#do here line break
sh start2b.sh > new2.txt

grep " r" new2.txt > new3.txt

#filter only the good stuff
grep -v "table td" new3.txt > new4.txt
grep -v "Connections" new4.txt > new3.txt
grep -v "<a href='#'" new3.txt > new4.txt


#to_add unique filename
_now=$(date +"%Y_%m_%d__%H_%M_%S")
_file="result"

mv new4.txt "$_file"_$_now
