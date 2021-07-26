//
//  Splash.swift
//  SwiftUIImageList
//
//  Created by 손태일 on 2021/07/26.
//

import SwiftUI

struct Splash: View {
    var body: some View {
        GeometryReader { dp in
            NavigationView {
                ZStack {
                    Image("Background")
                        .resizable()
                        .scaledToFill()
                        
                    VStack(alignment: .leading) {
                        GifView(fileName: "SplashGif", update: {
                            print("Aegaegae")
                        })
                            .frame(width: dp.size.width * 0.17,
                                   height: dp.size.width * 0.17)
                            
                            
                            Image("SplashSVG")
                                .resizable()
                                .frame(width: dp.size.width * 0.335,
                                       height: dp.size.height * 0.246)
            
                        }
                    .frame(maxWidth: .infinity,
                           maxHeight: .infinity,
                           alignment: .topLeading)
                    .padding(.leading, 50.5)
                    .padding(.top, dp.size.height * 0.346)
                }
                .ignoresSafeArea(.all)
                .navigationBarHidden(true)
            }
        }
        .statusBar(hidden: true)
        .onAppear {
            print("aegaegaeg")
        }
    }
}

struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Splash()
                .frame(height: 667.0)
        }
    }
}
