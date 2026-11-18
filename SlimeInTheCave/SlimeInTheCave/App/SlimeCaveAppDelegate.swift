//
//  SlimeCaveAppDelegate.swift
//  SlimeInTheCave
//
//  Created by Mikhail Zhachko on 18/11/2026.
//

import Foundation
import UIKit

@MainActor
final class SlimeCaveAppDelegate: NSObject, UIApplicationDelegate {
    static private(set) var instance: SlimeCaveAppDelegate?
    static var orientationLock: UIInterfaceOrientationMask = .portrait {
        didSet {
            guard oldValue != orientationLock else { return }
            updateOrientation()
        }
    }
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        Self.instance = self
        return true
    }
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask { Self.orientationLock }
    private static func updateOrientation() {
        for case let windowScene as UIWindowScene
            in UIApplication.shared.connectedScenes {
            guard windowScene.activationState == .foregroundActive else { continue }
            for window in windowScene.windows {
                window.rootViewController?.setNeedsUpdateOfSupportedInterfaceOrientations()
            }
        }
    }
}

