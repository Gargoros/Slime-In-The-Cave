//
//  SlimeCaveAppImageView.swift
//  SlimeInTheCave
//
//  Created by Mikhail Zhachko on 17/11/2026.
//

import SwiftUI

struct SlimeCaveAppImageView: View {
    private let image: Image
    private let width: CGFloat
    init(image: Image, width: CGFloat) {
        self.image = image
        self.width = width
    }
    var body: some View {
        image
            .resizable()
            .scaledToFit()
            .frame(width: width)
    }
}


#Preview {
    SlimeCaveAppImageView(image: SlimeInTheCaveImagesNames.Logos.appName, width: 300)
}
