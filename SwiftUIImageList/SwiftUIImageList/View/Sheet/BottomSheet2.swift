//
//  BottomSheet2.swift
//  SwiftUIImageList
//
//  Created by 손태일 on 2021/08/03.
//

import SwiftUI

struct BottomSheet2: View {
    
    
    @State var offset: CGFloat = 0
    
    @State var showSheet: Bool = true
    
    @State var minPrice: String = ""
    @State var maxPrice: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack(spacing: 11) {
                Capsule()
                    .fill(Color.gray)
                    .frame(width: 60, height: 4)
                
                HStack {
                    Text("시간당 금액")
                        .frame(maxWidth: .infinity,
                               alignment: .leading)
                        .font(.headline)
                        .foregroundColor(.black)
                    
                    Button(action: {
                        
                    },
                    label: {
                        Text("초기화")
                    })
                }
                .padding(.top, 20)
                .padding([.leading, .trailing], 24)
                
                Text("원하시는 시간당 금액을 설정 해주세요")
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                    .padding(.leading, 24)
                    .padding(.bottom, 30)
                
                HStack(spacing: 20) {
                    HStack {
                        TextField("최소금액", text: $minPrice)
                        
                        Text("원")
                    }
                    .padding(15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.purple, lineWidth: 1.5)
                    )
                    
                    
                    Rectangle()
                        .frame(width: 20,
                               height: 2)
                    
                    HStack {
                        TextField("최대금액", text: $minPrice)
                        
                        Text("원")
                    }
                    .padding(15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.purple, lineWidth: 1.5)
                    )
                }
                .padding([.leading, .trailing], 24)
                .padding(.bottom, 15)
                
                Divider()
                    .padding([.leading, .trailing], 24)
                
                HStack {
                    Button(action: {
                        
                    },
                    label: {
                        Text("확인")
                            .frame(maxWidth: .infinity,
                                   alignment: .trailing)
                            .padding()
                        
                    })
                }
                .padding(.bottom, 30)
                
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

struct BottomSheet2_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheet2()
    }
}
