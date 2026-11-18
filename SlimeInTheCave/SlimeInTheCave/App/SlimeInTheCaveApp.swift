//
//  SlimeInTheCaveApp.swift
//  SlimeInTheCave // SlimeCave  slimeCave
//
//  Created by Mikhail Zhachko on 17/11/2026.
//

import SwiftUI

@main
struct SlimeInTheCaveApp: App {
    @UIApplicationDelegateAdaptor(SlimeCaveAppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            SlimeCaveLoadingView()
        }
    }
}
