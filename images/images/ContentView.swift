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
        
        Image("css").resizable().edgesIgnoringSafeArea(.vertical)
        
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
