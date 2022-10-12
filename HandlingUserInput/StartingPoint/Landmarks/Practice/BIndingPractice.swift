//
//  BIndingPractice.swift
//  Landmarks
//
//  Created by 현수빈 on 2022/10/11.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI
import Foundation

struct Epicode{
    let song : String
    let singer : String
    let track : String
}

struct BIndingPractice: View {
    
    let epicode = Epicode(song: "strawberry Moon", singer: "IU", track: "Celebrity 1th")
    
    @State private var isPlaying = false
    
    var body: some View {
        VStack{
            Image("chincoteague")
                .cornerRadius(10.0)
            
            Text(epicode.song)
                .font(.title)
                .foregroundColor(self.isPlaying ? .blue : .white)
            Text(epicode.singer)
                .foregroundColor(.secondary)
            Text(epicode.track)
                .font(.footnote)
                .foregroundColor(.secondary)
            
            PlayButton(isPlaying: $isPlaying)
        }
        .padding(isPlaying ? 50 : 30)
        .background(self.isPlaying ? .yellow : .gray)
        .cornerRadius(self.isPlaying ? 60 : 20)
        .opacity(self.isPlaying ? 0.9 : 0.6)
    }
}

struct PlayButton: View {
    @Binding var isPlaying : Bool
    
    var body: some View {
        
        Button(action: {
            withAnimation{
                self.isPlaying.toggle()
            }
            
        }) {
            Image(systemName: "play.fill")
            .font(.system(size: 30))
            .foregroundColor(self.isPlaying ? .blue : .black)
        }.padding(15)
    }
}

struct BIndingPractice_Previews: PreviewProvider {
    static var previews: some View {
        BIndingPractice()
    }
}
