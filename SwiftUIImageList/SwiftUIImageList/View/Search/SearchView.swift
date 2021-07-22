//
//  ContentView.swift
//  SwiftUIImageList
//
//  Created by 손태일 on 2021/07/22.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchTitle: String = ""
    
    @ObservedObject var searchViewModel = SearchViewModel()
 
    var body: some View {
        NavigationView {
            
            VStack {
                HStack(spacing: 0) {
                    Spacer(minLength: 16)
                    
                    TextField("Search Data", text: $searchTitle)
                        .frame(maxHeight: .infinity)
                        .background(Color.white)
                        
                    Button(action: {
                        
                    },
                    label: {
                        Image("icoSearchAction")
                    })
                    .disabled(searchTitle.isEmpty)
                    .frame(maxHeight: .infinity)
                    .background(searchTitle.isEmpty ?
                                    Color.gray :Color.pink)
                }
                .frame(height: 45)
                
                List {
                    
                    
                    
                }
            }
    
            .navigationBarTitle("Search Image", displayMode: .inline)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
