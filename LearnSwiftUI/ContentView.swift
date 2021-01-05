//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by João Victor Ipirajá de Alencar on 04/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        BusinessCardView(imageName: "profilePicture", name: "João Victor", jobName: "IOS Development", phoneNumber: "+55 (85) 999211825", email: "joaovictorpiraja@gmail.com")
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
            .previewDisplayName("iPhone 12 Pro Max")
        
    }
}

