//
//  ContentView.swift
//  stacks
//
//  Created by IDS Comercial on 09/06/20.
//  Copyright © 2020 Americo MQ. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack{
                HeaderView()
                HStack {
                    basicView(title: "Básico", price: "$9.99", subtitle: "Curso Incluido", textColor: .white, backColor: .green)
                    ZStack{
                        basicView(title: "Carrera", price: "$29.99", subtitle: "Todo Incluido", textColor: .black, backColor: .gray)
                        Text("El mejor para empezar")
                            .font(.system(.caption, design: .rounded))
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.orange)
                            .offset(x:0, y:-80)
                    }
                    
                }.padding(.horizontal)
            }
            ZStack{
                plusView(title: "Definitivo", price: "$99.99", subtitle: "Todos los cursos online", textColor: Color.white, backColor: Color.black)
                .padding()
                Text("Become a master of the universe")
                .font(.system(.caption, design: .rounded))
                .foregroundColor(.white)
                .padding()
                .background(Color.orange)
                .offset(x:0, y:-100)
            }.padding(.vertical)
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .center, spacing: 10){
                Text("Elige tu horario")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
                Text("de aprendizaje")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
            }
            Spacer()
        }.padding()
    }
}

struct basicView: View {
    
    var title: String
    var price: String
    var subtitle: String
    var textColor: Color
    var backColor: Color
    
    var body: some View {
        VStack{
            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(textColor)
            Text(price)
                .font(.system(size: 35, weight: .heavy, design: .rounded))
                .foregroundColor(textColor)
            Text(subtitle)
                .font(.headline)
                .foregroundColor(textColor)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(30)
        .background(backColor)
        .cornerRadius(10)
    }
}

struct plusView: View {
    
    var title: String
    var price: String
    var subtitle: String
    var textColor: Color
    var backColor: Color
    
    var body: some View {
        VStack{
            
            Image(systemName: "lightbulb")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .shadow(color: .gray, radius: 10, x: 0, y: 10)
            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(textColor)
            Text(price)
                .font(.system(size: 35, weight: .heavy, design: .rounded))
                .foregroundColor(textColor)
            Text(subtitle)
                .font(.headline)
                .foregroundColor(textColor)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(30)
        .background(backColor)
        .cornerRadius(10)
    }
}
