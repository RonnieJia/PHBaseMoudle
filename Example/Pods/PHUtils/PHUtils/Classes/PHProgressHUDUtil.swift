import MBProgressHUD
import NVActivityIndicatorView

public extension UIView {
    func PH_showMessage(message msg: String, textColor: UIColor? = .white, backgroundColor: UIColor? = UIColor(red: 0, green: 0, blue: 0, alpha: 0.45)) {
        let messageHud = MBProgressHUD.showAdded(to: self, animated: true)
        messageHud.mode = .text
        messageHud.label.text = msg
        messageHud.label.textColor = textColor
        messageHud.bezelView.backgroundColor = backgroundColor
        messageHud.hide(animated: true, afterDelay: 1.5)
    }
    
    func  PH_showProgressHUD(type:NVActivityIndicatorType? = NVActivityIndicatorView.DEFAULT_TYPE, message: String? = nil) {
        let activityIndicatorView = NVActivityIndicatorView(
            frame: CGRect(x: 0, y: 0, width: 60, height: 60), type: type)
        activityIndicatorView.startAnimating()
        let hud = MBProgressHUD.showAdded(to: self, animated: true)
        hud.bezelView.style = .blur
        hud.bezelView.blurEffectStyle = .dark
        hud.mode = .customView
        hud.customView = activityIndicatorView
        hud.label.text = message
        hud.label.textColor = .white
    }
    
    func PH_hideProgressHUD(message msg: String? = nil) {
        guard let hud = MBProgressHUD.forView(self) else { return }
        if let activiyView: NVActivityIndicatorView = hud.customView as? NVActivityIndicatorView {
            activiyView.stopAnimating()
        }
        if let message = msg {
            hud.mode = .text
            hud.label.text = message
            hud.label.textColor = .white
            hud.hide(animated: true, afterDelay: 1.5)
        } else {
            hud.hide(animated: true)
        }
    }
}


public extension UIViewController {
    func PH_showMessage(message: String) {
        view.PH_showMessage(message: message)
    }
    
    func PH_showProgressHUD(type:NVActivityIndicatorType? = NVActivityIndicatorView.DEFAULT_TYPE, message: String? = nil) {
        view.PH_showProgressHUD(type: type, message: message)
    }
    
    func PH_hideProgressHUD(message: String? = nil)  {
        view.PH_hideProgressHUD(message: message)
    }
}
