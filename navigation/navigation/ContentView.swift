//
//  ContentView.swift
//  navigation
//
//  Created by IDS Comercial on 25/06/20.
//  Copyright © 2020 Americo MQ. All rights reserved.
//

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
//    init() {
//        let appearance = UINavigationBarAppearance()
//        appearance.largeTitleTextAttributes = [.font: UIFont(name: "Times New Roman", size: 32)!, .foregroundColor: UIColor.systemGreen]
//        appearance.titleTextAttributes = [
//            .font:UIFont(name: "Times New Roman", size: 22)!, .foregroundColor: UIColor.systemBlue
//        ]
//        appearance.setBackIndicatorImage(UIImage(systemName: "arrow.left.circle.fill"), transitionMaskImage: UIImage(systemName: "arrow.left.circle"))
//        UINavigationBar.appearance().tintColor = .green
//        
//        UINavigationBar.appearance().standardAppearance = appearance
//        UINavigationBar.appearance().compactAppearance = appearance
//        UINavigationBar.appearance().scrollEdgeAppearance = appearance
//    }
    
    var body: some View {
        NavigationView{
            List(courses.indices){ idx in
                ZStack{
                    if idx < 2 {
                        courseFullImageRow(course: self.courses[idx])
                    }else{
                        courseRow(course: self.courses[idx])
                    }
                    NavigationLink(destination: courseDetailView(course: self.courses[idx])){
                        EmptyView()
                    }
                }
            }.navigationBarTitle("Curso en Udemy para pricipiantes", displayMode: .automatic)
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
            .frame(width: 300)
                
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
                .frame(height: 150)
                .cornerRadius(20)
            Text(course.name)
                .font(.system(.title, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
    }
}

