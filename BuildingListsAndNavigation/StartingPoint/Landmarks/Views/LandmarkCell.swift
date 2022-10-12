//
//  LankmarkCell.swift
//  Landmarks
//
//  Created by 현수빈 on 2022/10/11.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkCell: View {
    
    var landmark : LandmarkModel //cell이 표현해야 할 데이터 모델
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
        }
        
    }
}

struct LandmarkCell_Previews: PreviewProvider {
    static var previews: some View {
        
//        Group{ //view의 그룹핑
//            LankmarkCell(landmark: landmarks[0])
//                .previewLayout(.fixed(width: 300, height: 70)) //cell의 사이즈 조절
//
//            LankmarkCell(landmark: landmarks[1])
//                .previewLayout(.fixed(width: 300, height: 70)) //cell의 사이즈 조절
//        }
        //위의 코드와 동일하지만 간소화한 버전
        Group{
            LandmarkCell(landmark: landmarks[0])
            LandmarkCell(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
