/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing the details for a landmark.
*/

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top) //safeArea를 무시하고 싶을 때 사용
                .frame(height: 300)

            CircleImage() //커스텀한 image
                .offset(y: -130) //높이 지정
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text("Hanyang University")
                    .font(.title)

                HStack {
                    Text("서울특별시 성동구 왕십리 222")
                    Spacer()
                    Text("Korea,Seoul")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider() //구분선

                Text("한양대학교란?")
                    .font(.title2)
                Text("한국 최고의 공과대학교")
            }
            .padding()//양 옆 여백을 주는 용도

            Spacer() //full width(height)를 주고 싶을 때 사용
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
