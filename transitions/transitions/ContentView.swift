//
//  ContentView.swift
//  transitions
//
//  Created by IDS Comercial on 23/06/20.
//  Copyright © 2020 Americo MQ. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var showTranslation = false
    var body: some View {
        VStack{
            Rectangle()
                .frame(width: 200, height: 200)
                .foregroundColor(.orange)
            .overlay(
                Text("Car")
                    .font(.system(.largeTitle, design: .rounded))
                    .bold()
                    .foregroundColor(.white)
            )
            if showTranslation{
                Rectangle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(.purple)
                .overlay(
                    Text("Coche")
                        .font(.system(.largeTitle, design: .rounded))
                        .bold()
                        .foregroundColor(.white)
                )
                    //.transition(.scale(scale: 0, anchor: .bottom))
                    //.transition(.offset(x: -700, y: 0))
                    .transition(.asymmetric(insertion: .offset(x: -600, y: 0), removal: .scale(scale: 0, anchor: .bottom)))
            }
        }
        .onTapGesture{
            withAnimation(Animation.spring()){
                self.showTranslation.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension AnyTransition{
    static var offsetScaledOpacityOut: AnyTransition{
        AnyTransition.offset(x: -700, y: 0)
            .combined(with: .scale)
            .combined(with: .opacity)
    }
}
