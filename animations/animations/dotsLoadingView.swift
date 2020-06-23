//
//  dotsLoadingView.swift
//  animations
//
//  Created by IDS Comercial on 22/06/20.
//  Copyright © 2020 Americo MQ. All rights reserved.
//

import SwiftUI

struct dotsLoadingView: View {
    @State private var isLoading = false;
    var body: some View {
        HStack{
            ForEach(0...5, id: \.self){
                index in
                Circle()
                    .frame(width: 16, height: 16)
                    .foregroundColor(Color.green)
                    .scaleEffect(self.isLoading ? 0 : 1)
                    .animation(Animation.linear(duration: 0.5).repeatForever().delay(Double(index)/6))
            }
        }.onAppear(){
            self.isLoading = true
        }
    }
}

struct dotsLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        dotsLoadingView()
    }
}
