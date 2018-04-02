import types
import threading
import time
import request
import json

def trigger(isSend, setTimeDict, callback):
	if isSend == 0:
		if type(callback) == types.FunctionType:
			callback()

		isSend = 1
		pass

	now      = int(time.time())
	nowArray = time.localtime(now);

	setTimeStr = str(nowArray.tm_year) + "-" + str(nowArray.tm_mon) + "-" + str(nowArray.tm_mday) + " " + \
				 str(setTimeDict["h"]) + ":" + str(setTimeDict["m"]) + ":" + str(setTimeDict["s"])
	setTime    = time.mktime(time.strptime(setTimeStr, "%Y-%m-%d %H:%M:%S"))

	if now < setTime:
		nextTime = setTime
		pass
	else:
		nextDay      = int(time.time() + 86400)
		nextDayArray = time.localtime(nextDay)

		nextDayStr = str(nextDayArray.tm_year) + "-" + str(nextDayArray.tm_mon) + "-" + str(nextDayArray.tm_mday) + " " + \
					 str(setTimeDict["h"]) + ":" + str(setTimeDict["m"]) + ":" + str(setTimeDict["s"])

		nextDayTime = time.mktime(time.strptime(nextDayStr, "%Y-%m-%d %H:%M:%S"))

		nextTime = nextDayTime
		pass

	remaining = int(nextTime - int(time.time()))
	print(remaining)

	isSend = 0

	threading.Timer(remaining, trigger, (isSend, setTimeDict, callback)).start()

def myNotice():
    print("OK");
    pass

trigger(1, {"h":16,"m":17,"s":0}, myNotice)