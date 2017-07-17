import urllib.parse
import urllib.request

def request(url):
	response = urllib.request.urlopen(url)

	return response.read().decode('utf-8')
	pass