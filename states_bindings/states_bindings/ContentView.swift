//
//  ContentView.swift
//  states_bindings
//
//  Created by IDS Comercial on 15/06/20.
//  Copyright © 2020 Americo MQ. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var numClicks = 0
    @State private var numClicksA = 0
    @State private var numClicksB = 0
    
    var body: some View {
        
        VStack {
            
            Text("\(numClicks + numClicksA + numClicksB)")
                .fontWeight(.bold)
                .font(.system(size: 60, design: .rounded))
            counterView(numClicks: $numClicks, btnColor: Color.red)
            counterView(numClicks: $numClicksA, btnColor: Color.yellow)
            counterView(numClicks: $numClicksB, btnColor: Color.green)
        }
        
        
       
        
//        Button(action: {
//            self.isPlaying.toggle()
//        }){
//            Image(systemName:isPlaying ? "pause.rectangle.fill" : "play.rectangle.fill")
//            .font(.system(size: 100))
//            .foregroundColor(.red)
//        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct counterView: View {
    @Binding var numClicks:Int
    var btnColor: Color
    var body: some View {
        Button(action: {
            self.numClicks += 1
        }){
            Circle()
                .frame(width: 90, height: 90)
                .foregroundColor(btnColor)
                .overlay(Text("\(numClicks)")
                    .font(.system(size: 60))
                    .foregroundColor(Color.white))
        }
    }
}
