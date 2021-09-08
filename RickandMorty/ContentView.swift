//
//  ContentView.swift
//  RickandMorty
//
//  Created by cole cabral on 2021-09-07.
//

import SwiftUI

struct ContentView: View {
    @StateObject var data = RickandMortyDatas()
    var body: some View {
        CharacterList(data: data)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
