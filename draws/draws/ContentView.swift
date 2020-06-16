//
//  ContentView.swift
//  draws
//
//  Created by IDS Comercial on 15/06/20.
//  Copyright © 2020 Americo MQ. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Path(){
            path in
            path.move(to:  CGPoint(x: 30, y:30))
            path.addLine(to: CGPoint(x: 230, y:30))
            path.addLine(to: CGPoint(x: 230, y:150))
            path.addLine(to: CGPoint(x: 30, y:150))
            path.closeSubpath()
        }
        .stroke(Color.blue, lineWidth: 10)
        //.fill(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
