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
                .padding()
                .background(Color.red)
                //.clipShape(Circle())
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .cornerRadius(45)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
