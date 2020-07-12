
// MARK: - Nested Functions

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
}

var currentValue = -4

/*

 // - chooseStepFunction메서드에서 currentValue > 0 은 false이므로, stepForward 중첩 메서드를 반환합니다.
 // - 상수타입, moveNearerToZero에서는 chooseStepFunction의 중첩 메서드, stepForward를 참조합니다.
 let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)

 // - moveNearerToZero는 while문에서 중첩메서드인 stepForward() 메서드를 참조합니다.
 while currentValue != 0 {
 print("\(currentValue)")
 // * 여기에서 참조 및 호출되는 메서드는 moveNearerToZero 메서드가 참조하는 중첩 메서드, stepForward입니다.
 //   - 그러므로 -4에서 0까지 1씩 증가하는 연산을 하게 됩니다.
 currentValue = moveNearerToZero(currentValue)
 }

 print("now direction is zero-!! 🐶")
 */

currentValue = 3
let moveNearerToZero2 = chooseStepFunction(backward: currentValue > 0)

while currentValue != 0 {
    print("\(currentValue)")
    // * 여기에서 참조 및 호출되는 메서드는 moveNearerToZero 메서드가 참조하는 중첩 메서드, stepForward입니다.
    //   - 그러므로 -4에서 0까지 1씩 증가하는 연산을 하게 됩니다.
    currentValue = moveNearerToZero2(currentValue)
}

print("now direction is zero-!! 🐶")
