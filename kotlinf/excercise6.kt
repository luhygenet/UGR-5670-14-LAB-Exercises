fun findMax(numbers: List<Int>): Int? {
    if (numbers.isEmpty()) return null
    var max = numbers[0]
    for (number in numbers) {
        if (number > max) {
            max = number
        }
    }
    return max
}
fun filterEvenNumbers(numbers: List<Int>): List<Int> {
    return numbers.filter { it % 2 == 0 }
}
fun calculateAverage(numbers: List<Double>): Double? {
    if (numbers.isEmpty()) return null
    var sum = 0.0
    for (number in numbers) {
        sum += number
    }
    return sum / numbers.size
}
fun main() {
    val numbers = listOf(1, 2, 3, 4, 5)
    println(numbers)
    
    val max = findMax(numbers)
    if (max != null) {
        println("Maximum value: $max")
    } else {
        println("The list is empty.")
    }
    
    val evenNumbers = filterEvenNumbers(numbers)
    println("Even numbers: $evenNumbers")
    
    val average = calculateAverage(numbers.map { it.toDouble() })
    if (average != null) {
        println("Average value: $average")
    } else {
        println("The list is empty.")
    }
}