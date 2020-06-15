//
//  ContentView.swift
//  states_bindings
//
//  Created by IDS Comercial on 15/06/20.
//  Copyright © 2020 Americo MQ. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var num:Int = 0
    
    var body: some View {
        Button(action: {
            self.num += 1
        }){
            Circle()
            .frame(width: 90, height: 90)
            .foregroundColor(Color.blue)
            .overlay(Text("\(num)")
                .font(.system(size: 60))
                .foregroundColor(Color.white))
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
