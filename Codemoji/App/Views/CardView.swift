//
//  CardView.swift
//  Codemoji
//
//  Created by Bryan Gomez on 8/14/23.
//

import SwiftUI

import SwiftUI

struct CardView: View {
    @State private var isFlipped = false
    var model: MockHModel
    
    var body: some View {
        VStack {
            if isFlipped {
                //CCardBackView()
                CardBack
            } else {
                CardFront
            }
        }
        .onTapGesture {
            withAnimation {
                isFlipped.toggle()
            }
        }
    }
    
    var CardBack: some View {
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(.green.opacity(0.7))
            .frame(width: 350, height: 450)
            .overlay(
                VStack {
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
                        .foregroundColor(.black)
                }
                
            )
            .padding()
            .rotation3DEffect(.degrees(360), axis: (x: 0, y: 1, z: 0))
    }
    
    var CardFront: some View {
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(.green)
            .frame(width: 350, height: 450)
            .overlay(
                Text(model.sectionName + "?")
                    .font(.largeTitle)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                    .aspectRatio(contentMode: .fit)
                    .fontWeight(.medium)
                    .monospaced()
                    .padding(.horizontal, 10)
            )
            .padding()
            .rotation3DEffect(.degrees(0), axis: (x: 0, y: 1, z: 0))
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(model: MockHModel.mockData.first ?? MockHModel.init(codingLanguage: "HTML", sectionName: "What ", description: "ddededededd", photo: "html"))
    }
}
