
// MARK: - Strideable Protocol

// MARK: Conforming Strideable Protocol

import Foundation

struct Date: Equatable, CustomStringConvertible {
    var value: Int
    var description: String {
        return "now value is \(value)"
    }

    init(value: Int) {
        self.value = value
    }
}

extension Date: Strideable {
    func advanced(by n: Int) -> Date {
        var result = self
        result.value += n * 2
        return result
    }

    func distance(to other: Date) -> Int {
        return other.value - value
    }
}

let startDate = Date(value: 0)
let endDate = Date(value: 16)

for date in stride(from: startDate, to: endDate, by: 3) {
    print(date)
}

print("///👨🏻‍💻///")

for date in stride(from: startDate, through: endDate, by: 4) {
    print(date)
}
