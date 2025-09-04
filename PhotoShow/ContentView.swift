//
//  ContentView.swift
//  PhotoShow
//
//  Created by Lacey Weeks on 9/4/25.
//

import SwiftUI

struct ContentView: View {
    
    let photos = ["photo1", "photo2", "photo3", "photo4", "photo5"]
    @State private var currentIndex = 0
    
    var body: some View {
        VStack {
            Image(photos[currentIndex])
                .resizable()
                .scaledToFit()
                .animation(.default, value: currentIndex)
            HStack {
                Button(action: {
                    if currentIndex > 0 {
                        currentIndex -= 1
                    }
                }) {
                    Text("Previous")
                }
                .disabled(currentIndex == 0)
                
                Button(action: {
                    if currentIndex < photos.count - 1 {
                        currentIndex += 1
                    }
                }) {
                    Text("Next")
                }
                .disabled(currentIndex == photos.count - 1)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
