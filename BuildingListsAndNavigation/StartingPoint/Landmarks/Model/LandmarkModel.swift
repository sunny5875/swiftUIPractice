//
//  LandmarkModel.swift
//  Landmarks
//
//  Created by 현수빈 on 2022/10/11.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation
import SwiftUI
import CoreLocation //for mapkit framework과의 통신

struct LandmarkModel : Hashable, Codable, Identifiable { //identifiable을 만족하려면 id를 가지고 있어야 하고 이게 있다면 list에서 id를 지정해줄 필요가 없다.
    var id : Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    
    //image
    private var imageName : String
    var image : Image{
        Image(imageName)
    }
    
    //좌표
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D { //in CoreLocation
          CLLocationCoordinate2D(
              latitude: coordinates.latitude,
              longitude: coordinates.longitude)
      }
    
  struct Coordinates: Hashable, Codable {
      var latitude: Double
      var longitude: Double
  }
}
