class Super(val id: Int, val year: Int) {
	override def toString() = {
		"ID: " + id + " year: " + year
	}
}

/**
* 자식 primary 생성자는 부모 primary 생성자를 무조건 호출 해야함… Syntax로 강제 ….
* 부목의 필드를 자식이 같은 이름으로 같는건 위법… override 키워드 사용 강제 ….
* val은 필드를 private final(java) 로 만들
*/
class Child(override val id: Int,  override val year: Int, var fuelLevel:Int) extends Super( id, year) {
	override def toString() = {
	 	super.toString() +  "fuelLevel " + fuelLevel
	}
}