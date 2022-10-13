//
//  ViewModelable.swift
//  ExMVVM
//
//  Created by 김종권 on 2022/09/17.
//

import SwiftUI
import Combine

protocol ViewModelable: ObservableObject {
  associatedtype Action
  associatedtype State //view에서 state를 보고있다가 적절히 뷰를 변경
  
  var state: State { get }
  
  func action(_ action: Action)
}
