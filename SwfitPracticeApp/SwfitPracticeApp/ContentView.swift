//
//  ContentView.swift
//  SwfitPracticeApp
//
//  Created by 현수빈 on 2023/08/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            
            VStack(alignment: .leading) {
                Text("Hanyang University")
                    .font(.title)
                HStack {
                    Text("The engine of Korea")
                        .font(.subheadline)
                    Spacer()
                    Text("Seoul")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                
                Divider()
                Text("About Sunny")
                    .font(.title2)
                Text("Best student in Hanyang")
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
