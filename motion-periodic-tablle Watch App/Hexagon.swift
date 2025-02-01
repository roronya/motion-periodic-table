import SwiftUI

struct Hexagon: Shape {
    func path(in rect: CGRect) -> Path {
        let width = rect.width
        let height = rect.height
        let xOffset = rect.minX
        let yOffset = rect.minY
        
        let points: [CGPoint] = [
            CGPoint(x: xOffset + width * 0.5, y: yOffset), // 上
            CGPoint(x: xOffset + width, y: yOffset + height * 0.25), // 右上
            CGPoint(x: xOffset + width, y: yOffset + height * 0.75), // 右下
            CGPoint(x: xOffset + width * 0.5, y: yOffset + height), // 下
            CGPoint(x: xOffset, y: yOffset + height * 0.75), // 左下
            CGPoint(x: xOffset, y: yOffset + height * 0.25)  // 左上
        ]
        
        var path = Path()
        path.move(to: points[0])
        for point in points.dropFirst() {
            path.addLine(to: point)
        }
        path.closeSubpath()
        
        return path
    }
}

