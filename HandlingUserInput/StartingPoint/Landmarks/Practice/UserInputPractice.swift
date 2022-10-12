//
//  UserSetting.swift
//  Landmarks
//
//  Created by 현수빈 on 2022/10/12.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

class UserSetting: ObservableObject{
    @Published var score: Int = 0
}

struct UserInputPractice: View {
    @ObservedObject var userSetting = UserSetting()
    
    var body: some View {
       VStack(spacing: 16) {
           Text("\(self.userSetting.score)")
               .font(.largeTitle)
           Button("클릭하면 Score이 증가"){
               self.userSetting.score += 1
           }
       }
    }
}

struct UserInputPractice_Previews: PreviewProvider {
    static var previews: some View {
        UserInputPractice()
    }
}
