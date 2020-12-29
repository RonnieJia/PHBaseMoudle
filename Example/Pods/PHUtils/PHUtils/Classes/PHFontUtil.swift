
public let PHTitleFont      = PHFont(16.0)
public let PHDefaultFont    = PHFont(14.0)
public let PHSmallFont      = PHFont(12.0)
public let PHSmallestFont   = PHFont(10.0)
public let PHBigFont        = PHFont(18.0)
public let PHBigestFont     = PHFont(20.0)



public func PHFont(_ size: CGFloat = 14.0) -> UIFont {
    return UIFont.systemFont(ofSize: size)
}

public func PHMediumFont(_ size: CGFloat = 14.0) -> UIFont {
    guard let font = UIFont(name: "PingFangSC-Medium", size: size) else {
        return PHFont(size)
    }
    return font
}

