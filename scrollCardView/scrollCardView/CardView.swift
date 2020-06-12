//
//  CardView.swift
//  scrollCardView
//
//  Created by IDS Comercial on 11/06/20.
//  Copyright © 2020 Americo MQ. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    var imageName: String
    var authorName: String
    var courseTitle: String
    var originalPrice: String
    var disccountprice: String
    
    var body: some View {
        VStack{
            Image(imageName)
            .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                VStack(alignment: .leading){
                    Text(authorName)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(courseTitle.uppercased())
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    HStack {
                        Text(disccountprice)
                            .font(.subheadline)
                            .foregroundColor(.primary)
                        Text(originalPrice)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .strikethrough()
                    }
                }.layoutPriority(10)
                Spacer()
            }.padding()
        }
    .cornerRadius(12)
        .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color(red: 130/255, green: 130/255, blue: 130/255, opacity: 0.2), lineWidth: 2))
        .padding([.top, .horizontal])
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(imageName: "ios_img", authorName: "Américo MQ", courseTitle: "Diseño de Apps con Swuift UI para iOS 13 desde cero", originalPrice: "$99.99", disccountprice: "$49.99")
    }
}
