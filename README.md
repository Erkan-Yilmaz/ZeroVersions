This is the scanner used at http://127.0.0.1:43110/ZeroVersions.txt

ZeroVersions makes uptodate checks which ZeroNet version is running by the peers.

I use here bash and python. This is by far not optimal, but it works. :-( For now...
I am happy about bugs you find and other suggestions.

--------
How to run this?

1. start the watch monitor first:
	sh ./ start_watch.sh
		this collects every 100 seconds the data from ZeroNet's Stats page, via wget
		and writes into a file in this format: result_2016_03_25__16_50_20

		(you could also make a cron script instead)

2. and to get the FINAL results, execute:
	sh ./start_get_RESULT.sh

3. an example output of step 2. looks like this:

sh start_get_RESULT.sh
 
we detect here the time of the result files, so I can determine how long the data was collected:
-rw-r--r--    1 tux      users            0 Mar 25 16:50 result_2016_03_25__16_50_20
-rw-r--r--    1 tux      users        27058 Mar 26 17:15 result_2016_03_26__17_15_24
 
 
result in   : new9.txt
frequency in: new9_frequency.txt
peer amount:
443 new9.txt
 
top5 used versions:
     64 0.3.6 r1070
     51 0.3.6 r915
     50 0.3.6 r1015
     33 0.3.6 r966
     31 0.3.6 r1069





