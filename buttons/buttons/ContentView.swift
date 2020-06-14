//
//  ContentView.swift
//  buttons
//
//  Created by IDS Comercial on 14/06/20.
//  Copyright © 2020 Americo MQ. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button(action: {
                print("Boton pulsado :)")
            }){
                Text("Press me !!!")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .font(.title)
                    //.border(Color.blue, width: 4)
                    .cornerRadius(45)
                //.overlay(RoundedRectangle(cornerRadius: 50))
                
            }
            Button(action: {
                print("Button 2 pressed")
            }){
                HStack {
                    Image(systemName: "trash")
                    Text("Eliminar")
                        .fontWeight(.bold)
                }
            }
            .buttonStyle(basicButtonStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct basicButtonStyle: ButtonStyle{
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color.pink, Color.orange]), startPoint: .leading, endPoint: .trailing))
            //.background(Color.red)
            //.clipShape(Circle())
            .font(.largeTitle)
            .foregroundColor(Color.white)
            .cornerRadius(45)
            //.scaleEffect(configuration.isPressed ? 0.8 : 1.0)
            .rotationEffect(configuration.isPressed ? .degrees(180) : .degrees(0))
            
    }
    
    
}
