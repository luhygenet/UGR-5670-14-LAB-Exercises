fun main() {
    println("enter a grade")
    val grade = readLine()?.toDoubleOrNull()

    if (grade == null) {
        println("Invalid input")
        return
    }

    val letter = when {
        grade >= 90 && grade <= 100 -> "A"
        grade >= 80 && grade <= 89 -> "B"
        grade >= 70 && grade <= 79 -> "C"
        grade >= 60 && grade <= 69 -> "D"
        else -> "F"
    }
    println("Letter grade: $letter")


}