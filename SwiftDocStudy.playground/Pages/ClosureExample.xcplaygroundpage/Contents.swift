
func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

let result = calculate(a: 50, b: 10) { $0 * $1 }

print(result)
