fun analyzeString(input: String): Triple<Int, Int, Int> {
    var wordCount = 0
    var uppercaseCount = 0
    var vowelCount = 0
    for (char in input) {
        if (char.isWhitespace()) {
            wordCount++
        }

        if (char.isUpperCase()) {
            uppercaseCount++
        }

        if (char in "AEIOUaeiou") {
            vowelCount++
        }
    }

    wordCount++

    return Triple(wordCount, uppercaseCount, vowelCount)
}

fun main() {
    println("Input a string:")
    val input = readLine()

    if (input != null) {
        val (wordCount, uppercaseCount, vowelCount) = analyzeString(input)

        println("Number of words: $wordCount")
        println("Number of uppercase letters: $uppercaseCount")
        println("Number of vowels: $vowelCount")
    } else {
        println("Input string is null. Please provide a valid string.")
    }
}
