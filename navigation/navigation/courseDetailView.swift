//
//  courseDetailView.swift
//  navigation
//
//  Created by IDS Comercial on 25/06/20.
//  Copyright © 2020 Americo MQ. All rights reserved.
//

import SwiftUI

struct courseDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    var course: course
    var body: some View {
        ScrollView{
            VStack{
                Image(course.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 300)
                    .clipped()
                Text(course.name)
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.black)
                    .frame(width: 300)
                    .lineLimit(2)
                Spacer()
            }
        }
        
        //.navigationBarTitle("",displayMode: .inline)
        .edgesIgnoringSafeArea(.top)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }, label:{
                Image(systemName: "arrow.left.circle.fill")
                    .font(.title)
                    .foregroundColor(.white)
            })
        )
    }
}

struct courseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        courseDetailView(course: course(name: "Mi curso de Machine Learning", image: "ios_img"))
    }
}
