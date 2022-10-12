//
//  PageViewController.swift
//  Landmarks
//
//  Created by 현수빈 on 2022/10/12.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

struct PageViewController<Page: View>: UIViewControllerRepresentable{
    var pages: [Page]
    
    func makeUIViewController(context: Context) -> UIPageViewController {
          let pageViewController = UIPageViewController(
              transitionStyle: .scroll,
              navigationOrientation: .horizontal)

          return pageViewController
      }
    
    
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
           pageViewController.setViewControllers(
               [UIHostingController(rootView: pages[0])], direction: .forward, animated: true)
       }
}
