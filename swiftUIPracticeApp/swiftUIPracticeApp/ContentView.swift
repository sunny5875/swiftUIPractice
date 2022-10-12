//
//  ContentView.swift
//  swiftUIPracticeApp
//
//  Created by 현수빈 on 2022/10/11.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.116_868), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
      
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello sunny, world!")
            
            HStack {
                Image(systemName: "globe")
                    .clipShape(Circle())
                Text("Hstack1")
                    .padding()
                    .fontWeight(.medium)
                    .foregroundColor(.blue)
//                Spacer()
                Text("Hstack2")
                    .padding()
            }
            
            Map(coordinateRegion: $region)
                .frame(width: 300.0 ,height: 150.0)
                
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
