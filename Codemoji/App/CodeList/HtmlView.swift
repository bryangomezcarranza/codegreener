//
//  HtmlView.swift
//  Codemoji
//
//  Created by Bryan Gomez on 8/6/23.
//
import SwiftUI

struct HtmlView: View {
    var codingLanguage: String
    
    var body: some View {
        List {
            Section(header: Text(codingLanguage)) {
                ForEach(MockHModel.mockData.filter { $0.codingLanguage == codingLanguage }) { data in
                    NavigationLink(
                        destination: DescriptionView(model: data),
                        label: {
                            Text(data.sectionName)
                                .font(.system(size: 18))
                                .bold()
                                .padding(.vertical)
                                .listRowSeparator(.hidden)
                        }
                    )
                }
            }
            .listRowBackground(Color.orange.opacity(0.85))
        }
        .listStyle(.insetGrouped)
        .scrollContentBackground(.hidden)
        .background(Color.white.edgesIgnoringSafeArea(.all))
    }
}

struct HtmlView_Previews: PreviewProvider {
    static var previews: some View {
        HtmlView(codingLanguage: "JavaScript")
    }
}
