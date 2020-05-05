//
//  DetailView.swift
//  H4XOR News
//
//  Created by Eslam Fathy on 4/30/20.
//  Copyright © 2020 Eslam Fathy. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(url: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://google.com")
    }
}

struct WebView : UIViewRepresentable {
    var url :String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    func updateUIView(_ uiView:WKWebView, context: Context) {
        if let safeString = self.url {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }

}
