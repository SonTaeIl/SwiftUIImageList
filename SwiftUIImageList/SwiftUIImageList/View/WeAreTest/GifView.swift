//
//  GIFView.swift
//  SwiftUIImageList
//
//  Created by 손태일 on 2021/07/26.
//

import SwiftUI
import FLAnimatedImage


struct GifView: UIViewRepresentable {
    let animatedView = FLAnimatedImageView()
    
    var fileName: String
    var update: () -> Void
    
    func makeUIView(context: UIViewRepresentableContext<GifView>) -> some UIView {
        let view = UIView()
        
        let path: String = Bundle.main.path(forResource: fileName, ofType: "gif")!
        let url = URL(fileURLWithPath: path)
        let gifData = try! Data(contentsOf: url)
        
        let gif = FLAnimatedImage(animatedGIFData: gifData)
        animatedView.animatedImage = gif
        animatedView.loopCompletionBlock = {(uint: UInt) -> Void in
//            guard let self = self else { return }
            self.animatedView.stopAnimating()
            self.update()
        }
        
        animatedView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animatedView)
        
        NSLayoutConstraint.activate([
            animatedView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animatedView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<GifView>) {}
    
    func completedLoop () {
        
    }
}
