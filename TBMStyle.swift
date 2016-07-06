import UIKit

class TBMStyle {
    // Colors
    static let primaryColor: UIColor = UIColor.blackColor()
    
    // Fonts (define your own combinations here)
    static let defaultFont = TBMFont(type: .Normal, size: .Normal)
    static let highlightFont = TBMFont(type: .Bold, size: .Big)
    static let titleFont = TBMFont(type: .Bold, size: .Bigger)
}

// Font types (define your own types here and double-check font name!)
enum TBMFontType: String {
    case Bold = "Avenir-Heavy"
    case Normal = "Avenir"
    case Italic = "Avenir-LightOblique"
}

// Font sizes (define your own sizes, without duplicates!)
enum TBMFontSize: CGFloat {
    case Normal = 14
    case Small = 12
    case Smaller = 11
    case Big = 16
    case Bigger = 18
}

struct TBMFont {
    var type: TBMFontType
    var size: TBMFontSize
    
    init(type: TBMFontType, size: TBMFontSize) {
        self.type = type
        self.size = size
    }
    
    var font: UIFont {
        return UIFont(name: type.rawValue, size: size.rawValue)!
    }
    
    var description: String {
        return "TBMFont(type: \(type.rawValue), size: \(size.rawValue)"
    }
}

// usage:
// let myFont: UIFont = TBMStyle.defaultFont.font
