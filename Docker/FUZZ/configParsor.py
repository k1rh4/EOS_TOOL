def ConfigParsor( Key, List ):
	value = ""
	for data in List :
		if Key in data : 
			sData = data.split("=")
			value = sData[1].rstrip().strip("\"")
			return value;
	print "[E] There is no data for [%s] " % (Key)
	return -1;

