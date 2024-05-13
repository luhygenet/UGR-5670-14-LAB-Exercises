fun main() {
    val passwordLength = 8 
    val password = generateRandomPassword(passwordLength)
    println("Generated Password: $password")
}

fun generateRandomPassword(length: Int): String {
    val pool = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()_+[]{}|;:,.<>?".toList()
    val password = StringBuilder()

    repeat(length) {
        val randomIndex = (0 until pool.size).random()
        password.append(pool[randomIndex])
    }

    return password.toString()
}