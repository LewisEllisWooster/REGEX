import re

#default param
def match(parcel_test_string = u"00-00-00-00-000-000"):
	val = re.match(ur'^[0-9][0-9]-[0-9][0-9]-[0-9][0-9]-[0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9]',parcel_test_string,re.M|re.I)
	if val:
		print val.group()
	else:
		print "No Match!"
