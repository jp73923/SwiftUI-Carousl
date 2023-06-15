//
//  ContentView.swift
//  SwiftUI-Carousl
//
//  Created by macOS on 15/06/23.
//

import SwiftUI

struct ContentView: View {
    
    let backgroundGradient = LinearGradient(gradient: Gradient(colors: [Color.orange,Color.teal]), startPoint: .topLeading, endPoint: .bottomTrailing)
    var body: some View {
        NavigationView {
            ZStack {
                backgroundGradient
                    .ignoresSafeArea()
                TabView {
                    VStack {
                        Image("macbook")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.main.bounds.size.width - 40, height: UIScreen.main.bounds.size.width - 10)
                            .shadow(color: .gray, radius: 4, y: 15)
                            .background(.thinMaterial)
                            .cornerRadius(20)
                            .offset(y: -50)
                        Text("MacBook Pro")
                            .font(.title)
                            .foregroundColor(.white)
                        Text("$1,999.00")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                    
                    VStack {
                        Image("iphone")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.main.bounds.size.width - 40, height: UIScreen.main.bounds.size.width - 10)
                            .shadow(color: .gray, radius: 4, y: 15)
                            .background(.thinMaterial)
                            .cornerRadius(20)
                            .offset(y: -50)
                        Text("iPhone 14 Pro")
                            .font(.title)
                            .foregroundColor(.white)
                        Text("$999")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                    
                    VStack {
                        Image("ipad")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.main.bounds.size.width - 40, height: UIScreen.main.bounds.size.width - 10)
                            .shadow(color: .gray, radius: 4, y: 15)
                            .background(.thinMaterial)
                            .cornerRadius(20)
                            .offset(y: -50)
                        Text("iPad Pro")
                            .font(.title)
                            .foregroundColor(.white)
                        Text("$799")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                }
            }
        }
        .tabViewStyle(.page)
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
