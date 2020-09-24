

enum Animal: CaseIterable {
    case monkey
    case elephant
    case snake
    case snail
    case horse
}

// case를 순차적으로 출력한다.
Animal.allCases.forEach { print("\($0)") }

// case의 갯수를 출력한다.
print(Animal.allCases.count)

// case를 공백단위로 붙여서 출력한다.
print(Animal.allCases.map { "\($0)" }.reduce(into: "") { $0 += "\($1) " })


