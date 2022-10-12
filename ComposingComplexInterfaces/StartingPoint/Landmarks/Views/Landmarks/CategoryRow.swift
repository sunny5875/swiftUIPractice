//
//  CategoryRow.swift
//  Landmarks
//
//  Created by 현수빈 on 2022/10/12.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct CategoryRow: View {
    
    var categoryName : String
    var items : [Landmark]
    
    var body: some View {
    
        VStack(alignment: .leading) {
                Text(categoryName)
                    .font(.headline)
                    .padding(.leading,16)
                    .padding(.top,8)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 8) {
                        ForEach(items) { landmark in
                            NavigationLink{
                                LandmarkDetail(landmark: landmark)
                            }label:{
                                CategoryItem(landmark: landmark)
                            }
                            
                        }
                    }
                }.frame(height: 185)
            }
        
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks

       static var previews: some View {
           CategoryRow(
               categoryName: landmarks[0].category.rawValue,
               items: Array(landmarks.prefix(3))
           )
       }
}
