//
//  ContentView.swift
//  TT
//
//  Created by 현수빈 on 2023/08/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "person")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            Text("Hello, sunny!")
            
            ColorPicker("Color Picker", selection: .constant(.blue))
            
            ProgressView(value: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
            DisclosureGroup("Group") {
                Text("1. apple")
                Text("2. waterMelon")
                Text("3. orange")
            }
            HStack {
                Text("Hanyang Univ.")
                    .foregroundColor(.gray)
                Spacer()
                Text("sunny")
                    .italic()
                Text("Hyun")
                    .italic()
            }
            
            
            Button(action: {}) {
                Text("Sign In")
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
