import smtplib
from email.message import EmailMessage
import os
import sys
import file_management as FM

tmp_path = "/tmp/email"
data_path = "/home/artic/.data"

def send(tar_file, data):
	os.system ("mkdir -p /tmp/email")
	os.system ("tar -C " + tmp_path + " -xf " + tar_file)
	MAIL = connect_mail_server (FM.fileToString(data + "/usr"),
					FM.fileToString(data + "/pswd"),
					FM.fileToString(data + "/email_server"))
	MAIL.send_message(create_email(tmp_path))

def connect_mail_server (usr, pswd, server):
	CONNECTION = smtplib.SMTP (host=server)
	CONNECTION.ehlo()
	CONNECTION.starttls()
	CONNECTION.ehlo()
	CONNECTION.login (usr, pswd)
	return CONNECTION

def create_email (path):
	email = EmailMessage ()
	email.set_content(FM.fileToString(path+"/body"))
	email['Subject'] = FM.fileToString(path+"/subject") 
	email['To'] = FM.fileToString(path+"/to")
	email['From'] = FM.fileToString(path+"/from")
	return email

if __name__ == "__main__":
	send(sys.argv[1], data_path)
