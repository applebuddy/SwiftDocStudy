//
// let arr = Array<Int>(0...1)
// print(arr)

let arr = [[1, 4, 10], [1, 2, 3]]
let result = arr.sorted { $0[0] < $1[0] || ($0[0] == $1[0] && $0[1] < $1[1]) || ($0[0] == $1[0] && $0[1] == $1[1] && $0[2] < $1[2]) }
print(result)
