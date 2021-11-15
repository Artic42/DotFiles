import smtplib
from email.message import EmailMessage
import os
import sys
import fileManagement as FM

def send(tar_file, data):
	tmp_path = "/tmp/email"

	os.system ("mkdir -p " + tmp_path)
	os.system ("tar -C " + tmp_path + " -xf " + tar_file)
	MAIL = connectMailServer (FM.fileToString(data + "/usr"),
					FM.fileToString(data + "/pswd"),
					FM.fileToString(data + "/email_server"))
	MAIL.send_message(createEmail(tmp_path))

def connectMailServer (usr, pswd, server):
	CONNECTION = smtplib.SMTP (host=server)
	CONNECTION.ehlo()
	CONNECTION.starttls()
	CONNECTION.ehlo()
	CONNECTION.login (usr, pswd)
	return CONNECTION

def createEmail (path):
	email = EmailMessage ()
	email.set_content(FM.fileToString(path+"/body"))
	email['Subject'] = FM.fileToString(path+"/subject") 
	email['To'] = FM.fileToString(path+"/to")
	email['From'] = FM.fileToString(path+"/from")
	return email

def createEmailFile (path, body, subject, sender, recipient):
	tmp_path = "/tmp/emailFile"
	os.system ("mkdir -p " + tmp_path)
	FM.stringToFile (body, tmp_path + "/body")
	FM.stringToFile (subject, tmp_path + "/subject")
	FM.stringToFile (sender, tmp_path + "/sender")
	FM.stringToFile (recipient, tmp_path + "/recipient")
	os.system ("tar -cf " + path + " " + tmp_path)
	os.system ("rm -rf " + tmp_path)

if __name__ == "__main__":
	home_path = os.environ["HOME"]
	data_path = home_path + "/.data"
	send(sys.argv[1], data_path)
