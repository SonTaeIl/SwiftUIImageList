//
//  DetailListView.swift
//  SwiftUIImageList
//
//  Created by 손태일 on 2021/07/27.
//

import SwiftUI

struct DetailListView: View {
    
    @State private var title: String = "모델"
    
    
    var body: some View {
        NavigationView {
            
            VStack {
                
            }
            
            
            .navigationBarTitle(title, displayMode: .inline)
            .navigationBarItems(leading: Button(action: {
                
            },
            label: {
                Text("Button1")
            }), trailing: Button(action: {
                
            },
            label: {
                Text("Button2")
            }))
        }
    }
}

struct DetailListView_Previews: PreviewProvider {
    static var previews: some View {
        DetailListView()
    }
}
