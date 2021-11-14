import smtplib
from email.message import EmailMessage
import os
import sys
import fileManagement as FM

home_path = os.environ["HOME"]
tmp_path = "/tmp/email"
data_path = home_path + "/.data"

def send(tar_file, data):
	os.system ("mkdir -p /tmp/email")
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

if __name__ == "__main__":
	send(sys.argv[1], data_path)
