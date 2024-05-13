class BankAccount(val accountNumber: String, var balance: Double) {

    fun deposit(amount: Double) {
        balance += amount
        println("Deposit of $amount successfully processed. New balance: $balance")
    }

    fun withdraw(amount: Double) {
        if (amount > balance) {
            println("Insufficient funds. Withdrawal failed.")
        } else {
            balance -= amount
            println("Withdrawal of $amount successfully processed. New balance: $balance")
        }
    }

    fun printBalance() {
        println("Current balance: $balance")
    }
}
fun main() {
    val account = BankAccount("123456789", 1000.0)
    
    account.deposit(500.0)
    account.withdraw(200.0)
    account.printBalance()
}