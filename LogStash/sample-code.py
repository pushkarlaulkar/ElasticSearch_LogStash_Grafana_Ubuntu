import time, random, os, shutil

while(True):
		file_names = os.listdir('/home/ls/data')
		if(len(file_names) > 0):
			for file_name in file_names:
				if('csv' in file_name):   shutil.move('/home/ls/data/%s' % file_name, '/home/ls/data/old/')
		timestr = time.strftime("%Y%m%d%H%M%S");
		csv = open("/home/ls/data/data-%s.csv" % timestr, 'w')
		print(csv)
		csv.write('Node,Date,Value\n')
		csv.write('A' + "," + str(time.strftime("%Y-%m-%d %H:%M")) + "," + str(random.randint(10,101)) + "\n")
		csv.close()
		time.sleep(60)