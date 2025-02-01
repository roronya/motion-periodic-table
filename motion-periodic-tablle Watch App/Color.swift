import SwiftUI

extension Color {
    static let blue00: Color = .init(hex: "#000e1a")
    static let blue01: Color = .init(hex: "#001b33")
    static let blue02: Color = .init(hex: "#00294d")
    static let blue03: Color = .init(hex: "#003666")
    static let blue04: Color = .init(hex: "#005fb3")
    
    static let green00: Color = .init(hex: "#001a1a")
    static let green01: Color = .init(hex: "#004d4d")
    static let green02: Color = .init(hex: "#008080")
    static let green03: Color = .init(hex: "#00b3b3")
    static let green04: Color = .init(hex: "#00e6e6")
    
    static let red00: Color = .init(hex: "#330a0a")
    static let red10: Color = .init(hex: "#ff3030")


    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        
        let red = Double((rgbValue & 0xff0000) >> 16) / 0xff
        let green = Double((rgbValue & 0x00ff00) >> 8) / 0xff
        let blue = Double(rgbValue & 0x0000ff) / 0xff
        
        self.init(red: red, green: green, blue: blue)
    }
}


