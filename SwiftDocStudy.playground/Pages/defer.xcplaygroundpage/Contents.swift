
var variable = 10
func someFunction(_ x: Int, _ y: Int) -> Int {
    defer { print("first defer code 🤗 \(x * y)"); variable = x * y }
    defer { print("second defer code 👩🏻‍💻") }

    return x * y
}

print(someFunction(10, 20))
print(variable)
