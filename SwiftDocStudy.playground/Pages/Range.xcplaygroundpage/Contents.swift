
// 아래와 같이 Range 인스턴스를 생성할 수 있습니다.
/*
 let rangeInstance = 0.0 ..< 10.0
 print(rangeInstance)

 print(rangeInstance.contains(0.0))
 print(rangeInstance.contains(1.23))
 print(rangeInstance.contains(10.0))
 */

let array = [1, 2, 3, 4, 5]
for index in 0 ..< array.count {
    print(index, terminator: " ")
}

print()

for index in array.indices {
    print(index, terminator: " ")
}
