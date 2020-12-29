import PHUtils


open class PHNavigationController: UINavigationController {
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBar.isTranslucent = false
    }
    
    open override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        viewController.hidesBottomBarWhenPushed = true
        viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(image: PHImage(named: "nav_goback")?.withRenderingMode(.alwaysOriginal), style: .done, target: self, action: #selector(backAction))
        super.pushViewController(viewController, animated: animated)
    }
    
    @objc func backAction() {
        popViewController(animated: true)
    }
}
