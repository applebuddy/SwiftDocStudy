
// MARK: - Variadic parameters

// - 임의의 인수로 이루어진 매개변수, Int... 와 같은 방식으로 사용되어집니다.

func calculateAverage(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }

    return total / max(1, Double(numbers.count))
}

calculateAverage(1, 2, 3, 4, 5)
calculateAverage()
