import smtplib
import os
EMAIL_ADDRESS = os.environ.get("TEST_EMAIL")
EMAIL_PASSWORD = os.environ.get("TEST_PASSWORD")


with smtplib.SMTP('smtp.gmail.com', 587) as smtp:
	smtp.ehlo()
	smtp.starttls()
	smtp.ehlo()

	smth.login(EMAIL_ADDRESS, EMAIL_PASSWORD)

	subject = 'Grab dinner this weekend?'
	body='How about dinner at 6pm this Saturday?'
	msg = f'Subject:{subject}\n\n{body}'

	smtp.sendmail(EMAIL_ADDRESS,'akash_p11@hotmail.com',msg)