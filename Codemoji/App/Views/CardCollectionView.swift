//
//  CardCollectionView.swift
//  Codemoji
//
//  Created by Bryan Gomez on 8/14/23.
//

import SwiftUI

struct CardListView: View {
    
    let selectedLanguage: String
    
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(MockHModel.mockData.filter { $0.codingLanguage == selectedLanguage }) { item in
                    NavigationLink(destination: CardView(model: item)) {
                        CardFront(sectionName: item.sectionName)
                    }
                }
            }
            .padding()
        }
        .navigationTitle(selectedLanguage)
    }
}

struct CardFront: View {
    let sectionName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(.green)
            .frame(width: 170, height: 200)
            .overlay(
                Text(sectionName)
                    .font(.system(size: 18))
                    .monospaced()
                    .bold()
                    .padding(.vertical)
                    .listRowSeparator(.hidden)
            )
            .padding()
    }
}

struct CardCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CardListView(selectedLanguage: "HTML")
    }
}
