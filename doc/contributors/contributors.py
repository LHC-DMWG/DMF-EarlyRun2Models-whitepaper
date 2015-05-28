#!/usr/bin/python
from collections import OrderedDict

#cheatsheet
EmailNameDic = {	"andrea.desimone@sissa.it"	:	 "Andrea de Simone",
					"antonio.riotto@unige.ch"	 :	"Antonio Riotto",
					"c.mccabe@uva.nl"	 :	"Christopher McCabe",
					"cacciapa@ipnl.in2p3.fr"	:	 "Giacomo Cacciapaglia",
					"davide.racco@unige.ch"	 :	"Davide Racco",
					"deandrea@ipnl.in2p3.fr"	:	 "Aldo Deandrea",
					"felix.kahlhoefer@desy.de"	:	 "Felix Kahlhoefer",
					"kzurek@berkeley.edu"	 :	"Kathryn Zurek",
					"mpapucci@lbl.gov"	:	 "Michele Papucci",
					"schsu@uw.edu"	:	 "Shih-Chieh Hsu",
					"spliew@lbl.gov"	:	 "Seng Pei Liew",
					"thomas.jacques@unige.ch"	 :	"Thomas Jacques",
					"ttait@uci.edu"	 :	"Tim Tait",
					"ulrich.haisch@physics.ox.ac.uk"	:	 "Ulrich Haisch",
					"valya.khoze@durham.ac.uk"	:	 "Valentin Khoze"
					}

NameEmailInstitutionDic = {}

#tiny function to deal with middle names
def getLastFirstName (fullName) :
	splitName = fullName.split(" ")
	if len( splitName ) == 2 :
		return (splitName[1], splitName[0])
	if len( splitName ) == 3 :
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
		institution = None
		
		theCSV = line.strip("\n").split(",")
		
		#there are three kinds of entries:
		#['E', ' ', 'valya.khoze@durham.ac.uk', '', '', '\n']
		#['E', 'Anthony DiFranzo', 'adifranz@uci.edu', '', '', '\n']
		#['P', '', '', '757895', 'Theo Jean Megy', 'megy@clermont.in2p3.fr\n']
		
		if theCSV[0] == "E" :
			email = theCSV[2]
			institute = theCSV[3]
			#case 1: does not have a name: look it up in the cheatsheet
			if theCSV[1] == " " :
				lastFirstName = getLastFirstName(EmailNameDic[theCSV[2]])
			else :
				lastFirstName = getLastFirstName(theCSV[1])
		
		elif theCSV[0] == "P" :
		    email = theCSV[5]
		    lastFirstName = getLastFirstName(theCSV[4])  
	    
		else :
			continue #this is the contributors mailing list
		
		NameEmailInstitutionDic[lastFirstName] = [email, institution]
		
##### Now format - keep institution for later

SortedNameEmailInstitutionDic = OrderedDict(sorted(NameEmailInstitutionDic.items(), key=lambda l: l[0]))

for key, value in SortedNameEmailInstitutionDic.iteritems() :
	
	firstName = key[1]
	lastName = key[0]
	email = value[0]
	institution = value[1]
	
	print "\\href{mailto:"+email+"}{"+firstName+" "+lastName+"}"

 