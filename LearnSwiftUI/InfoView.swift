//
//  InfoView.swift
//  LearnSwiftUI
//
//  Created by João Victor Ipirajá de Alencar on 05/01/21.
//

import SwiftUI

struct InfoView: View {
    let text:String
    let imageName:String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20).frame(height: 50).foregroundColor(.white).overlay(HStack{
            
            Image(systemName: imageName).foregroundColor(Color(UIColor(red: 0.56, green: 0.22, blue: 0.30, alpha: 1.00)))
            
            Text(text)
        })
        .padding(.all)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "+55 (85) 999211825", imageName: "phone.fill")
    }
}
