
/**
 Init
 */
public func PHView(frame: CGRect = .zero, backgroundColor: UIColor = .white) -> UIView {
    let view = UIView(frame: frame)
    view.backgroundColor = backgroundColor
    return view
}

public func PHLabel(
    frame rect: CGRect = .zero,
    textColor: UIColor = .black,
    font: UIFont = PHDefaultFont,
    textAlignment: NSTextAlignment = .left,
    text: String = ""
) -> UILabel {
    let label = UILabel(frame: rect)
    label.textColor = textColor
    label.font = font
    label.textAlignment = textAlignment
    if text.isEmpty {
        label.text = text
    }
    return label
}

public func PHButton(
    frame rect: CGRect = .zero,
    image: UIImage? = nil,
    selectedImage: UIImage? = nil,
    backgroundImage: UIImage? = nil,
    backgroundColor: UIColor = .white,
    textColor: UIColor = .black,
    font: UIFont = PHDefaultFont,
    title: String? = nil
) -> UIButton {
    let button = UIButton(type: .custom)
    button.frame = rect
    if let image = image {
        button.setImage(image, for: .normal)
    }
    if let selectedImage = selectedImage {
        button.setImage(selectedImage, for: .selected)
    }
    if let backgroundImage = backgroundImage {
        button.setBackgroundImage(backgroundImage, for: .normal)
    }
    button.backgroundColor = backgroundColor
    button.titleLabel?.font = font
    button.setTitleColor(textColor, for: .normal)
    if let text = title {
        button.setTitle(text, for: .normal)
    }
    return button
}

public func PHImageView(frame rect: CGRect = .zero, image: UIImage? = nil) -> UIImageView {
    let imageView = UIImageView(frame: rect)
    if let image = image {
        imageView.image = image
    }
    return imageView
}

public func PHTextField(
    frame rect: CGRect = .zero,
    textColor: UIColor?,
    font: UIFont?,
    isSecure: Bool = false,
    keyboardType: UIKeyboardType = .default,
    placeholder: String = "",
    text: String?
) -> UITextField {
    let textField = UITextField(frame: rect)
    if let textColor = textColor {
        textField.textColor = textColor
    }
    if let font = font {
        textField.font = font
    }
    textField.isSecureTextEntry = isSecure
    textField.clearButtonMode = .whileEditing
    textField.keyboardType = keyboardType
    textField.placeholder = placeholder
    textField.text = text
    return textField
}

func PHTableView(
    frame rect: CGRect = .zero,
    style: UITableView.Style = .plain
) -> UITableView {
    let tableView = UITableView(frame: rect, style: style)
    tableView.tableFooterView = UIView()
    tableView.tableHeaderView = UIView()
    tableView.estimatedRowHeight = 44.0
    if #available(iOS 11.0, *) {
        tableView.contentInsetAdjustmentBehavior = .never
    }
    return tableView
}

/**
 Layer
 */
public extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue > 0 ? newValue : 0
        }
    }
    
    @IBInspectable var borderColor: UIColor {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue.cgColor
        }
    }
}

/**
 Frame
 */
public extension UIView {
    var x: CGFloat {
        get {
            frame.minX
        }
        set {
            frame = CGRect(x: newValue, y: frame.minY, width: frame.width, height: frame.height)
        }
    }
    
    var y: CGFloat {
        get {
            frame.minY
        }
        set {
            frame = CGRect(x: frame.minX, y: newValue, width: frame.width, height: frame.height)
        }
    }
    
    var width: CGFloat {
        get {
            frame.width
        }
        set {
            frame = CGRect(x: frame.minX, y: frame.minY, width: newValue, height: frame.height)
        }
    }
    
    var height: CGFloat {
        get {
            frame.height
        }
        set {
            frame = CGRect(x: frame.minX, y: frame.minY, width: frame.width, height: newValue)
        }
    }
    
    var centerX: CGFloat {
        get {
            frame.midX
        }
        set {
            center = CGPoint(x: newValue, y: center.y)
        }
    }
    
    var centerY: CGFloat {
        get {
            frame.midY
        }
        set {
            center = CGPoint(x: center.x, y: newValue)
        }
    }
    
    var bottom: CGFloat {
        get {
            frame.maxY
        }
        set {
            frame = CGRect(x: frame.minX, y: newValue - frame.height, width: frame.width, height: frame.height)
        }
    }
    
    var right: CGFloat {
        get {
            frame.maxX
        }
        set {
            frame = CGRect(x: newValue - frame.width, y: frame.minY, width: frame.width, height: frame.height)
        }
    }
    
    var size: CGSize {
        get {
            frame.size
        }
        set {
            frame = CGRect(x: frame.minX, y: frame.minY, width: newValue.width, height: newValue.height)
        }
    }
    
}

public extension UIViewController {
    func push(viewController: UIViewController, animated: Bool) {
        navigationController?.pushViewController(viewController, animated: animated)
    }
    
    func pop() {
        navigationController?.pop()
    }
}

