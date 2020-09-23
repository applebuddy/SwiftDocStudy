
import Foundation

// 앞서 구했던 timeStamp값을 사용해서 Date 구조체를 생성할 수 있습니다.
let date = Date(timeIntervalSince1970: 1_599_811_410)
print(date)

let calendar = Calendar.current
let year = calendar.component(.year, from: date) // 2020 (년)
let month = calendar.component(.month, from: date) // 9 (월)
let day = calendar.component(.day, from: date) // 11 (일)
let hour = calendar.component(.hour, from: date) // 17 (시)
let minute = calendar.component(.minute, from: date) // 3 (분)
let second = calendar.component(.second, from: date) // 30 (초)
