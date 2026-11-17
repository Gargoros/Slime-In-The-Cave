//
//  ContentView.swift
//  SlimeInTheCave
//
//  Created by Mikhail Zhachko on 17/11/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(.custom("BitcountPropDoubleCursive-Bold", size: 32))
            
            Text("Hello, world!")
                .font(.custom("BitcountPropDouble-SemiBold", size: 32))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
