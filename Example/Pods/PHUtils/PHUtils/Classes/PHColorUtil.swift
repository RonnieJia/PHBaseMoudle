public let PHTextGrayColor = PHHexColor(hex: "#666666")
public let PHTextDarkColor = PHHexColor(hex: "#333333")
public let PHTextLightColor = PHHexColor(hex: "#999999")

public let PHSeptorColor = PHHexColor(hex: "#E9E9EB")



public func PHHexColor(hex color: String) -> UIColor {
    var nStr = color.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
    guard nStr.count >= 6 else {
        return UIColor.clear
    }
    if nStr.hasPrefix("0X") {
        nStr = String(nStr[nStr.index(nStr.startIndex, offsetBy: 2) ..< nStr.endIndex])
    }
    if nStr.hasPrefix("#") {
        nStr = String(nStr[nStr.index(nStr.startIndex, offsetBy: 1) ..< nStr.endIndex])
    }
    guard nStr.count == 6 else {
        return UIColor.clear
    }
    
    var startIndex = nStr.startIndex
    let redStr = String(nStr[startIndex ..< nStr.index(startIndex, offsetBy: 2)])
    
    startIndex = nStr.index(startIndex, offsetBy: 2)
    let greenStr = String(nStr[startIndex ..< nStr.index(startIndex, offsetBy: 2)])
    
    startIndex = nStr.index(startIndex, offsetBy: 2)
    let blueStr = String(nStr[startIndex ..< nStr.index(startIndex, offsetBy: 2)])
    
    let redPointer = UnsafeMutablePointer<UInt32>.allocate(capacity: 1)
    Scanner(string: redStr).scanHexInt32(redPointer)
    
    let greenPointer = UnsafeMutablePointer<UInt32>.allocate(capacity: 1)
    Scanner(string: greenStr).scanHexInt32(greenPointer)
    
    let bluePointer = UnsafeMutablePointer<UInt32>.allocate(capacity: 1)
    Scanner(string: blueStr).scanHexInt32(bluePointer)
    
    return PHRGBAColor(
        red: CGFloat(redPointer.pointee),
        green: CGFloat(greenPointer.pointee),
        blue: CGFloat(bluePointer.pointee),
        alpha: 1.0
    )
}


public func PHRGBColor(red r: CGFloat, green g: CGFloat, blue b: CGFloat) -> UIColor {
    return PHRGBAColor(red: r, green: g, blue: b, alpha: 1.0)
}


public func PHRGBAColor(red r: CGFloat, green g: CGFloat, blue b: CGFloat, alpha a: CFloat) -> UIColor {
    var rValue = r > 255.0 ? 255.0 : r
    rValue = r < 0 ? 0 : rValue
    
    var gValue = g > 255.0 ? 255.0 : g
    gValue = g < 0 ? 0 : gValue
    
    var bValue = b > 255.0 ? 255.0 : b
    bValue = b < 0 ? 0 : bValue
    
    var aValue = CGFloat(a > 1.0 ? 1.0 : a)
    aValue = a < 0 ? 0 : aValue
    
    return UIColor(red: rValue / 255.0, green: gValue / 255.0, blue: bValue / 255.0, alpha: aValue)
}
