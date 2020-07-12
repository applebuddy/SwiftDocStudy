
func swapTwoIntegersWithBasicParameter(_ aValue: Int, _ bValue: Int) {
    let temporaryA = aValue
    aValue = bValue
    bValue = temporaryA
}

var firstNum = 023
var secondNum = 321
swapTwoIntegersWithBasicParameter(firstNum, secondNum)

// func swapTwoIntegers(_ aValue: inout Int, _ bValue: inout Int) {
//    let temporaryA = aValue
//    aValue = bValue
//    bValue = temporaryA
//    // * 해당 메서드가 끝난 뒤에도 aValue, bValue 변수는 값이 swap 된채로 유지됩니다.
// }
//
// var firstInteger = 123
// var secondInteger = 456
// swapTwoIntegers(&firstInteger, &secondInteger)
//
// print("firstInteger : \(firstInteger), secondInteger : \(secondInteger)")
