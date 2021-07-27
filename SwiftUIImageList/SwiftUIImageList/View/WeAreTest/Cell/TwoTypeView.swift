//
//  TwoTypeView.swift
//  SwiftUIImageList
//
//  Created by 손태일 on 2021/07/27.
//

import SwiftUI

struct TwoTypeView: View {
    
    var body: some View {
        Button(action: {
            
        },
        label: {
            VStack(spacing: 0.7) {
                Image("icoOneCell")
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .frame(height: 74)
                
                Text("유주희 모델님")
                    .frame(maxWidth: .infinity)
                    .frame(height: 16, alignment: .center)
            }
        })
        .frame(width: 74)
    }
}

struct TwoTypeView_Previews: PreviewProvider {
    static var previews: some View {
        TwoTypeView()
    }
}
