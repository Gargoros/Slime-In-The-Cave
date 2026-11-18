//
//  SlimeCaveLoadingView.swift
//  SlimeInTheCave
//
//  Created by Mikhail Zhachko on 17/11/2026.
//

import SwiftUI

struct SlimeCaveLoadingView: View {
    
    @State private var logoOpacity = 0.01
    @State private var logoScale = 0.01
    
    var body: some View {
        GeometryReader { geo in
            let width  = geo.size.width
            let height = geo.size.height
            SlimeCaveAppBGView(bgImage: SlimeInTheCaveImagesNames.AppBackgrounds.bg03)
            VStack{
                SlimeCaveAppImageView(image: SlimeInTheCaveImagesNames.Logos.appName, width: width * 0.8)
                    .opacity(logoOpacity)
                    .scaleEffect(logoScale)
            }
            .position(x: width * 0.5, y: height * 0.5)
        }
        .ignoresSafeArea()
        .onAppear{
            SlimeCaveAppDelegate.orientationLock = .portrait
            loadingAnimations()
        }
    }
    func loadingAnimations () {
        withAnimation(.easeOut(duration: 4.5)) { logoOpacity = 1.0 }
        withAnimation(.easeInOut(duration: 2)){ logoScale = 1.0 }
    }
}

#Preview { SlimeCaveLoadingView() }
