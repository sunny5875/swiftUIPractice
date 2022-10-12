//
//  MVVMPractice.swift
//  Landmarks
//
//  Created by 현수빈 on 2022/10/12.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI


struct Person {
    var name : String
    var age : Int
}

class PersonViewModel : ObservableObject {
    @Published var person = Person(name: "subin", age: 22)

    var name : String {
        person.name
    }
    
    var age : String {
        "\(person.age)"
    }
    
    func changeName(name : String){
        person.name = name
    }
    
    
}

struct MVVMPractice: View {
    
    @StateObject var viewModel = PersonViewModel()
    
   
    
    var body: some View {
        VStack(spacing: 8) {
            Text(viewModel.name)
            Text(String(viewModel.age))
            Button("버튼 클릭 시 이름 변경"){
                viewModel.changeName(name: "수빈")
            }
        }
    }
}

struct MVVMPractice_Previews: PreviewProvider {
    static var previews: some View {
        MVVMPractice()
    }
}
