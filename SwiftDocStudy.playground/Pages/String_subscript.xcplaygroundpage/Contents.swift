
let string = ""

if string.count == 0 {
    print("There are no string")
}

extension String {
    subscript(i: Int) -> Character {
        return self[index(startIndex, offsetBy: i)]
    }
}

let word = "Hello World!! ^-^//"
// print(word[0])

for index in stride(from: 0, to: word.count, by: 2) {
    print(word[index])
}
