//
//  DescriptionView.swift
//  Codemoji
//
//  Created by Bryan Gomez on 8/14/23.
//

import SwiftUI



struct DescriptionView: View {
    var model: MockHModel
    
    var body: some View {
        VStack {
            Spacer()
            Text(model.sectionName + " ?")
                .font(.largeTitle)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
                .aspectRatio(contentMode: .fit)
                .fontWeight(.medium)
                .monospaced()
                .padding(.horizontal, 2)
            Text(model.description)
                .fontWeight(.light)
                .padding()
            Divider()
                .background(Color.orange)
                .padding(.horizontal)
                
            Image(model.photo ?? "person")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal)
                .padding(.vertical)
            Spacer()
        }
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(model: MockHModel.mockData.first ?? MockHModel.init(codingLanguage: "HTML", sectionName: "What ", description: "ddededededd", photo: "html") )
    }
}
