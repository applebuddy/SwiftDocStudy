
var array = [1, 5, 2, 6, 3, 7, 4]
var commands = [[2, 5, 3], [4, 4, 1], [1, 7, 3]]

// 2 ~ 5번째 값이 담긴 subArray를 반환합니다.
let subArray = array[commands[0][0] - 1 ... commands[0][1] - 1]

let sortedSubArray = array[commands[0][0] - 1 ... commands[0][1] - 1].sorted()

// 2 ~ 5번째 값이 담긴 subArray의 3번째 값을 반환합니다.
let kNumber = sortedSubArray[commands[0][2] - 1]

let answer = commands.map { array[$0[0] - 1 ... $0[1] - 1].sorted()[$0[2] - 1] }
print(answer)
