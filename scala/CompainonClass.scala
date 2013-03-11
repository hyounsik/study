class Marker(val color: String) {
	override def toString() : String = "marker color" + color
}

object Marker{
	private val marker = Map("red" -> new Marker("red"))

	def primaryColor = {
		("red", "gren", "blue")
	}
	
	def apply(color: String) = {
		marker(color)
	}
}



println( Marker.primaryColor )
println( Marker("red") )