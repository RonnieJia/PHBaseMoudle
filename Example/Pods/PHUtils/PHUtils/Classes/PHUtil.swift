

public let PHStatusBarHeight = UIApplication.shared.statusBarFrame.size.height
public let PHNavigatioBarHeight = PHStatusBarHeight+44.0
public let PHTabbarHeight = UITabBar.appearance().frame.height
public let PHScreenWidth = UIScreen.main.bounds.width
public let PHScreenHeight = UIScreen.main.bounds.height
public let isIphoneX = PHStatusBarHeight > 20
public let safeBottomHeigt: CGFloat = {
    guard #available(iOS 11.0, *) else {
        return 0.0
    }
    return UIApplication.shared.windows[0].safeAreaInsets.bottom
}()
