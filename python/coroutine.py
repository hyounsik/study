def coroutine(func):
	def start(*args, **kwargs):
		g = func(*args, **kwargs)
		g.next()
		return g
	return start

@coroutine #decorate receiver
def receiver():
	print("Ready to receive")
	while True:
		n = (yield)
		print("Got %s" % n)


s = receiver() #start()

for i in range(1,10):
	s.send(i)