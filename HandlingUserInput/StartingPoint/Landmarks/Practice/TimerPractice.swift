//
//  TimerPractice.swift
//  Landmarks
//
//  Created by 현수빈 on 2022/10/12.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI
import Combine
import Foundation

class MyTimer : ObservableObject {
    @Published var value = 0
    
    init() {
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.value += 1
        }
    }
}



struct TimerPractice: View {
    @ObservedObject var myTimer = MyTimer()
    
    var body: some View {
        Text("\(self.myTimer.value)")
            .font(.largeTitle)
    }
}

struct TimerPractice_Previews: PreviewProvider {
    static var previews: some View {
        TimerPractice()
    }
}
