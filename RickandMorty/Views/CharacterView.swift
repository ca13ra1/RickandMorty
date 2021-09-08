//
//  CharacterView.swift
//  CharacterView
//
//  Created by cole cabral on 2021-09-07.
//

import SwiftUI

struct CharacterView: View {
    let image: String
    let name: String
    let status: String
    let stats: Color
    var body: some View {
        VStack (alignment: .leading){
            HStack(spacing: 10) {
                AsyncImage(url: URL(string: image)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 55, height: 55)
                .cornerRadius(5)
                VStack (alignment: .leading, spacing: 5){
                    Text(name)
                        .fontWeight(.bold)
                    Text(status)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.leading, 5)
                        .padding(.trailing, 5)
                        .background(stats)
                        .cornerRadius(3)
                }
            }
        }
    }
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView(image: "", name: "", status: "", stats: Color.clear)
    }
}

