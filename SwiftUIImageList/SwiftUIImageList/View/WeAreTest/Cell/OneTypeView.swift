//
//  Type1.swift
//  SwiftUIImageList
//
//  Created by 손태일 on 2021/07/27.
//

import SwiftUI

struct Type1: View {
    
    @State var imageUrl: String
    
    var body: some View {
        Button(action: {
            print("Aegaegaegaeg")
        },
        label: {
            VStack(spacing: 0) {
                Image(imageUrl)
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .frame(height: 114)
                    .background(Color.gray)
                    .cornerRadius(15.0)
                
                Text("야호 스튜디오 코잠")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 5.5)
                    .padding(.leading, 11)
                    .padding(.bottom, 3)
                
                HStack(spacing: 1.8) {
                    Image("")
                        .resizable()
                        .frame(width: 5.5, height: 8)
                    
                    Text("경기도 성남시")
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 11)
            }
            .frame(width: 175, alignment: .leading)
        })
    }
}

struct Type1_Previews: PreviewProvider {
    static var previews: some View {
        Type1(imageUrl: "ff")
    }
}
