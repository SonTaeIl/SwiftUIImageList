//
//  BottomSheet3.swift
//  SwiftUIImageList
//
//  Created by 손태일 on 2021/08/03.
//

import SwiftUI

struct BottomSheet3: View {
    let menuData: [String] = ["기본순", "인기순", "평점순", "신규등록순", "응답순"]
    
    @State var offset: CGFloat = 0
    
    @State var showSheet: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack(spacing: 20) {
                Capsule()
                    .fill(Color.gray)
                    .frame(width: 60, height: 4)
                
                Text("정렬")
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding(.leading, 24)
                    
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 30) {
                        ForEach(menuData, id: \.self) { data in
                            Button(action: {
                                
                            },
                            label: {
                                Text(data)
                                    .frame(alignment: .leading)
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            })
                            .frame(maxWidth: .infinity)
                        }
                        
                    }
                }
                .frame(height: UIScreen.main.bounds.height / 3 + 50)
            }
            .frame(maxWidth: .infinity)
            .padding(.top)
            .background(Color.white.clipShape(
                            CustomConers(coners: [.topLeft, .topRight])))
            .offset(y: offset)
            .gesture(DragGesture()
                        .onChanged(onChanged(value:))
                        .onEnded(onEnded(value:)))
            .offset(y: showSheet ? 0 : UIScreen.main.bounds.height)
            
        }
        .ignoresSafeArea()
        .background(Color.black.opacity(showSheet ? 0.45 : 0)
                        .ignoresSafeArea()
                        .onTapGesture {
                            withAnimation {
                                showSheet.toggle()
                            }
                        })
    }
    
    func onChanged(value: DragGesture.Value) {
        if value.translation.height > 0 {
            offset = value.translation.height
        }
    }
    
    func onEnded(value: DragGesture.Value) {
        if value.translation.height > 0 {
            withAnimation(Animation.easeIn(duration: 0.3), {
                
                let height = UIScreen.main.bounds.height / 3
                if value.translation.height > height / 1.5 {
                    showSheet.toggle()
                }
                offset = 0
            })
        }
    }
}

struct BottomSheet3_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheet3()
    }
}
