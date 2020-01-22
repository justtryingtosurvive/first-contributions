import os

email_address = os.environ.get('TEST_EMAIL')
passw = os.environ.get('TEST_PASSWORD')
print(email_address, passw)