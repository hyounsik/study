def functor(arg: Int) = {
	var a = arg
	({() => a},{add: Int => 
		a  += add
		a 
	})
}

var (get,add) = functor(10)

println(add(9))
println(get())
println(add(9))
println(get())


var result = 0
def get2 = {result}
val add2 = {add: Int => result += add }

def loopThrough(number: Int)(closure: Int => Unit){
	for(i <- 1 to number){ closure(i) }
}

def printThrough(closure:  => Int){
	println(closure)
}

loopThrough(5)(add2) // bound to context of the caller of loopThrough
println(result)
printThrough(get2)
loopThrough(5)(add2)
println(result)
printThrough(get2)


