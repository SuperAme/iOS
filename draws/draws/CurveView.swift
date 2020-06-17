//
//  CurveView.swift
//  draws
//
//  Created by IDS Comercial on 15/06/20.
//  Copyright © 2020 Americo MQ. All rights reserved.
//

import SwiftUI

struct CurveView: View {
    var body: some View {
        ZStack{
//            Path(){
//                path in
//                path.move(to:  CGPoint(x: 60, y:130))
//                path.addLine(to: CGPoint(x:130, y: 60))
//                path.addLine(to: CGPoint(x:200, y: 130))
//            }
            
            Text("Éxito")
                .font(.system(.title, design: .rounded))
                .frame(width: 200, height: 100)
                .background(FunnyLabel(percCircle: 0.9).fill(Color.blue))
            
            Path(){
                path in
                path.move(to:  CGPoint(x: 30, y:130))
                path.addLine(to: CGPoint(x:60, y: 130))
                path.addQuadCurve(to: CGPoint(x: 200, y: 130), control: CGPoint(x: 130, y: 60))
                path.addRect(CGRect(x: 30, y: 130, width: 200, height: 120))
//                path.addLine(to: CGPoint(x: 230, y:130))
//                path.addLine(to: CGPoint(x: 230, y:250))
//                path.addLine(to: CGPoint(x: 30, y:250))
                path.closeSubpath()
            }
            //.stroke(Color.blue, lineWidth: 10)
            .fill(Color.blue)
            
            ZStack{
                Path(){
                    path in
                    path.move(to:  CGPoint(x: 30, y:130))
                    path.addLine(to: CGPoint(x:60, y: 130))
                    path.addQuadCurve(to: CGPoint(x: 200, y: 130), control: CGPoint(x: 130, y: 60))
                    path.addLine(to: CGPoint(x: 230, y:130))
                    path.addLine(to: CGPoint(x: 230, y:250))
                    path.addLine(to: CGPoint(x: 30, y:250))
                    path.closeSubpath()
                }
                .stroke(Color.pink, lineWidth: 10)
                //.fill(Color.blue)
            }
        }
        
    }
}

struct CurveView_Previews: PreviewProvider {
    static var previews: some View {
        CurveView()
    }
}

struct FunnyLabel: Shape{
    
    var percCircle:CGFloat = 1.0
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to:  CGPoint(x: rect.size.width * (1-percCircle)/2, y:0))
        path.addQuadCurve(to: CGPoint(x: rect.size.width * (1-(1-percCircle)/2), y: 0), control: CGPoint(x: rect.size.width/2, y: -(rect.size.width*0.4)))
        path.addRect(CGRect(x: 0, y: 0, width: rect.size.width, height: rect.size.height))
        
        return path
    }
}
