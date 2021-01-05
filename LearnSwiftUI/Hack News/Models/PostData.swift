//
//  PostData.swift
//  LearnSwiftUI
//
//  Created by João Victor Ipirajá de Alencar on 05/01/21.
//

import Foundation


struct Post: Decodable, Identifiable{
    
    var id:String{ //cause its a identifible
        return objectID
    }
    
    let objectID:String
    let points:Int
    let title:String
    let url:String?
}

struct Results:Decodable{
    let hits: [Post]
}


