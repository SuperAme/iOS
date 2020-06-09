//
//  ContentView.swift
//  images
//
//  Created by IDS Comercial on 07/06/20.
//  Copyright © 2020 Americo MQ. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Image("fit")
            .resizable()
            //.scaledToFit()
            .aspectRatio(contentMode: .fill)
            .frame(width:450)
            //.clipped()
            .clipShape(Capsule())
            .opacity(0.6)
            .overlay(
//                Image(systemName: "heart.fill")
//                    .font(.system(size: 60))
//                .foregroundColor(.red)
//                .opacity(0.9)
                
//                Text("Entrena con nosotros")
//                    .fontWeight(.bold)
//                    .font(.system(size:30, design: .rounded))
//                    .foregroundColor(.black)
//                    .padding()
//                    .background(Color.gray)
//                    .cornerRadius(100)
//                    .opacity(0.7)
//                    .padding(),
//                alignment: .bottom
                Capsule()
                    .foregroundColor(.pink)
                    .opacity(0.5)
                    .overlay(
                        Text("Train with us")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width: 250)
                )
            )
                    
            //.edgesIgnoringSafeArea(.vertical)
        
//        Image(systemName: "scissors.badge.ellipsis")
//            .font(.system(size: 70))
//            .foregroundColor(.blue)
//            .shadow(color: .gray, radius: 10, x: 0, y: 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
