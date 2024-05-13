fun main() {

    println("Enter distance:")
    val distance = readLine()?.toDoubleOrNull()
    
    if (distance == null) {
        println("Invalid input.")
        return
    }
    
    println("Enter the unit (kilometers or miles):")
    val unit = readLine()
    
    if (unit != "kilometers" && unit != "miles") {
        println("Invalid unit. Please enter either 'kilometers' or 'miles'.")
        return
    }
    val kmToMiles = 0.621371
    val convertedDistance = when (unit) {
        "kilometers" -> distance * kmToMiles
        "miles" -> distance / kmToMiles
        else -> {
            println("Invalid unit. Please enter either 'kilometers' or 'miles'.")
            return
        }
    }
    println("Converted distance: $convertedDistance ${if (unit == "kilometers") "miles" else "kilometers"}")
}