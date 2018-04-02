def abc(callback,*params):
	callback(*params);
	pass

def efg(*params):
	testa,testb = params
	print(testa)
	print(testb)
	pass


abc(efg,"a","b")