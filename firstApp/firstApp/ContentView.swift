//
//  ContentView.swift
//  firstApp
//
//  Created by IDS Comercial on 05/06/20.
//  Copyright © 2020 Americo MQ. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
            .fontWeight(.bold)
            .font(.system(.body, design: .rounded))
            .foregroundColor(.blue)
            .multilineTextAlignment(.center)
            .lineLimit(nil)
            .lineSpacing(4)
            .padding(10)
        
            //.truncationMode(.middle)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
