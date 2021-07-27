//
//  ThreeType.swift
//  SwiftUIImageList
//
//  Created by 손태일 on 2021/07/27.
//

import SwiftUI

struct ThreeTypeView: View {
    
    @State var widthHeight: CGFloat
    
    var body: some View {
        Button(action: {
            
        },
        label: {
            VStack {
                Image("ff")
                    .frame(maxWidth: .infinity)
                    .frame(height: widthHeight)
                    .background(Color.gray)
                    
                HStack(spacing: 3) {
                    Text("유주희")
                    Text("모델님")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: 20)
                .padding(.top, 12.7)
                
                Text("안녕하세요. 모델 떙땡땡 입니다.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .lineLimit(2)
                    .padding(.top, 12.2)
                
                
                HStack(spacing: 4) {
                    
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: 13.3)
                .padding(.top, 7)
                
                
                HStack(spacing: 3) {
                    Text("30,000")
                    Text("원 / 시간")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: 19.5)
                .padding(.top, 4.5)
            }
            .frame(width: widthHeight)
        })
    }
}

struct ThreeTypeView_Previews: PreviewProvider {
    static var previews: some View {
        ThreeTypeView(widthHeight: 167.5)
    }
}
