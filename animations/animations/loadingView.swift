//
//  loadingView.swift
//  animations
//
//  Created by IDS Comercial on 22/06/20.
//  Copyright © 2020 Americo MQ. All rights reserved.
//

import SwiftUI

struct loadingView: View {
    @State private var isLoading = false
    var body: some View {
        ZStack{
            Circle()
                .stroke(Color(.systemGray6), lineWidth: 16)
                .frame(width: 150, height: 150)
            Circle()
            .trim(from: 0.0, to: 0.85)
            .stroke(Color.blue, lineWidth: 8)
            .frame(width: 150, height: 150)
            .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
            .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false))
            .onAppear(){
                self.isLoading = true
            }
        }
    }
}

struct loadingView_Previews: PreviewProvider {
    static var previews: some View {
        loadingView()
    }
}
