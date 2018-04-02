import re

# word = re.compile(r'\w*请假\w*')

# def askForLeave():
#     a = word.search("我今天请假！")
#     print(a.group(0))
#     pass

# askForLeave()

'''
自动回复请假
'''
askForLeaveWord = re.compile(r'\w*请假\w*')

def askForLeave(msg):
    match = askForLeaveWord.search(msg.text)
    print(match)

    if match:
        return True
    else:
        return False
    pass


class test:
	def myTest(self):
		print("OK")
		pass

foo = test;

foo.text = "我今天请假了"
askForLeave(foo)