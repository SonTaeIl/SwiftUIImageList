//
//  Shape.swift
//  SwiftUIImageList
//
//  Created by 손태일 on 2021/08/03.
//

import SwiftUI

struct CustomShape: Shape {
    let radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let tl = CGPoint(x: rect.minX, y: rect.minY)
        let tr = CGPoint(x: rect.maxX, y: rect.minY)
        let brs = CGPoint(x: rect.maxX, y: rect.maxY - radius)
        let brc = CGPoint(x: rect.maxX - radius, y: rect.maxY - radius)
        let bls = CGPoint(x: rect.minX + radius, y: rect.maxY)
        let blc = CGPoint(x: rect.minX + radius, y: rect.maxY - radius)
        
        path.move(to: tl)
        path.addLine(to: tr)
        path.addLine(to: brs)
        path.addRelativeArc(center: brc, radius: radius,
          startAngle: Angle.degrees(0), delta: Angle.degrees(90))
        path.addLine(to: bls)
        path.addRelativeArc(center: blc, radius: radius,
          startAngle: Angle.degrees(90), delta: Angle.degrees(90))
        
        return path
    }
}


struct CustomConers: Shape {
    
    let coners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: coners, cornerRadii: CGSize(width: 35, height: 35))
        return Path(path.cgPath)
    }
    
}
