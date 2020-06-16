//
//  PieView.swift
//  draws
//
//  Created by IDS Comercial on 16/06/20.
//  Copyright © 2020 Americo MQ. All rights reserved.
//

import SwiftUI

struct PieView: View {
    var body: some View {
        ZStack{
            Path(){ path in
                path.move(to: CGPoint(x: 200, y: 250))
                
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 200), clockwise: true)
            }.fill(Color(.systemBlue))
            
            Path(){ path in
                path.move(to: CGPoint(x: 200, y: 250))
                
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160, startAngle: Angle(degrees: 200), endAngle: Angle(degrees: 160), clockwise: true)
            }
                .fill(Color(.systemPink))
                .offset(x: -20, y: 0)
            
            Path(){ path in
                path.move(to: CGPoint(x: 200, y: 250))
                
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160, startAngle: Angle(degrees: 200), endAngle: Angle(degrees: 160), clockwise: true)
                path.closeSubpath()
            }
                .stroke(Color(red: 200/255, green: 50/255, blue: 120/255), lineWidth: 10)
                .offset(x: -20, y: 0)
            .overlay(Text("11.1 %")
            .font(.system(.largeTitle, design: .rounded))
            .bold()
            .offset(x: -130, y: -160))
            
            
            
            
            
            Path(){ path in
                path.move(to: CGPoint(x: 200, y: 250))
                
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160, startAngle: Angle(degrees: 160), endAngle: Angle(degrees: 110), clockwise: true)
            }.fill(Color(.systemIndigo))
            
            Path(){ path in
                path.move(to: CGPoint(x: 200, y: 250))
                
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160, startAngle: Angle(degrees: 110), endAngle: Angle(degrees: 0), clockwise: true)
            }.fill(Color(.systemGreen))
        }
        
    }
}

struct PieView_Previews: PreviewProvider {
    static var previews: some View {
        PieView()
    }
}
