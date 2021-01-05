//
//  HackNews.swift
//  LearnSwiftUI
//
//  Created by João Victor Ipirajá de Alencar on 05/01/21.
//

import SwiftUI

struct HackNews: View {
    
    @ObservedObject private var networkManager = NetworkManager()
    
    
    
    var body: some View {
        
        NavigationView{
            
            List(networkManager.posts){ post in
                
                NavigationLink(
                    destination: DetailView(url: post.url)){
                    HStack{
                        Text("\(post.points)").bold()
                        Text(post.title)
                    }
                }
                
                
            }
            .navigationTitle("Hack News")
        }
        
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
        
        
    }
}

struct HackNews_Previews: PreviewProvider {
    static var previews: some View {
        HackNews().previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
    }
}


