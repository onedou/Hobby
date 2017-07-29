import re

rp_kick = re.compile(r'^(?:移出|移除|踢出|拉黑)\s*@(.+?)(?:\u2005?\s*$)')

test = rp_kick.search("踢出 @蓝色雨")

print(test)