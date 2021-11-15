
def fileToString (path):
	FD = open (path,'r')
	return FD.read()

def fileToList (path):
	FD = open (path, 'r')
	return FD.readlines()

def stringToFile (string, path):
	FD = open (path, 'w')
	FD.write(string)

def listToFile (List, path):
	FD = open (path, 'w')
	for string in List:
		FD.write(string + '\n')

def appendStringToFile (string, path):
	FD = open (path, 'a')
	FD.write(string)

def appendListToString (List, path):
	FD = open (path, 'a')
	for string in List:
		FD.write(string)
