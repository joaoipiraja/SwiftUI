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
            Text("João Victor").font(Font.custom("Comfortaa", size: 40)).foregroundColor(.white)
        }
        
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
            .previewDisplayName("iPhone 12 Pro Max")

    }
}
