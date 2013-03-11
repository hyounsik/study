class Person(val firstName: String, val lastName: String) {
	private var position: String = _ // _ 타입에  따른 디폴트 밸류 지정 을 의미. 자동으로 접근자 생성됨
	
	def this(firstName: String, lastName: String, positionHeld: String) = {
		this(firstName, lastName) // 꼭 있어야 됨
		position = positionHeld 
	}
}