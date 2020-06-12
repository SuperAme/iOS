//
//  CardView.swift
//  scrollCardView
//
//  Created by IDS Comercial on 11/06/20.
//  Copyright © 2020 Americo MQ. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack{
            Image("ios_img")
            .resizable()
                .aspectRatio(contentMode: .fit)
            VStack(alignment: .leading){
                Text("Américo MQ")
                    .font(.headline)
                    .foregroundColor(.secondary)
                Text("Diseño de app con swift Ui para iOS 13 desde cero".uppercased())
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .lineLimit(2)
                HStack {
                    Text("$45.50")
                        .font(.subheadline)
                        .foregroundColor(.primary)
                    Text("$99.99")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .strikethrough()
                }
            }
        }
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
