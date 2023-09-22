import UIKit

public struct TestLib {
    public typealias Handler = ((UIAlertAction) -> Void)
    
    public static var targetVC: UIViewController? = nil
    public private(set) var text = "Hello, World!"

    public init() {}

    public static func present(vc: UIViewController, message: String? = nil,
                               title: String? = nil,
                               handler: Handler? = nil)
    {
        let alertController = UIAlertController(title: "Title", message: "message", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: handler)
        alertController.addAction(alertAction)
        vc.present(alertController, animated: true, completion: nil)
    }
}
