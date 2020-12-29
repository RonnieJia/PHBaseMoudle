import UIKit
import PHUtils

open class PHBaseViewController: UIViewController {
    private var statusBarStyle: UIStatusBarStyle = .default
    
    public var isShowNavigationBar = true
    
    open override func viewWillAppear(_ animated: Bool) {
        super .viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(!isShowNavigationBar, animated: animated)
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        if #available(iOS 11.0, *) {
            
        } else {
            automaticallyAdjustsScrollViewInsets = false
        }
    }
    
    open func setStatusBarStyle(style: UIStatusBarStyle) {
        statusBarStyle = style
        setNeedsStatusBarAppearanceUpdate()
    }
    
    open override var preferredStatusBarStyle: UIStatusBarStyle {
        return statusBarStyle
    }
    
    open override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
    
    open override var shouldAutorotate: Bool {
        return false
    }
    
    open override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return .portrait
    }
}
