//
//  morfView.swift
//  animations
//
//  Created by IDS Comercial on 23/06/20.
//  Copyright © 2020 Americo MQ. All rights reserved.
//

import SwiftUI

struct morfView: View {
    
    @State private var animBegin = false
    @State private var completed = false
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: animBegin ? 30 : 10)
                .frame(width: animBegin ? 60 : 250, height: 60)
                .foregroundColor(animBegin ? .blue : .green)
            .overlay(
                Image(systemName: "keyboard")
                    .font(.system(.largeTitle))
                    .foregroundColor(.white)
                    .scaleEffect(completed ? 0.5 : 1.0)
            )
            RoundedRectangle(cornerRadius: animBegin ? 40 : 20)
                .stroke(lineWidth: 8)
                .frame(width: animBegin ? 80 : 270, height: 80)
                .foregroundColor(animBegin ? .blue : .green)
        }.onTapGesture {
            withAnimation(Animation.spring().repeatForever().delay(0.25)){
                self.animBegin.toggle()
            }
            withAnimation(Animation.spring().repeatForever().delay(0.25)){
                self.completed.toggle()
            }
        }
    }
}

struct morfView_Previews: PreviewProvider {
    static var previews: some View {
        morfView()
    }
}
