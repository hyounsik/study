#Python method study
class Foo(object):
	def instance_method(self, arg):
		print(arg)

	@classmethod
	def class_method(cls, arg):
		print(arg)

	@staticmethod
	def static_method(arg):
		print(arg)


print Foo.instance_method #unboud method

print Foo().instance_method #bound method

print Foo.class_method #boud method 

print Foo.static_method #function static_method
