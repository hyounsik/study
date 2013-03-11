abstract class Check {
	def check() : String = "checked Application Details"
}

trait CreditCheck extends Check {
	override def check() : String = "checked Credit ..." + super.check()
}

trait EmploymentCheck extends Check {
	override def check() : String = "checked EmployMent ..." + super.check()
}

trait CriminalRecordCheck extends Check {
	override def check() : String = "checked CriminalRecord ..." + super.check()
}


//Decrating
val check1 = new Check with CreditCheck with CriminalRecordCheck
var check2 = new Check with EmploymentCheck with CreditCheck with CriminalRecordCheck

println(check1 check)
println(check2 check)

abstract class Writer {
	def writeMessage(message:String)
}

trait UpperCaseWriter extends Writer {
	abstract override def writeMessage(message:String) = {// acutal implementation will be provided
		super.writeMessage(message.toUpperCase)
	}
}

trait StupidFilterWriter extends Writer {
	abstract override def writeMessage(message:String) = {// acutal implementation will be provided
		super.writeMessage(message.replace("stupid", "s----d"))
	}
}

class StringWriterDelegate extends Writer{
	val writer =  new java.io.StringWriter
	override def writeMessage(message:String) = writer.write(message)
	override def toString():String = writer.toString
}

val myWriter = new StringWriterDelegate with UpperCaseWriter with StupidFilterWriter
myWriter writeMessage "There is no sin except stupidity"
println(myWriter)

