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
                    Spacer()
                    VStack(spacing: 16) {
                        NavigationLink(destination:
                                        CardListView(selectedLanguage: "HTML")) {
                            TagView(text: "HTML")
                        }
                        NavigationLink(destination: CardListView(selectedLanguage: "JavaScript")) {
                            TagView(text: "JavaScript")
                        }
                        NavigationLink(destination: CardListView(selectedLanguage: "CSS")) {
                            TagView(text: "CSS")
                        }
                        
                    }
                    
                    Image("CodeGreener").resizable().aspectRatio(contentMode: .fit).opacity(0.3)
                        .padding(.bottom)
                }
                
            }
        }
        .tint(.black)
    }
}

struct TagView: View {
    var text: String

    var body: some View {
        RoundedRectangle(cornerRadius: 8).foregroundColor(Color.green.opacity(0.2))
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
