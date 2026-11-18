//
//  SlimeCaveAppBGView.swift
//  SlimeInTheCave
//
//  Created by Mikhail Zhachko on 17/11/2026.
//

import SwiftUI

struct SlimeCaveAppBGView: View {
    private let bgImage: Image
    
    init(bgImage: Image) {
        self.bgImage = bgImage
    }
    
    var body: some View {
        GeometryReader { geometry in
            bgImage
                .resizable()
                .scaledToFill()
                .frame(width: geometry.size.width, height: geometry.size.height)
                .clipped()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    SlimeCaveAppBGView(bgImage: SlimeInTheCaveImagesNames.AppBackgrounds.bg01)
}
