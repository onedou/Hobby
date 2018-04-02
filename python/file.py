#fout = open('oops.txt','wt');

#print('Oops, I created a file.', file = fout)

#fout.close()

fout = open('oops.txt','r')

text = fout.read();

fout.close();

b = eval(text)

msgDict = {}

msgDict['monday']    = "温馨提示：今天早上（周一）9:00--11:30是暑期小学生逻辑狗班上课，请孩子们准时来上课。"
msgDict['tuesday']   = "温馨提示：今天早上（周二）9:00--11:30是暑期小学生逻辑狗班上课，请孩子们准时来上课。"
msgDict['wednesday'] = "温馨提示：今天（周三）晚上7:30--8:30，请孩子们准时来上课。"
msgDict['thursday']  = "温馨提示：今天（周四）晚上7:30--8:30，请孩子们准时来上课。"
msgDict['friday']    = "温馨提示：今天（周五）晚上7:30--8:30，请孩子们准时来上课。"
msgDict['saturday']  = "温馨提示：今天（周六）早上9:00--10:30，请孩子们准时来上课。"
msgDict['sunday']    = "祝大家周末愉快！"

b = msgDict

c = str(b)
c = c.replace("'","\"")

fout3 = open('oops3.txt','wt')

fout3.write(c)

fout3.close()


