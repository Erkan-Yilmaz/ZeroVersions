
def read_file(my_file):
	i = 0
	j =0
	tocheck = ""

	not_unique_file = open(my_file,"r")
	for line in not_unique_file:
		line = line.strip("\n")

		line2 = line.split("</td><td>")

		if i < 1:
		 if j < 1:
			print line
			tocheck = line2[0]
		else:
			j = 0

			if line2[0] == tocheck: 
				dummy="doNothing"
#				print dummy
			else: 
				print line
				tocheck = line2[0]
				i = -1
#				print "hier"
				j = 1
		i = i + 1


	not_unique_file.close()

#### MAIN ####

input_file = "result_ALL_03.txt"
read_file(input_file)