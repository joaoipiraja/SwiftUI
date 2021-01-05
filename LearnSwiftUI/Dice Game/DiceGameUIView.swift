//
//  DiceGameUIView.swift
//  LearnSwiftUI
//
//  Created by João Victor Ipirajá de Alencar on 05/01/21.
//

import SwiftUI
import Foundation

struct DiceGameUIView: View {
    
    @State var leftDiceNumber = 1 //notifica a view quando muda
    @State var rightDiceNumber = 1
    
    var body: some View {
        
        ZStack{
            Image("background").resizable().edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
            
            VStack{
                Image("diceeLogo")
                
                Spacer()
                
                HStack{
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }.padding(.horizontal)
                
                Spacer()
                
                Button(action: {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                }, label: {
                    Text("Rool").font(.system(size: 50)).foregroundColor(.white).padding(.horizontal)
                }).background(Color(#colorLiteral(red: 0.6097301841, green: 0.1105430648, blue: 0.1225960776, alpha: 1)))
               
            }
            
        }
        
    }
}

struct DiceGameUIView_Previews: PreviewProvider {
    static var previews: some View {
        DiceGameUIView().previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
            .previewDisplayName("iPhone 12 Pro Max")
    }
}

struct DiceView: View {
    var n:Int
    var body: some View {
        Image("dice\(n)").resizable().aspectRatio(1, contentMode: .fit).padding()
    }
}
