This is the scanner used at http://127.0.0.1:43110/ZeroVersions.bit

ZeroVersions makes uptodate checks which [ZeroNet](https://github.com/HelloZeroNet/ZeroNet) version is running by the peers.

I use here bash and python. This is by far not optimal, but it works. :-( For now...

If you want to help:
* find bugs and send/fix them
* make suggestions
* send me your results, so we can add them also on [ZeroVersions.bit](http://127.0.0.1:43110/ZeroVersions.bit)

-----------------
How to run this?
-----------------

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

result_2016_03_25__16_50_20

result_2016_03_26__17_15_24
 
 
result is in   : new9.txt

frequency is in: new9_frequency.txt

peer amount: 443 (from new9.txt)
 
top5 used ZeroNet versions (shows: found peers + the ZeroNet version):

     64 0.3.6 r1070
     
     51 0.3.6 r915
     
     50 0.3.6 r1015
     
     33 0.3.6 r966
     
     31 0.3.6 r1069



--------
todo
--------
- add test files: so people can verify the scripts really work. On some systems the output of the used commands may vary, thus leading to other results.
