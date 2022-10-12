//
//  CategoryHome.swift
//  Landmarks
//
//  Created by 현수빈 on 2022/10/12.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    
    @EnvironmentObject var modelData : ModelData
    @State private var isShare = false

    var body: some View {
        NavigationView{
            List{
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 8) {
                        ForEach(modelData.features, id: \.self) { feature in
                            NavigationLink{
                                LandmarkDetail(landmark: feature)
                            }label:{
                                feature.image
                                    .resizable()
                                    .frame(height: 200)
                                    .clipped()
                            }
                            
                        }
                    }
                }.frame(height: 210)
                .listRowInsets(EdgeInsets())
                
                
                
                ForEach(modelData.categories.keys.sorted(), id: \.self){key in
                    CategoryRow(categoryName: key, items: modelData.categories[key] ?? [])
                }
            }
            .navigationTitle("Featured")
            
            .toolbar{
                Button {
                   isShare = true
                 } label: {
                     Label("User Profile", systemImage: "square.and.arrow.up")
                 }
                 .background(SharingViewController(isPresenting: $isShare) {
//                         let url = URL(string: "https://apple.com")
                         let av = UIActivityViewController(activityItems: ["Text"], applicationActivities: nil)
                          

                         av.completionWithItemsHandler = { _, _, _, _ in
                                 isShare = false // required for re-open !!!
                            }
                            return av
                        })
            
            }
            
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome().environmentObject(ModelData())
    }
}



struct SharingViewController: UIViewControllerRepresentable {
    @Binding var isPresenting: Bool
    var content: () -> UIViewController

    func makeUIViewController(context: Context) -> UIViewController {
        UIViewController()
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        if isPresenting {
            uiViewController.present(content(), animated: true, completion: nil)
        }
    }
}
