class Class
	def def_each(*method_names, &block)
		method_names.each do |method_name|
			p self
			define_method method_name do  #블락이 실행될때 self는  instance 가 된다.
				#self.state = method_name #closure를 이용함, 아래와 같이 &block을 사용할 경우 클로저로 노출된 변수를 &block에 노출 시킬수 있어야 된다.
				instance_exec method_name, &block #넘겨질 블럭의 파라미터( 17줄 )가 필요하므로 instance_exec 사용
			end
		end
	end
end

class MyClass

	attr_accessor :state

	def_each :error, :failure do |method_name|
		p self
		self.state = method_name
	end

end

my_instance = MyClass.new
my_instance.error
p my_instance.state
