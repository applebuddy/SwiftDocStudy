
// - Error프로토콜을 채택한 열거형 정의
// - 특정 에러에 대한 정의를 할 수 있습니다.
//   - invalidFormat 케이스와 같이 특정 에러 케이스에 따른 연동자료를 설정해서 처리할 수 있습니다.
enum BasicError: Error {
    case invalidSelection
    case insufficientFunds(coinNeeded: Int)
    case outOfStock
}

func canBuyItem(_ nowFund: Int) throws {
    if nowFund < 10 {
        throw BasicError.insufficientFunds(coinNeeded: 10 - nowFund)
    } else {
        print("I can do it!")
    }
}

// - 에러 가능성이 있는 메서드, canBuyItem을 실행합니다.
do {
    try canBuyItem(100)
} catch {
    print("Should I have more coin?..") // 충분한 돈이 있으므로 해당 문구는 출력되지 않습니다.
}

do {
    try canBuyItem(5)
} catch let coinNeeded {
    print("I need \(coinNeeded) coin ㅜ.ㅜ") // 5의 코인이 부족합니다. 해당 에러가 출력됩니다.
}
