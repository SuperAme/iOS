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
