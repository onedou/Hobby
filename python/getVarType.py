import types

def abc():
	print (1)
	pass

print(type(abc) == types.FunctionType)