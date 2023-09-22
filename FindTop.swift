//
//  FindTop.swift
//  TestLib
//
//  Created by 박상준 on 2023/09/22.
//

import Foundation

// https://stackoverflow.com/a/64301729
extension UIViewController {
    public func topMostViewController() -> UIViewController {
        if self.presentedViewController == nil {
            return self
        }
        if let navigation = self.presentedViewController as? UINavigationController {
            return navigation.visibleViewController!.topMostViewController()
        }
        if let tab = self.presentedViewController as? UITabBarController {
            if let selectedTab = tab.selectedViewController {
                return selectedTab.topMostViewController()
            }
            return tab.topMostViewController()
        }
        return self.presentedViewController!.topMostViewController()
    }
}
extension UIApplication {
    public func topMostViewController() -> UIViewController? {
        return UIWindow.key?.rootViewController?.topMostViewController()
    }
}
extension UIWindow {
    public static var key: UIWindow? {
        if #available(iOS 13, *) {
            return UIApplication.shared.windows.first { $0.isKeyWindow }
        } else {
            return UIApplication.shared.keyWindow
        }
    }
}
