fun main() {
    val originalPrice = 100.0 
    val discountPercentage = 0.6 
    val thresholdPercentage = 0.5 
    println("Discount percentage is: ${discountPercentage * 100}")

    val finalPrice = if (discountPercentage > thresholdPercentage) {
        println("Discount is too high! Setting discount to ${thresholdPercentage * 100}%")
        originalPrice * (1 - thresholdPercentage) 
    } else {
        originalPrice * (1 - discountPercentage)
    }

    println("Original Price: $originalPrice")
    println("Discount Percentage: ${discountPercentage * 100}%")
    println("Final Price: $finalPrice")
}