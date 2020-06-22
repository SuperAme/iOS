//
//  ContentView.swift
//  animations
//
//  Created by IDS Comercial on 18/06/20.
//  Copyright © 2020 Americo MQ. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var buttonColorChanged = true
    @State private var iconColorChanged = true
    @State private var iconSizeChanged = true
    
    var body: some View {
        ZStack{
            Circle()
            .frame(width: 180, height: 180)
                .foregroundColor(buttonColorChanged ? Color(.systemGray4) : Color.green)
                .animation(.spring(response: 0.5, dampingFraction: 0.1, blendDuration: 0.5))
            Image(systemName: "keyboard")
                .font(.system(size: 80))
                .foregroundColor(iconColorChanged ? Color.green : Color(.systemGray4))
                .animation(.spring(response: 0.5, dampingFraction: 0.1, blendDuration: 0.5))
                .scaleEffect(iconSizeChanged ? 1.0 : 0.5)
                .animation(nil)
                
        }.onTapGesture {
            //withAnimation(.spring(response: 0.5, dampingFraction: 0.1, blendDuration: 0.5)){
                self.buttonColorChanged.toggle()
                self.iconColorChanged.toggle()
            //}

            self.iconSizeChanged.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
