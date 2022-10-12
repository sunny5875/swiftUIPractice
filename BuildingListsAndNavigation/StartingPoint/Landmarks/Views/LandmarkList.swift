//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 현수빈 on 2022/10/11.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        //Table view
        NavigationView {
          List(landmarks) { landmark in
              NavigationLink {
                  LandmarkDetail(landmark: landmark)
              } label: {
                  LandmarkCell(landmark: landmark)
              }
          }
          .navigationTitle("Landmarks")
      }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
//        LandmarkList()
//            .previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation)"))
        
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
                    LandmarkList()
                        .previewDevice(PreviewDevice(rawValue: deviceName))
                        .previewDisplayName(deviceName)
                }
    }
}
