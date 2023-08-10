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
        
        List(MockHModel.mockData.filter { $0.codingLanguage == codingLanguage }, id: \.sectionName) { model in
                  ZStack(alignment: .leading) {
                      NavigationLink(destination: Text(model.description)) {
                      }
                      .opacity(0)
                      
                      Text(model.sectionName)
                          .font(.system(size: 18))
                          .bold()
                          .padding(.vertical)
                  }
              }
        .listStyle(.insetGrouped)
    }
}

struct HtmlView_Previews: PreviewProvider {
    static var previews: some View {
        HtmlView(codingLanguage: "")
    }
}
