//
//  BusinessCardView.swift
//  LearnSwiftUI
//
//  Created by João Victor Ipirajá de Alencar on 05/01/21.
//

import SwiftUI


struct BusinessCardView: View {
    let imageName:String
    let name:String
    let jobName:String
    let phoneNumber:String
    let email:String
    
    var body: some View {
        ZStack{
            Color(UIColor(red: 0.87, green: 0.60, blue: 0.40, alpha: 1.00)).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Image(imageName)
                    .resizable().aspectRatio(1,contentMode: .fit).frame(width: 150, height: 150).clipShape(Circle()).overlay(Circle().stroke(Color(UIColor(red: 0.36, green: 0.43, blue: 0.57, alpha: 1.00)),lineWidth: 5))
                
                
                Text(name).font(Font.custom("Comfortaa", size: 40)).foregroundColor(.white)
                Text(jobName)
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                Divider()
                
                InfoView(text: phoneNumber, imageName: "phone.fill")
                InfoView(text: email, imageName: "mail.fill")
                
                
                
            }
            
        }    }
}

