rm result_ALL*.txt
rm new*.txt

echo " "
echo "we detect here the time of the result files, so I can determine how long the data was collected:"
sh start6.sh
echo " "

cat result_* > result_ALL_01.txt
sort result_ALL_01.txt > result_ALL_02_sorted.txt

mv result_ALL_02_sorted.txt result_ALL_03.txt

#too much space, so delete:
rm result_ALL_01.txt

#make lines with unique id
rm del3.txt
python start3b_remove_double.py > del3.txt



sh start4.sh > new5.txt

#now get only the version number line
grep "</td><td>-ZN" new5.txt > new6.txt

#in new6.txt sind noch doppelte drin:
# falls einer seine connection resettet oder so:
#  dann kriegt er anschienend eine neue "id"
#   also bei "peerid" schauen und rausfiltern
sh start5a1.sh > new6a.txt
mv new6a.txt new6.txt

sh start5a2_make_unique.sh > new6b.txt


sh start5b.sh > new7.txt

grep -v "ZN" new7.txt > new8.txt

sort new8.txt > new9.txt

sh start7.sh > new9_frequency.txt

echo " "
echo "result in   : new9.txt"
echo "frequency in: new9_frequency.txt"
echo "peer amount:"
wc -l new9.txt
echo " "
echo "top5:"
head -5 new9_frequency.txt
