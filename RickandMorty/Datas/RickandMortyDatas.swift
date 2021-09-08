//
//  RickandMortyDatas.swift
//  RickandMortyDatas
//
//  Created by cole cabral on 2021-09-07.
//

import Foundation
import Combine

class RickandMortyDatas: ObservableObject {
    private var cancellables = Set<AnyCancellable>()
    @Published var responses: [(page: Int, element: RickandMorty)] = []
    
    func loadPage(_ page: Int) {
        guard !responses.contains(where: { $0.page == page }) else { return }
        var request = URLRequest(url: URL(string: "https://rickandmortyapi.com/api/character/?page=\(page == 1 ? 1 : page)")!)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        URLSession.shared.dataTaskPublisher(for: request)
            .map{ $0.data }
            .removeDuplicates()
            .decode(type: RickandMorty.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                if case .failure(let error) = completion {
                    print("\(error)")
                }
            }, receiveValue: { response in
                self.responses.insert((page, response), at: page - 1)
            }).store(in: &cancellables)
    }
}
