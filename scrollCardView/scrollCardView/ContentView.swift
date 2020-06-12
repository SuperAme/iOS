//
//  ContentView.swift
//  scrollCardView
//
//  Created by IDS Comercial on 11/06/20.
//  Copyright © 2020 Americo MQ. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("Américo MQ")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.bold)
                Text("Desarrollador front end")
                    .fontWeight(.light)
                    .foregroundColor(.secondary)
            }
            CardView(imageName: "ios_img", authorName: "Américo MQ", courseTitle: "Diseño de Apps con Swuift UI para iOS 13 desde cero", originalPrice: "$99.99", disccountprice: "$49.99")
            CardView(imageName: "ios_img0", authorName: "Américo MQ", courseTitle: "Diseño de Apps con Swuift UI para iOS 13 desde cero", originalPrice: "$99.99", disccountprice: "$49.99")
            CardView(imageName: "ios_img1", authorName: "Américo MQ", courseTitle: "Diseño de Apps con Swuift UI para iOS 13 desde cero", originalPrice: "$99.99", disccountprice: "$49.99")
            CardView(imageName: "ios_img2", authorName: "Américo MQ", courseTitle: "Diseño de Apps con Swuift UI para iOS 13 desde cero", originalPrice: "$99.99", disccountprice: "$49.99")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
