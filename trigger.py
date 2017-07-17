import threading
import time
import request
import json
import weather

isSend   = 0
nextSend = None;

def sendMsgGroup(nextSend):
	print(nextSend and nextSend or "first send");
	weather.weather()
	pass

def trigger(isSend, nextSend):
	if nextSend and int(time.time()) >= nextSend:
		isSend = 0

	if isSend == 0:
		sendMsgGroup(nextSend)
		nextSend = None
		isSend = 1
		pass

	if not nextSend:
		nextDate      = int(time.time() + 86400)
		nextDateArray = time.localtime(nextDate)
		
		nextDateStr   = str(nextDateArray.tm_year) + "-" + str(nextDateArray.tm_mon) + "-" + str(nextDateArray.tm_mday) + " " + \
				        str(9) + ":" + str(30) + ":" + str(0)

		#print(nextDate)
		nextDateArray = time.strptime(nextDateStr, "%Y-%m-%d %H:%M:%S")
		print(nextDateArray)
		nextDate = time.mktime(nextDateArray)
		nextSend = nextDate

	#print(str(nowArray.tm_year) + "-" + str(nowArray.tm_mon) + "-" + str(nowArray.tm_mday))
	threading.Timer(1, trigger, (isSend, nextSend)).start()