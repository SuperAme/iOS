//
//  ContentView.swift
//  lists
//
//  Created by IDS Comercial on 24/06/20.
//  Copyright © 2020 Americo MQ. All rights reserved.
//

import SwiftUI

struct ContentView: View {
//    var courseName = ["Probabilidad y variables, Probabilidad y variables","Angular","React JS","laravel"]
//    var courseImage = ["ios_img","ios_img0","ios_img1","ios_img2"]
    
    var courses = [
        course(name: "Probabilidad y variables", image: "ios_img"),
        course(name: "Angular", image: "ios_img0"),
        course(name: "React JS", image: "ios_img1"),
        course(name: "laravel", image: "ios_img2"),
        course(name: "React JS", image: "ios_img0")
    ]
    var body: some View {
        List(courses.indices){ idx in
            if idx < 2 {
                courseFullImageRow(course: self.courses[idx])
            }else{
                courseRow(course: self.courses[idx])
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct course:Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

struct courseRow: View {
    var course:course
    var body: some View {
        HStack {
            Image(course.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipped()
                .cornerRadius(50)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.gray)
                        .opacity(0.25)
                )
            Text(course.name)
                
        }
    }
}
struct courseFullImageRow : View{
    var course:course
    var body:some View{
        ZStack{
            Image(course.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .cornerRadius(20)
            Text(course.name)
                .font(.system(.title, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
    }
}
