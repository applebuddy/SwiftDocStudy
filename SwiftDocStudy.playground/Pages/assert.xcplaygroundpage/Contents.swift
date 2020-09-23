
// MARK: - Assert example

func someMethod(_ number: Int) {
    // number가 0이 아니면, "this is not a zero"를 출력합니다.
    assert(number != 0)
    print("this is \(number)")
}

print(someMethod(10))
