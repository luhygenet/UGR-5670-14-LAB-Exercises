fun filterNumbersGreaterThanValue(numbers: List<Int>, threshold: Int): List<Int> {
    return numbers.filter { it > threshold }
}
fun calculateSum(numbers: List<Int>): Int {
    return numbers.reduce { acc, number -> acc + number }
}

fun applyUppercaseTransformation(strings: List<String>): List<String> {
    return strings.map { it.toUpperCase() }
}
fun main() {
    val strings = listOf("hello", "world", "kotlin")
    println("strings:$strings")
    val uppercaseStrings = applyUppercaseTransformation(strings)
    println("Uppercase strings: $uppercaseStrings")

    val numbers = listOf(1, 5, 9, 12, 20, 30)
    println(numbers)
    val filteredNumbers = filterNumbersGreaterThanValue(numbers, 10)
    println("Numbers greater than 10: $filteredNumbers")

    val sum = calculateSum(numbers)
    println("Sum of numbers: $sum")
}