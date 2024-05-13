fun main() {
    println("Enter first number")
    val val1 = readLine()?.toDoubleOrNull()
    
    println("Enter second number")
    val val2 = readLine()?.toDoubleOrNull()
    
    if (val1 == null || val2 == null){
        println("Enter valid number")
        return
    }
    
    println("Please choose from +, -, *, /")
    val operation = readLine()
    
    val res = when(operation) {
        "+" -> val1 + val2
        "-" -> val1 - val2
        "*" -> val1 * val2
        "/" ->  val1 / val2
            
        else -> {
            println("Invalid operation.")
            return
        }
    }
    
    println("Result: $res")
}