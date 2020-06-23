//
//  loadingView.swift
//  animations
//
//  Created by IDS Comercial on 22/06/20.
//  Copyright © 2020 Americo MQ. All rights reserved.
//

import SwiftUI

struct loadingView: View {
    @State private var isLoading = false
    var body: some View {
        ZStack{
            Text("Cargando")
                .offset(x: 0, y: -100)
                .font(.system(.largeTitle, design: .rounded))
            Rectangle()
                .foregroundColor(Color(.systemGray4))
                .frame(width: 300, height: 20)
            
            Rectangle()
                .frame(width: 50, height: 20)
                .foregroundColor(.green)
                .offset(x: -135, y: 0)
                .offset(x: isLoading ? 260 : 0, y: 0)
            .animation(Animation.linear(duration: 3).repeatForever(autoreverses: false))
            
//            Circle()
//                .stroke(Color(.systemGray6), lineWidth: 16)
//                .frame(width: 150, height: 150)
//            Circle()
//            .trim(from: 0.0, to: 0.85)
//            .stroke(Color.blue, lineWidth: 8)
//            .frame(width: 150, height: 150)
//            .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
//            .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false))
            .onAppear(){
                self.isLoading = true
            }
        }
    }
}

struct loadingView_Previews: PreviewProvider {
    static var previews: some View {
        loadingView()
    }
}
