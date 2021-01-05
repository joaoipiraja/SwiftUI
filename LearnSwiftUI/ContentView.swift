//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by João Victor Ipirajá de Alencar on 04/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Color(UIColor(red: 0.87, green: 0.60, blue: 0.40, alpha: 1.00)).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Image("profilePicture")
                    .resizable().aspectRatio(1,contentMode: .fit).frame(width: 150, height: 150).clipShape(Circle()).overlay(Circle().stroke(Color(UIColor(red: 0.36, green: 0.43, blue: 0.57, alpha: 1.00)),lineWidth: 5))
                
                
                Text("João Victor").font(Font.custom("Comfortaa", size: 40)).foregroundColor(.white)
                Text("IOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                Divider()
                
                InfoView(text: "+55 (85) 999211825", imageName: "phone.fill")
                InfoView(text: "joaovictorpiraja@gmail.com", imageName: "envelope.fill")
                
                
                
            }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
            .previewDisplayName("iPhone 12 Pro Max")
        
    }
}

