#!/usr/bin/python
from collections import OrderedDict


NameEmailInstitutionDic = {}

#tiny function to deal with middle names
def getLastFirstName (fullName) :
	splitName = fullName.split(" ")
	if len( splitName ) == 2 :
		return (splitName[1], splitName[0])
	if len( splitName ) == 3 :
		if (splitName[1] == "de" or splitName[1] == "De" or splitName[1] == "du" or
                    splitName[1] == "Cortes" or splitName[1] == "Alvarez" or
                    splitName[1] == "Martinez" or splitName[1] == "Sanchez" or
                    splitName[1] == "Alcaraz" or
                    splitName[1] == "Lowette" or splitName[1] == "Doglioni" or splitName[1] == "Malik" or splitName[1] == "Boveia" or splitName[1] == "Mrenna"):
			return (splitName[1]+" "+splitName[2], splitName[0])
		else:
			return (splitName[2], splitName[0]+" "+ splitName[1])
	if len( splitName ) == 4 :
		return (splitName[3], splitName[0]+" "+ splitName[1]+" "+ splitName[2])
	else :
		print "We have a Spanish contributor named ", fullName 
		exit

#if we want to divide by category we can...
inFileNames = [ "members-lhc-dmf-contributors.csv", 
				"reviewers.csv", 
				"endorsers.csv", 
				"private-email-contributors.csv",
				"editors.csv"]
				
for inFileName in inFileNames :

	inFile = open(inFileName,'r')

	for line in inFile.readlines() :
		
		lastFirstName = None
		email = None
		institution = ""
		country = ""
		
		theCSV = line.strip("\n").split("|")
		
		#there two kinds of entries:
		#['E', 'Anthony DiFranzo', 'adifranz@uci.edu', '', '', '\n']
		#['P', '', '', '757895', 'Theo Jean Megy', 'megy@clermont.in2p3.fr\n']

		if theCSV[0] == "E" :
			email = theCSV[2]
			institution = theCSV[3]
			country = theCSV[5]
			lastFirstName = getLastFirstName(theCSV[1])
		
		elif theCSV[0] == "P" :
			email = theCSV[5]
			lastFirstName = getLastFirstName(theCSV[4])
	    
		else :
			continue #this is the contributors mailing list
		
		if institution == "" : institution = "NO INSTITUTE"
		if country     == "" : country     = "NO COUNTRY"
		NameEmailInstitutionDic[lastFirstName] = [email, institution, country]


SortedNameEmailInstitutionDic = OrderedDict(sorted(NameEmailInstitutionDic.items(), key=lambda l: (str.lower(l[0][0]),str.lower(l[0][1]))))

allAuthors = ""
for key, value in SortedNameEmailInstitutionDic.iteritems() :
	
	firstName = key[1]
	lastName = key[0]
	email = value[0]
	institution = value[1]
	country = value[2]
	allAuthors = allAuthors+","+firstName+" "+lastName

#print allAuthors



	print "\\noindent\\href{mailto:"+email+"}{"+firstName+" "+lastName+"} "
	if country == "skip":
	        print "\\emph{"+institution+"}\\\\"
	else:
	        print "\\emph{"+institution+", "+country+"}\\\\"

 
