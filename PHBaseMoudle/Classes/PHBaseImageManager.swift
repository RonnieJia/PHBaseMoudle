import PHUtils

public func PHImage(named name: String) -> UIImage? {
    return PHBaseImageManager.loadImage(name: name)
}

final class PHBaseImageManager {
    public static func loadImage(name: String) -> UIImage? {
        let currentBundle = Bundle(for: PHBaseImageManager.self)
        if let url = currentBundle.url(forResource: "PHBaseMoudle", withExtension: "bundle") {
            let bundle = Bundle(url: url)
            return UIImage(named: name, in: bundle, compatibleWith: nil)
        }
        return nil
    }
}

