
import Foundation

enum MonsterType {
    case munggu
    case slime
    case oak

    var name: String {
        switch self {
        case .munggu:
            return "MungGu"
        case .slime:
            return "Slime"
        case .oak:
            return "Oak"
        }
    }
}

var monsterType: MonsterType = .munggu

switch monsterType {
case .munggu:
    print("\n원래는 여기만 출력되야 하지만,")
    print("This is \(monsterType.name)")
    fallthrough
case .slime:
    print("\nfallthrough를 사용하면 여기도..")
    fallthrough // 아래의 문구는 출력되지 않고 다음 case 문으로 이동합니다.
    print("This is \(monsterType.name)")
case .oak:
    print("\n또 여기도 출력됩니다..")
    break // 아래의 문구는 출력되지 않습니다.
    print("This is \(monsterType.name)")
}
