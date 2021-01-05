//
//  DetailView.swift
//  LearnSwiftUI
//
//  Created by João Victor Ipirajá de Alencar on 05/01/21.
//

import SwiftUI

struct DetailView: View {
    var url:String?
    var body: some View {
        WebView(urlString: url)
    }
}




