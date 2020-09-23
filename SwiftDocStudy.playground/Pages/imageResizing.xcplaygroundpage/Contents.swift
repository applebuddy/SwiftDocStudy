
import PlaygroundSupport
import UIKit

func squareImage(at image: UIImage, length: CGFloat = 100) -> UIImage? {
    // 1) 기본 이미지 너비/높이, 변경될 이미지의 너비/높이 값을 준비
    let originWidth: CGFloat = image.size.width
    let originHeight: CGFloat = image.size.height
    var resizedWidth: CGFloat = length
    var resizedHeight: CGFloat = length

    // 2) 반환할 크기에 맞는 비트맵 기반 이미지 컨텍스트를 생성합니다.. 배경색으로 검정색을 칠해줍니다.
    UIGraphicsBeginImageContext(CGSize(width: length, height: length))
    UIColor.black.set()
    UIRectFill(CGRect(x: 0.0, y: 0.0, width: length, height: length))

    // 3) 원본 이미지의 가로/세로 길이 중 더 긴 길이를 기준으로 가로/세로 비율을 계산합니다.
    let sizeRatio = length / max(originWidth, originHeight)
    if originWidth > originHeight {
        resizedWidth = length
        resizedHeight = originHeight * sizeRatio
    } else {
        resizedWidth = originWidth * sizeRatio
        resizedHeight = length
    }

    // 4) 이미지를 리사이징 될 크기에 맞게 정사각형 내에 그려줍니다. 원본이미지가 정사각형 모양이 아니었을 경우 발생하는 여백은 검정색으로 채워져있습니다.
    image.draw(in: CGRect(x: length / 2 - resizedWidth / 2,
                          y: length / 2 - resizedHeight / 2,
                          width: resizedWidth,
                          height: resizedHeight))

    // 5) 현재까지 그려진 비트맵 기반 이미지 컨텍스트(정사각형으로 리사이징 된 이미지)를 받아서 반환합니다.
    let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return resizedImage
}

// 6) 리사이징 할 이미지를 불러옵니다. (편의 상 강제 언래핑으로 받아옴)
let image = UIImage(named: "codeExample.png")!

// 7) 리사이징 된 이미지를 적용한 이미지뷰를 생성 후 메인 뷰에 추가합니다.
let imageView = UIImageView(image: squareImage(at: image, length: 200))
let mainView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
mainView.addSubview(imageView)

// 8) 플레이 그라운드의 liveView에 이미지뷰를 띄웁니다.
PlaygroundPage.current.liveView = mainView
