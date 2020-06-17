//
//  ProgressIndicatorView.swift
//  draws
//
//  Created by IDS Comercial on 17/06/20.
//  Copyright © 2020 Americo MQ. All rights reserved.
//

import SwiftUI

struct ProgressIndicatorView: View {
    var body: some View {
        ZStack{
            Circle()
                .stroke(Color(.systemGray5), lineWidth: 10)
                .frame(width: 200, height: 200, alignment: .center)
            
            Circle()
                .trim(from: 0, to: 0.65)
                .stroke(Color.blue, lineWidth: 20)
                .frame(width: 200, height: 200, alignment: .center)
                .overlay(VStack{
                    Text("65%")
                        .font(.system(size: 50, weight: .bold, design: .rounded))
                })
        }
    }
}

struct ProgressIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressIndicatorView()
    }
}
