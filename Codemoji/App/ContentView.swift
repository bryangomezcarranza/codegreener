//
//  ContentView.swift
//  Codemoji
//
//  Created by Bryan Gomez on 8/6/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                
                Color.clear.ignoresSafeArea()
                
                VStack {
                    VStack(spacing: 16) {
                        NavigationLink(destination: HtmlView(codingLanguage: "HTML")) {
                            TagView(text: "HTML")
                        }
                        NavigationLink(destination: HtmlView(codingLanguage: "JavaScript")) {
                            TagView(text: "JavaScript")
                        }
                        NavigationLink(destination: HtmlView(codingLanguage: "CSS")) {
                            TagView(text: "CSS")
                        }
                        NavigationLink(destination: HtmlView(codingLanguage: "Swift")) {
                            TagView(text: "Swift")
                        }
                    }.padding()
                }
            }
        }
        .tint(.black)
    }
}

struct TagView: View {
    var text: String

    var body: some View {
        RoundedRectangle(cornerRadius: 8).foregroundColor(Color(.quaternaryLabel))
            .overlay {
                Text(text)
                    .foregroundColor(.black)
                    .monospaced()
                    .bold()
                    .padding(.horizontal)
                    .padding(.vertical)
            }
            .frame(width: 300, height: 100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
