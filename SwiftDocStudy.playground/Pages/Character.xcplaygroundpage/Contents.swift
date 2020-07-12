
let greeting = "Hello MungGU! 🐶"

// - greeting 문자열은 다수의 문자로 구성되어있습니다.
// - count로 문자열의 길이를 구할때, 문자의 갯수를 카운트합니다.
//   - TimeComplexity : O(N)
// print(greeting.count)
//
// print("유니코드 스칼라 값 카운트 결과 : \(greeting.unicodeScalars.count)")
// print("UTF-8 포맷으로의 값 카운트 결과 : \(greeting.utf8.count)")

/*
 func swapToIntValues(_ aValue: inout Int, _ bValue: inout Int) {
 let temporaryValueA = aValue
 aValue = bValue
 bValue = temporaryValueA
 }

 func swapToDoubleValues(_ aVal: inout Double, _ bVal: inout Double) {
 let tempA = aVal
 aVal = bVal
 bVal = tempA
 }

 func swapToStringValues(_ aVal: inout String, _ bVal: inout String) {
 let tempA = aVal
 aVal = bVal
 bVal = tempA
 }

 var firstInt = 10
 var secondInt = 20
 var firstString = "ㅠ오ㅠ"
 var secondString = "^오^"
 var firstDouble = 10.0
 var secondDouble = 20.0
 swapToIntValues(&firstInt,  &secondInt)
 swapToDoubleValues(&firstDouble, &secondDouble)
 swapToStringValues(&firstString, &secondString)
 print("firstInt is now \(firstInt), and secondInt is now \(secondInt)")
 print("firstDouble is now \(firstDouble), and secondDouble is now \(secondDouble)")
 print("firstString is now \(firstString), and secondString is now \(secondString)")
 */

// func swapTwoValues<T>(_ aValue: inout T, _ bValue: inout T) {
//    let tempA = aValue
//    aValue = bValue
//    bValue = tempA
//    print("now aValue is \(aValue), and the bValue is \(bValue)")
// }
//
// var firstString = "firstString"
// var secondString = "secondString"
// var firstDouble = 10.0
// var secondDouble = 20.0
// swapTwoValues(&firstString, &secondString)
// swapTwoValues(&firstDouble, &secondDouble)

//typealias Pair = (Int, Int)
//typealias Tuple = (Int, Int, Int)
//
// var pair = (1, 2)
// var tuple = (1, 2, 3)
//
//typealias StringDictionary<Value> = Dictionary<String, Value>
//
//// 아래 두줄의 타입은 서로 동일한 타입이 됩니다.
// var aliasDictionary: StringDictionary<Character> = [:]
// var originDictionary: Dictionary<String, Character> = [:]
//
//// Hashable보다 Int는 훨씬 제한적인 타입이다. 별칭이 Hashable을 정의해도 Int타입만 받을 수 있게 된다...
//typealias DictionaryOfInts<Key: Hashable> = Dictionary<Key, Int>
//
// var onlyIntValueDictionary: DictionaryOfInts = [1: 2]
// onlyIntValueDictionary = [1: "abc"]

protocol SomeProtocol {
    associatedtype SomeType
}

protocol SubPRotocolA: SomeProtocol {
    // * 해당 문법은 경고를 만듭니다.
    //   - associatedtype인 SomeType을 재정의하는 모습으로 경고를 유발합니다.
    associatedtype SomeType: Equatable
}

// * associatedtype의 재정의를 하지 않는 아래의 문법이 선호됩니다.
//   - where절을 활용해서 SomeType의 제약을 정의하고 있습니다.
protocol SubProtocolB: SomeProtocol where SomeType: Equatable {}
